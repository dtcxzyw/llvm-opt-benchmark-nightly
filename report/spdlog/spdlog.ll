Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6spdlog7details7log_msgEEZNS0_6logger15dump_backtrace_EvE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #6 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !909   ; 2 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(208) %.val, ptr noundef nonnull align 8 dereferenceable(96) %1), !inline_history !907
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
  store ptr @"_ZTIZN6spdlog6logger15dump_backtrace_EvE3$_0", ptr %0, align 8, !tbaa !911
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !177
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !171
  store i64 %.val.i, ptr %0, align 8, !tbaa !171
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details14full_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details14full_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZN6spdlog7details14full_formatterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #37
  br label %_ZN6spdlog7details14full_formatterD2Ev.exit

_ZN6spdlog7details14full_formatterD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %7 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %11 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %13 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %15 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !70
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = icmp ne i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 42 uses
  br i1 %or.cond, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  br label %.lr.ph34.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1), !inline_history !29
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ 1, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.q = phi i64 [ 0, %bb.b ], [ %.pre.i, %bb.c ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 91, ptr %i.s, align 1, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !303  ; 2 uses
  %i.v = add nsw i32 %i.u, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.w = icmp slt i32 %i.u, -1900
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true) ; 3 uses
  %i.x = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.y, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %i.y = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 %i.z
  %i.ab = urem i32 %.01819.i.i.i.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.aa, align 1
  %i.ag = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ah = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.ag, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.y, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ai = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 %i.ak
  %i.am = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %i.al, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aq = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.at, %bb.e ], [ %i.ak, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.w, label %bb.f, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1 ; 2 uses
  store i8 45, ptr %i.aw, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.f, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aw, %bb.f ], [ %i.av, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %.0.i.i.i, ptr %i.ax, align 8, !tbaa !305
  %i.ay = ptrtoint ptr %15 to i64
  %i.az = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ba = add i64 %i.ay, 21                       ; 3 uses
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bb
  %.not31.i.i = icmp eq i64 %i.ba, %i.az
  %.pre = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.be = phi i64 [ %.pre, %.lr.ph34.i.i ], [ %i.cl, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.cm, %._crit_edge.i.i ] ; 9 uses
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !68
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bi = sub i64 %i.ba, %i.bh                    ; 4 uses
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !66
  %i.bl = add i64 %i.bi, %i.be
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.bl), !inline_history !31
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !68
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bo)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i = phi i64 [ %i.bm, %bb.h ], [ %i.be, %bb.g ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bp, %bb.h ], [ %i.bi, %bb.g ] ; 13 uses
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = add i64 %.026.i.i, %i.br
  %i.bu = sub i64 %i.bh, %i.bt
  %diff.check = icmp ugt i64 %i.bu, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check424 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check424, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <16 x i8>, ptr %i.bw, align 1, !tbaa !64
  %wide.load425 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <16 x i8> %wide.load, ptr %i.by, align 1, !tbaa !64
  store <16 x i8> %wide.load425, ptr %i.bz, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !912

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec426 = and i64 %.025.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next429, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index427
  %wide.load428 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index427
  store <4 x i8> %wide.load428, ptr %i.cc, align 1, !tbaa !64
  %index.next429 = add nuw i64 %index427, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next429, %n.vec426
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !913

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n430 = icmp eq i64 %.025.i.i, %n.vec426
  br i1 %cmp.n430, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec426, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ch, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i.prol
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !914

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.prol ]
  %i.ci = sub i64 %.030.i.i.ph, %.025.i.i
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.f, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.i
  %i.ck = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.i ]
  %i.cl = add i64 %i.ck, %.025.i.i                ; 3 uses
  store i64 %i.cl, ptr %i.f, align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !64
  %i.cq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !64
  %i.cu = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !64
  %i.cy = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !64
  %i.dc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !915

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.dd = phi i64 [ %.pre, %_ZN3fmt3v1210format_intC2Ei.exit.i ], [ %i.cl, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load i64, ptr %i.l, align 8, !tbaa !68
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.j, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

bb.j:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !66
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.de), !inline_history !29
  %.pre.i52 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i53 = add i64 %.pre.i52, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %bb.j
  %.pre-phi.i51 = phi i64 [ %i.de, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre2.i53, %bb.j ]
  %i.dj = phi i64 [ %i.dd, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre.i52, %bb.j ]
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !67
  store i64 %.pre-phi.i51, ptr %i.f, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 45, ptr %i.dl, align 1, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !306
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
  %or.cond.i = icmp ult i32 %i.do, 100
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54
  %.lhs.trunc.i = trunc nuw nsw i32 %i.do to i8   ; 2 uses
  %i.dp = udiv i8 %.lhs.trunc.i, 10
  %i.dq = urem i8 %.lhs.trunc.i, 10
  %i.dr = or disjoint i8 %i.dp, 48
  %i.ds = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %i.du = load i64, ptr %i.l, align 8, !tbaa !68
  %i.dv = icmp ugt i64 %i.dt, %i.du
  br i1 %i.dv, label %bb.l, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !66
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.dt), !inline_history !32
  %.pre.i.i55 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i55, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.l, %bb.k
  %.pre-phi.i.i = phi i64 [ %i.dt, %bb.k ], [ %.pre2.i.i, %bb.l ]
  %i.dy = phi i64 [ %i.ds, %bb.k ], [ %.pre.i.i55, %bb.l ]
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store i8 %i.dr, ptr %i.ea, align 1, !tbaa !64
  %i.eb = or disjoint i8 %i.dq, 48
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE:bb.a
  br i1 %diff.check516, label %.lr.ph.i.i202.preheader, label %vector.main.loop.iter.check518

vector.main.loop.iter.check518:                   ; preds = %vector.memcheck515
  %min.iters.check519 = icmp ult i64 %.025.i.i200, 32
  br i1 %min.iters.check519, label %vec.epilog.ph534, label %vector.ph520

vector.ph520:                                     ; preds = %vector.main.loop.iter.check518
  %i.wg = and i64 %.025.i.i200, 28
  %n.vec521 = and i64 %.025.i.i200, -32           ; 4 uses
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next526, %vector.body522 ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %index523 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %wide.load524 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !64
  %wide.load525 = load <16 x i8>, ptr %i.wi, align 1, !tbaa !64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 %index523 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  store <16 x i8> %wide.load524, ptr %i.wj, align 1, !tbaa !64
  store <16 x i8> %wide.load525, ptr %i.wk, align 1, !tbaa !64
  %index.next526 = add nuw i64 %index523, 32      ; 2 uses
  %i.wl = icmp eq i64 %index.next526, %n.vec521
  br i1 %i.wl, label %middle.block527, label %vector.body522, !llvm.loop !928

middle.block527:                                  ; preds = %vector.body522
  %cmp.n528 = icmp eq i64 %.025.i.i200, %n.vec521
  br i1 %cmp.n528, label %._crit_edge.loopexit.i.i205, label %vec.epilog.iter.check532

vec.epilog.iter.check532:                         ; preds = %middle.block527
  %min.epilog.iters.check533 = icmp eq i64 %i.wg, 0
  br i1 %min.epilog.iters.check533, label %.lr.ph.i.i202.preheader, label %vec.epilog.ph534, !prof !109

vec.epilog.ph534:                                 ; preds = %vector.main.loop.iter.check518, %vec.epilog.iter.check532
  %vec.epilog.resume.val529 = phi i64 [ %n.vec521, %vec.epilog.iter.check532 ], [ 0, %vector.main.loop.iter.check518 ]
  %n.vec535 = and i64 %.025.i.i200, -4            ; 3 uses
  br label %vec.epilog.vector.body536

vec.epilog.vector.body536:                        ; preds = %vec.epilog.vector.body536, %vec.epilog.ph534
  %index537 = phi i64 [ %vec.epilog.resume.val529, %vec.epilog.ph534 ], [ %index.next539, %vec.epilog.vector.body536 ] ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %index537
  %wide.load538 = load <4 x i8>, ptr %i.wm, align 1, !tbaa !64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wd, i64 %index537
  store <4 x i8> %wide.load538, ptr %i.wn, align 1, !tbaa !64
  %index.next539 = add nuw i64 %index537, 4       ; 2 uses
  %i.wo = icmp eq i64 %index.next539, %n.vec535
  br i1 %i.wo, label %vec.epilog.middle.block540, label %vec.epilog.vector.body536, !llvm.loop !929

vec.epilog.middle.block540:                       ; preds = %vec.epilog.vector.body536
  %cmp.n541 = icmp eq i64 %.025.i.i200, %n.vec535
  br i1 %cmp.n541, label %._crit_edge.loopexit.i.i205, label %.lr.ph.i.i202.preheader

.lr.ph.i.i202.preheader:                          ; preds = %vector.memcheck515, %iter.check530, %vec.epilog.iter.check532, %vec.epilog.middle.block540
  %.030.i.i203.ph = phi i64 [ 0, %iter.check530 ], [ 0, %vector.memcheck515 ], [ %n.vec521, %vec.epilog.iter.check532 ], [ %n.vec535, %vec.epilog.middle.block540 ] ; 3 uses
  %xtraiter616 = and i64 %.025.i.i200, 3          ; 2 uses
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %.lr.ph.i.i202.prol.loopexit, label %.lr.ph.i.i202.prol

.lr.ph.i.i202.prol:                               ; preds = %.lr.ph.i.i202.preheader, %.lr.ph.i.i202.prol
  %.030.i.i203.prol = phi i64 [ %i.ws, %.lr.ph.i.i202.prol ], [ %.030.i.i203.ph, %.lr.ph.i.i202.preheader ] ; 3 uses
  %prol.iter618 = phi i64 [ %prol.iter618.next, %.lr.ph.i.i202.prol ], [ 0, %.lr.ph.i.i202.preheader ]
  %i.wp = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %.030.i.i203.prol
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.030.i.i203.prol
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !64
  %i.ws = add nuw i64 %.030.i.i203.prol, 1        ; 2 uses
  %prol.iter618.next = add i64 %prol.iter618, 1   ; 2 uses
  %prol.iter618.cmp.not = icmp eq i64 %prol.iter618.next, %xtraiter616
  br i1 %prol.iter618.cmp.not, label %.lr.ph.i.i202.prol.loopexit, label %.lr.ph.i.i202.prol, !llvm.loop !930

.lr.ph.i.i202.prol.loopexit:                      ; preds = %.lr.ph.i.i202.prol, %.lr.ph.i.i202.preheader
  %.030.i.i203.unr = phi i64 [ %.030.i.i203.ph, %.lr.ph.i.i202.preheader ], [ %i.ws, %.lr.ph.i.i202.prol ]
  %i.wt = sub i64 %.030.i.i203.ph, %.025.i.i200
  %i.wu = icmp ugt i64 %i.wt, -4
  br i1 %i.wu, label %._crit_edge.loopexit.i.i205, label %.lr.ph.i.i202

._crit_edge.loopexit.i.i205:                      ; preds = %.lr.ph.i.i202.prol.loopexit, %.lr.ph.i.i202, %vec.epilog.middle.block540, %middle.block527
  %.pre37.i.i206 = load i64, ptr %i.nl, align 8, !tbaa !69
  br label %._crit_edge.i.i207

._crit_edge.i.i207:                               ; preds = %._crit_edge.loopexit.i.i205, %bb.bh
  %i.wv = phi i64 [ %.pre37.i.i206, %._crit_edge.loopexit.i.i205 ], [ %.026.i.i199, %bb.bh ]
  %i.ww = add i64 %i.wv, %.025.i.i200             ; 3 uses
  store i64 %i.ww, ptr %i.nl, align 8, !tbaa !69
  %i.wx = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %.025.i.i200 ; 2 uses
  %.not.i.i208 = icmp eq ptr %i.wx, %i.vm
  br i1 %.not.i.i208, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209, label %bb.bf, !llvm.loop !3

.lr.ph.i.i202:                                    ; preds = %.lr.ph.i.i202.prol.loopexit, %.lr.ph.i.i202
  %.030.i.i203 = phi i64 [ %i.xn, %.lr.ph.i.i202 ], [ %.030.i.i203.unr, %.lr.ph.i.i202.prol.loopexit ] ; 6 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %.030.i.i203
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.030.i.i203
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !64
  %i.xb = add nuw i64 %.030.i.i203, 1             ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !64
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.xb
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !64
  %i.xf = add nuw i64 %.030.i.i203, 2             ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !64
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.xf
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !64
  %i.xj = add nuw i64 %.030.i.i203, 3             ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.02732.i.i198, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.xj
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !64
  %i.xn = add nuw i64 %.030.i.i203, 4             ; 2 uses
  %exitcond.not.i.i204.3 = icmp eq i64 %i.xn, %.025.i.i200
  br i1 %exitcond.not.i.i204.3, label %._crit_edge.loopexit.i.i205, label %.lr.ph.i.i202, !llvm.loop !931

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209: ; preds = %._crit_edge.i.i207, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit193
  %i.xo = phi i64 [ %.pre311, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit193 ], [ %i.ww, %._crit_edge.i.i207 ] ; 2 uses
  %i.xp = add i64 %i.xo, 1                        ; 3 uses
  %i.xq = load i64, ptr %i.no, align 8, !tbaa !68
  %i.xr = icmp ugt i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.bi, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213

bb.bi:                                            ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209
  %i.xs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !66
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.xp), !inline_history !29
  %.pre.i211 = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i212 = add i64 %.pre.i211, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209, %bb.bi
  %.pre-phi.i210 = phi i64 [ %i.xp, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209 ], [ %.pre2.i212, %bb.bi ]
  %i.xu = phi i64 [ %i.xo, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit209 ], [ %.pre.i211, %bb.bi ]
  %i.xv = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i210, ptr %i.nl, align 8, !tbaa !69
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xu
  store i8 58, ptr %i.xw, align 1, !tbaa !64
  %i.xx = load i32, ptr %i.uv, align 8, !tbaa !314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.xy = icmp slt i32 %i.xx, 0
  %spec.select.i.i.i214 = call i32 @llvm.abs.i32(i32 %i.xx, i1 false) ; 3 uses
  %i.xz = icmp ugt i32 %spec.select.i.i.i214, 99
  br i1 %i.xz, label %.lr.ph.i.i.i.i.i236, label %._crit_edge.i.i.i.i.i215

.lr.ph.i.i.i.i.i236:                              ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213, %.lr.ph.i.i.i.i.i236
  %.020.i.i.i.i.i237 = phi i32 [ %i.ya, %.lr.ph.i.i.i.i.i236 ], [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213 ]
  %.01819.i.i.i.i.i238 = phi i32 [ %i.yi, %.lr.ph.i.i.i.i.i236 ], [ %spec.select.i.i.i214, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213 ] ; 3 uses
  %i.ya = add i32 %.020.i.i.i.i.i237, -2          ; 3 uses
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %4, i64 %i.yb
  %i.yd = urem i32 %.01819.i.i.i.i.i238, 100
  %i.ye = shl nuw nsw i32 %i.yd, 1
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.yf
  %i.yh = load i16, ptr %i.yg, align 2
  store i16 %i.yh, ptr %i.yc, align 1
  %i.yi = udiv i32 %.01819.i.i.i.i.i238, 100      ; 2 uses
  %i.yj = icmp ugt i32 %.01819.i.i.i.i.i238, 9999
  br i1 %i.yj, label %.lr.ph.i.i.i.i.i236, label %._crit_edge.i.i.i.i.i215, !llvm.loop !30

._crit_edge.i.i.i.i.i215:                         ; preds = %.lr.ph.i.i.i.i.i236, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213
  %.018.lcssa.i.i.i.i.i216 = phi i32 [ %spec.select.i.i.i214, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213 ], [ %i.yi, %.lr.ph.i.i.i.i.i236 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i217 = phi i32 [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit213 ], [ %i.ya, %.lr.ph.i.i.i.i.i236 ] ; 2 uses
  %i.yk = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i216, 9
  br i1 %i.yk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i215
  %i.yl = add i32 %.0.lcssa.i.i.i.i.i217, -2
  %i.ym = zext i32 %i.yl to i64                   ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %4, i64 %i.ym
  %i.yo = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i216, 1
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.yp
  %i.yr = load i16, ptr %i.yq, align 2
  store i16 %i.yr, ptr %i.yn, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i215
  %i.ys = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i216 to i8
  %i.yt = or disjoint i8 %i.ys, 48
  %i.yu = add i32 %.0.lcssa.i.i.i.i.i217, -1
  %i.yv = zext i32 %i.yu to i64                   ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 %i.yv
  store i8 %i.yt, ptr %i.yw, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218: ; preds = %bb.bk, %bb.bj
  %.pre-phi.i.i.i.i.i219 = phi i64 [ %i.yv, %bb.bk ], [ %i.ym, %bb.bj ]
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i219 ; 2 uses
  br i1 %i.xy, label %bb.bl, label %_ZN3fmt3v1210format_intC2Ei.exit.i220

bb.bl:                                            ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 -1 ; 2 uses
  store i8 45, ptr %i.yy, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i220

_ZN3fmt3v1210format_intC2Ei.exit.i220:            ; preds = %bb.bl, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218
  %.0.i.i.i221 = phi ptr [ %i.yy, %bb.bl ], [ %i.yx, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i218 ] ; 4 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i221, ptr %i.yz, align 8, !tbaa !305
  %i.za = ptrtoint ptr %4 to i64
  %i.zb = ptrtoint ptr %.0.i.i.i221 to i64        ; 2 uses
  %i.zc = add i64 %i.za, 21                       ; 3 uses
  %i.zd = sub i64 %i.zc, %i.zb
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i221, i64 %i.zd
  %.not31.i.i222 = icmp eq i64 %i.zc, %i.zb
  %.pre312 = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  br i1 %.not31.i.i222, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239, label %.lr.ph34.i.i223

.lr.ph34.i.i223:                                  ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i220
  %i.zf = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i234, %.lr.ph34.i.i223
  %i.zg = phi i64 [ %.pre312, %.lr.ph34.i.i223 ], [ %i.aan, %._crit_edge.i.i234 ] ; 3 uses
  %.02732.i.i225 = phi ptr [ %.0.i.i.i221, %.lr.ph34.i.i223 ], [ %i.aao, %._crit_edge.i.i234 ] ; 9 uses
  %i.zh = load i64, ptr %i.no, align 8, !tbaa !68
  %i.zi = sub i64 %i.zh, %i.zg
  %i.zj = ptrtoint ptr %.02732.i.i225 to i64      ; 2 uses
  %i.zk = sub i64 %i.zc, %i.zj                    ; 4 uses
  %i.zl = icmp ult i64 %i.zi, %i.zk
  br i1 %i.zl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.zm = load ptr, ptr %i.zf, align 8, !tbaa !66
  %i.zn = add i64 %i.zk, %i.zg
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.zn), !inline_history !31
  %i.zo = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  %i.zp = load i64, ptr %i.no, align 8, !tbaa !68
  %i.zq = sub i64 %i.zp, %i.zo
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zk, i64 %i.zq)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.026.i.i226 = phi i64 [ %i.zo, %bb.bn ], [ %i.zg, %bb.bm ] ; 3 uses
  %.025.i.i227 = phi i64 [ %i.zr, %bb.bn ], [ %i.zk, %bb.bm ] ; 13 uses
  %i.zs = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.zt = ptrtoaddr ptr %i.zs to i64
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.026.i.i226 ; 7 uses
  %.not36.i.i228 = icmp eq i64 %.025.i.i227, 0
  br i1 %.not36.i.i228, label %._crit_edge.i.i234, label %iter.check558

iter.check558:                                    ; preds = %bb.bo
  %min.iters.check545.a = icmp ult i64 %.025.i.i227, 4
  br i1 %min.iters.check545.a, label %.lr.ph.i.i229.preheader, label %vector.memcheck543

vector.memcheck543:                               ; preds = %iter.check558
  %i.zv = add i64 %.026.i.i226, %i.zt
  %i.zw = sub i64 %i.zj, %i.zv
  %diff.check544 = icmp ugt i64 %i.zw, -32
  br i1 %diff.check544, label %.lr.ph.i.i229.preheader, label %vector.main.loop.iter.check546

vector.main.loop.iter.check546:                   ; preds = %vector.memcheck543
  %min.iters.check547 = icmp ult i64 %.025.i.i227, 32
  br i1 %min.iters.check547, label %vec.epilog.ph562, label %vector.ph548

vector.ph548:                                     ; preds = %vector.main.loop.iter.check546
  %i.zx = and i64 %.025.i.i227, 28
  %n.vec549 = and i64 %.025.i.i227, -32           ; 4 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next554, %vector.body550 ] ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %index551 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %wide.load552 = load <16 x i8>, ptr %i.zy, align 1, !tbaa !64
  %wide.load553 = load <16 x i8>, ptr %i.zz, align 1, !tbaa !64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 %index551 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  store <16 x i8> %wide.load552, ptr %i.aaa, align 1, !tbaa !64
  store <16 x i8> %wide.load553, ptr %i.aab, align 1, !tbaa !64
  %index.next554 = add nuw i64 %index551, 32      ; 2 uses
  %i.aac = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.aac, label %middle.block555, label %vector.body550, !llvm.loop !932

middle.block555:                                  ; preds = %vector.body550
  %cmp.n556 = icmp eq i64 %.025.i.i227, %n.vec549
  br i1 %cmp.n556, label %._crit_edge.loopexit.i.i232, label %vec.epilog.iter.check560

vec.epilog.iter.check560:                         ; preds = %middle.block555
  %min.epilog.iters.check561 = icmp eq i64 %i.zx, 0
  br i1 %min.epilog.iters.check561, label %.lr.ph.i.i229.preheader, label %vec.epilog.ph562, !prof !109

vec.epilog.ph562:                                 ; preds = %vector.main.loop.iter.check546, %vec.epilog.iter.check560
  %vec.epilog.resume.val557 = phi i64 [ %n.vec549, %vec.epilog.iter.check560 ], [ 0, %vector.main.loop.iter.check546 ]
  %n.vec563 = and i64 %.025.i.i227, -4            ; 3 uses
  br label %vec.epilog.vector.body564

vec.epilog.vector.body564:                        ; preds = %vec.epilog.vector.body564, %vec.epilog.ph562
  %index565 = phi i64 [ %vec.epilog.resume.val557, %vec.epilog.ph562 ], [ %index.next567, %vec.epilog.vector.body564 ] ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %index565
  %wide.load566 = load <4 x i8>, ptr %i.aad, align 1, !tbaa !64
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zu, i64 %index565
  store <4 x i8> %wide.load566, ptr %i.aae, align 1, !tbaa !64
  %index.next567 = add nuw i64 %index565, 4       ; 2 uses
  %i.aaf = icmp eq i64 %index.next567, %n.vec563
  br i1 %i.aaf, label %vec.epilog.middle.block568, label %vec.epilog.vector.body564, !llvm.loop !933

vec.epilog.middle.block568:                       ; preds = %vec.epilog.vector.body564
  %cmp.n569 = icmp eq i64 %.025.i.i227, %n.vec563
  br i1 %cmp.n569, label %._crit_edge.loopexit.i.i232, label %.lr.ph.i.i229.preheader

.lr.ph.i.i229.preheader:                          ; preds = %vector.memcheck543, %iter.check558, %vec.epilog.iter.check560, %vec.epilog.middle.block568
  %.030.i.i230.ph = phi i64 [ 0, %iter.check558 ], [ 0, %vector.memcheck543 ], [ %n.vec549, %vec.epilog.iter.check560 ], [ %n.vec563, %vec.epilog.middle.block568 ] ; 3 uses
  %xtraiter619 = and i64 %.025.i.i227, 3          ; 2 uses
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i229.prol.loopexit, label %.lr.ph.i.i229.prol

.lr.ph.i.i229.prol:                               ; preds = %.lr.ph.i.i229.preheader, %.lr.ph.i.i229.prol
  %.030.i.i230.prol = phi i64 [ %i.aaj, %.lr.ph.i.i229.prol ], [ %.030.i.i230.ph, %.lr.ph.i.i229.preheader ] ; 3 uses
  %prol.iter621 = phi i64 [ %prol.iter621.next, %.lr.ph.i.i229.prol ], [ 0, %.lr.ph.i.i229.preheader ]
  %i.aag = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %.030.i.i230.prol
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.030.i.i230.prol
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !64
  %i.aaj = add nuw i64 %.030.i.i230.prol, 1       ; 2 uses
  %prol.iter621.next = add i64 %prol.iter621, 1   ; 2 uses
  %prol.iter621.cmp.not = icmp eq i64 %prol.iter621.next, %xtraiter619
  br i1 %prol.iter621.cmp.not, label %.lr.ph.i.i229.prol.loopexit, label %.lr.ph.i.i229.prol, !llvm.loop !934

.lr.ph.i.i229.prol.loopexit:                      ; preds = %.lr.ph.i.i229.prol, %.lr.ph.i.i229.preheader
  %.030.i.i230.unr = phi i64 [ %.030.i.i230.ph, %.lr.ph.i.i229.preheader ], [ %i.aaj, %.lr.ph.i.i229.prol ]
  %i.aak = sub i64 %.030.i.i230.ph, %.025.i.i227
  %i.aal = icmp ugt i64 %i.aak, -4
  br i1 %i.aal, label %._crit_edge.loopexit.i.i232, label %.lr.ph.i.i229

._crit_edge.loopexit.i.i232:                      ; preds = %.lr.ph.i.i229.prol.loopexit, %.lr.ph.i.i229, %vec.epilog.middle.block568, %middle.block555
  %.pre37.i.i233 = load i64, ptr %i.nl, align 8, !tbaa !69
  br label %._crit_edge.i.i234

._crit_edge.i.i234:                               ; preds = %._crit_edge.loopexit.i.i232, %bb.bo
  %i.aam = phi i64 [ %.pre37.i.i233, %._crit_edge.loopexit.i.i232 ], [ %.026.i.i226, %bb.bo ]
  %i.aan = add i64 %i.aam, %.025.i.i227           ; 3 uses
  store i64 %i.aan, ptr %i.nl, align 8, !tbaa !69
  %i.aao = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %.025.i.i227 ; 2 uses
  %.not.i.i235 = icmp eq ptr %i.aao, %i.ze
  br i1 %.not.i.i235, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239, label %bb.bm, !llvm.loop !3

.lr.ph.i.i229:                                    ; preds = %.lr.ph.i.i229.prol.loopexit, %.lr.ph.i.i229
  %.030.i.i230 = phi i64 [ %i.abe, %.lr.ph.i.i229 ], [ %.030.i.i230.unr, %.lr.ph.i.i229.prol.loopexit ] ; 6 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %.030.i.i230
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !64
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.030.i.i230
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !64
  %i.aas = add nuw i64 %.030.i.i230, 1            ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aas
  store i8 %i.aau, ptr %i.aav, align 1, !tbaa !64
  %i.aaw = add nuw i64 %.030.i.i230, 2            ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !64
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aaw
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !64
  %i.aba = add nuw i64 %.030.i.i230, 3            ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.02732.i.i225, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !64
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aba
  store i8 %i.abc, ptr %i.abd, align 1, !tbaa !64
  %i.abe = add nuw i64 %.030.i.i230, 4            ; 2 uses
  %exitcond.not.i.i231.3 = icmp eq i64 %i.abe, %.025.i.i227
  br i1 %exitcond.not.i.i231.3, label %._crit_edge.loopexit.i.i232, label %.lr.ph.i.i229, !llvm.loop !935

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239: ; preds = %._crit_edge.i.i234, %_ZN3fmt3v1210format_intC2Ei.exit.i220
  %i.abf = phi i64 [ %.pre312, %_ZN3fmt3v1210format_intC2Ei.exit.i220 ], [ %i.aan, %._crit_edge.i.i234 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.abg = add i64 %i.abf, 1                      ; 3 uses
  %i.abh = load i64, ptr %i.no, align 8, !tbaa !68
  %i.abi = icmp ugt i64 %i.abg, %i.abh
  br i1 %i.abi, label %bb.bp, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243

bb.bp:                                            ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239
  %i.abj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !66
  call void %i.abk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.abg), !inline_history !29
  %.pre.i241 = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i242 = add i64 %.pre.i241, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239, %bb.bp
  %.pre-phi.i240 = phi i64 [ %i.abg, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239 ], [ %.pre2.i242, %bb.bp ]
  %i.abl = phi i64 [ %i.abf, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit239 ], [ %.pre.i241, %bb.bp ]
  %i.abm = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i240, ptr %i.nl, align 8, !tbaa !69
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abl
  store i8 93, ptr %i.abn, align 1, !tbaa !64
  %i.abo = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  %i.abp = add i64 %i.abo, 1                      ; 3 uses
  %i.abq = load i64, ptr %i.no, align 8, !tbaa !68
  %i.abr = icmp ugt i64 %i.abp, %i.abq
  br i1 %i.abr, label %bb.bq, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit247

bb.bq:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243
  %i.abs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !66
  call void %i.abt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.abp), !inline_history !29
  %.pre.i245 = load i64, ptr %i.nl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i246 = add i64 %.pre.i245, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit247

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit247: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243, %bb.bq
  %.pre-phi.i244 = phi i64 [ %i.abp, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243 ], [ %.pre2.i246, %bb.bq ]
  %i.abu = phi i64 [ %i.abo, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit243 ], [ %.pre.i245, %bb.bq ]
  %i.abv = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i244, ptr %i.nl, align 8, !tbaa !69
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abu
  store i8 32, ptr %i.abw, align 1, !tbaa !64
  br label %bb.br

bb.br:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit247, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit189
  %i.abx = load i8, ptr @_ZGVZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, align 8
  %i.aby = icmp eq i8 %i.abx, 0
  br i1 %i.aby, label %bb.bs, label %_ZN6spdlog3mdc11get_contextB5cxx11Ev.exit, !prof !315

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), align 8, !tbaa !320
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 16), align 8, !tbaa !321
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 24), align 8, !tbaa !322
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 32), align 8, !tbaa !323
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 40), align 8, !tbaa !324
end_hunk_1
begin_hunk_2_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #42
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #37

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !950
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !951  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.g) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #44
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #44
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !949

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #38

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(283) %1) local_unnamed_addr #26 comdat {
bb.a:
  %2 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 1000
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %0 to i16       ; 2 uses
  %i.b = udiv i16 %.lhs.trunc, 100
  %i.c = urem i16 %.lhs.trunc, 100
  %i.d = trunc nuw nsw i16 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !29
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !64
  %.lhs.trunc21 = trunc nuw nsw i16 %i.c to i8    ; 2 uses
  %i.q = udiv i8 %.lhs.trunc21, 10
  %i.r = urem i8 %.lhs.trunc21, 10
  %i.s = or disjoint i8 %i.q, 48
  %i.t = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !68
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u), !inline_history !29
  %.pre.i10 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i11 = add i64 %.pre.i10, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.d
  %.pre-phi.i9 = phi i64 [ %i.u, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i11, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i10, %bb.d ]
  %i.aa = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i9, ptr %i.f, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !64
  %i.ac = or disjoint i8 %i.r, 48
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !68
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae), !inline_history !29
  %.pre.i14 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i15 = add i64 %.pre.i14, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12, %bb.e
  %.pre-phi.i13 = phi i64 [ %i.ae, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12 ], [ %.pre2.i15, %bb.e ]
  %i.aj = phi i64 [ %i.ad, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12 ], [ %.pre.i14, %bb.e ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i13, ptr %i.f, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 %i.ac, ptr %i.al, align 1, !tbaa !64
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i ], [ 21, %bb.f ] ; 3 uses
  %.01819.i.i.i.i = phi i32 [ %i.au, %.lr.ph.i.i.i.i ], [ %0, %bb.f ] ; 4 uses
  %i.am = add i32 %.020.i.i.i.i, -2               ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  %i.ap = urem i32 %.01819.i.i.i.i, 100
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  store i16 %i.at, ptr %i.ao, align 1
  %i.au = udiv i32 %.01819.i.i.i.i, 100           ; 3 uses
  %i.av = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.aw = icmp samesign ugt i32 %.01819.i.i.i.i, 999
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = add i32 %.020.i.i.i.i, -4
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.au, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  store i16 %i.bd, ptr %i.az, align 1
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = trunc nuw nsw i32 %i.au to i8
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = add i32 %.020.i.i.i.i, -3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

_ZN3fmt3v1210format_intC2Ej.exit.i:               ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.ay, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !305
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = add i64 %i.bl, 21                       ; 3 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %.not31.i.i = icmp eq i64 %i.bn, %i.bm
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ej.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i = load i64, ptr %i.bq, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bt = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.da, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bk, %.lr.ph34.i.i ], [ %i.db, %._crit_edge.i.i ] ; 9 uses
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !68
  %i.bv = sub i64 %i.bu, %i.bt
  %i.bw = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bx = sub i64 %i.bn, %i.bw                    ; 4 uses
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !66
  %i.ca = add i64 %i.bx, %i.bt
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(283) %1, i64 noundef %i.ca), !inline_history !33
  %i.cb = load i64, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %i.cc = load i64, ptr %i.br, align 8, !tbaa !68
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.cd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.026.i.i = phi i64 [ %i.cb, %bb.j ], [ %i.bt, %bb.i ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ce, %bb.j ], [ %i.bx, %bb.i ] ; 13 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ci = add i64 %.026.i.i, %i.cg
  %i.cj = sub i64 %i.bw, %i.ci
  %diff.check = icmp ugt i64 %i.cj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <16 x i8>, ptr %i.cl, align 1, !tbaa !64
  %wide.load36 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <16 x i8> %wide.load, ptr %i.cn, align 1, !tbaa !64
  store <16 x i8> %wide.load36, ptr %i.co, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.cr, align 1, !tbaa !64
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !953

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.030.i.i.prol
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !64
  %i.cw = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !954

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.prol ]
  %i.cx = sub i64 %.030.i.i.ph, %.025.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.bq, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.k
  %i.cz = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.k ]
  %i.da = add i64 %i.cz, %.025.i.i                ; 2 uses
  store i64 %i.da, ptr %i.bq, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, %i.bp
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.i, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dr, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.030.i.i
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !64
  %i.df = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !64
  %i.dj = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !64
  %i.dn = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !64
  %i.dr = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dr, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !955

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.l

bb.l:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

declare void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %struct.id_adapter.211, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 9 uses
  %.not50 = icmp samesign eq i64 %1, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = ptrtoaddr ptr %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit
  %.051 = phi ptr [ %0, %.lr.ph ], [ %.1, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.051, i64 1 ; 8 uses
  %i.j = load i8, ptr %.051, align 1, !tbaa !64
  switch i8 %i.j, label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEPKT_S8_S8_OT0_.exit [
    i8 123, label %bb.c
    i8 125, label %bb.z
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.i, %i.a
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.55) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.i, align 1, !tbaa !64
  switch i8 %i.l, label %bb.n [
    i8 125, label %bb.f
    i8 123, label %bb.j
    i8 58, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN6spdlog7details21short_level_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.030.i.i.i.i.prol
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !64
  %i.da = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1002

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.prol ]
  %i.db = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block45, %middle.block32
  %.pre37.i.i.i.i = load i64, ptr %i.bt, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.h
  %i.dd = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.h ]
  %i.de = add i64 %i.dd, %.025.i.i.i.i            ; 2 uses
  store i64 %i.de, ptr %i.bt, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, %i.bs
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.f, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.030.i.i.i.i
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !64
  %i.dj = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !64
  %i.dn = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !64
  %i.dr = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !64
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !64
  %i.dv = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dv, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1003

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.dw = load ptr, ptr %4, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !265, !range !71, !noundef !72
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !69
  %i.ee = add nsw i64 %i.ed, %i.bm
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.ee, i64 0) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !68 ; 2 uses
  %i.eh = icmp ugt i64 %spec.store.select.i, %i.eg
  br i1 %i.eh, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !66
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(283) %i.eb, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.ef, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.j
  %i.ek = phi i64 [ %i.eg, %bb.j ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.el = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.ek)
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.em = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.em) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.i, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.m:                                             ; preds = %bb.c
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.en
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = or i64 %i.b, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !64
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  %i.k = icmp ult i64 %i.b, %i.j
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %.neg.i.i.i.i, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(14) %i.n, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.p = icmp ugt i64 %i.o, 99
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.o, %bb.a ] ; 3 uses
  %i.q = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.r
  %i.t = urem i64 %.01819.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.o, %bb.a ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.q, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ad = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !305
  %i.an = ptrtoint ptr %4 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not31.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.am, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 9 uses
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !68
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.az = sub i64 %i.ap, %i.ay                    ; 4 uses
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.bc = add i64 %i.az, %i.av
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bc)
          to label %.noexc unwind label %bb.o, !inline_history !38

.noexc:                                           ; preds = %bb.e
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.be = load i64, ptr %i.at, align 8, !tbaa !68
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bf)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.bd, %.noexc ], [ %i.av, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bg, %.noexc ], [ %i.az, %bb.d ] ; 13 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i, %i.bi
  %i.bl = sub i64 %i.ay, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check23 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !64
  %wide.load24 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !64
  store <16 x i8> %wide.load24, ptr %i.bq, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1004

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index26
  store <4 x i8> %wide.load27, ptr %i.bt, align 1, !tbaa !64
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next28, %n.vec25
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1005

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %.025.i.i, %n.vec25
  br i1 %cmp.n29, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !64
  %i.by = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1006

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.by, %.lr.ph.i.i.prol ]
  %i.bz = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cc = add i64 %i.cb, %.025.i.i                ; 2 uses
  store i64 %i.cc, ptr %i.as, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.ar
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !64
  %i.cl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !64
  %i.cp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !64
  %i.ct = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ct, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1007

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !331 ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  br i1 %i.cw, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cv, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph34.i.i.i.i
  %i.dg = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.en, %._crit_edge.i.i.i.i8 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cy, %.lr.ph34.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dk = sub i64 %i.de, %i.dj                    ; 4 uses
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !66
  %i.dn = add i64 %i.dk, %i.dg
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(283) %i.da, i64 noundef %i.dn)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !69 ; 2 uses
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.dq = sub i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dq)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.do, %.noexc.i ], [ %i.dg, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.dr, %.noexc.i ], [ %i.dk, %bb.h ] ; 13 uses
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !67 ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_3
begin_hunk_4_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %min.iters.check244, label %vec.epilog.ph259, label %vector.ph245

vector.ph245:                                     ; preds = %vector.main.loop.iter.check243
  %i.cv = and i64 %.025.i.i31, 28
  %n.vec246 = and i64 %.025.i.i31, -32            ; 4 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body247 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %index248 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load249 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !64
  %wide.load250 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %index248 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load249, ptr %i.cy, align 1, !tbaa !64
  store <16 x i8> %wide.load250, ptr %i.cz, align 1, !tbaa !64
  %index.next251 = add nuw i64 %index248, 32      ; 2 uses
  %i.da = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.da, label %middle.block252, label %vector.body247, !llvm.loop !1056

middle.block252:                                  ; preds = %vector.body247
  %cmp.n253 = icmp eq i64 %.025.i.i31, %n.vec246
  br i1 %cmp.n253, label %._crit_edge.loopexit.i.i36, label %vec.epilog.iter.check257

vec.epilog.iter.check257:                         ; preds = %middle.block252
  %min.epilog.iters.check258 = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check258, label %.lr.ph.i.i33.preheader, label %vec.epilog.ph259, !prof !109

vec.epilog.ph259:                                 ; preds = %vector.main.loop.iter.check243, %vec.epilog.iter.check257
  %vec.epilog.resume.val254 = phi i64 [ %n.vec246, %vec.epilog.iter.check257 ], [ 0, %vector.main.loop.iter.check243 ]
  %n.vec260 = and i64 %.025.i.i31, -4             ; 3 uses
  br label %vec.epilog.vector.body261

vec.epilog.vector.body261:                        ; preds = %vec.epilog.vector.body261, %vec.epilog.ph259
  %index262 = phi i64 [ %vec.epilog.resume.val254, %vec.epilog.ph259 ], [ %index.next264, %vec.epilog.vector.body261 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %index262
  %wide.load263 = load <4 x i8>, ptr %i.db, align 1, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %index262
  store <4 x i8> %wide.load263, ptr %i.dc, align 1, !tbaa !64
  %index.next264 = add nuw i64 %index262, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next264, %n.vec260
  br i1 %i.dd, label %vec.epilog.middle.block265, label %vec.epilog.vector.body261, !llvm.loop !1057

vec.epilog.middle.block265:                       ; preds = %vec.epilog.vector.body261
  %cmp.n266 = icmp eq i64 %.025.i.i31, %n.vec260
  br i1 %cmp.n266, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33.preheader

.lr.ph.i.i33.preheader:                           ; preds = %vector.memcheck240, %iter.check255, %vec.epilog.iter.check257, %vec.epilog.middle.block265
  %.030.i.i34.ph = phi i64 [ 0, %iter.check255 ], [ 0, %vector.memcheck240 ], [ %n.vec246, %vec.epilog.iter.check257 ], [ %n.vec260, %vec.epilog.middle.block265 ] ; 3 uses
  %xtraiter358 = and i64 %.025.i.i31, 3           ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i.i33.prol.loopexit, label %.lr.ph.i.i33.prol

.lr.ph.i.i33.prol:                                ; preds = %.lr.ph.i.i33.preheader, %.lr.ph.i.i33.prol
  %.030.i.i34.prol = phi i64 [ %i.dh, %.lr.ph.i.i33.prol ], [ %.030.i.i34.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.lr.ph.i.i33.prol ], [ 0, %.lr.ph.i.i33.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %.030.i.i34.prol
  %i.df = load i8, ptr %i.de, align 1, !tbaa !64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.030.i.i34.prol
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !64
  %i.dh = add nuw i64 %.030.i.i34.prol, 1         ; 2 uses
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.lr.ph.i.i33.prol.loopexit, label %.lr.ph.i.i33.prol, !llvm.loop !1058

.lr.ph.i.i33.prol.loopexit:                       ; preds = %.lr.ph.i.i33.prol, %.lr.ph.i.i33.preheader
  %.030.i.i34.unr = phi i64 [ %.030.i.i34.ph, %.lr.ph.i.i33.preheader ], [ %i.dh, %.lr.ph.i.i33.prol ]
  %i.di = sub i64 %.030.i.i34.ph, %.025.i.i31
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33

._crit_edge.loopexit.i.i36:                       ; preds = %.lr.ph.i.i33.prol.loopexit, %.lr.ph.i.i33, %vec.epilog.middle.block265, %middle.block252
  %.pre37.i.i37 = load i64, ptr %i.bl, align 8, !tbaa !69
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %._crit_edge.loopexit.i.i36, %bb.i
  %i.dk = phi i64 [ %.pre37.i.i37, %._crit_edge.loopexit.i.i36 ], [ %.026.i.i30, %bb.i ]
  %i.dl = add i64 %i.dk, %.025.i.i31              ; 3 uses
  store i64 %i.dl, ptr %i.bl, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %.025.i.i31 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.dm, %i.cb
  br i1 %.not.i.i39, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41, label %bb.g, !llvm.loop !3

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33.prol.loopexit, %.lr.ph.i.i33
  %.030.i.i34 = phi i64 [ %i.ec, %.lr.ph.i.i33 ], [ %.030.i.i34.unr, %.lr.ph.i.i33.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %.030.i.i34
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.030.i.i34
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !64
  %i.dq = add nuw i64 %.030.i.i34, 1              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !64
  %i.du = add nuw i64 %.030.i.i34, 2              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !64
  %i.dy = add nuw i64 %.030.i.i34, 3              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02732.i.i29, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !64
  %i.ec = add nuw i64 %.030.i.i34, 4              ; 2 uses
  %exitcond.not.i.i35.3 = icmp eq i64 %i.ec, %.025.i.i31
  br i1 %exitcond.not.i.i35.3, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33, !llvm.loop !1059

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41: ; preds = %._crit_edge.i.i38, %bb.f
  %i.ed = phi i64 [ %.pre171, %bb.f ], [ %i.dl, %._crit_edge.i.i38 ] ; 2 uses
  %i.ee = add i64 %i.ed, 1                        ; 3 uses
  %i.ef = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !66
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ee)
          to label %.noexc45 unwind label %bb.ba, !inline_history !39

.noexc45:                                         ; preds = %bb.j
  %.pre.i43 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i44 = add i64 %.pre.i43, 1
  br label %bb.k

bb.k:                                             ; preds = %.noexc45, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41
  %.pre-phi.i42 = phi i64 [ %i.ee, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41 ], [ %.pre2.i44, %.noexc45 ]
  %i.ej = phi i64 [ %i.ed, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit41 ], [ %.pre.i43, %.noexc45 ]
  %i.ek = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i42, ptr %i.bl, align 8, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 32, ptr %i.el, align 1, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !307 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.eo = icmp slt i32 %i.en, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.en, i1 false) ; 3 uses
  %i.ep = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.eq, %.lr.ph.i.i.i.i.i ], [ 21, %bb.k ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.k ] ; 3 uses
  %i.eq = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 %i.er
  %i.et = urem i32 %.01819.i.i.i.i.i, 100
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2
  store i16 %i.ex, ptr %i.es, align 1
  %i.ey = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ez = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.k
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.k ], [ %i.ey, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.k ], [ %i.eq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.fa = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fb = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 %i.fc
  %i.fe = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fd, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fi = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.fj = or disjoint i8 %i.fi, 48
  %i.fk = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 %i.fl
  store i8 %i.fj, ptr %i.fm, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.fl, %bb.m ], [ %i.fc, %bb.l ]
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.eo, label %bb.n, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.n:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -1 ; 2 uses
  store i8 45, ptr %i.fo, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.n, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.fo, %bb.n ], [ %i.fn, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %.0.i.i.i, ptr %i.fp, align 8, !tbaa !305
  %i.fq = ptrtoint ptr %11 to i64
  %i.fr = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fs = add i64 %i.fq, 21                       ; 3 uses
  %i.ft = sub i64 %i.fs, %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ft
  %.not31.i.i47 = icmp eq i64 %i.fs, %i.fr
  %.pre172 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  br i1 %.not31.i.i47, label %.loopexit159, label %.lr.ph34.i.i48

.lr.ph34.i.i48:                                   ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i59, %.lr.ph34.i.i48
  %i.fw = phi i64 [ %.pre172, %.lr.ph34.i.i48 ], [ %i.hd, %._crit_edge.i.i59 ] ; 3 uses
  %.02732.i.i50 = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i48 ], [ %i.he, %._crit_edge.i.i59 ] ; 9 uses
  %i.fx = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.fy = sub i64 %i.fx, %i.fw
  %i.fz = ptrtoint ptr %.02732.i.i50 to i64       ; 2 uses
  %i.ga = sub i64 %i.fs, %i.fz                    ; 4 uses
  %i.gb = icmp ult i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !66
  %i.gd = add i64 %i.ga, %i.fw
  invoke void %i.gc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.gd)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit, !inline_history !40

.noexc61:                                         ; preds = %bb.p
  %i.ge = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.gf = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.gg = sub i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.ga, i64 %i.gg)
  br label %bb.q

bb.q:                                             ; preds = %.noexc61, %bb.o
  %.026.i.i51 = phi i64 [ %i.ge, %.noexc61 ], [ %i.fw, %bb.o ] ; 3 uses
  %.025.i.i52 = phi i64 [ %i.gh, %.noexc61 ], [ %i.ga, %bb.o ] ; 13 uses
  %i.gi = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.026.i.i51 ; 7 uses
  %.not36.i.i53 = icmp eq i64 %.025.i.i52, 0
  br i1 %.not36.i.i53, label %._crit_edge.i.i59, label %iter.check283

iter.check283:                                    ; preds = %bb.q
  %min.iters.check270.a = icmp ult i64 %.025.i.i52, 4
  br i1 %min.iters.check270.a, label %.lr.ph.i.i54.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %iter.check283
  %i.gl = add i64 %.026.i.i51, %i.gj
  %i.gm = sub i64 %i.fz, %i.gl
  %diff.check269 = icmp ugt i64 %i.gm, -32
  br i1 %diff.check269, label %.lr.ph.i.i54.preheader, label %vector.main.loop.iter.check271

vector.main.loop.iter.check271:                   ; preds = %vector.memcheck268
  %min.iters.check272 = icmp ult i64 %.025.i.i52, 32
  br i1 %min.iters.check272, label %vec.epilog.ph287, label %vector.ph273

vector.ph273:                                     ; preds = %vector.main.loop.iter.check271
  %i.gn = and i64 %.025.i.i52, 28
  %n.vec274 = and i64 %.025.i.i52, -32            ; 4 uses
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next279, %vector.body275 ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %index276 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load277 = load <16 x i8>, ptr %i.go, align 1, !tbaa !64
  %wide.load278 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %index276 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <16 x i8> %wide.load277, ptr %i.gq, align 1, !tbaa !64
  store <16 x i8> %wide.load278, ptr %i.gr, align 1, !tbaa !64
  %index.next279 = add nuw i64 %index276, 32      ; 2 uses
  %i.gs = icmp eq i64 %index.next279, %n.vec274
  br i1 %i.gs, label %middle.block280, label %vector.body275, !llvm.loop !1060

middle.block280:                                  ; preds = %vector.body275
  %cmp.n281 = icmp eq i64 %.025.i.i52, %n.vec274
  br i1 %cmp.n281, label %._crit_edge.loopexit.i.i57, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block280
  %min.epilog.iters.check286 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph.i.i54.preheader, label %vec.epilog.ph287, !prof !109

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check271, %vec.epilog.iter.check285
  %vec.epilog.resume.val282 = phi i64 [ %n.vec274, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check271 ]
  %n.vec288 = and i64 %.025.i.i52, -4             ; 3 uses
  br label %vec.epilog.vector.body289

vec.epilog.vector.body289:                        ; preds = %vec.epilog.vector.body289, %vec.epilog.ph287
  %index290 = phi i64 [ %vec.epilog.resume.val282, %vec.epilog.ph287 ], [ %index.next292, %vec.epilog.vector.body289 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %index290
  %wide.load291 = load <4 x i8>, ptr %i.gt, align 1, !tbaa !64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 %index290
  store <4 x i8> %wide.load291, ptr %i.gu, align 1, !tbaa !64
  %index.next292 = add nuw i64 %index290, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.gv, label %vec.epilog.middle.block293, label %vec.epilog.vector.body289, !llvm.loop !1061

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body289
  %cmp.n294 = icmp eq i64 %.025.i.i52, %n.vec288
  br i1 %cmp.n294, label %._crit_edge.loopexit.i.i57, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %vector.memcheck268, %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block293
  %.030.i.i55.ph = phi i64 [ 0, %iter.check283 ], [ 0, %vector.memcheck268 ], [ %n.vec274, %vec.epilog.iter.check285 ], [ %n.vec288, %vec.epilog.middle.block293 ] ; 3 uses
  %xtraiter361 = and i64 %.025.i.i52, 3           ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol

.lr.ph.i.i54.prol:                                ; preds = %.lr.ph.i.i54.preheader, %.lr.ph.i.i54.prol
  %.030.i.i55.prol = phi i64 [ %i.gz, %.lr.ph.i.i54.prol ], [ %.030.i.i55.ph, %.lr.ph.i.i54.preheader ] ; 3 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i.i54.prol ], [ 0, %.lr.ph.i.i54.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %.030.i.i55.prol
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.030.i.i55.prol
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !64
  %i.gz = add nuw i64 %.030.i.i55.prol, 1         ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol, !llvm.loop !1062

.lr.ph.i.i54.prol.loopexit:                       ; preds = %.lr.ph.i.i54.prol, %.lr.ph.i.i54.preheader
  %.030.i.i55.unr = phi i64 [ %.030.i.i55.ph, %.lr.ph.i.i54.preheader ], [ %i.gz, %.lr.ph.i.i54.prol ]
  %i.ha = sub i64 %.030.i.i55.ph, %.025.i.i52
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %._crit_edge.loopexit.i.i57, label %.lr.ph.i.i54

._crit_edge.loopexit.i.i57:                       ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54, %vec.epilog.middle.block293, %middle.block280
  %.pre37.i.i58 = load i64, ptr %i.bl, align 8, !tbaa !69
  br label %._crit_edge.i.i59

._crit_edge.i.i59:                                ; preds = %._crit_edge.loopexit.i.i57, %bb.q
  %i.hc = phi i64 [ %.pre37.i.i58, %._crit_edge.loopexit.i.i57 ], [ %.026.i.i51, %bb.q ]
  %i.hd = add i64 %i.hc, %.025.i.i52              ; 3 uses
  store i64 %i.hd, ptr %i.bl, align 8, !tbaa !69
  %i.he = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %.025.i.i52 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.he, %i.fu
  br i1 %.not.i.i60, label %.loopexit159, label %bb.o, !llvm.loop !3

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54
  %.030.i.i55 = phi i64 [ %i.hu, %.lr.ph.i.i54 ], [ %.030.i.i55.unr, %.lr.ph.i.i54.prol.loopexit ] ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %.030.i.i55
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.030.i.i55
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !64
  %i.hi = add nuw i64 %.030.i.i55, 1              ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hi
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !64
  %i.hm = add nuw i64 %.030.i.i55, 2              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hm
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !64
  %i.hq = add nuw i64 %.030.i.i55, 3              ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.02732.i.i50, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hq
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !64
  %i.hu = add nuw i64 %.030.i.i55, 4              ; 2 uses
  %exitcond.not.i.i56.3 = icmp eq i64 %i.hu, %.025.i.i52
  br i1 %exitcond.not.i.i56.3, label %._crit_edge.loopexit.i.i57, label %.lr.ph.i.i54, !llvm.loop !1063

.loopexit159:                                     ; preds = %._crit_edge.i.i59, %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.hv = phi i64 [ %.pre172, %_ZN3fmt3v1210format_intC2Ei.exit.i ], [ %i.hd, %._crit_edge.i.i59 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hw = add i64 %i.hv, 1                        ; 3 uses
  %i.hx = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.hy = icmp ugt i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit159
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !66
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hw)
          to label %.noexc65 unwind label %bb.bb, !inline_history !39

.noexc65:                                         ; preds = %bb.r
  %.pre.i63 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i64 = add i64 %.pre.i63, 1
  br label %bb.s

bb.s:                                             ; preds = %.noexc65, %.loopexit159
  %.pre-phi.i62 = phi i64 [ %i.hw, %.loopexit159 ], [ %.pre2.i64, %.noexc65 ]
  %i.ib = phi i64 [ %i.hv, %.loopexit159 ], [ %.pre.i63, %.noexc65 ]
  %i.ic = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i62, ptr %i.bl, align 8, !tbaa !69
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ib
  store i8 32, ptr %i.id, align 1, !tbaa !64
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !308 ; 3 uses
  %or.cond.i = icmp ult i32 %i.if, 100
  br i1 %or.cond.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.lhs.trunc.i = trunc nuw nsw i32 %i.if to i8   ; 2 uses
  %i.ig = udiv i8 %.lhs.trunc.i, 10
  %i.ih = urem i8 %.lhs.trunc.i, 10
  %i.ii = or disjoint i8 %i.ig, 48
  %i.ij = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.ik = add i64 %i.ij, 1                        ; 3 uses
  %i.il = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.im = icmp ugt i64 %i.ik, %i.il
  br i1 %i.im, label %bb.u, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.u:                                             ; preds = %bb.t
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !66
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ik)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc68:                                         ; preds = %bb.u
  %.pre.i.i67 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i67, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %.noexc68, %bb.t
end_hunk_4
begin_hunk_5_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kw)
          to label %.noexc97 unwind label %bb.bd, !inline_history !39

.noexc97:                                         ; preds = %bb.ad
  %.pre.i95 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i96 = add i64 %.pre.i95, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc97, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93
  %.pre-phi.i94 = phi i64 [ %i.kw, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93 ], [ %.pre2.i96, %.noexc97 ]
  %i.lb = phi i64 [ %i.kv, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93 ], [ %.pre.i95, %.noexc97 ]
  %i.lc = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i94, ptr %i.bl, align 8, !tbaa !69
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lb
  store i8 58, ptr %i.ld, align 1, !tbaa !64
  %i.le = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i99 = icmp ult i32 %i.le, 100
  br i1 %or.cond.i99, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.lhs.trunc.i102 = trunc nuw nsw i32 %i.le to i8 ; 2 uses
  %i.lf = udiv i8 %.lhs.trunc.i102, 10
  %i.lg = urem i8 %.lhs.trunc.i102, 10
  %i.lh = or disjoint i8 %i.lf, 48
  %i.li = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.lj = add i64 %i.li, 1                        ; 3 uses
  %i.lk = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.ll = icmp ugt i64 %i.lj, %i.lk
  br i1 %i.ll, label %bb.ag, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103

bb.ag:                                            ; preds = %bb.af
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !66
  invoke void %i.ln(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.lj)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc111:                                        ; preds = %bb.ag
  %.pre.i.i109 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i110 = add i64 %.pre.i.i109, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103: ; preds = %.noexc111, %bb.af
  %.pre-phi.i.i104 = phi i64 [ %i.lj, %bb.af ], [ %.pre2.i.i110, %.noexc111 ]
  %i.lo = phi i64 [ %i.li, %bb.af ], [ %.pre.i.i109, %.noexc111 ]
  %i.lp = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i104, ptr %i.bl, align 8, !tbaa !69
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lo
  store i8 %i.lh, ptr %i.lq, align 1, !tbaa !64
  %i.lr = or disjoint i8 %i.lg, 48
  %i.ls = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.lt = add i64 %i.ls, 1                        ; 3 uses
  %i.lu = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.lv = icmp ugt i64 %i.lt, %i.lu
  br i1 %i.lv, label %bb.ah, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i105

bb.ah:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !66
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.lt)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc112:                                        ; preds = %bb.ah
  %.pre.i5.i107 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i108 = add i64 %.pre.i5.i107, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i105

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i105: ; preds = %.noexc112, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103
  %.pre-phi.i4.i106 = phi i64 [ %i.lt, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103 ], [ %.pre2.i6.i108, %.noexc112 ]
  %i.ly = phi i64 [ %i.ls, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i103 ], [ %.pre.i5.i107, %.noexc112 ]
  %i.lz = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i106, ptr %i.bl, align 8, !tbaa !69
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  store i8 %i.lr, ptr %i.ma, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i32 1, ptr %5, align 8, !tbaa !204
  %.ptr.i.i100 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %.ptr.i.i100, align 8, !tbaa !206
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.mb, align 8, !tbaa !207
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.70, ptr %i.mc, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i101 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i101, align 8, !tbaa !70
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.md, align 8, !tbaa !209
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.me, align 4, !tbaa !211
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %5, ptr %i.mf, align 8, !tbaa !212
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.mg, align 8, !tbaa !177
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store i32 %i.le, ptr %6, align 16, !tbaa !64
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %6, ptr null)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115: ; preds = %.noexc114, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i105
  %i.mh = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.mi = add i64 %i.mh, 1                        ; 3 uses
  %i.mj = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.mk = icmp ugt i64 %i.mi, %i.mj
  br i1 %i.mk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !66
  invoke void %i.mm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mi)
          to label %.noexc119 unwind label %bb.be, !inline_history !39

.noexc119:                                        ; preds = %bb.aj
  %.pre.i117 = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.pre2.i118 = add i64 %.pre.i117, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc119, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115
  %.pre-phi.i116 = phi i64 [ %i.mi, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115 ], [ %.pre2.i118, %.noexc119 ]
  %i.mn = phi i64 [ %i.mh, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit115 ], [ %.pre.i117, %.noexc119 ]
  %i.mo = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i116, ptr %i.bl, align 8, !tbaa !69
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  store i8 32, ptr %i.mp, align 1, !tbaa !64
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !303 ; 2 uses
  %i.ms = add nsw i32 %i.mr, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.mt = icmp slt i32 %i.mr, -1900
  %spec.select.i.i.i121 = call i32 @llvm.abs.i32(i32 %i.ms, i1 true) ; 3 uses
  %i.mu = icmp samesign ugt i32 %spec.select.i.i.i121, 99
  br i1 %i.mu, label %.lr.ph.i.i.i.i.i143, label %._crit_edge.i.i.i.i.i122

.lr.ph.i.i.i.i.i143:                              ; preds = %bb.ak, %.lr.ph.i.i.i.i.i143
  %.020.i.i.i.i.i144 = phi i32 [ %i.mv, %.lr.ph.i.i.i.i.i143 ], [ 21, %bb.ak ]
  %.01819.i.i.i.i.i145 = phi i32 [ %i.nd, %.lr.ph.i.i.i.i.i143 ], [ %spec.select.i.i.i121, %bb.ak ] ; 3 uses
  %i.mv = add i32 %.020.i.i.i.i.i144, -2          ; 3 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 %i.mw
  %i.my = urem i32 %.01819.i.i.i.i.i145, 100
  %i.mz = shl nuw nsw i32 %i.my, 1
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2
  store i16 %i.nc, ptr %i.mx, align 1
  %i.nd = udiv i32 %.01819.i.i.i.i.i145, 100      ; 2 uses
  %i.ne = icmp samesign ugt i32 %.01819.i.i.i.i.i145, 9999
  br i1 %i.ne, label %.lr.ph.i.i.i.i.i143, label %._crit_edge.i.i.i.i.i122, !llvm.loop !30

._crit_edge.i.i.i.i.i122:                         ; preds = %.lr.ph.i.i.i.i.i143, %bb.ak
  %.018.lcssa.i.i.i.i.i123 = phi i32 [ %spec.select.i.i.i121, %bb.ak ], [ %i.nd, %.lr.ph.i.i.i.i.i143 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i124 = phi i32 [ 21, %bb.ak ], [ %i.mv, %.lr.ph.i.i.i.i.i143 ] ; 2 uses
  %i.nf = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i123, 9
  br i1 %i.nf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i122
  %i.ng = add i32 %.0.lcssa.i.i.i.i.i124, -2
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 %i.nh
  %i.nj = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i123, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.nk
  %i.nm = load i16, ptr %i.nl, align 2
  store i16 %i.nm, ptr %i.ni, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i122
  %i.nn = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i123 to i8
  %i.no = or disjoint i8 %i.nn, 48
  %i.np = add i32 %.0.lcssa.i.i.i.i.i124, -1
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 %i.nq
  store i8 %i.no, ptr %i.nr, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125: ; preds = %bb.am, %bb.al
  %.pre-phi.i.i.i.i.i126 = phi i64 [ %i.nq, %bb.am ], [ %i.nh, %bb.al ]
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i126 ; 2 uses
  br i1 %i.mt, label %bb.an, label %_ZN3fmt3v1210format_intC2Ei.exit.i127

bb.an:                                            ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -1 ; 2 uses
  store i8 45, ptr %i.nt, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i127

_ZN3fmt3v1210format_intC2Ei.exit.i127:            ; preds = %bb.an, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125
  %.0.i.i.i128 = phi ptr [ %i.nt, %bb.an ], [ %i.ns, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i125 ] ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i128, ptr %i.nu, align 8, !tbaa !305
  %i.nv = ptrtoint ptr %4 to i64
  %i.nw = ptrtoint ptr %.0.i.i.i128 to i64        ; 2 uses
  %i.nx = add i64 %i.nv, 21                       ; 3 uses
  %i.ny = sub i64 %i.nx, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.i.i.i128, i64 %i.ny
  %.not31.i.i129 = icmp eq i64 %i.nx, %i.nw
  br i1 %.not31.i.i129, label %.loopexit155, label %.lr.ph34.i.i130

.lr.ph34.i.i130:                                  ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i127
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i131 = load i64, ptr %i.bl, align 8, !tbaa !69
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i141, %.lr.ph34.i.i130
  %i.ob = phi i64 [ %.pre.i.i131, %.lr.ph34.i.i130 ], [ %i.pi, %._crit_edge.i.i141 ] ; 3 uses
  %.02732.i.i132 = phi ptr [ %.0.i.i.i128, %.lr.ph34.i.i130 ], [ %i.pj, %._crit_edge.i.i141 ] ; 9 uses
  %i.oc = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.od = sub i64 %i.oc, %i.ob
  %i.oe = ptrtoint ptr %.02732.i.i132 to i64      ; 2 uses
  %i.of = sub i64 %i.nx, %i.oe                    ; 4 uses
  %i.og = icmp ult i64 %i.od, %i.of
  br i1 %i.og, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oh = load ptr, ptr %i.oa, align 8, !tbaa !66
  %i.oi = add i64 %i.of, %i.ob
  invoke void %i.oh(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.oi)
          to label %.noexc146 unwind label %.loopexit, !inline_history !40

.noexc146:                                        ; preds = %bb.ap
  %i.oj = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.ok = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.ol = sub i64 %i.ok, %i.oj
  %i.om = call i64 @llvm.umin.i64(i64 %i.of, i64 %i.ol)
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc146, %bb.ao
  %.026.i.i133 = phi i64 [ %i.oj, %.noexc146 ], [ %i.ob, %bb.ao ] ; 3 uses
  %.025.i.i134 = phi i64 [ %i.om, %.noexc146 ], [ %i.of, %bb.ao ] ; 13 uses
  %i.on = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.oo = ptrtoaddr ptr %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %.026.i.i133 ; 7 uses
  %.not36.i.i135 = icmp eq i64 %.025.i.i134, 0
  br i1 %.not36.i.i135, label %._crit_edge.i.i141, label %iter.check311

iter.check311:                                    ; preds = %bb.aq
  %min.iters.check298.a = icmp ult i64 %.025.i.i134, 4
  br i1 %min.iters.check298.a, label %.lr.ph.i.i136.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %iter.check311
  %i.oq = add i64 %.026.i.i133, %i.oo
  %i.or = sub i64 %i.oe, %i.oq
  %diff.check297 = icmp ugt i64 %i.or, -32
  br i1 %diff.check297, label %.lr.ph.i.i136.preheader, label %vector.main.loop.iter.check299

vector.main.loop.iter.check299:                   ; preds = %vector.memcheck296
  %min.iters.check300 = icmp ult i64 %.025.i.i134, 32
  br i1 %min.iters.check300, label %vec.epilog.ph315, label %vector.ph301

vector.ph301:                                     ; preds = %vector.main.loop.iter.check299
  %i.os = and i64 %.025.i.i134, 28
  %n.vec302 = and i64 %.025.i.i134, -32           ; 4 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %index304 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %wide.load305 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !64
  %wide.load306 = load <16 x i8>, ptr %i.ou, align 1, !tbaa !64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 %index304 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <16 x i8> %wide.load305, ptr %i.ov, align 1, !tbaa !64
  store <16 x i8> %wide.load306, ptr %i.ow, align 1, !tbaa !64
  %index.next307 = add nuw i64 %index304, 32      ; 2 uses
  %i.ox = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ox, label %middle.block308, label %vector.body303, !llvm.loop !1064

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %.025.i.i134, %n.vec302
  br i1 %cmp.n309, label %._crit_edge.loopexit.i.i139, label %vec.epilog.iter.check313

vec.epilog.iter.check313:                         ; preds = %middle.block308
  %min.epilog.iters.check314 = icmp eq i64 %i.os, 0
  br i1 %min.epilog.iters.check314, label %.lr.ph.i.i136.preheader, label %vec.epilog.ph315, !prof !109

vec.epilog.ph315:                                 ; preds = %vector.main.loop.iter.check299, %vec.epilog.iter.check313
  %vec.epilog.resume.val310 = phi i64 [ %n.vec302, %vec.epilog.iter.check313 ], [ 0, %vector.main.loop.iter.check299 ]
  %n.vec316 = and i64 %.025.i.i134, -4            ; 3 uses
  br label %vec.epilog.vector.body317

vec.epilog.vector.body317:                        ; preds = %vec.epilog.vector.body317, %vec.epilog.ph315
  %index318 = phi i64 [ %vec.epilog.resume.val310, %vec.epilog.ph315 ], [ %index.next320, %vec.epilog.vector.body317 ] ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %index318
  %wide.load319 = load <4 x i8>, ptr %i.oy, align 1, !tbaa !64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.op, i64 %index318
  store <4 x i8> %wide.load319, ptr %i.oz, align 1, !tbaa !64
  %index.next320 = add nuw i64 %index318, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next320, %n.vec316
  br i1 %i.pa, label %vec.epilog.middle.block321, label %vec.epilog.vector.body317, !llvm.loop !1065

vec.epilog.middle.block321:                       ; preds = %vec.epilog.vector.body317
  %cmp.n322 = icmp eq i64 %.025.i.i134, %n.vec316
  br i1 %cmp.n322, label %._crit_edge.loopexit.i.i139, label %.lr.ph.i.i136.preheader

.lr.ph.i.i136.preheader:                          ; preds = %vector.memcheck296, %iter.check311, %vec.epilog.iter.check313, %vec.epilog.middle.block321
  %.030.i.i137.ph = phi i64 [ 0, %iter.check311 ], [ 0, %vector.memcheck296 ], [ %n.vec302, %vec.epilog.iter.check313 ], [ %n.vec316, %vec.epilog.middle.block321 ] ; 3 uses
  %xtraiter364 = and i64 %.025.i.i134, 3          ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i.i136.prol.loopexit, label %.lr.ph.i.i136.prol

.lr.ph.i.i136.prol:                               ; preds = %.lr.ph.i.i136.preheader, %.lr.ph.i.i136.prol
  %.030.i.i137.prol = phi i64 [ %i.pe, %.lr.ph.i.i136.prol ], [ %.030.i.i137.ph, %.lr.ph.i.i136.preheader ] ; 3 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %.lr.ph.i.i136.prol ], [ 0, %.lr.ph.i.i136.preheader ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %.030.i.i137.prol
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.op, i64 %.030.i.i137.prol
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !64
  %i.pe = add nuw i64 %.030.i.i137.prol, 1        ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %.lr.ph.i.i136.prol.loopexit, label %.lr.ph.i.i136.prol, !llvm.loop !1066

.lr.ph.i.i136.prol.loopexit:                      ; preds = %.lr.ph.i.i136.prol, %.lr.ph.i.i136.preheader
  %.030.i.i137.unr = phi i64 [ %.030.i.i137.ph, %.lr.ph.i.i136.preheader ], [ %i.pe, %.lr.ph.i.i136.prol ]
  %i.pf = sub i64 %.030.i.i137.ph, %.025.i.i134
  %i.pg = icmp ugt i64 %i.pf, -4
  br i1 %i.pg, label %._crit_edge.loopexit.i.i139, label %.lr.ph.i.i136

._crit_edge.loopexit.i.i139:                      ; preds = %.lr.ph.i.i136.prol.loopexit, %.lr.ph.i.i136, %vec.epilog.middle.block321, %middle.block308
  %.pre37.i.i140 = load i64, ptr %i.bl, align 8, !tbaa !69
  br label %._crit_edge.i.i141

._crit_edge.i.i141:                               ; preds = %._crit_edge.loopexit.i.i139, %bb.aq
  %i.ph = phi i64 [ %.pre37.i.i140, %._crit_edge.loopexit.i.i139 ], [ %.026.i.i133, %bb.aq ]
  %i.pi = add i64 %i.ph, %.025.i.i134             ; 2 uses
  store i64 %i.pi, ptr %i.bl, align 8, !tbaa !69
  %i.pj = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %.025.i.i134 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.pj, %i.nz
  br i1 %.not.i.i142, label %.loopexit155, label %bb.ao, !llvm.loop !3

.lr.ph.i.i136:                                    ; preds = %.lr.ph.i.i136.prol.loopexit, %.lr.ph.i.i136
  %.030.i.i137 = phi i64 [ %i.pz, %.lr.ph.i.i136 ], [ %.030.i.i137.unr, %.lr.ph.i.i136.prol.loopexit ] ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %.030.i.i137
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.op, i64 %.030.i.i137
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !64
  %i.pn = add nuw i64 %.030.i.i137, 1             ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pn
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !64
  %i.pr = add nuw i64 %.030.i.i137, 2             ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pr
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !64
  %i.pv = add nuw i64 %.030.i.i137, 3             ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.02732.i.i132, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !64
  %i.py = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pv
  store i8 %i.px, ptr %i.py, align 1, !tbaa !64
  %i.pz = add nuw i64 %.030.i.i137, 4             ; 2 uses
  %exitcond.not.i.i138.3 = icmp eq i64 %i.pz, %.025.i.i134
  br i1 %exitcond.not.i.i138.3, label %._crit_edge.loopexit.i.i139, label %.lr.ph.i.i136, !llvm.loop !1067

.loopexit155:                                     ; preds = %._crit_edge.i.i141, %_ZN3fmt3v1210format_intC2Ei.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.qa = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !331 ; 4 uses
  %i.qc = icmp sgt i64 %i.qb, -1
  br i1 %i.qc, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %.loopexit155
  %i.qd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !108 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qb ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.qb, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.ar
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 16 ; 2 uses
  %i.qk = ptrtoint ptr %i.qh to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.qi, align 8, !tbaa !69
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.qm = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.rt, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.qe, %.lr.ph34.i.i.i.i ], [ %i.ru, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.qn = load i64, ptr %i.qj, align 8, !tbaa !68
  %i.qo = sub i64 %i.qn, %i.qm
  %i.qp = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.qq = sub i64 %i.qk, %i.qp                    ; 4 uses
  %i.qr = icmp ult i64 %i.qo, %i.qq
  br i1 %i.qr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qs = load ptr, ptr %i.ql, align 8, !tbaa !66
  %i.qt = add i64 %i.qq, %i.qm
  invoke void %i.qs(ptr noundef nonnull align 8 dereferenceable(283) %i.qg, i64 noundef %i.qt)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.at
  %i.qu = load i64, ptr %i.qi, align 8, !tbaa !69 ; 2 uses
  %i.qv = load i64, ptr %i.qj, align 8, !tbaa !68
  %i.qw = sub i64 %i.qv, %i.qu
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qq, i64 %i.qw)
  br label %bb.au

bb.au:                                            ; preds = %.noexc.i, %bb.as
  %.026.i.i.i.i = phi i64 [ %i.qu, %.noexc.i ], [ %i.qm, %bb.as ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.qx, %.noexc.i ], [ %i.qq, %bb.as ] ; 13 uses
  %i.qy = load ptr, ptr %i.qg, align 8, !tbaa !67 ; 2 uses
  %i.qz = ptrtoaddr ptr %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_5
begin_hunk_6_@_ZN6spdlog7details11C_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.030.i.i.i.i.prol
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !64
  %i.bx = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1074

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.prol ]
  %i.by = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.i
  %i.ca = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.i ]
  %i.cb = add i64 %i.ca, %.025.i.i.i.i            ; 2 uses
  store i64 %i.cb, ptr %i.aq, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.ap
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.030.i.i.i.i
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !64
  %i.cg = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !64
  %i.ck = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !64
  %i.co = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !64
  %i.cs = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.cs, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1075

bb.j:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.ct = load ptr, ptr %6, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !265, !range !71, !noundef !72
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.k, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !69
  %i.db = add nsw i64 %i.da, %i.aj
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.db, i64 0) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !68 ; 2 uses
  %i.de = icmp ugt i64 %spec.store.select.i, %i.dd
  br i1 %i.de, label %bb.l, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(283) %i.cy, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.l
  %.pre.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.k
  %i.dh = phi i64 [ %i.dd, %bb.k ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.di = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.dh)
  store i64 %i.di, ptr %i.cz, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dj = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.dj) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.j, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.n:                                             ; preds = %.noexc6, %bb.e, %bb.d, %bb.c
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.dk
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !303  ; 2 uses
  %i.d = add nsw i32 %i.c, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = icmp slt i32 %i.c, -1900
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.d, i1 true) ; 3 uses
  %i.f = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i.i = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %i.g = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %i.h
  %i.j = urem i32 %.01819.i.i.i.i.i, 100
  %i.k = shl nuw nsw i32 %i.j, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.i, align 1
  %i.o = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.p = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.a ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.q = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  %i.u = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.s, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.e, label %bb.d, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  store i8 45, ptr %i.ae, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.ad, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.af, align 8, !tbaa !305
  %i.ag = ptrtoint ptr %4 to i64
  %i.ah = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ai = add i64 %i.ag, 21                       ; 3 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.aj
  %.not31.i.i = icmp eq i64 %i.ai, %i.ah
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.al, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ao = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.bw, %._crit_edge.i.i ] ; 9 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !68
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.as = sub i64 %i.ai, %i.ar                    ; 4 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.av = add i64 %i.as, %i.ao
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.av)
          to label %.noexc unwind label %bb.p, !inline_history !40

.noexc:                                           ; preds = %bb.f
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %.026.i.i = phi i64 [ %i.aw, %.noexc ], [ %i.ao, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.az, %.noexc ], [ %i.as, %bb.e ] ; 13 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %.026.i.i, %i.bb
  %i.be = sub i64 %i.ar, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !64
  %wide.load18 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !64
  store <16 x i8> %wide.load18, ptr %i.bj, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index20
  %wide.load21 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index20
  store <4 x i8> %wide.load21, ptr %i.bm, align 1, !tbaa !64
  %index.next22 = add nuw i64 %index20, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next22, %n.vec19
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1077

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %.025.i.i, %n.vec19
  br i1 %cmp.n23, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.030.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !64
  %i.br = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1078

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.al, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.bu = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bv = add i64 %i.bu, %.025.i.i                ; 2 uses
  store i64 %i.bv, ptr %i.al, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.ak
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.030.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !64
  %i.cm = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cm, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1079

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !331 ; 4 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !108 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.co, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.cz = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.eg, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cr, %.lr.ph34.i.i.i.i ], [ %i.eh, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !68
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dd = sub i64 %i.cx, %i.dc                    ; 4 uses
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !66
  %i.dg = add i64 %i.dd, %i.cz
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(283) %i.ct, i64 noundef %i.dg)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.j
  %i.dh = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %i.di = load i64, ptr %i.cw, align 8, !tbaa !68
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dj)
  br label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.i
  %.026.i.i.i.i = phi i64 [ %i.dh, %.noexc.i ], [ %i.cz, %bb.i ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.dk, %.noexc.i ], [ %i.dd, %bb.i ] ; 13 uses
  %i.dl = load ptr, ptr %i.ct, align 8, !tbaa !67 ; 2 uses
  %i.dm = ptrtoaddr ptr %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_6
begin_hunk_7_@_ZN6spdlog7details11f_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i.i, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %.030.i.i.i.i.prol
  store i8 %i.as, ptr %i.at, align 1, !tbaa !64
  %i.au = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1118

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.prol ]
  %i.av = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %i.ax = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.e ]
  %i.ay = add i64 %i.ax, %.025.i.i.i.i            ; 2 uses
  store i64 %i.ay, ptr %i.n, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.m
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 %.030.i.i.i.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !64
  %i.bd = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !64
  %i.bh = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !64
  %i.bl = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !64
  %i.bp = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bp, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1119

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad6ImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.bq = load ptr, ptr %4, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !265, !range !71, !noundef !72
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !69
  %i.by = add nsw i64 %i.bx, %i.g
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.by, i64 0) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !68 ; 2 uses
  %i.cb = icmp ugt i64 %spec.store.select.i, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !66
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(283) %i.bv, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.g
  %i.ce = phi i64 [ %i.ca, %bb.g ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.cf = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.ce)
  store i64 %i.cf, ptr %i.bw, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cg = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.cg) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.f, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.ch
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(283) %2) local_unnamed_addr #26 comdat {
bb.a:
  %3 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = or i64 %0, 1
  %i.b = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = xor i64 %i.b, 63
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  %i.j = icmp ult i64 %0, %i.i
  %.neg.i.i.i = sext i1 %i.j to i32
  %i.k = add nsw i32 %.neg.i.i.i, %i.f            ; 2 uses
  %i.l = icmp ult i32 %i.k, %1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.p = icmp ugt i64 %0, 99
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i.i ], [ 21, %._crit_edge ]
  %.01819.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %0, %._crit_edge ] ; 3 uses
  %i.q = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r
  %i.t = urem i64 %.01819.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %.018.lcssa.i.i.i.i = phi i64 [ %0, %._crit_edge ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %._crit_edge ], [ %i.q, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.ad = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !305
  %i.an = ptrtoint ptr %3 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not31.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.am, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 9 uses
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !68
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.az = sub i64 %i.ap, %i.ay                    ; 4 uses
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.bc = add i64 %i.az, %i.av
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.bc), !inline_history !42
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.be = load i64, ptr %i.at, align 8, !tbaa !68
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bf)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.bd, %bb.e ], [ %i.av, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bg, %bb.e ], [ %i.az, %bb.d ] ; 13 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i, %i.bi
  %i.bl = sub i64 %i.ay, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !64
  %wide.load21 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !64
  store <16 x i8> %wide.load21, ptr %i.bq, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bt, align 1, !tbaa !64
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %.025.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !64
  %i.by = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1122

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.by, %.lr.ph.i.i.prol ]
  %i.bz = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cc = add i64 %i.cb, %.025.i.i                ; 2 uses
  store i64 %i.cc, ptr %i.as, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.ar
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !64
  %i.cl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !64
  %i.cp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !64
  %i.ct = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ct, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1123

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ %i.dc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ]
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !69  ; 2 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load i64, ptr %i.n, align 8, !tbaa !68
  %i.cx = icmp ugt i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.h, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.h:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !66
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cv), !inline_history !29
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.g, %bb.h
  %.pre-phi.i = phi i64 [ %i.cv, %bb.g ], [ %.pre2.i, %bb.h ]
  %i.cz = phi i64 [ %i.cu, %bb.g ], [ %.pre.i, %bb.h ]
  %i.da = load ptr, ptr %2, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.m, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 48, ptr %i.db, align 1, !tbaa !64
  %i.dc = add i32 %.07, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1124
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !70
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 9, ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 8 dereferenceable(283) %3)
  invoke void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
          to label %_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit unwind label %bb.j

_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !331  ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.f
end_hunk_7
begin_hunk_8_@_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.030.i.i.i.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !64
  %i.as = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1127

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.at = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %i.av = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.e ]
  %i.aw = add i64 %i.av, %.025.i.i.i.i            ; 2 uses
  store i64 %i.aw, ptr %i.l, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.k
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.030.i.i.i.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !64
  %i.bj = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bn, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1128

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.bo = load ptr, ptr %4, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !265, !range !71, !noundef !72
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !69
  %i.bw = add nsw i64 %i.bv, %i.e
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.bw, i64 0) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %i.bz = icmp ugt i64 %spec.store.select.i, %i.by
  br i1 %i.bz, label %bb.h, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !66
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(283) %i.bt, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.g
  %i.cc = phi i64 [ %i.by, %bb.g ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.cd = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.cc)
  store i64 %i.cd, ptr %i.bu, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ce = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ce) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.f, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.j:                                             ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.cf
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !70 ; 2 uses
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.d = icmp slt i64 %.sroa.0.0.copyload.i, -999999999
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 3 uses
  %i.e = icmp samesign ugt i64 %spec.select.i.i.i, 99
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %i.f = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1210format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store i8 45, ptr %i.ab, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2El.exit.i

_ZN3fmt3v1210format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.aa, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ac, align 8, !tbaa !305
  %i.ad = ptrtoint ptr %4 to i64
  %i.ae = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.af = add i64 %i.ad, 21                       ; 3 uses
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ag
  %.not31.i.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2El.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 9 uses
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.an = sub i64 %i.am, %i.al
  %i.ao = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ap = sub i64 %i.af, %i.ao                    ; 4 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.as = add i64 %i.ap, %i.al
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as)
          to label %.noexc unwind label %bb.p, !inline_history !1129

.noexc:                                           ; preds = %bb.f
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.av = sub i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.av)
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %.026.i.i = phi i64 [ %i.at, %.noexc ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aw, %.noexc ], [ %i.ap, %bb.e ] ; 13 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %.026.i.i, %i.ay
  %i.bb = sub i64 %i.ao, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %wide.load22 = load <16 x i8>, ptr %i.be, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !64
  store <16 x i8> %wide.load22, ptr %i.bg, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.bj, align 1, !tbaa !64
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %.025.i.i, %n.vec23
  br i1 %cmp.n27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !64
  %i.bo = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1132

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.br = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bs = add i64 %i.br, %.025.i.i                ; 2 uses
  store i64 %i.bs, ptr %i.ai, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.ah
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !64
  %i.bx = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !64
  %i.cb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !64
  %i.cf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !64
  %i.cj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1133

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !331 ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  br i1 %i.cm, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !108 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cl, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cs, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.cw = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.ed, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.co, %.lr.ph34.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !68
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.da = sub i64 %i.cu, %i.cz                    ; 4 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.dd = add i64 %i.da, %i.cw
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(283) %i.cq, i64 noundef %i.dd)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.j
  %i.de = load i64, ptr %i.cs, align 8, !tbaa !69 ; 2 uses
  %i.df = load i64, ptr %i.ct, align 8, !tbaa !68
  %i.dg = sub i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.dg)
  br label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.i
  %.026.i.i.i.i = phi i64 [ %i.de, %.noexc.i ], [ %i.cw, %bb.i ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.dh, %.noexc.i ], [ %i.da, %bb.i ] ; 13 uses
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !67 ; 2 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_8
begin_hunk_9_@_ZN6spdlog7details11z_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.030.i.i.i.i.prol
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !64
  %i.fp = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1167

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.fp, %.lr.ph.i.i.i.i.prol ]
  %i.fq = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block114, %middle.block101
  %.pre37.i.i.i.i = load i64, ptr %i.ei, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.ac
  %i.fs = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.ac ]
  %i.ft = add i64 %i.fs, %.025.i.i.i.i            ; 2 uses
  store i64 %i.ft, ptr %i.ei, align 8, !tbaa !69
  %i.fu = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fu, %i.eh
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.aa, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.030.i.i.i.i
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !64
  %i.fy = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fy
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !64
  %i.gc = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.gc
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !64
  %i.gg = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.gg
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !64
  %i.gk = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gk, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1168

bb.ad:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.gl = load ptr, ptr %6, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gn = load i8, ptr %i.gm, align 4, !tbaa !265, !range !71, !noundef !72
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ae, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !69
  %i.gt = add nsw i64 %i.gs, %i.eb
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.gt, i64 0) ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !68 ; 2 uses
  %i.gw = icmp ugt i64 %spec.store.select.i, %i.gv
  br i1 %i.gw, label %bb.af, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !66
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(283) %i.gq, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.af
  %.pre.i.i.i = load i64, ptr %i.gu, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.ae
  %i.gz = phi i64 [ %i.gv, %bb.ae ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.ha = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.gz)
  store i64 %i.ha, ptr %i.gr, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

.loopexit.split-lp.i:                             ; preds = %bb.af
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.hb = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.hb) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.z, %bb.ad, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.ah:                                            ; preds = %bb.y, %bb.x, %.noexc39, %bb.u, %bb.t, %bb.s
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.v
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.p, %bb.l, %bb.f
  %.pn26 = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.bm, %bb.p ], [ %i.hc, %bb.ah ], [ %i.hd, %bb.ai ], [ %i.bg, %bb.l ]
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn26
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = tail call noundef i32 @getpid() #37      ; 5 uses
  %i.b = or i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !70
  %i.h = zext i32 %i.a to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(14) %i.k, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.l = icmp ugt i32 %i.a, 99
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.m = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  %i.p = urem i32 %.01819.i.i.i.i, 100
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.o, align 1
  %i.u = udiv i32 %.01819.i.i.i.i, 100            ; 2 uses
  %i.v = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i32 [ %i.a, %bb.a ], [ %i.u, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.w = icmp samesign ugt i32 %.018.lcssa.i.i.i.i, 9
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = add i32 %.0.lcssa.i.i.i.i, -2
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  %i.aa = shl nuw nsw i32 %.018.lcssa.i.i.i.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  store i16 %i.ad, ptr %i.z, align 1
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = trunc nuw nsw i32 %.018.lcssa.i.i.i.i to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

_ZN3fmt3v1210format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ah, %bb.c ], [ %i.y, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !305
  %i.al = ptrtoint ptr %4 to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = add i64 %i.al, 21                       ; 3 uses
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %.not31.i.i = icmp eq i64 %i.an, %i.am
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ej.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.aq, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.at = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ca, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 9 uses
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.av = sub i64 %i.au, %i.at
  %i.aw = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ax = sub i64 %i.an, %i.aw                    ; 4 uses
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.ba = add i64 %i.ax, %i.at
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ba)
          to label %.noexc unwind label %bb.o, !inline_history !1169

.noexc:                                           ; preds = %bb.e
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !69 ; 2 uses
  %i.bc = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.bd)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.bb, %.noexc ], [ %i.at, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.be, %.noexc ], [ %i.ax, %bb.d ] ; 13 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = add i64 %.026.i.i, %i.bg
  %i.bj = sub i64 %i.aw, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check23 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <16 x i8>, ptr %i.bl, align 1, !tbaa !64
  %wide.load24 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load, ptr %i.bn, align 1, !tbaa !64
  store <16 x i8> %wide.load24, ptr %i.bo, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index26
  store <4 x i8> %wide.load27, ptr %i.br, align 1, !tbaa !64
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next28, %n.vec25
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %.025.i.i, %n.vec25
  br i1 %cmp.n29, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.030.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %i.bw = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1172

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = sub i64 %.030.i.i.ph, %.025.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.aq, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bz = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.ca = add i64 %i.bz, %.025.i.i                ; 2 uses
  store i64 %i.ca, ptr %i.aq, align 8, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ap
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.030.i.i
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !64
  %i.cf = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !64
  %i.cj = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !64
  %i.cn = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cn
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !64
  %i.cr = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cr, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1173

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !331 ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  br i1 %i.cu, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !108 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.ct, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.da, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph34.i.i.i.i
  %i.de = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.el, %._crit_edge.i.i.i.i8 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cw, %.lr.ph34.i.i.i.i ], [ %i.em, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.df = load i64, ptr %i.db, align 8, !tbaa !68
  %i.dg = sub i64 %i.df, %i.de
  %i.dh = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.di = sub i64 %i.dc, %i.dh                    ; 4 uses
  %i.dj = icmp ult i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !66
  %i.dl = add i64 %i.di, %i.de
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(283) %i.cy, i64 noundef %i.dl)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.dm = load i64, ptr %i.da, align 8, !tbaa !69 ; 2 uses
  %i.dn = load i64, ptr %i.db, align 8, !tbaa !68
  %i.do = sub i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.do)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.dm, %.noexc.i ], [ %i.de, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.dp, %.noexc.i ], [ %i.di, %bb.h ] ; 13 uses
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !67 ; 2 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_9
begin_hunk_10_@_ZN6spdlog7details25source_location_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <16 x i8>, ptr %i.dw, align 1, !tbaa !64
  %wide.load85 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <16 x i8> %wide.load, ptr %i.dy, align 1, !tbaa !64
  store <16 x i8> %wide.load85, ptr %i.dz, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index87
  %wide.load88 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index87
  store <4 x i8> %wide.load88, ptr %i.ec, align 1, !tbaa !64
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.ed = icmp eq i64 %index.next89, %n.vec86
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %.025.i.i, %n.vec86
  br i1 %cmp.n90, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec86, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.030.i.i.prol
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !64
  %i.eh = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1184

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.prol ]
  %i.ei = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.p
  %i.ek = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.p ]
  %i.el = add i64 %i.ek, %.025.i.i                ; 3 uses
  store i64 %i.el, ptr %.phi.trans.insert, align 8, !tbaa !69
  %i.em = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.em, %i.da
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.n, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.030.i.i
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !64
  %i.eq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1, !tbaa !64
  %i.eu = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eu
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !64
  %i.ey = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ey
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !64
  %i.fc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1185

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge
  %i.fd = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge ], [ %i.el, %._crit_edge.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ff = add i64 %i.fd, 1                        ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !68
  %i.fi = icmp ugt i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !66
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ff)
          to label %.noexc16 unwind label %bb.ah, !inline_history !39

.noexc16:                                         ; preds = %bb.q
  %.pre.i = load i64, ptr %i.fe, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %bb.r

bb.r:                                             ; preds = %.noexc16, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %.pre-phi.i = phi i64 [ %i.ff, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %.noexc16 ]
  %i.fl = phi i64 [ %i.fd, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %.noexc16 ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.fe, align 8, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 58, ptr %i.fn, align 1, !tbaa !64
  %i.fo = load i32, ptr %i.b, align 8, !tbaa !314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.fp = icmp slt i32 %i.fo, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.fo, i1 false) ; 3 uses
  %i.fq = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.fr, %.lr.ph.i.i.i.i.i ], [ 21, %bb.r ]
  %.01819.i.i.i.i.i = phi i32 [ %i.fz, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.r ] ; 3 uses
  %i.fr = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 %i.fs
  %i.fu = urem i32 %.01819.i.i.i.i.i, 100
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2
  store i16 %i.fy, ptr %i.ft, align 1
  %i.fz = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ga = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ga, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.r
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.r ], [ %i.fz, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.r ], [ %i.fr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.gb = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.gb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gc = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 %i.gd
  %i.gf = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2
  store i16 %i.gi, ptr %i.ge, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gj = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.gk = or disjoint i8 %i.gj, 48
  %i.gl = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 %i.gm
  store i8 %i.gk, ptr %i.gn, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.gm, %bb.t ], [ %i.gd, %bb.s ]
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.fp, label %bb.u, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.u:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -1 ; 2 uses
  store i8 45, ptr %i.gp, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.u, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.gp, %bb.u ], [ %i.go, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.gq, align 8, !tbaa !305
  %i.gr = ptrtoint ptr %4 to i64
  %i.gs = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.gt = add i64 %i.gr, 21                       ; 3 uses
  %i.gu = sub i64 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.gu
  %.not31.i.i17 = icmp eq i64 %i.gt, %i.gs
  br i1 %.not31.i.i17, label %.loopexit57, label %.lr.ph34.i.i18

.lr.ph34.i.i18:                                   ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i19 = load i64, ptr %i.fe, align 8, !tbaa !69
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i29, %.lr.ph34.i.i18
  %i.gx = phi i64 [ %.pre.i.i19, %.lr.ph34.i.i18 ], [ %i.ie, %._crit_edge.i.i29 ] ; 3 uses
  %.02732.i.i20 = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i18 ], [ %i.if, %._crit_edge.i.i29 ] ; 9 uses
  %i.gy = load i64, ptr %i.fg, align 8, !tbaa !68
  %i.gz = sub i64 %i.gy, %i.gx
  %i.ha = ptrtoint ptr %.02732.i.i20 to i64       ; 2 uses
  %i.hb = sub i64 %i.gt, %i.ha                    ; 4 uses
  %i.hc = icmp ult i64 %i.gz, %i.hb
  br i1 %i.hc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !66
  %i.he = add i64 %i.hb, %i.gx
  invoke void %i.hd(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.he)
          to label %.noexc31 unwind label %.loopexit, !inline_history !40

.noexc31:                                         ; preds = %bb.w
  %i.hf = load i64, ptr %i.fe, align 8, !tbaa !69 ; 2 uses
  %i.hg = load i64, ptr %i.fg, align 8, !tbaa !68
  %i.hh = sub i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hb, i64 %i.hh)
  br label %bb.x

bb.x:                                             ; preds = %.noexc31, %bb.v
  %.026.i.i21 = phi i64 [ %i.hf, %.noexc31 ], [ %i.gx, %bb.v ] ; 3 uses
  %.025.i.i22 = phi i64 [ %i.hi, %.noexc31 ], [ %i.hb, %bb.v ] ; 13 uses
  %i.hj = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.hk = ptrtoaddr ptr %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.026.i.i21 ; 7 uses
  %.not36.i.i23 = icmp eq i64 %.025.i.i22, 0
  br i1 %.not36.i.i23, label %._crit_edge.i.i29, label %iter.check106

iter.check106:                                    ; preds = %bb.x
  %min.iters.check93 = icmp ult i64 %.025.i.i22, 4
  br i1 %min.iters.check93, label %.lr.ph.i.i24.preheader, label %vector.memcheck91

vector.memcheck91:                                ; preds = %iter.check106
  %i.hm = add i64 %.026.i.i21, %i.hk
  %i.hn = sub i64 %i.ha, %i.hm
  %diff.check92 = icmp ugt i64 %i.hn, -32
  br i1 %diff.check92, label %.lr.ph.i.i24.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck91
  %min.iters.check95 = icmp ult i64 %.025.i.i22, 32
  br i1 %min.iters.check95, label %vec.epilog.ph110, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.ho = and i64 %.025.i.i22, 28
  %n.vec97 = and i64 %.025.i.i22, -32             ; 4 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next102, %vector.body98 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %index99 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load100.a = load <16 x i8>, ptr %i.hp, align 1, !tbaa !64
  %wide.load101 = load <16 x i8>, ptr %i.hq, align 1, !tbaa !64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 %index99 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <16 x i8> %wide.load100.a, ptr %i.hr, align 1, !tbaa !64
  store <16 x i8> %wide.load101, ptr %i.hs, align 1, !tbaa !64
  %index.next102 = add nuw i64 %index99, 32       ; 2 uses
  %i.ht = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.ht, label %middle.block103, label %vector.body98, !llvm.loop !1186

middle.block103:                                  ; preds = %vector.body98
  %cmp.n104 = icmp eq i64 %.025.i.i22, %n.vec97
  br i1 %cmp.n104, label %._crit_edge.loopexit.i.i27, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block103
  %min.epilog.iters.check109 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check109, label %.lr.ph.i.i24.preheader, label %vec.epilog.ph110, !prof !109

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check108
  %vec.epilog.resume.val105 = phi i64 [ %n.vec97, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec111 = and i64 %.025.i.i22, -4             ; 3 uses
  br label %vec.epilog.vector.body112

vec.epilog.vector.body112:                        ; preds = %vec.epilog.vector.body112, %vec.epilog.ph110
  %index113 = phi i64 [ %vec.epilog.resume.val105, %vec.epilog.ph110 ], [ %index.next115, %vec.epilog.vector.body112 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %index113
  %wide.load114 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %index113
  store <4 x i8> %wide.load114, ptr %i.hv, align 1, !tbaa !64
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.hw, label %vec.epilog.middle.block116, label %vec.epilog.vector.body112, !llvm.loop !1187

vec.epilog.middle.block116:                       ; preds = %vec.epilog.vector.body112
  %cmp.n117 = icmp eq i64 %.025.i.i22, %n.vec111
  br i1 %cmp.n117, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24.preheader

.lr.ph.i.i24.preheader:                           ; preds = %vector.memcheck91, %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block116
  %.030.i.i25.ph = phi i64 [ 0, %iter.check106 ], [ 0, %vector.memcheck91 ], [ %n.vec97, %vec.epilog.iter.check108 ], [ %n.vec111, %vec.epilog.middle.block116 ] ; 3 uses
  %xtraiter177 = and i64 %.025.i.i22, 3           ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i24.prol.loopexit, label %.lr.ph.i.i24.prol

.lr.ph.i.i24.prol:                                ; preds = %.lr.ph.i.i24.preheader, %.lr.ph.i.i24.prol
  %.030.i.i25.prol = phi i64 [ %i.ia, %.lr.ph.i.i24.prol ], [ %.030.i.i25.ph, %.lr.ph.i.i24.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i24.prol ], [ 0, %.lr.ph.i.i24.preheader ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %.030.i.i25.prol
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.030.i.i25.prol
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !64
  %i.ia = add nuw i64 %.030.i.i25.prol, 1         ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i24.prol.loopexit, label %.lr.ph.i.i24.prol, !llvm.loop !1188

.lr.ph.i.i24.prol.loopexit:                       ; preds = %.lr.ph.i.i24.prol, %.lr.ph.i.i24.preheader
  %.030.i.i25.unr = phi i64 [ %.030.i.i25.ph, %.lr.ph.i.i24.preheader ], [ %i.ia, %.lr.ph.i.i24.prol ]
  %i.ib = sub i64 %.030.i.i25.ph, %.025.i.i22
  %i.ic = icmp ugt i64 %i.ib, -4
  br i1 %i.ic, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24

._crit_edge.loopexit.i.i27:                       ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24, %vec.epilog.middle.block116, %middle.block103
  %.pre37.i.i28 = load i64, ptr %i.fe, align 8, !tbaa !69
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %._crit_edge.loopexit.i.i27, %bb.x
  %i.id = phi i64 [ %.pre37.i.i28, %._crit_edge.loopexit.i.i27 ], [ %.026.i.i21, %bb.x ]
  %i.ie = add i64 %i.id, %.025.i.i22              ; 2 uses
  store i64 %i.ie, ptr %i.fe, align 8, !tbaa !69
  %i.if = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %.025.i.i22 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.if, %i.gv
  br i1 %.not.i.i30, label %.loopexit57, label %bb.v, !llvm.loop !3

.lr.ph.i.i24:                                     ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24
  %.030.i.i25 = phi i64 [ %i.iv, %.lr.ph.i.i24 ], [ %.030.i.i25.unr, %.lr.ph.i.i24.prol.loopexit ] ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %.030.i.i25
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.030.i.i25
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !64
  %i.ij = add nuw i64 %.030.i.i25, 1              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !64
  %i.im = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ij
  store i8 %i.il, ptr %i.im, align 1, !tbaa !64
  %i.in = add nuw i64 %.030.i.i25, 2              ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.in
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !64
  %i.ir = add nuw i64 %.030.i.i25, 3              ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.02732.i.i20, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ir
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !64
  %i.iv = add nuw i64 %.030.i.i25, 4              ; 2 uses
  %exitcond.not.i.i26.3 = icmp eq i64 %i.iv, %.025.i.i22
  br i1 %exitcond.not.i.i26.3, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24, !llvm.loop !1189

.loopexit57:                                      ; preds = %._crit_edge.i.i29, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !331 ; 4 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  br i1 %i.iy, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.loopexit57
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !108 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ix ; 2 uses
  %.not31.i.i.i.i39 = icmp samesign eq i64 %i.ix, 0
  br i1 %.not31.i.i.i.i39, label %_ZN6spdlog7details13scoped_padderD2Ev.exit56, label %.lr.ph34.i.i.i.i40

.lr.ph34.i.i.i.i40:                               ; preds = %bb.y
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %.pre.i.i.i.i41 = load i64, ptr %i.je, align 8, !tbaa !69
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i51, %.lr.ph34.i.i.i.i40
  %i.ji = phi i64 [ %.pre.i.i.i.i41, %.lr.ph34.i.i.i.i40 ], [ %i.kp, %._crit_edge.i.i.i.i51 ] ; 3 uses
  %.02732.i.i.i.i42 = phi ptr [ %i.ja, %.lr.ph34.i.i.i.i40 ], [ %i.kq, %._crit_edge.i.i.i.i51 ] ; 9 uses
  %i.jj = load i64, ptr %i.jf, align 8, !tbaa !68
  %i.jk = sub i64 %i.jj, %i.ji
  %i.jl = ptrtoint ptr %.02732.i.i.i.i42 to i64   ; 2 uses
  %i.jm = sub i64 %i.jg, %i.jl                    ; 4 uses
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jo = load ptr, ptr %i.jh, align 8, !tbaa !66
  %i.jp = add i64 %i.jm, %i.ji
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(283) %i.jc, i64 noundef %i.jp)
          to label %.noexc.i55 unwind label %.loopexit.i53, !inline_history !35

.noexc.i55:                                       ; preds = %bb.aa
  %i.jq = load i64, ptr %i.je, align 8, !tbaa !69 ; 2 uses
  %i.jr = load i64, ptr %i.jf, align 8, !tbaa !68
  %i.js = sub i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.js)
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc.i55, %bb.z
  %.026.i.i.i.i43 = phi i64 [ %i.jq, %.noexc.i55 ], [ %i.ji, %bb.z ] ; 3 uses
  %.025.i.i.i.i44 = phi i64 [ %i.jt, %.noexc.i55 ], [ %i.jm, %bb.z ] ; 13 uses
  %i.ju = load ptr, ptr %i.jc, align 8, !tbaa !67 ; 2 uses
  %i.jv = ptrtoaddr ptr %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.026.i.i.i.i43 ; 7 uses
  %.not36.i.i.i.i45 = icmp eq i64 %.025.i.i.i.i44, 0
end_hunk_10
begin_hunk_11_@_ZN6spdlog7details24source_linenum_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %i.ap, label %vec.epilog.middle.block113, label %vec.epilog.vector.body109, !llvm.loop !1219

vec.epilog.middle.block113:                       ; preds = %vec.epilog.vector.body109
  %cmp.n114 = icmp eq i64 %.025.i.i.i.i, %n.vec108
  br i1 %cmp.n114, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck88, %iter.check103, %vec.epilog.iter.check105, %vec.epilog.middle.block113
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check103 ], [ 0, %vector.memcheck88 ], [ %n.vec94, %vec.epilog.iter.check105 ], [ %n.vec108, %vec.epilog.middle.block113 ] ; 3 uses
  %xtraiter120 = and i64 %.025.i.i.i.i, 3         ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.030.i.i.i.i.prol
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !64
  %i.at = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1220

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %i.au = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block113, %middle.block100
  %.pre37.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.f
  %i.aw = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.f ]
  %i.ax = add i64 %i.aw, %.025.i.i.i.i            ; 2 uses
  store i64 %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.l
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.030.i.i.i.i
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !64
  %i.bc = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !64
  %i.bg = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !64
  %i.bk = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !64
  %i.bo = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bo, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1221

bb.g:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !265, !range !71, !noundef !72
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !69
  %i.bx = add nsw i64 %i.bw, %i.f
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.bx, i64 0) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %i.ca = icmp ugt i64 %spec.store.select.i, %i.bz
  br i1 %i.ca, label %bb.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(283) %i.bu, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.by, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.h
  %i.cd = phi i64 [ %i.bz, %bb.h ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.ce = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.cd)
  store i64 %i.ce, ptr %i.bv, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cf = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.cf) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.g, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  %i.cg = or i32 %i.b, 1
  %i.ch = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ci = xor i32 %i.ch, 31
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !70
  %i.cm = zext nneg i32 %i.b to i64
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = lshr i64 %i.cn, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(14) %i.cp, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.cr = icmp slt i32 %i.cq, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.cq, i1 false) ; 3 uses
  %i.cs = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.ct, %.lr.ph.i.i.i.i.i ], [ 21, %bb.k ]
  %.01819.i.i.i.i.i = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.k ] ; 3 uses
  %i.ct = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.cu
  %i.cw = urem i32 %.01819.i.i.i.i.i, 100
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2
  store i16 %i.da, ptr %i.cv, align 1
  %i.db = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.dc = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.k
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.k ], [ %i.db, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.k ], [ %i.ct, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dd = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.de = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.df
  %i.dh = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  store i16 %i.dk, ptr %i.dg, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dl = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.dm = or disjoint i8 %i.dl, 48
  %i.dn = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.do, %bb.m ], [ %i.df, %bb.l ]
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.cr, label %bb.n, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.n:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -1 ; 2 uses
  store i8 45, ptr %i.dr, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.n, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.dr, %bb.n ], [ %i.dq, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ds, align 8, !tbaa !305
  %i.dt = ptrtoint ptr %4 to i64
  %i.du = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.dv = add i64 %i.dt, 21                       ; 3 uses
  %i.dw = sub i64 %i.dv, %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dw
  %.not31.i.i = icmp eq i64 %i.dv, %i.du
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.dy, align 8, !tbaa !69
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.eb = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.fi, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.fj, %._crit_edge.i.i ] ; 9 uses
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !68
  %i.ed = sub i64 %i.ec, %i.eb
  %i.ee = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ef = sub i64 %i.dv, %i.ee                    ; 4 uses
  %i.eg = icmp ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !66
  %i.ei = add i64 %i.ef, %i.eb
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ei)
          to label %.noexc unwind label %bb.aa, !inline_history !40

.noexc:                                           ; preds = %bb.p
  %i.ej = load i64, ptr %i.dy, align 8, !tbaa !69 ; 2 uses
  %i.ek = load i64, ptr %i.dz, align 8, !tbaa !68
  %i.el = sub i64 %i.ek, %i.ej
  %i.em = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.el)
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o
  %.026.i.i = phi i64 [ %i.ej, %.noexc ], [ %i.eb, %bb.o ] ; 3 uses
  %.025.i.i = phi i64 [ %i.em, %.noexc ], [ %i.ef, %bb.o ] ; 13 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eo = ptrtoaddr ptr %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eq = add i64 %.026.i.i, %i.eo
  %i.er = sub i64 %i.ee, %i.eq
  %diff.check = icmp ugt i64 %i.er, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.es = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <16 x i8>, ptr %i.et, align 1, !tbaa !64
  %wide.load54 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <16 x i8> %wide.load, ptr %i.ev, align 1, !tbaa !64
  store <16 x i8> %wide.load54, ptr %i.ew, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !1222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index56
  store <4 x i8> %wide.load57, ptr %i.ez, align 1, !tbaa !64
  %index.next58 = add nuw i64 %index56, 4         ; 2 uses
  %i.fa = icmp eq i64 %index.next58, %n.vec55
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %.025.i.i, %n.vec55
  br i1 %cmp.n59, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.fe, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.030.i.i.prol
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !64
  %i.fe = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1224

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.fe, %.lr.ph.i.i.prol ]
  %i.ff = sub i64 %.030.i.i.ph, %.025.i.i
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.dy, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.q
  %i.fh = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.q ]
  %i.fi = add i64 %i.fh, %.025.i.i                ; 2 uses
  store i64 %i.fi, ptr %i.dy, align 8, !tbaa !69
  %i.fj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.fj, %i.dx
  br i1 %.not.i.i, label %.loopexit, label %bb.o, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fz, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.030.i.i
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !64
  %i.fn = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !64
  %i.fr = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fr
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !64
  %i.fv = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fv
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !64
  %i.fz = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fz, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1225

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !331 ; 4 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  br i1 %i.gc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.loopexit
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !108 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb ; 2 uses
  %.not31.i.i.i.i16 = icmp samesign eq i64 %i.gb, 0
  br i1 %.not31.i.i.i.i16, label %_ZN6spdlog7details13scoped_padderD2Ev.exit33, label %.lr.ph34.i.i.i.i17

.lr.ph34.i.i.i.i17:                               ; preds = %bb.r
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %.pre.i.i.i.i18 = load i64, ptr %i.gi, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i28, %.lr.ph34.i.i.i.i17
  %i.gm = phi i64 [ %.pre.i.i.i.i18, %.lr.ph34.i.i.i.i17 ], [ %i.ht, %._crit_edge.i.i.i.i28 ] ; 3 uses
  %.02732.i.i.i.i19 = phi ptr [ %i.ge, %.lr.ph34.i.i.i.i17 ], [ %i.hu, %._crit_edge.i.i.i.i28 ] ; 9 uses
  %i.gn = load i64, ptr %i.gj, align 8, !tbaa !68
  %i.go = sub i64 %i.gn, %i.gm
  %i.gp = ptrtoint ptr %.02732.i.i.i.i19 to i64   ; 2 uses
  %i.gq = sub i64 %i.gk, %i.gp                    ; 4 uses
  %i.gr = icmp ult i64 %i.go, %i.gq
  br i1 %i.gr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !66
  %i.gt = add i64 %i.gq, %i.gm
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(283) %i.gg, i64 noundef %i.gt)
          to label %.noexc.i32 unwind label %.loopexit.i30, !inline_history !35

.noexc.i32:                                       ; preds = %bb.t
  %i.gu = load i64, ptr %i.gi, align 8, !tbaa !69 ; 2 uses
  %i.gv = load i64, ptr %i.gj, align 8, !tbaa !68
  %i.gw = sub i64 %i.gv, %i.gu
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gq, i64 %i.gw)
  br label %bb.u

bb.u:                                             ; preds = %.noexc.i32, %bb.s
  %.026.i.i.i.i20 = phi i64 [ %i.gu, %.noexc.i32 ], [ %i.gm, %bb.s ] ; 3 uses
  %.025.i.i.i.i21 = phi i64 [ %i.gx, %.noexc.i32 ], [ %i.gq, %bb.s ] ; 13 uses
  %i.gy = load ptr, ptr %i.gg, align 8, !tbaa !67 ; 2 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.026.i.i.i.i20 ; 7 uses
  %.not36.i.i.i.i22 = icmp eq i64 %.025.i.i.i.i21, 0
end_hunk_11
begin_hunk_12_@_ZN6spdlog7details25source_funcname_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gx
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !64
  %i.hb = add nuw i64 %.030.i.i.i.i24, 3          ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i19, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !64
  %i.he = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.hb
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !64
  %i.hf = add nuw i64 %.030.i.i.i.i24, 4          ; 2 uses
  %exitcond.not.i.i.i.i25.3 = icmp eq i64 %i.hf, %.025.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i25.3, label %._crit_edge.loopexit.i.i.i.i26, label %.lr.ph.i.i.i.i23, !llvm.loop !1241

bb.u:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.hg = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hi = load i8, ptr %i.hh, align 4, !tbaa !265, !range !71, !noundef !72
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.v, label %_ZN6spdlog7details13scoped_padderD2Ev.exit33

bb.v:                                             ; preds = %bb.u
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !69
  %i.ho = add nsw i64 %i.hn, %i.ew
  %spec.store.select.i9 = call i64 @llvm.smax.i64(i64 %i.ho, i64 0) ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !68 ; 2 uses
  %i.hr = icmp ugt i64 %spec.store.select.i9, %i.hq
  br i1 %i.hr, label %bb.w, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i10

bb.w:                                             ; preds = %bb.v
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !66
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(283) %i.hl, i64 noundef %spec.store.select.i9)
          to label %.noexc2.i14 unwind label %.loopexit.split-lp.i11, !inline_history !36

.noexc2.i14:                                      ; preds = %bb.w
  %.pre.i.i.i15 = load i64, ptr %i.hp, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i10

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i10: ; preds = %.noexc2.i14, %bb.v
  %i.hu = phi i64 [ %i.hq, %bb.v ], [ %.pre.i.i.i15, %.noexc2.i14 ]
  %i.hv = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i9, i64 %i.hu)
  store i64 %i.hv, ptr %i.hm, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit33

.loopexit.i30:                                    ; preds = %bb.s
  %lpad.loopexit.i31 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.loopexit.split-lp.i11:                           ; preds = %bb.w
  %lpad.loopexit.split-lp.i12 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i11, %.loopexit.i30
  %lpad.phi.i13 = phi { ptr, i32 } [ %lpad.loopexit.i31, %.loopexit.i30 ], [ %lpad.loopexit.split-lp.i12, %.loopexit.split-lp.i11 ]
  %i.hw = extractvalue { ptr, i32 } %lpad.phi.i13, 0
  call void @__clang_call_terminate(ptr %i.hw) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit33:     ; preds = %._crit_edge.i.i.i.i28, %bb.q, %bb.u, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.y

bb.y:                                             ; preds = %_ZN6spdlog7details13scoped_padderD2Ev.exit33, %_ZN6spdlog7details13scoped_padderD2Ev.exit
  ret void

bb.z:                                             ; preds = %bb.o
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.hx
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details12ch_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details12ch_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c), !inline_history !29
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !64
  %i.l = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 %i.k, ptr %i.m, align 1, !tbaa !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0) ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  %i.d = or i64 %.sroa.speculated, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !64
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  %i.l = icmp ult i64 %.sroa.speculated, %i.k
  %.neg.i.i.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %.neg.i.i.i.i, %i.i
  %i.n = and i64 %i.m, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(14) %i.o, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.p = icmp sgt i64 %i.c, 99
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.q = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.r
  %i.t = urem i64 %.01819.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.q, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ad = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !305
  %i.an = ptrtoint ptr %4 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not31.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.am, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 9 uses
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !68
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.az = sub i64 %i.ap, %i.ay                    ; 4 uses
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.bc = add i64 %i.az, %i.av
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bc)
          to label %.noexc unwind label %bb.o, !inline_history !38

.noexc:                                           ; preds = %bb.e
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !69 ; 2 uses
  %i.be = load i64, ptr %i.at, align 8, !tbaa !68
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bf)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.bd, %.noexc ], [ %i.av, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bg, %.noexc ], [ %i.az, %bb.d ] ; 13 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i, %i.bi
  %i.bl = sub i64 %i.ay, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !64
  %wide.load30 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !64
  store <16 x i8> %wide.load30, ptr %i.bq, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index32
  store <4 x i8> %wide.load33, ptr %i.bt, align 1, !tbaa !64
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1243

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %.025.i.i, %n.vec31
  br i1 %cmp.n35, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !64
  %i.by = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1244

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.by, %.lr.ph.i.i.prol ]
  %i.bz = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.as, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cc = add i64 %i.cb, %.025.i.i                ; 2 uses
  store i64 %i.cc, ptr %i.as, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.ar
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !64
  %i.cl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !64
  %i.cp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !64
  %i.ct = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ct, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !331 ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  br i1 %i.cw, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cv, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph34.i.i.i.i
  %i.dg = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.en, %._crit_edge.i.i.i.i10 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cy, %.lr.ph34.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dk = sub i64 %i.de, %i.dj                    ; 4 uses
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !66
  %i.dn = add i64 %i.dk, %i.dg
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(283) %i.da, i64 noundef %i.dn)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !69 ; 2 uses
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.dq = sub i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dq)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.do, %.noexc.i ], [ %i.dg, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.dr, %.noexc.i ], [ %i.dk, %bb.h ] ; 13 uses
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !67 ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_12
begin_hunk_13_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 %.030.i.i.i.i.prol
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !64
  %i.ej = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1248

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.ej, %.lr.ph.i.i.i.i9.prol ]
  %i.ek = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block61, %middle.block48
  %.pre37.i.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.j
  %i.em = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.j ]
  %i.en = add i64 %i.em, %.025.i.i.i.i            ; 2 uses
  store i64 %i.en, ptr %i.dc, align 8, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, %i.db
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.h, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.030.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i9 ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 %.030.i.i.i.i
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !64
  %i.es = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.es
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !64
  %i.ew = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ew
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !64
  %i.fa = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fa
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !64
  %i.fe = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fe, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1249

bb.k:                                             ; preds = %.loopexit
  %i.ff = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !265, !range !71, !noundef !72
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.l, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !69
  %i.fn = add nsw i64 %i.fm, %i.cv
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fn, i64 0) ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !68 ; 2 uses
  %i.fq = icmp ugt i64 %spec.store.select.i, %i.fp
  br i1 %i.fq, label %bb.m, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !66
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(283) %i.fk, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.m
  %.pre.i.i.i = load i64, ptr %i.fo, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.l
  %i.ft = phi i64 [ %i.fp, %bb.l ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.fu = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.ft)
  store i64 %i.fu, ptr %i.fl, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fv = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fv) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.g, %bb.k, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.o:                                             ; preds = %bb.e
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.fw
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.q = icmp sgt i64 %i.c, 99999
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.r = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  %i.u = urem i64 %.01819.i.i.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.y, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ae = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !305
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not31.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.an, %.lr.ph34.i.i ], [ %i.ce, %._crit_edge.i.i ] ; 9 uses
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !68
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ba = sub i64 %i.aq, %i.az                    ; 4 uses
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bd = add i64 %i.ba, %i.aw
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bd)
          to label %.noexc unwind label %bb.o, !inline_history !38

.noexc:                                           ; preds = %bb.e
  %i.be = load i64, ptr %i.at, align 8, !tbaa !69 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !68
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bg)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.be, %.noexc ], [ %i.aw, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bh, %.noexc ], [ %i.ba, %bb.d ] ; 13 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bl = add i64 %.026.i.i, %i.bj
  %i.bm = sub i64 %i.az, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %wide.load29 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !64
  store <16 x i8> %wide.load29, ptr %i.br, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index31
  %wide.load32 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index31
  store <4 x i8> %wide.load32, ptr %i.bu, align 1, !tbaa !64
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %.025.i.i, %n.vec30
  br i1 %cmp.n34, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1252

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.ph, %.025.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cd = add i64 %i.cc, %.025.i.i                ; 2 uses
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.as
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !64
  %i.cm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !64
  %i.cq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !64
  %i.cu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1253

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !331 ; 4 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  br i1 %i.cx, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !108 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cw, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph34.i.i.i.i
  %i.dh = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i10 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cz, %.lr.ph34.i.i.i.i ], [ %i.ep, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.di = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dl = sub i64 %i.df, %i.dk                    ; 4 uses
  %i.dm = icmp ult i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !66
  %i.do = add i64 %i.dl, %i.dh
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(283) %i.db, i64 noundef %i.do)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !69 ; 2 uses
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dr)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.dp, %.noexc.i ], [ %i.dh, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.ds, %.noexc.i ], [ %i.dl, %bb.h ] ; 13 uses
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !67 ; 2 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_13
begin_hunk_14_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.030.i.i.i.i.prol
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !64
  %i.ek = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1256

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.ek, %.lr.ph.i.i.i.i9.prol ]
  %i.el = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block60, %middle.block47
  %.pre37.i.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.j
  %i.en = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.j ]
  %i.eo = add i64 %i.en, %.025.i.i.i.i            ; 2 uses
  store i64 %i.eo, ptr %i.dd, align 8, !tbaa !69
  %i.ep = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %i.dc
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.h, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.030.i.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i9 ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.030.i.i.i.i
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  %i.et = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !64
  %i.ex = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !64
  %i.fb = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !64
  %i.ff = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ff, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1257

bb.k:                                             ; preds = %.loopexit
  %i.fg = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !265, !range !71, !noundef !72
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.l, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !69
  %i.fo = add nsw i64 %i.fn, %i.cw
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fo, i64 0) ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !68 ; 2 uses
  %i.fr = icmp ugt i64 %spec.store.select.i, %i.fq
  br i1 %i.fr, label %bb.m, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !66
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(283) %i.fl, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.m
  %.pre.i.i.i = load i64, ptr %i.fp, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.l
  %i.fu = phi i64 [ %i.fq, %bb.l ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.fv = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fu)
  store i64 %i.fv, ptr %i.fm, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fw = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fw) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.g, %bb.k, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.o:                                             ; preds = %bb.e
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.fx
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.q = icmp sgt i64 %i.c, 99999999
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.r = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  %i.u = urem i64 %.01819.i.i.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.y, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ae = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !305
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not31.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.an, %.lr.ph34.i.i ], [ %i.ce, %._crit_edge.i.i ] ; 9 uses
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !68
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ba = sub i64 %i.aq, %i.az                    ; 4 uses
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bd = add i64 %i.ba, %i.aw
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bd)
          to label %.noexc unwind label %bb.o, !inline_history !38

.noexc:                                           ; preds = %bb.e
  %i.be = load i64, ptr %i.at, align 8, !tbaa !69 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !68
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bg)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.be, %.noexc ], [ %i.aw, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bh, %.noexc ], [ %i.ba, %bb.d ] ; 13 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bl = add i64 %.026.i.i, %i.bj
  %i.bm = sub i64 %i.az, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %wide.load29 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !64
  store <16 x i8> %wide.load29, ptr %i.br, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index31
  %wide.load32 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index31
  store <4 x i8> %wide.load32, ptr %i.bu, align 1, !tbaa !64
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1259

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %.025.i.i, %n.vec30
  br i1 %cmp.n34, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1260

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.ph, %.025.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cd = add i64 %i.cc, %.025.i.i                ; 2 uses
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.as
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !64
  %i.cm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !64
  %i.cq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !64
  %i.cu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1261

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !331 ; 4 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  br i1 %i.cx, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !108 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cw, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph34.i.i.i.i
  %i.dh = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i10 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cz, %.lr.ph34.i.i.i.i ], [ %i.ep, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.di = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dl = sub i64 %i.df, %i.dk                    ; 4 uses
  %i.dm = icmp ult i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !66
  %i.do = add i64 %i.dl, %i.dh
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(283) %i.db, i64 noundef %i.do)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !69 ; 2 uses
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dr)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.dp, %.noexc.i ], [ %i.dh, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.ds, %.noexc.i ], [ %i.dl, %bb.h ] ; 13 uses
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !67 ; 2 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_14
begin_hunk_15_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.030.i.i.i.i.prol
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !64
  %i.ek = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1264

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.ek, %.lr.ph.i.i.i.i9.prol ]
  %i.el = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block60, %middle.block47
  %.pre37.i.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.j
  %i.en = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.j ]
  %i.eo = add i64 %i.en, %.025.i.i.i.i            ; 2 uses
  store i64 %i.eo, ptr %i.dd, align 8, !tbaa !69
  %i.ep = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %i.dc
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.h, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.030.i.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i9 ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.030.i.i.i.i
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  %i.et = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !64
  %i.ex = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !64
  %i.fb = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !64
  %i.ff = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ff, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1265

bb.k:                                             ; preds = %.loopexit
  %i.fg = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !265, !range !71, !noundef !72
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.l, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !69
  %i.fo = add nsw i64 %i.fn, %i.cw
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fo, i64 0) ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !68 ; 2 uses
  %i.fr = icmp ugt i64 %spec.store.select.i, %i.fq
  br i1 %i.fr, label %bb.m, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !66
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(283) %i.fl, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.m
  %.pre.i.i.i = load i64, ptr %i.fp, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.l
  %i.fu = phi i64 [ %i.fq, %bb.l ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.fv = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fu)
  store i64 %i.fv, ptr %i.fm, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fw = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fw) #42
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.g, %bb.k, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.o:                                             ; preds = %bb.e
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.fx
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.q = icmp sgt i64 %i.c, 99999999999
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.r = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s
  %i.u = urem i64 %.01819.i.i.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.y, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add i32 %.0.lcssa.i.i.i.i, -2
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ae = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !305
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not31.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not31.i.i, label %.loopexit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.an, %.lr.ph34.i.i ], [ %i.ce, %._crit_edge.i.i ] ; 9 uses
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !68
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ba = sub i64 %i.aq, %i.az                    ; 4 uses
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bd = add i64 %i.ba, %i.aw
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bd)
          to label %.noexc unwind label %bb.o, !inline_history !38

.noexc:                                           ; preds = %bb.e
  %i.be = load i64, ptr %i.at, align 8, !tbaa !69 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !68
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bg)
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.026.i.i = phi i64 [ %i.be, %.noexc ], [ %i.aw, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bh, %.noexc ], [ %i.ba, %bb.d ] ; 13 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bl = add i64 %.026.i.i, %i.bj
  %i.bm = sub i64 %i.az, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !64
  %wide.load29 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !64
  store <16 x i8> %wide.load29, ptr %i.br, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index31
  %wide.load32 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index31
  store <4 x i8> %wide.load32, ptr %i.bu, align 1, !tbaa !64
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %.025.i.i, %n.vec30
  br i1 %cmp.n34, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1268

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.ph, %.025.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.at, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.cc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.cd = add i64 %i.cc, %.025.i.i                ; 2 uses
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.as
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.030.i.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !64
  %i.cm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !64
  %i.cq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !64
  %i.cu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1269

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !331 ; 4 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  br i1 %i.cx, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !108 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.cw, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph34.i.i.i.i
  %i.dh = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.eo, %._crit_edge.i.i.i.i10 ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.cz, %.lr.ph34.i.i.i.i ], [ %i.ep, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.di = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.dl = sub i64 %i.df, %i.dk                    ; 4 uses
  %i.dm = icmp ult i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !66
  %i.do = add i64 %i.dl, %i.dh
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(283) %i.db, i64 noundef %i.do)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.i
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !69 ; 2 uses
  %i.dq = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dr)
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i, %bb.h
  %.026.i.i.i.i = phi i64 [ %i.dp, %.noexc.i ], [ %i.dh, %bb.h ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.ds, %.noexc.i ], [ %i.dl, %bb.h ] ; 13 uses
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !67 ; 2 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
end_hunk_15
begin_hunk_16_@_ZN6spdlog7details21short_level_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i.i = phi i64 [ %i.t, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %.025.i.i = phi i64 [ %i.w, %bb.c ], [ %i.p, %bb.b ] ; 13 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %.026.i.i, %i.y
  %i.ab = sub i64 %i.o, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64
  %wide.load8 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !64
  store <16 x i8> %wide.load8, ptr %i.ag, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index10
  store <4 x i8> %wide.load11, ptr %i.aj, align 1, !tbaa !64
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %.025.i.i, %n.vec9
  br i1 %cmp.n13, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !64
  %i.ao = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1301

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.h, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.ar = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.d ]
  %i.as = add i64 %i.ar, %.025.i.i                ; 2 uses
  store i64 %i.as, ptr %i.h, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !64
  %i.ax = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !64
  %i.bj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1302

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = icmp ugt i64 %i.b, 99
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.d, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = urem i64 %.01819.i.i.i.i, 100
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.f, align 1
  %i.k = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.l = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.d, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.m = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = add i32 %.0.lcssa.i.i.i.i, -2
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %i.o
  %i.q = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  store i16 %i.s, ptr %i.p, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = add i32 %.0.lcssa.i.i.i.i, -1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.o, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !305
  %i.aa = ptrtoint ptr %4 to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = add i64 %i.aa, 21                       ; 3 uses
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %.not31.i.i = icmp eq i64 %i.ac, %i.ab
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.af, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ai = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.z, %.lr.ph34.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 9 uses
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.am = sub i64 %i.ac, %i.al                    ; 4 uses
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.ap = add i64 %i.am, %i.ai
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ap), !inline_history !42
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !69 ; 2 uses
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.as)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.aq, %bb.e ], [ %i.ai, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.at, %bb.e ], [ %i.am, %bb.d ] ; 13 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %.026.i.i, %i.av
  %i.ay = sub i64 %i.al, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !tbaa !64
  %wide.load14 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> %wide.load, ptr %i.bc, align 1, !tbaa !64
  store <16 x i8> %wide.load14, ptr %i.bd, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.bg, align 1, !tbaa !64
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %.025.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.030.i.i.prol
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !64
  %i.bl = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1305

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.prol ]
  %i.bm = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.af, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bo = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bp = add i64 %i.bo, %.025.i.i                ; 2 uses
  store i64 %i.bp, ptr %i.af, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.ae
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.030.i.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !64
  %i.bu = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !64
  %i.by = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !64
  %i.cc = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !64
  %i.cg = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1306

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !70 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.g = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.an, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph34.i.i ], [ %i.ao, %._crit_edge.i.i ] ; 9 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.g
  %i.j = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.k = sub i64 %i.e, %i.j                       ; 4 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.n = add i64 %i.k, %i.g
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.n), !inline_history !23
  %i.o = load i64, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !68
  %i.q = sub i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i.i = phi i64 [ %i.o, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.025.i.i = phi i64 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 13 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.026.i.i ; 7 uses
end_hunk_16
begin_hunk_17_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vector.main.loop.iter.check204:                   ; preds = %vector.memcheck201
  %min.iters.check205 = icmp ult i64 %.025.i.i27, 32
  br i1 %min.iters.check205, label %vec.epilog.ph220, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.cu = and i64 %.025.i.i27, 28
  %n.vec207 = and i64 %.025.i.i27, -32            ; 4 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next212, %vector.body208 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %index209 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load210 = load <16 x i8>, ptr %i.cv, align 1, !tbaa !64
  %wide.load211 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index209 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load210, ptr %i.cx, align 1, !tbaa !64
  store <16 x i8> %wide.load211, ptr %i.cy, align 1, !tbaa !64
  %index.next212 = add nuw i64 %index209, 32      ; 2 uses
  %i.cz = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.cz, label %middle.block213, label %vector.body208, !llvm.loop !1331

middle.block213:                                  ; preds = %vector.body208
  %cmp.n214 = icmp eq i64 %.025.i.i27, %n.vec207
  br i1 %cmp.n214, label %._crit_edge.loopexit.i.i32, label %vec.epilog.iter.check218

vec.epilog.iter.check218:                         ; preds = %middle.block213
  %min.epilog.iters.check219 = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check219, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph220, !prof !109

vec.epilog.ph220:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check218
  %vec.epilog.resume.val215 = phi i64 [ %n.vec207, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec221 = and i64 %.025.i.i27, -4             ; 3 uses
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph220
  %index223 = phi i64 [ %vec.epilog.resume.val215, %vec.epilog.ph220 ], [ %index.next225, %vec.epilog.vector.body222 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %index223
  %wide.load224 = load <4 x i8>, ptr %i.da, align 1, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index223
  store <4 x i8> %wide.load224, ptr %i.db, align 1, !tbaa !64
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next225, %n.vec221
  br i1 %i.dc, label %vec.epilog.middle.block226, label %vec.epilog.vector.body222, !llvm.loop !1332

vec.epilog.middle.block226:                       ; preds = %vec.epilog.vector.body222
  %cmp.n227 = icmp eq i64 %.025.i.i27, %n.vec221
  br i1 %cmp.n227, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck201, %iter.check216, %vec.epilog.iter.check218, %vec.epilog.middle.block226
  %.030.i.i30.ph = phi i64 [ 0, %iter.check216 ], [ 0, %vector.memcheck201 ], [ %n.vec207, %vec.epilog.iter.check218 ], [ %n.vec221, %vec.epilog.middle.block226 ] ; 3 uses
  %xtraiter291 = and i64 %.025.i.i27, 3           ; 2 uses
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %.030.i.i30.prol = phi i64 [ %i.dg, %.lr.ph.i.i29.prol ], [ %.030.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 3 uses
  %prol.iter293 = phi i64 [ %prol.iter293.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %.030.i.i30.prol
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.030.i.i30.prol
  store i8 %i.de, ptr %i.df, align 1, !tbaa !64
  %i.dg = add nuw i64 %.030.i.i30.prol, 1         ; 2 uses
  %prol.iter293.next = add i64 %prol.iter293, 1   ; 2 uses
  %prol.iter293.cmp.not = icmp eq i64 %prol.iter293.next, %xtraiter291
  br i1 %prol.iter293.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !1333

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.030.i.i30.unr = phi i64 [ %.030.i.i30.ph, %.lr.ph.i.i29.preheader ], [ %i.dg, %.lr.ph.i.i29.prol ]
  %i.dh = sub i64 %.030.i.i30.ph, %.025.i.i27
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29

._crit_edge.loopexit.i.i32:                       ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %vec.epilog.middle.block226, %middle.block213
  %.pre37.i.i33 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %._crit_edge.loopexit.i.i32, %bb.h
  %i.dj = phi i64 [ %.pre37.i.i33, %._crit_edge.loopexit.i.i32 ], [ %.026.i.i26, %bb.h ]
  %i.dk = add i64 %i.dj, %.025.i.i27              ; 3 uses
  store i64 %i.dk, ptr %i.bk, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %.025.i.i27 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dl, %i.ca
  br i1 %.not.i.i35, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36, label %bb.f, !llvm.loop !3

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.030.i.i30 = phi i64 [ %i.eb, %.lr.ph.i.i29 ], [ %.030.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %.030.i.i30
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.030.i.i30
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !64
  %i.dp = add nuw i64 %.030.i.i30, 1              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dp
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !64
  %i.dt = add nuw i64 %.030.i.i30, 2              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dt
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !64
  %i.dx = add nuw i64 %.030.i.i30, 3              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02732.i.i25, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dx
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !64
  %i.eb = add nuw i64 %.030.i.i30, 4              ; 2 uses
  %exitcond.not.i.i31.3 = icmp eq i64 %i.eb, %.025.i.i27
  br i1 %exitcond.not.i.i31.3, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29, !llvm.loop !1334

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36: ; preds = %._crit_edge.i.i34, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.ec = phi i64 [ %.pre138, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.dk, %._crit_edge.i.i34 ] ; 2 uses
  %i.ed = add i64 %i.ec, 1                        ; 3 uses
  %i.ee = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.ef = icmp ugt i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !66
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ed), !inline_history !29
  %.pre.i38 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i39 = add i64 %.pre.i38, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36, %bb.i
  %.pre-phi.i37 = phi i64 [ %i.ed, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36 ], [ %.pre2.i39, %bb.i ]
  %i.ei = phi i64 [ %i.ec, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36 ], [ %.pre.i38, %bb.i ]
  %i.ej = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i37, ptr %i.bk, align 8, !tbaa !69
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 32, ptr %i.ek, align 1, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !307 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.en = icmp slt i32 %i.em, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.em, i1 false) ; 3 uses
  %i.eo = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.ep, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40 ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40 ] ; 3 uses
  %i.ep = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 %i.eq
  %i.es = urem i32 %.01819.i.i.i.i.i, 100
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2
  store i16 %i.ew, ptr %i.er, align 1
  %i.ex = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ey = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40 ], [ %i.ex, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit40 ], [ %i.ep, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ez = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ez, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fa = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 %i.fb
  %i.fd = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fc, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fh = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.fi = or disjoint i8 %i.fh, 48
  %i.fj = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 %i.fk
  store i8 %i.fi, ptr %i.fl, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.fk, %bb.k ], [ %i.fb, %bb.j ]
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.en, label %bb.l, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.l:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -1 ; 2 uses
  store i8 45, ptr %i.fn, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.l, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.fn, %bb.l ], [ %i.fm, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %.0.i.i.i, ptr %i.fo, align 8, !tbaa !305
  %i.fp = ptrtoint ptr %11 to i64
  %i.fq = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fr = add i64 %i.fp, 21                       ; 3 uses
  %i.fs = sub i64 %i.fr, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fs
  %.not31.i.i41 = icmp eq i64 %i.fr, %i.fq
  %.pre139 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  br i1 %.not31.i.i41, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i42

.lr.ph34.i.i42:                                   ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i53, %.lr.ph34.i.i42
  %i.fv = phi i64 [ %.pre139, %.lr.ph34.i.i42 ], [ %i.hc, %._crit_edge.i.i53 ] ; 3 uses
  %.02732.i.i44 = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i42 ], [ %i.hd, %._crit_edge.i.i53 ] ; 9 uses
  %i.fw = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.fx = sub i64 %i.fw, %i.fv
  %i.fy = ptrtoint ptr %.02732.i.i44 to i64       ; 2 uses
  %i.fz = sub i64 %i.fr, %i.fy                    ; 4 uses
  %i.ga = icmp ult i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !66
  %i.gc = add i64 %i.fz, %i.fv
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.gc), !inline_history !31
  %i.gd = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.ge = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.gf = sub i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.fz, i64 %i.gf)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i45 = phi i64 [ %i.gd, %bb.n ], [ %i.fv, %bb.m ] ; 3 uses
  %.025.i.i46 = phi i64 [ %i.gg, %bb.n ], [ %i.fz, %bb.m ] ; 13 uses
  %i.gh = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.gi = ptrtoaddr ptr %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.026.i.i45 ; 7 uses
  %.not36.i.i47 = icmp eq i64 %.025.i.i46, 0
  br i1 %.not36.i.i47, label %._crit_edge.i.i53, label %iter.check244

iter.check244:                                    ; preds = %bb.o
  %min.iters.check231.a = icmp ult i64 %.025.i.i46, 4
  br i1 %min.iters.check231.a, label %.lr.ph.i.i48.preheader, label %vector.memcheck229

vector.memcheck229:                               ; preds = %iter.check244
  %i.gk = add i64 %.026.i.i45, %i.gi
  %i.gl = sub i64 %i.fy, %i.gk
  %diff.check230 = icmp ugt i64 %i.gl, -32
  br i1 %diff.check230, label %.lr.ph.i.i48.preheader, label %vector.main.loop.iter.check232

vector.main.loop.iter.check232:                   ; preds = %vector.memcheck229
  %min.iters.check233 = icmp ult i64 %.025.i.i46, 32
  br i1 %min.iters.check233, label %vec.epilog.ph248, label %vector.ph234

vector.ph234:                                     ; preds = %vector.main.loop.iter.check232
  %i.gm = and i64 %.025.i.i46, 28
  %n.vec235 = and i64 %.025.i.i46, -32            ; 4 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next240, %vector.body236 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %index237 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load238 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !64
  %wide.load239 = load <16 x i8>, ptr %i.go, align 1, !tbaa !64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index237 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <16 x i8> %wide.load238, ptr %i.gp, align 1, !tbaa !64
  store <16 x i8> %wide.load239, ptr %i.gq, align 1, !tbaa !64
  %index.next240 = add nuw i64 %index237, 32      ; 2 uses
  %i.gr = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.gr, label %middle.block241, label %vector.body236, !llvm.loop !1335

middle.block241:                                  ; preds = %vector.body236
  %cmp.n242 = icmp eq i64 %.025.i.i46, %n.vec235
  br i1 %cmp.n242, label %._crit_edge.loopexit.i.i51, label %vec.epilog.iter.check246

vec.epilog.iter.check246:                         ; preds = %middle.block241
  %min.epilog.iters.check247 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check247, label %.lr.ph.i.i48.preheader, label %vec.epilog.ph248, !prof !109

vec.epilog.ph248:                                 ; preds = %vector.main.loop.iter.check232, %vec.epilog.iter.check246
  %vec.epilog.resume.val243 = phi i64 [ %n.vec235, %vec.epilog.iter.check246 ], [ 0, %vector.main.loop.iter.check232 ]
  %n.vec249 = and i64 %.025.i.i46, -4             ; 3 uses
  br label %vec.epilog.vector.body250

vec.epilog.vector.body250:                        ; preds = %vec.epilog.vector.body250, %vec.epilog.ph248
  %index251 = phi i64 [ %vec.epilog.resume.val243, %vec.epilog.ph248 ], [ %index.next253, %vec.epilog.vector.body250 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %index251
  %wide.load252 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index251
  store <4 x i8> %wide.load252, ptr %i.gt, align 1, !tbaa !64
  %index.next253 = add nuw i64 %index251, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next253, %n.vec249
  br i1 %i.gu, label %vec.epilog.middle.block254, label %vec.epilog.vector.body250, !llvm.loop !1336

vec.epilog.middle.block254:                       ; preds = %vec.epilog.vector.body250
  %cmp.n255 = icmp eq i64 %.025.i.i46, %n.vec249
  br i1 %cmp.n255, label %._crit_edge.loopexit.i.i51, label %.lr.ph.i.i48.preheader

.lr.ph.i.i48.preheader:                           ; preds = %vector.memcheck229, %iter.check244, %vec.epilog.iter.check246, %vec.epilog.middle.block254
  %.030.i.i49.ph = phi i64 [ 0, %iter.check244 ], [ 0, %vector.memcheck229 ], [ %n.vec235, %vec.epilog.iter.check246 ], [ %n.vec249, %vec.epilog.middle.block254 ] ; 3 uses
  %xtraiter294 = and i64 %.025.i.i46, 3           ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph.i.i48.prol.loopexit, label %.lr.ph.i.i48.prol

.lr.ph.i.i48.prol:                                ; preds = %.lr.ph.i.i48.preheader, %.lr.ph.i.i48.prol
  %.030.i.i49.prol = phi i64 [ %i.gy, %.lr.ph.i.i48.prol ], [ %.030.i.i49.ph, %.lr.ph.i.i48.preheader ] ; 3 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %.lr.ph.i.i48.prol ], [ 0, %.lr.ph.i.i48.preheader ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %.030.i.i49.prol
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.030.i.i49.prol
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !64
  %i.gy = add nuw i64 %.030.i.i49.prol, 1         ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %.lr.ph.i.i48.prol.loopexit, label %.lr.ph.i.i48.prol, !llvm.loop !1337

.lr.ph.i.i48.prol.loopexit:                       ; preds = %.lr.ph.i.i48.prol, %.lr.ph.i.i48.preheader
  %.030.i.i49.unr = phi i64 [ %.030.i.i49.ph, %.lr.ph.i.i48.preheader ], [ %i.gy, %.lr.ph.i.i48.prol ]
  %i.gz = sub i64 %.030.i.i49.ph, %.025.i.i46
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %._crit_edge.loopexit.i.i51, label %.lr.ph.i.i48

._crit_edge.loopexit.i.i51:                       ; preds = %.lr.ph.i.i48.prol.loopexit, %.lr.ph.i.i48, %vec.epilog.middle.block254, %middle.block241
  %.pre37.i.i52 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %._crit_edge.loopexit.i.i51, %bb.o
  %i.hb = phi i64 [ %.pre37.i.i52, %._crit_edge.loopexit.i.i51 ], [ %.026.i.i45, %bb.o ]
  %i.hc = add i64 %i.hb, %.025.i.i46              ; 3 uses
  store i64 %i.hc, ptr %i.bk, align 8, !tbaa !69
  %i.hd = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %.025.i.i46 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.hd, %i.ft
  br i1 %.not.i.i54, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.m, !llvm.loop !3

.lr.ph.i.i48:                                     ; preds = %.lr.ph.i.i48.prol.loopexit, %.lr.ph.i.i48
  %.030.i.i49 = phi i64 [ %i.ht, %.lr.ph.i.i48 ], [ %.030.i.i49.unr, %.lr.ph.i.i48.prol.loopexit ] ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %.030.i.i49
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.030.i.i49
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !64
  %i.hh = add nuw i64 %.030.i.i49, 1              ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hh
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !64
  %i.hl = add nuw i64 %.030.i.i49, 2              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hl
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !64
  %i.hp = add nuw i64 %.030.i.i49, 3              ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.02732.i.i44, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hp
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !64
  %i.ht = add nuw i64 %.030.i.i49, 4              ; 2 uses
  %exitcond.not.i.i50.3 = icmp eq i64 %i.ht, %.025.i.i46
  br i1 %exitcond.not.i.i50.3, label %._crit_edge.loopexit.i.i51, label %.lr.ph.i.i48, !llvm.loop !1338

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i53, %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.hu = phi i64 [ %.pre139, %_ZN3fmt3v1210format_intC2Ei.exit.i ], [ %i.hc, %._crit_edge.i.i53 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.hv = add i64 %i.hu, 1                        ; 3 uses
  %i.hw = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.hx = icmp ugt i64 %i.hv, %i.hw
  br i1 %i.hx, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

bb.p:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !66
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hv), !inline_history !29
  %.pre.i56 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %bb.p
  %.pre-phi.i55 = phi i64 [ %i.hv, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre2.i57, %bb.p ]
  %i.ia = phi i64 [ %i.hu, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre.i56, %bb.p ]
  %i.ib = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i55, ptr %i.bk, align 8, !tbaa !69
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  store i8 32, ptr %i.ic, align 1, !tbaa !64
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !308 ; 3 uses
  %or.cond.i = icmp ult i32 %i.ie, 100
  br i1 %or.cond.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ie to i8   ; 2 uses
  %i.if = udiv i8 %.lhs.trunc.i, 10
  %i.ig = urem i8 %.lhs.trunc.i, 10
  %i.ih = or disjoint i8 %i.if, 48
  %i.ii = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.ij = add i64 %i.ii, 1                        ; 3 uses
  %i.ik = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.il = icmp ugt i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.r:                                             ; preds = %bb.q
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !66
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ij), !inline_history !32
  %.pre.i.i59 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i59, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.r, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.ij, %bb.q ], [ %.pre2.i.i, %bb.r ]
  %i.io = phi i64 [ %i.ii, %bb.q ], [ %.pre.i.i59, %bb.r ]
  %i.ip = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.bk, align 8, !tbaa !69
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.io
  store i8 %i.ih, ptr %i.iq, align 1, !tbaa !64
  %i.ir = or disjoint i8 %i.ig, 48
  %i.is = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
end_hunk_17
begin_hunk_18_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i32 %i.jr, ptr %8, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %8, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i70, %bb.y
  %i.ku = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.kv = add i64 %i.ku, 1                        ; 3 uses
  %i.kw = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.kx = icmp ugt i64 %i.kv, %i.kw
  br i1 %i.kx, label %bb.z, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit80

bb.z:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !66
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kv), !inline_history !29
  %.pre.i78 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i79 = add i64 %.pre.i78, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit80

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit80: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76, %bb.z
  %.pre-phi.i77 = phi i64 [ %i.kv, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76 ], [ %.pre2.i79, %bb.z ]
  %i.la = phi i64 [ %i.ku, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit76 ], [ %.pre.i78, %bb.z ]
  %i.lb = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i77, ptr %i.bk, align 8, !tbaa !69
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 58, ptr %i.lc, align 1, !tbaa !64
  %i.ld = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i81 = icmp ult i32 %i.ld, 100
  br i1 %or.cond.i81, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit80
  %.lhs.trunc.i84 = trunc nuw nsw i32 %i.ld to i8 ; 2 uses
  %i.le = udiv i8 %.lhs.trunc.i84, 10
  %i.lf = urem i8 %.lhs.trunc.i84, 10
  %i.lg = or disjoint i8 %i.le, 48
  %i.lh = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.li = add i64 %i.lh, 1                        ; 3 uses
  %i.lj = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.lk = icmp ugt i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.ab, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85

bb.ab:                                            ; preds = %bb.aa
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !66
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.li), !inline_history !32
  %.pre.i.i91 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i92 = add i64 %.pre.i.i91, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85: ; preds = %bb.ab, %bb.aa
  %.pre-phi.i.i86 = phi i64 [ %i.li, %bb.aa ], [ %.pre2.i.i92, %bb.ab ]
  %i.ln = phi i64 [ %i.lh, %bb.aa ], [ %.pre.i.i91, %bb.ab ]
  %i.lo = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i86, ptr %i.bk, align 8, !tbaa !69
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ln
  store i8 %i.lg, ptr %i.lp, align 1, !tbaa !64
  %i.lq = or disjoint i8 %i.lf, 48
  %i.lr = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.ls = add i64 %i.lr, 1                        ; 3 uses
  %i.lt = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.lu = icmp ugt i64 %i.ls, %i.lt
  br i1 %i.lu, label %bb.ac, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i87

bb.ac:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !66
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ls), !inline_history !32
  %.pre.i5.i89 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i90 = add i64 %.pre.i5.i89, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i87

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i87: ; preds = %bb.ac, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85
  %.pre-phi.i4.i88 = phi i64 [ %i.ls, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85 ], [ %.pre2.i6.i90, %bb.ac ]
  %i.lx = phi i64 [ %i.lr, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i85 ], [ %.pre.i5.i89, %bb.ac ]
  %i.ly = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i88, ptr %i.bk, align 8, !tbaa !69
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lx
  store i8 %i.lq, ptr %i.lz, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93

bb.ad:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i32 1, ptr %5, align 8, !tbaa !204
  %.ptr.i.i82 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %.ptr.i.i82, align 8, !tbaa !206
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ma, align 8, !tbaa !207
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.70, ptr %i.mb, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i83 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i83, align 8, !tbaa !70
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.mc, align 8, !tbaa !209
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.md, align 4, !tbaa !211
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %5, ptr %i.me, align 8, !tbaa !212
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.mf, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store i32 %i.ld, ptr %6, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %6, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i87, %bb.ad
  %i.mg = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.mh = add i64 %i.mg, 1                        ; 3 uses
  %i.mi = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.mj = icmp ugt i64 %i.mh, %i.mi
  br i1 %i.mj, label %bb.ae, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97

bb.ae:                                            ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !66
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mh), !inline_history !29
  %.pre.i95 = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i96 = add i64 %.pre.i95, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93, %bb.ae
  %.pre-phi.i94 = phi i64 [ %i.mh, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93 ], [ %.pre2.i96, %bb.ae ]
  %i.mm = phi i64 [ %i.mg, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit93 ], [ %.pre.i95, %bb.ae ]
  %i.mn = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i94, ptr %i.bk, align 8, !tbaa !69
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mm
  store i8 32, ptr %i.mo, align 1, !tbaa !64
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !303 ; 2 uses
  %i.mr = add nsw i32 %i.mq, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ms = icmp slt i32 %i.mq, -1900
  %spec.select.i.i.i98 = call i32 @llvm.abs.i32(i32 %i.mr, i1 true) ; 3 uses
  %i.mt = icmp samesign ugt i32 %spec.select.i.i.i98, 99
  br i1 %i.mt, label %.lr.ph.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i99

.lr.ph.i.i.i.i.i120:                              ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97, %.lr.ph.i.i.i.i.i120
  %.020.i.i.i.i.i121 = phi i32 [ %i.mu, %.lr.ph.i.i.i.i.i120 ], [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97 ]
  %.01819.i.i.i.i.i122 = phi i32 [ %i.nc, %.lr.ph.i.i.i.i.i120 ], [ %spec.select.i.i.i98, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97 ] ; 3 uses
  %i.mu = add i32 %.020.i.i.i.i.i121, -2          ; 3 uses
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 %i.mv
  %i.mx = urem i32 %.01819.i.i.i.i.i122, 100
  %i.my = shl nuw nsw i32 %i.mx, 1
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2
  store i16 %i.nb, ptr %i.mw, align 1
  %i.nc = udiv i32 %.01819.i.i.i.i.i122, 100      ; 2 uses
  %i.nd = icmp samesign ugt i32 %.01819.i.i.i.i.i122, 9999
  br i1 %i.nd, label %.lr.ph.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i99, !llvm.loop !30

._crit_edge.i.i.i.i.i99:                          ; preds = %.lr.ph.i.i.i.i.i120, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97
  %.018.lcssa.i.i.i.i.i100 = phi i32 [ %spec.select.i.i.i98, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97 ], [ %i.nc, %.lr.ph.i.i.i.i.i120 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i101 = phi i32 [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit97 ], [ %i.mu, %.lr.ph.i.i.i.i.i120 ] ; 2 uses
  %i.ne = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i100, 9
  br i1 %i.ne, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i99
  %i.nf = add i32 %.0.lcssa.i.i.i.i.i101, -2
  %i.ng = zext i32 %i.nf to i64                   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 %i.ng
  %i.ni = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i100, 1
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2
  store i16 %i.nl, ptr %i.nh, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i99
  %i.nm = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i100 to i8
  %i.nn = or disjoint i8 %i.nm, 48
  %i.no = add i32 %.0.lcssa.i.i.i.i.i101, -1
  %i.np = zext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 %i.np
  store i8 %i.nn, ptr %i.nq, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102: ; preds = %bb.ag, %bb.af
  %.pre-phi.i.i.i.i.i103 = phi i64 [ %i.np, %bb.ag ], [ %i.ng, %bb.af ]
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i103 ; 2 uses
  br i1 %i.ms, label %bb.ah, label %_ZN3fmt3v1210format_intC2Ei.exit.i104

bb.ah:                                            ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -1 ; 2 uses
  store i8 45, ptr %i.ns, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i104

_ZN3fmt3v1210format_intC2Ei.exit.i104:            ; preds = %bb.ah, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102
  %.0.i.i.i105 = phi ptr [ %i.ns, %bb.ah ], [ %i.nr, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i102 ] ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i105, ptr %i.nt, align 8, !tbaa !305
  %i.nu = ptrtoint ptr %4 to i64
  %i.nv = ptrtoint ptr %.0.i.i.i105 to i64        ; 2 uses
  %i.nw = add i64 %i.nu, 21                       ; 3 uses
  %i.nx = sub i64 %i.nw, %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.i.i.i105, i64 %i.nx
  %.not31.i.i106 = icmp eq i64 %i.nw, %i.nv
  br i1 %.not31.i.i106, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit123, label %.lr.ph34.i.i107

.lr.ph34.i.i107:                                  ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i104
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i108 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i118, %.lr.ph34.i.i107
  %i.oa = phi i64 [ %.pre.i.i108, %.lr.ph34.i.i107 ], [ %i.ph, %._crit_edge.i.i118 ] ; 3 uses
  %.02732.i.i109 = phi ptr [ %.0.i.i.i105, %.lr.ph34.i.i107 ], [ %i.pi, %._crit_edge.i.i118 ] ; 9 uses
  %i.ob = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.oc = sub i64 %i.ob, %i.oa
  %i.od = ptrtoint ptr %.02732.i.i109 to i64      ; 2 uses
  %i.oe = sub i64 %i.nw, %i.od                    ; 4 uses
  %i.of = icmp ult i64 %i.oc, %i.oe
  br i1 %i.of, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !66
  %i.oh = add i64 %i.oe, %i.oa
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.oh), !inline_history !31
  %i.oi = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.oj = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.ok = sub i64 %i.oj, %i.oi
  %i.ol = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.ok)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.026.i.i110 = phi i64 [ %i.oi, %bb.aj ], [ %i.oa, %bb.ai ] ; 3 uses
  %.025.i.i111 = phi i64 [ %i.ol, %bb.aj ], [ %i.oe, %bb.ai ] ; 13 uses
  %i.om = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.on = ptrtoaddr ptr %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %.026.i.i110 ; 7 uses
  %.not36.i.i112 = icmp eq i64 %.025.i.i111, 0
  br i1 %.not36.i.i112, label %._crit_edge.i.i118, label %iter.check272

iter.check272:                                    ; preds = %bb.ak
  %min.iters.check259.a = icmp ult i64 %.025.i.i111, 4
  br i1 %min.iters.check259.a, label %.lr.ph.i.i113.preheader, label %vector.memcheck257

vector.memcheck257:                               ; preds = %iter.check272
  %i.op = add i64 %.026.i.i110, %i.on
  %i.oq = sub i64 %i.od, %i.op
  %diff.check258 = icmp ugt i64 %i.oq, -32
  br i1 %diff.check258, label %.lr.ph.i.i113.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %vector.memcheck257
  %min.iters.check261 = icmp ult i64 %.025.i.i111, 32
  br i1 %min.iters.check261, label %vec.epilog.ph276, label %vector.ph262

vector.ph262:                                     ; preds = %vector.main.loop.iter.check260
  %i.or = and i64 %.025.i.i111, 28
  %n.vec263 = and i64 %.025.i.i111, -32           ; 4 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next268, %vector.body264 ] ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %index265 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load266 = load <16 x i8>, ptr %i.os, align 1, !tbaa !64
  %wide.load267 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 %index265 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store <16 x i8> %wide.load266, ptr %i.ou, align 1, !tbaa !64
  store <16 x i8> %wide.load267, ptr %i.ov, align 1, !tbaa !64
  %index.next268 = add nuw i64 %index265, 32      ; 2 uses
  %i.ow = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.ow, label %middle.block269, label %vector.body264, !llvm.loop !1339

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %.025.i.i111, %n.vec263
  br i1 %cmp.n270, label %._crit_edge.loopexit.i.i116, label %vec.epilog.iter.check274

vec.epilog.iter.check274:                         ; preds = %middle.block269
  %min.epilog.iters.check275 = icmp eq i64 %i.or, 0
  br i1 %min.epilog.iters.check275, label %.lr.ph.i.i113.preheader, label %vec.epilog.ph276, !prof !109

vec.epilog.ph276:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check274
  %vec.epilog.resume.val271 = phi i64 [ %n.vec263, %vec.epilog.iter.check274 ], [ 0, %vector.main.loop.iter.check260 ]
  %n.vec277 = and i64 %.025.i.i111, -4            ; 3 uses
  br label %vec.epilog.vector.body278

vec.epilog.vector.body278:                        ; preds = %vec.epilog.vector.body278, %vec.epilog.ph276
  %index279 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph276 ], [ %index.next281, %vec.epilog.vector.body278 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %index279
  %wide.load280 = load <4 x i8>, ptr %i.ox, align 1, !tbaa !64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 %index279
  store <4 x i8> %wide.load280, ptr %i.oy, align 1, !tbaa !64
  %index.next281 = add nuw i64 %index279, 4       ; 2 uses
  %i.oz = icmp eq i64 %index.next281, %n.vec277
  br i1 %i.oz, label %vec.epilog.middle.block282, label %vec.epilog.vector.body278, !llvm.loop !1340

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body278
  %cmp.n283 = icmp eq i64 %.025.i.i111, %n.vec277
  br i1 %cmp.n283, label %._crit_edge.loopexit.i.i116, label %.lr.ph.i.i113.preheader

.lr.ph.i.i113.preheader:                          ; preds = %vector.memcheck257, %iter.check272, %vec.epilog.iter.check274, %vec.epilog.middle.block282
  %.030.i.i114.ph = phi i64 [ 0, %iter.check272 ], [ 0, %vector.memcheck257 ], [ %n.vec263, %vec.epilog.iter.check274 ], [ %n.vec277, %vec.epilog.middle.block282 ] ; 3 uses
  %xtraiter297 = and i64 %.025.i.i111, 3          ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph.i.i113.prol.loopexit, label %.lr.ph.i.i113.prol

.lr.ph.i.i113.prol:                               ; preds = %.lr.ph.i.i113.preheader, %.lr.ph.i.i113.prol
  %.030.i.i114.prol = phi i64 [ %i.pd, %.lr.ph.i.i113.prol ], [ %.030.i.i114.ph, %.lr.ph.i.i113.preheader ] ; 3 uses
  %prol.iter299 = phi i64 [ %prol.iter299.next, %.lr.ph.i.i113.prol ], [ 0, %.lr.ph.i.i113.preheader ]
  %i.pa = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %.030.i.i114.prol
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.030.i.i114.prol
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !64
  %i.pd = add nuw i64 %.030.i.i114.prol, 1        ; 2 uses
  %prol.iter299.next = add i64 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i64 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %.lr.ph.i.i113.prol.loopexit, label %.lr.ph.i.i113.prol, !llvm.loop !1341

.lr.ph.i.i113.prol.loopexit:                      ; preds = %.lr.ph.i.i113.prol, %.lr.ph.i.i113.preheader
  %.030.i.i114.unr = phi i64 [ %.030.i.i114.ph, %.lr.ph.i.i113.preheader ], [ %i.pd, %.lr.ph.i.i113.prol ]
  %i.pe = sub i64 %.030.i.i114.ph, %.025.i.i111
  %i.pf = icmp ugt i64 %i.pe, -4
  br i1 %i.pf, label %._crit_edge.loopexit.i.i116, label %.lr.ph.i.i113

._crit_edge.loopexit.i.i116:                      ; preds = %.lr.ph.i.i113.prol.loopexit, %.lr.ph.i.i113, %vec.epilog.middle.block282, %middle.block269
  %.pre37.i.i117 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %._crit_edge.i.i118

._crit_edge.i.i118:                               ; preds = %._crit_edge.loopexit.i.i116, %bb.ak
  %i.pg = phi i64 [ %.pre37.i.i117, %._crit_edge.loopexit.i.i116 ], [ %.026.i.i110, %bb.ak ]
  %i.ph = add i64 %i.pg, %.025.i.i111             ; 2 uses
  store i64 %i.ph, ptr %i.bk, align 8, !tbaa !69
  %i.pi = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %.025.i.i111 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.pi, %i.ny
  br i1 %.not.i.i119, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit123, label %bb.ai, !llvm.loop !3

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.prol.loopexit, %.lr.ph.i.i113
  %.030.i.i114 = phi i64 [ %i.py, %.lr.ph.i.i113 ], [ %.030.i.i114.unr, %.lr.ph.i.i113.prol.loopexit ] ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %.030.i.i114
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.030.i.i114
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !64
  %i.pm = add nuw i64 %.030.i.i114, 1             ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !64
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.pm
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !64
  %i.pq = add nuw i64 %.030.i.i114, 2             ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.pq
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !64
  %i.pu = add nuw i64 %.030.i.i114, 3             ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.02732.i.i109, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !64
  %i.px = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.pu
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !64
  %i.py = add nuw i64 %.030.i.i114, 4             ; 2 uses
  %exitcond.not.i.i115.3 = icmp eq i64 %i.py, %.025.i.i111
  br i1 %exitcond.not.i.i115.3, label %._crit_edge.loopexit.i.i116, label %.lr.ph.i.i113, !llvm.loop !1342

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit123: ; preds = %._crit_edge.i.i118, %_ZN3fmt3v1210format_intC2Ei.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !303
  %i.c = srem i32 %i.b, 100                       ; 3 uses
  %or.cond.i = icmp sgt i32 %i.c, -1
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i), !inline_history !32
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.g, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1, !tbaa !64
  %i.r = or disjoint i8 %i.e, 48
  %i.s = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load i64, ptr %i.j, align 8, !tbaa !68
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.t), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.g, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.t, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.y = phi i64 [ %i.s, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.z = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.g, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %i.r, ptr %i.aa, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !207
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.ac, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !209
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.ae, align 4, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.af, align 8, !tbaa !212
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.ag, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i32 %i.c, ptr %5, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !303  ; 2 uses
  %i.c = add nsw i32 %i.b, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.d = icmp slt i32 %i.b, -1900
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 3 uses
  %i.e = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %i.f = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  %i.i = urem i32 %.01819.i.i.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %i.h, align 1
  %i.n = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.o = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.p = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.q = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.r
  %i.t = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.r, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  store i8 45, ptr %i.ad, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ae, align 8, !tbaa !305
  %i.af = ptrtoint ptr %4 to i64
  %i.ag = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ah = add i64 %i.af, 21                       ; 3 uses
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ai
  %.not31.i.i = icmp eq i64 %i.ah, %i.ag
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ak, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.an = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bu, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 9 uses
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ar = sub i64 %i.ah, %i.aq                    ; 4 uses
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.au = add i64 %i.ar, %i.an
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.au), !inline_history !31
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !69 ; 2 uses
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ax)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i = phi i64 [ %i.av, %bb.f ], [ %i.an, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ay, %bb.f ], [ %i.ar, %bb.e ] ; 13 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %.026.i.i, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !64
  %wide.load11 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !64
  store <16 x i8> %wide.load11, ptr %i.bi, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index13
  store <4 x i8> %wide.load14, ptr %i.bl, align 1, !tbaa !64
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %.025.i.i, %n.vec12
  br i1 %cmp.n16, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.030.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !64
  %i.bq = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1345

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ak, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.bt = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bu = add i64 %i.bt, %.025.i.i                ; 2 uses
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.aj
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.030.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !64
  %i.cd = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !64
  %i.cl = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cl, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1346

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %8 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !306
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %or.cond.i = icmp ult i32 %i.c, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i), !inline_history !32
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.g, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1, !tbaa !64
  %i.r = or disjoint i8 %i.e, 48
  %i.s = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN6spdlog7details11S_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !64
  %i.p = or disjoint i8 %i.c, 48
  %i.q = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !68
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.e, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.r, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.w = phi i64 [ %i.q, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.e, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 %i.p, ptr %i.y, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !207
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.aa, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !209
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.ac, align 4, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.ad, align 8, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.ae, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i32 %i.a, ptr %5, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000000
  %.neg.i = mul i64 %i.b, 4294966296
  %i.d = add i64 %.neg.i, %i.c
  %i.e = trunc i64 %i.d to i32
  tail call void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000
  %.neg.i = mul nsw i64 %i.b, -1000000
  %i.d = add nsw i64 %.neg.i, %i.c
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.d, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !70
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.c = icmp slt i64 %.sroa.0.0.copyload.i, -999999999
  %spec.select.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 3 uses
  %i.d = icmp samesign ugt i64 %spec.select.i.i.i, 99
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %i.e = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f
  %i.h = urem i64 %.01819.i.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.m = icmp samesign ugt i64 %.01819.i.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.e, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  %i.r = shl nuw nsw i64 %.018.lcssa.i.i.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.u = trunc nuw nsw i64 %.018.lcssa.i.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN3fmt3v1210format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  store i8 45, ptr %i.aa, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2El.exit.i

_ZN3fmt3v1210format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.z, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ab, align 8, !tbaa !305
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.af
  %.not31.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2El.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ao = sub i64 %i.ae, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.ar = add i64 %i.ao, %i.ak
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar), !inline_history !1347
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.au = sub i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.av, %bb.f ], [ %i.ao, %bb.e ] ; 13 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %wide.load13 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !64
  store <16 x i8> %wide.load13, ptr %i.bf, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.bi, align 1, !tbaa !64
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1349

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %.025.i.i, %n.vec14
  br i1 %cmp.n18, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1350

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.bq = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.br = add i64 %i.bq, %.025.i.i                ; 2 uses
  store i64 %i.br, ptr %i.ah, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %i.bw = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1351

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
.lr.ph34.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !308
  %i.b = icmp sgt i32 %.val, 11                   ; 2 uses
  %i.c = select i1 %i.b, ptr getelementptr inbounds nuw (i8, ptr @.str.110, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.111, i64 2) ; 2 uses
  %.str.110..str.111.i = select i1 %i.b, ptr @.str.110, ptr @.str.111
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ao, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.str.110..str.111.i, %.lr.ph34.i.i ], [ %i.ap, %._crit_edge.i.i ] ; 9 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !68
  %i.j = sub i64 %i.i, %i.h
  %i.k = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 4 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.o = add i64 %i.l, %i.h
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o), !inline_history !23
  %i.p = load i64, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !68
  %i.r = sub i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026.i.i = phi i64 [ %i.p, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %.025.i.i = phi i64 [ %i.s, %bb.b ], [ %i.l, %bb.a ] ; 13 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
end_hunk_19
begin_hunk_20_@_ZN6spdlog7details11z_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.n, %bb.m
  %.pre-phi.i.i = phi i64 [ %i.bw, %bb.m ], [ %.pre2.i.i, %bb.n ]
  %i.cc = phi i64 [ %i.bv, %bb.m ], [ %.pre.i.i, %bb.n ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.bu, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 %i.bt, ptr %i.ce, align 1, !tbaa !64
  %i.cf = or disjoint i8 %i.bs, 48
  %i.cg = load i64, ptr %i.bu, align 8, !tbaa !69 ; 2 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load i64, ptr %i.bx, align 8, !tbaa !68
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !66
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ch), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.bu, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.o, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.o ]
  %i.cm = phi i64 [ %i.cg, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.o ]
  %i.cn = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.bu, align 8, !tbaa !69
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 %i.cf, ptr %i.co, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cp, align 8, !tbaa !207
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.cq, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.cr, align 8, !tbaa !209
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.cs, align 4, !tbaa !211
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.ct, align 8, !tbaa !212
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.cu, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store i32 %i.bp, ptr %5, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i, %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !68
  %i.da = icmp ugt i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27

bb.q:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !66
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cx), !inline_history !29
  %.pre.i25 = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %.pre2.i26 = add i64 %.pre.i25, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.q
  %.pre-phi.i24 = phi i64 [ %i.cx, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i26, %bb.q ]
  %i.dd = phi i64 [ %i.cw, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i25, %bb.q ]
  %i.de = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i24, ptr %i.cv, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 58, ptr %i.df, align 1, !tbaa !64
  %.lhs.trunc.i31 = trunc nuw nsw i32 %i.bq to i8 ; 2 uses
  %i.dg = udiv i8 %.lhs.trunc.i31, 10
  %i.dh = urem i8 %.lhs.trunc.i31, 10
  %i.di = or disjoint i8 %i.dg, 48
  %i.dj = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load i64, ptr %i.cy, align 8, !tbaa !68
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !66
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.dk), !inline_history !32
  %.pre.i.i38 = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32: ; preds = %bb.r, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27
  %.pre-phi.i.i33 = phi i64 [ %i.dk, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27 ], [ %.pre2.i.i39, %bb.r ]
  %i.dp = phi i64 [ %i.dj, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit27 ], [ %.pre.i.i38, %bb.r ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i33, ptr %i.cv, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 %i.di, ptr %i.dr, align 1, !tbaa !64
  %i.ds = or disjoint i8 %i.dh, 48
  %i.dt = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %i.du = add i64 %i.dt, 1                        ; 3 uses
  %i.dv = load i64, ptr %i.cy, align 8, !tbaa !68
  %i.dw = icmp ugt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.s, label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit40

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !66
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.du), !inline_history !32
  %.pre.i5.i36 = load i64, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i37 = add i64 %.pre.i5.i36, 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit40

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit40: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32, %bb.s
  %.pre-phi.i4.i35 = phi i64 [ %i.du, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32 ], [ %.pre2.i6.i37, %bb.s ]
  %i.dz = phi i64 [ %i.dt, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i32 ], [ %.pre.i5.i36, %bb.s ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i35, ptr %i.cv, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  store i8 %i.ds, ptr %i.eb, align 1, !tbaa !64
  br label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = tail call noundef i32 @getpid() #37      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.b = icmp ugt i32 %i.a, 99
  br i1 %i.b, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %i.d
  %i.f = urem i32 %.01819.i.i.i.i, 100
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.e, align 1
  %i.k = udiv i32 %.01819.i.i.i.i, 100            ; 2 uses
  %i.l = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i32 [ %i.a, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.c, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.m = icmp samesign ugt i32 %.018.lcssa.i.i.i.i, 9
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = add i32 %.0.lcssa.i.i.i.i, -2
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %i.o
  %i.q = shl nuw nsw i32 %.018.lcssa.i.i.i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.p, align 1
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = trunc nuw nsw i32 %.018.lcssa.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ej.exit.i

_ZN3fmt3v1210format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.o, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !305
  %i.ab = ptrtoint ptr %4 to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = add i64 %i.ab, 21                       ; 3 uses
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %.not31.i.i = icmp eq i64 %i.ad, %i.ac
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ej.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ag, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.aj = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.aa, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 9 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.an = sub i64 %i.ad, %i.am                    ; 4 uses
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.aq = add i64 %i.an, %i.aj
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aq), !inline_history !33
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.at = sub i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.at)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ar, %bb.e ], [ %i.aj, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.au, %bb.e ], [ %i.an, %bb.d ] ; 13 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %.026.i.i, %i.aw
  %i.az = sub i64 %i.am, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !64
  %wide.load14 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1, !tbaa !64
  store <16 x i8> %wide.load14, ptr %i.be, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1363

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.bh, align 1, !tbaa !64
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1364

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %.025.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.030.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !64
  %i.bm = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1365

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bn = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ag, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bp = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bq = add i64 %i.bp, %.025.i.i                ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.030.i.i
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !64
  %i.bv = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !64
  %i.cd = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1366

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202  ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #37 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.f, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br i1 %.not31.i.i, label %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge, label %.lr.ph34.i.i

._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

.lr.ph34.i.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.k = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.e, %.lr.ph34.i.i ], [ %i.as, %._crit_edge.i.i ] ; 9 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.k
  %i.n = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.o = sub i64 %i.i, %i.n                       ; 4 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.r = add i64 %i.o, %i.k
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r), !inline_history !23
  %i.s = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !68
end_hunk_20
begin_hunk_21_@_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !64
  %wide.load41 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %wide.load, ptr %i.ae, align 1, !tbaa !64
  store <16 x i8> %wide.load41, ptr %i.af, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.ai, align 1, !tbaa !64
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %.030.i.i.prol
  store i8 %i.al, ptr %i.am, align 1, !tbaa !64
  %i.an = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1369

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.an, %.lr.ph.i.i.prol ]
  %i.ao = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %i.aq = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.e ]
  %i.ar = add i64 %i.aq, %.025.i.i                ; 3 uses
  store i64 %i.ar, ptr %.phi.trans.insert, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bi, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %.030.i.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !64
  %i.aw = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !64
  %i.ba = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !64
  %i.be = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !64
  %i.bi = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bi, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1370

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge
  %i.bj = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge ], [ %i.ar, %._crit_edge.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bl = add i64 %i.bj, 1                        ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !66
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bl), !inline_history !29
  %.pre.i = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.f
  %.pre-phi.i = phi i64 [ %i.bl, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %bb.f ]
  %i.br = phi i64 [ %i.bj, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %bb.f ]
  %i.bs = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.bk, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 58, ptr %i.bt, align 1, !tbaa !64
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bv = icmp slt i32 %i.bu, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.bu, i1 false) ; 3 uses
  %i.bw = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.bx, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ]
  %.01819.i.i.i.i.i = phi i32 [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %i.bx = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 %i.by
  %i.ca = urem i32 %.01819.i.i.i.i.i, 100
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2
  store i16 %i.ce, ptr %i.bz, align 1
  %i.cf = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.cg = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.cf, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.bx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ch = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ci = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %i.cj
  %i.cl = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  store i16 %i.co, ptr %i.ck, align 1
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cp = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.cs
  store i8 %i.cq, ptr %i.ct, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.cs, %bb.h ], [ %i.cj, %bb.g ]
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.bv, label %bb.i, label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.i:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -1 ; 2 uses
  store i8 45, ptr %i.cv, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.i, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.cv, %bb.i ], [ %i.cu, %_ZN3fmt3v1210format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.cw, align 8, !tbaa !305
  %i.cx = ptrtoint ptr %4 to i64
  %i.cy = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.cz = add i64 %i.cx, 21                       ; 3 uses
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.da
  %.not31.i.i11 = icmp eq i64 %i.cz, %i.cy
  br i1 %.not31.i.i11, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i12

.lr.ph34.i.i12:                                   ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i13 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i23, %.lr.ph34.i.i12
  %i.dd = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i12 ], [ %i.ek, %._crit_edge.i.i23 ] ; 3 uses
  %.02732.i.i14 = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i12 ], [ %i.el, %._crit_edge.i.i23 ] ; 9 uses
  %i.de = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.df = sub i64 %i.de, %i.dd
  %i.dg = ptrtoint ptr %.02732.i.i14 to i64       ; 2 uses
  %i.dh = sub i64 %i.cz, %i.dg                    ; 4 uses
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !66
  %i.dk = add i64 %i.dh, %i.dd
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.dk), !inline_history !31
  %i.dl = load i64, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.dm = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.dn = sub i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.dn)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.026.i.i15 = phi i64 [ %i.dl, %bb.k ], [ %i.dd, %bb.j ] ; 3 uses
  %.025.i.i16 = phi i64 [ %i.do, %bb.k ], [ %i.dh, %bb.j ] ; 13 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.026.i.i15 ; 7 uses
  %.not36.i.i17 = icmp eq i64 %.025.i.i16, 0
  br i1 %.not36.i.i17, label %._crit_edge.i.i23, label %iter.check62

iter.check62:                                     ; preds = %bb.l
  %min.iters.check49 = icmp ult i64 %.025.i.i16, 4
  br i1 %min.iters.check49, label %.lr.ph.i.i18.preheader, label %vector.memcheck47

vector.memcheck47:                                ; preds = %iter.check62
  %i.ds = add i64 %.026.i.i15, %i.dq
  %i.dt = sub i64 %i.dg, %i.ds
  %diff.check48 = icmp ugt i64 %i.dt, -32
  br i1 %diff.check48, label %.lr.ph.i.i18.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %vector.memcheck47
  %min.iters.check51 = icmp ult i64 %.025.i.i16, 32
  br i1 %min.iters.check51, label %vec.epilog.ph66, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.du = and i64 %.025.i.i16, 28
  %n.vec53 = and i64 %.025.i.i16, -32             ; 4 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %index55 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load56.a = load <16 x i8>, ptr %i.dv, align 1, !tbaa !64
  %wide.load57 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index55 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %wide.load56.a, ptr %i.dx, align 1, !tbaa !64
  store <16 x i8> %wide.load57, ptr %i.dy, align 1, !tbaa !64
  %index.next58 = add nuw i64 %index55, 32        ; 2 uses
  %i.dz = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.dz, label %middle.block59, label %vector.body54, !llvm.loop !1371

middle.block59:                                   ; preds = %vector.body54
  %cmp.n60 = icmp eq i64 %.025.i.i16, %n.vec53
  br i1 %cmp.n60, label %._crit_edge.loopexit.i.i21, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block59
  %min.epilog.iters.check65 = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph.i.i18.preheader, label %vec.epilog.ph66, !prof !109

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check64
  %vec.epilog.resume.val61 = phi i64 [ %n.vec53, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check50 ]
  %n.vec67 = and i64 %.025.i.i16, -4              ; 3 uses
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph66
  %index69 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph66 ], [ %index.next71, %vec.epilog.vector.body68 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %index69
  %wide.load70 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index69
  store <4 x i8> %wide.load70, ptr %i.eb, align 1, !tbaa !64
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.ec = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.ec, label %vec.epilog.middle.block72, label %vec.epilog.vector.body68, !llvm.loop !1372

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body68
  %cmp.n73 = icmp eq i64 %.025.i.i16, %n.vec67
  br i1 %cmp.n73, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %vector.memcheck47, %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block72
  %.030.i.i19.ph = phi i64 [ 0, %iter.check62 ], [ 0, %vector.memcheck47 ], [ %n.vec53, %vec.epilog.iter.check64 ], [ %n.vec67, %vec.epilog.middle.block72 ] ; 3 uses
  %xtraiter77 = and i64 %.025.i.i16, 3            ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.i.i18.preheader, %.lr.ph.i.i18.prol
  %.030.i.i19.prol = phi i64 [ %i.eg, %.lr.ph.i.i18.prol ], [ %.030.i.i19.ph, %.lr.ph.i.i18.preheader ] ; 3 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.i.i18.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %.030.i.i19.prol
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.030.i.i19.prol
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !64
  %i.eg = add nuw i64 %.030.i.i19.prol, 1         ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i64 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !1373

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.i.i18.preheader
  %.030.i.i19.unr = phi i64 [ %.030.i.i19.ph, %.lr.ph.i.i18.preheader ], [ %i.eg, %.lr.ph.i.i18.prol ]
  %i.eh = sub i64 %.030.i.i19.ph, %.025.i.i16
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18

._crit_edge.loopexit.i.i21:                       ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %vec.epilog.middle.block72, %middle.block59
  %.pre37.i.i22 = load i64, ptr %i.bk, align 8, !tbaa !69
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %._crit_edge.loopexit.i.i21, %bb.l
  %i.ej = phi i64 [ %.pre37.i.i22, %._crit_edge.loopexit.i.i21 ], [ %.026.i.i15, %bb.l ]
  %i.ek = add i64 %i.ej, %.025.i.i16              ; 2 uses
  store i64 %i.ek, ptr %i.bk, align 8, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %.025.i.i16 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.el, %i.db
  br i1 %.not.i.i24, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.j, !llvm.loop !3

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.030.i.i19 = phi i64 [ %i.fb, %.lr.ph.i.i18 ], [ %.030.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %.030.i.i19
  %i.en = load i8, ptr %i.em, align 1, !tbaa !64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.030.i.i19
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !64
  %i.ep = add nuw i64 %.030.i.i19, 1              ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1, !tbaa !64
  %i.et = add nuw i64 %.030.i.i19, 2              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !64
  %i.ex = add nuw i64 %.030.i.i19, 3              ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02732.i.i14, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !64
  %i.fb = add nuw i64 %.030.i.i19, 4              ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %i.fb, %.025.i.i16
  br i1 %exitcond.not.i.i20.3, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18, !llvm.loop !1374

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i23, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202  ; 2 uses
  %i.f = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 47) #47 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = select i1 %.not.i, ptr %i.e, ptr %i.g    ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #37 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.o = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.av, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.h, %.lr.ph34.i.i ], [ %i.aw, %._crit_edge.i.i ] ; 9 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !68
  %i.q = sub i64 %i.p, %i.o
  %i.r = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.s = sub i64 %i.m, %i.r                       ; 4 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.v = add i64 %i.s, %i.o
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.v), !inline_history !23
end_hunk_21
begin_hunk_22_@_ZN6spdlog7details25source_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %.026.i.i, %i.y
  %i.ab = sub i64 %i.o, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64
  %wide.load11 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !64
  store <16 x i8> %wide.load11, ptr %i.ag, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index13
  store <4 x i8> %wide.load14, ptr %i.aj, align 1, !tbaa !64
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1380

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %.025.i.i, %n.vec12
  br i1 %cmp.n16, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !64
  %i.ao = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1381

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.h, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %i.ar = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.e ]
  %i.as = add i64 %i.ar, %.025.i.i                ; 2 uses
  store i64 %i.as, ptr %i.h, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !64
  %i.ax = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !64
  %i.bj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1382

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313  ; 4 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.d = icmp samesign ugt i32 %i.b, 99
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i.i ], [ 21, %bb.b ]
  %.01819.i.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f
  %i.h = urem i32 %.01819.i.i.i.i.i, 100
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.g, align 1
  %i.m = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.n = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.018.lcssa.i.i.i.i.i = phi i32 [ %i.b, %bb.b ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.b ], [ %i.e, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q
  %i.s = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  store i16 %i.v, ptr %i.r, align 1
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.x = or disjoint i8 %i.w, 48
  %i.y = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Ei.exit.i

_ZN3fmt3v1210format_intC2Ei.exit.i:               ; preds = %bb.c, %bb.d
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.z, %bb.d ], [ %i.q, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !305
  %i.ad = ptrtoint ptr %4 to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = add i64 %i.ad, 21                       ; 3 uses
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.not31.i.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Ei.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.ab, %.lr.ph34.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 9 uses
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.an = sub i64 %i.am, %i.al
  %i.ao = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ap = sub i64 %i.af, %i.ao                    ; 4 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.as = add i64 %i.ap, %i.al
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as), !inline_history !31
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.av = sub i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i = phi i64 [ %i.at, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aw, %bb.f ], [ %i.ap, %bb.e ] ; 13 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %.026.i.i, %i.ay
  %i.bb = sub i64 %i.ao, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %wide.load16 = load <16 x i8>, ptr %i.be, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !64
  store <16 x i8> %wide.load16, ptr %i.bg, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index18
  store <4 x i8> %wide.load19, ptr %i.bj, align 1, !tbaa !64
  %index.next20 = add nuw i64 %index18, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next20, %n.vec17
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1384

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %.025.i.i, %n.vec17
  br i1 %cmp.n21, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !64
  %i.bo = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1385

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.br = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bs = add i64 %i.br, %.025.i.i                ; 2 uses
  store i64 %i.bs, ptr %i.ai, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.ah
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !64
  %i.bx = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !64
  %i.cb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !64
  %i.cf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !64
  %i.cj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1386

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !313
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !336  ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #37 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.l = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.as, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.e, %.lr.ph34.i.i ], [ %i.at, %._crit_edge.i.i ] ; 9 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !68
  %i.n = sub i64 %i.m, %i.l
  %i.o = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.p = sub i64 %i.j, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.s = add i64 %i.p, %i.l
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.s), !inline_history !23
  %i.t = load i64, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.u = load i64, ptr %i.i, align 8, !tbaa !68
  %i.v = sub i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.v)
end_hunk_22
begin_hunk_23_@_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.x = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %.026.i.i, %i.y
  %i.ab = sub i64 %i.o, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64
  %wide.load11 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !64
  store <16 x i8> %wide.load11, ptr %i.ag, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index13
  store <4 x i8> %wide.load14, ptr %i.aj, align 1, !tbaa !64
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1388

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %.025.i.i, %n.vec12
  br i1 %cmp.n16, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !64
  %i.ao = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1389

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.h, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %i.ar = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.e ]
  %i.as = add i64 %i.ar, %.025.i.i                ; 2 uses
  store i64 %i.as, ptr %i.h, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 %.030.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !64
  %i.ax = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !64
  %i.bj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1390

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.d = icmp sgt i64 %i.c, 99
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f
  %i.h = urem i64 %.01819.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.m = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.e, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = add i32 %.0.lcssa.i.i.i.i, -2
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  %i.r = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !305
  %i.ab = ptrtoint ptr %4 to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = add i64 %i.ab, 21                       ; 3 uses
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %.not31.i.i = icmp eq i64 %i.ad, %i.ac
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ag, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.aj = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.aa, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 9 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.an = sub i64 %i.ad, %i.am                    ; 4 uses
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.aq = add i64 %i.an, %i.aj
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aq), !inline_history !42
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.at = sub i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.at)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ar, %bb.e ], [ %i.aj, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.au, %bb.e ], [ %i.an, %bb.d ] ; 13 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %.026.i.i, %i.aw
  %i.az = sub i64 %i.am, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !64
  %wide.load21 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1, !tbaa !64
  store <16 x i8> %wide.load21, ptr %i.be, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bh, align 1, !tbaa !64
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %.025.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.030.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !64
  %i.bm = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1393

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bn = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ag, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bp = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bq = add i64 %i.bp, %.025.i.i                ; 2 uses
  store i64 %i.bq, ptr %i.ag, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.af
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.030.i.i
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !64
  %i.bv = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !64
  %i.bz = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !64
  %i.cd = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !64
  %i.ch = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1394

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = icmp sgt i64 %i.c, 99999
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !305
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not31.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.ab, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ao = sub i64 %i.ae, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.ar = add i64 %i.ao, %i.ak
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar), !inline_history !42
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.au = sub i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ak, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.av, %bb.e ], [ %i.ao, %bb.d ] ; 13 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %wide.load20 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !64
  store <16 x i8> %wide.load20, ptr %i.bf, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index22
  store <4 x i8> %wide.load23, ptr %i.bi, align 1, !tbaa !64
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1396

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %.025.i.i, %n.vec21
  br i1 %cmp.n25, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1397

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bq = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.br = add i64 %i.bq, %.025.i.i                ; 2 uses
  store i64 %i.br, ptr %i.ah, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %i.bw = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1398

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = icmp sgt i64 %i.c, 99999999
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !305
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not31.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.ab, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ao = sub i64 %i.ae, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.ar = add i64 %i.ao, %i.ak
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar), !inline_history !42
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.au = sub i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ak, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.av, %bb.e ], [ %i.ao, %bb.d ] ; 13 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %wide.load20 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !64
  store <16 x i8> %wide.load20, ptr %i.bf, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index22
  store <4 x i8> %wide.load23, ptr %i.bi, align 1, !tbaa !64
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %.025.i.i, %n.vec21
  br i1 %cmp.n25, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1401

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bq = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.br = add i64 %i.bq, %.025.i.i                ; 2 uses
  store i64 %i.br, ptr %i.ah, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %i.bw = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1402

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details14flag_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !70 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !70
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = icmp sgt i64 %i.c, 99999999999
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ 21, %bb.a ]
  %.01819.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = add i32 %.020.i.i.i.i, -2                ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  %i.i = urem i64 %.01819.i.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !37

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.018.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 21, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i.i.i.i, 9
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = add i32 %.0.lcssa.i.i.i.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2Em.exit.i

_ZN3fmt3v1210format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !305
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not31.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.br, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.ab, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 9 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ao = sub i64 %i.ae, %i.an                    ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.ar = add i64 %i.ao, %i.ak
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar), !inline_history !42
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.au = sub i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.as, %bb.e ], [ %i.ak, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.av, %bb.e ], [ %i.ao, %bb.d ] ; 13 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %.026.i.i, %i.ax
  %i.ba = sub i64 %i.an, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !64
  %wide.load20 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %wide.load, ptr %i.be, align 1, !tbaa !64
  store <16 x i8> %wide.load20, ptr %i.bf, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index22
  store <4 x i8> %wide.load23, ptr %i.bi, align 1, !tbaa !64
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1404

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %.025.i.i, %n.vec21
  br i1 %cmp.n25, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bn, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i.prol
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1405

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bq = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.br = add i64 %i.bq, %.025.i.i                ; 2 uses
  store i64 %i.br, ptr %i.ah, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.030.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %i.bw = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !64
  %i.ca = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !64
  %i.ce = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1406

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19aggregate_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #44
  br label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit

_ZN6spdlog7details19aggregate_formatterD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19aggregate_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.j = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.b, %.lr.ph34.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 9 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !68
  %i.l = sub i64 %i.k, %i.j
  %i.m = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.n = sub i64 %i.h, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.q = add i64 %i.n, %i.j
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.q), !inline_history !23
  %i.r = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
end_hunk_23
