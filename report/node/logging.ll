Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/logging?download=true
inline.NumInlined: 8657
inline.NumDeleted: 4584
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 168
loop-unroll.NumUnrolled: 173
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !204, !noalias !203
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !alias.scope !203, !noalias !204
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !204, !noalias !203
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !198

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.aw, %middle.block56 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #30
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZN6spdlog7details14full_formatterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #21
  br label %_ZN6spdlog7details14full_formatterD2Ev.exit

_ZN6spdlog7details14full_formatterD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %7 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %11 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %13 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %15 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 42 uses
  br i1 %or.cond, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  br label %.lr.ph27.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.f, align 8           ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ 1, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.q = phi i64 [ 0, %bb.b ], [ %.pre.i, %bb.c ]
  %i.r = load ptr, ptr %i.i, align 8
  store i64 %.pre-phi.i, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 91, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = add nsw i32 %i.u, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.w = icmp slt i32 %i.u, -1900
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true) ; 3 uses
  %i.x = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.y, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %i.y = add i32 %.020.i.i.i.i.i, -2              ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 %i.z
  %i.ab = urem i32 %.01819.i.i.i.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.aa, align 1
  %i.ag = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ah = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.ag, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.y, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ai = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 %i.ak
  %i.am = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %i.al, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aq = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.at, %bb.e ], [ %i.ak, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.w, label %bb.f, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1 ; 2 uses
  store i8 45, ptr %i.aw, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.f, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aw, %bb.f ], [ %i.av, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %.0.i.i.i, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %15 to i64
  %i.az = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ba = add i64 %i.ay, 21                       ; 3 uses
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bb
  %.not24.i.i = icmp eq i64 %i.ba, %i.az
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.be = phi i64 [ %.pre, %.lr.ph27.i.i ], [ %i.cj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.ck, %._crit_edge.i.i ] ; 9 uses
  %i.bf = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.bg = sub i64 %i.ba, %i.bf                    ; 2 uses
  %i.bh = add i64 %i.bg, %i.be                    ; 2 uses
  %i.bi = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.bd, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.bh) #21, !inline_history !20
  %.pre30.i.i = load i64, ptr %i.l, align 8
  %.pre31.i.i = load i64, ptr %i.f, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bl = phi i64 [ %i.be, %bb.g ], [ %.pre31.i.i, %bb.h ] ; 4 uses
  %i.bm = phi i64 [ %i.bi, %bb.g ], [ %.pre30.i.i, %bb.h ]
  %i.bn = sub i64 %i.bm, %i.bl
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bg) ; 13 uses
  %i.bo = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.br = add i64 %i.bl, %i.bp
  %i.bs = sub i64 %i.bf, %i.br
  %diff.check = icmp ugt i64 %i.bs, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check453 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check453, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <16 x i8>, ptr %i.bu, align 1
  %wide.load454 = load <16 x i8>, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <16 x i8> %wide.load, ptr %i.bw, align 1
  store <16 x i8> %wide.load454, ptr %i.bx, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %spec.select.i.i, -4        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index456 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next458, %vec.epilog.vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index456
  %wide.load457 = load <4 x i8>, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index456
  store <4 x i8> %wide.load457, ptr %i.ca, align 1
  %index.next458 = add nuw i64 %index456, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next458, %n.vec455
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n459 = icmp eq i64 %spec.select.i.i, %n.vec455
  br i1 %cmp.n459, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec455, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.cf, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.023.i.i.prol
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !209

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.prol ]
  %i.cg = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ci = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bl, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cj = add i64 %i.ci, %spec.select.i.i         ; 3 uses
  store i64 %i.cj, ptr %i.f, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.bc
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.g, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.da, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.023.i.i
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cs
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cw
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.da, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !210

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.db = phi i64 [ %.pre, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.cj, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  %i.dd = load i64, ptr %i.l, align 8
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.dc) #21, !inline_history !18
  %.pre.i52 = load i64, ptr %i.f, align 8         ; 2 uses
  %.pre2.i53 = add i64 %.pre.i52, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %bb.i
  %.pre-phi.i51 = phi i64 [ %i.dc, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre2.i53, %bb.i ]
  %i.dh = phi i64 [ %i.db, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre.i52, %bb.i ]
  %i.di = load ptr, ptr %i.i, align 8
  store i64 %.pre-phi.i51, ptr %i.f, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 45, ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = add nsw i32 %i.dl, 1                    ; 3 uses
  %or.cond.i = icmp ult i32 %i.dm, 100
  br i1 %or.cond.i, label %bb.j, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54
  %.lhs.trunc.i = trunc nuw nsw i32 %i.dm to i8   ; 2 uses
  %i.dn = udiv i8 %.lhs.trunc.i, 10
  %i.do = urem i8 %.lhs.trunc.i, 10
  %i.dp = or disjoint i8 %i.dn, 48
  %i.dq = load i64, ptr %i.f, align 8             ; 2 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = load i64, ptr %i.l, align 8
  %i.dt = icmp ugt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.k, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.dr) #21, !inline_history !21
  %.pre.i.i55 = load i64, ptr %i.f, align 8       ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i55, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i = phi i64 [ %i.dr, %bb.j ], [ %.pre2.i.i, %bb.k ]
  %i.dw = phi i64 [ %i.dq, %bb.j ], [ %.pre.i.i55, %bb.k ]
  %i.dx = load ptr, ptr %i.i, align 8
  store i64 %.pre-phi.i.i, ptr %i.f, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 %i.dp, ptr %i.dy, align 1
  %i.dz = or disjoint i8 %i.do, 48
end_hunk_0
begin_hunk_1_@_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE:bb.a
  %diff.check545 = icmp ugt i64 %i.vh, -32
  br i1 %diff.check545, label %.lr.ph.i.i219.preheader, label %vector.main.loop.iter.check547

vector.main.loop.iter.check547:                   ; preds = %vector.memcheck544
  %min.iters.check548 = icmp ult i64 %spec.select.i.i217, 32
  br i1 %min.iters.check548, label %vec.epilog.ph563, label %vector.ph549

vector.ph549:                                     ; preds = %vector.main.loop.iter.check547
  %i.vi = and i64 %spec.select.i.i217, 28
  %n.vec550 = and i64 %spec.select.i.i217, -32    ; 4 uses
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next555, %vector.body551 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %index552 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %wide.load553 = load <16 x i8>, ptr %i.vj, align 1
  %wide.load554 = load <16 x i8>, ptr %i.vk, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 %index552 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  store <16 x i8> %wide.load553, ptr %i.vl, align 1
  store <16 x i8> %wide.load554, ptr %i.vm, align 1
  %index.next555 = add nuw i64 %index552, 32      ; 2 uses
  %i.vn = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.vn, label %middle.block556, label %vector.body551, !llvm.loop !223

middle.block556:                                  ; preds = %vector.body551
  %cmp.n557 = icmp eq i64 %spec.select.i.i217, %n.vec550
  br i1 %cmp.n557, label %._crit_edge.loopexit.i.i222, label %vec.epilog.iter.check561

vec.epilog.iter.check561:                         ; preds = %middle.block556
  %min.epilog.iters.check562 = icmp eq i64 %i.vi, 0
  br i1 %min.epilog.iters.check562, label %.lr.ph.i.i219.preheader, label %vec.epilog.ph563, !prof !76

vec.epilog.ph563:                                 ; preds = %vector.main.loop.iter.check547, %vec.epilog.iter.check561
  %vec.epilog.resume.val558 = phi i64 [ %n.vec550, %vec.epilog.iter.check561 ], [ 0, %vector.main.loop.iter.check547 ]
  %n.vec564 = and i64 %spec.select.i.i217, -4     ; 3 uses
  br label %vec.epilog.vector.body565

vec.epilog.vector.body565:                        ; preds = %vec.epilog.vector.body565, %vec.epilog.ph563
  %index566 = phi i64 [ %vec.epilog.resume.val558, %vec.epilog.ph563 ], [ %index.next568, %vec.epilog.vector.body565 ] ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %index566
  %wide.load567 = load <4 x i8>, ptr %i.vo, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 %index566
  store <4 x i8> %wide.load567, ptr %i.vp, align 1
  %index.next568 = add nuw i64 %index566, 4       ; 2 uses
  %i.vq = icmp eq i64 %index.next568, %n.vec564
  br i1 %i.vq, label %vec.epilog.middle.block569, label %vec.epilog.vector.body565, !llvm.loop !224

vec.epilog.middle.block569:                       ; preds = %vec.epilog.vector.body565
  %cmp.n570 = icmp eq i64 %spec.select.i.i217, %n.vec564
  br i1 %cmp.n570, label %._crit_edge.loopexit.i.i222, label %.lr.ph.i.i219.preheader

.lr.ph.i.i219.preheader:                          ; preds = %vector.memcheck544, %iter.check559, %vec.epilog.iter.check561, %vec.epilog.middle.block569
  %.023.i.i220.ph = phi i64 [ 0, %iter.check559 ], [ 0, %vector.memcheck544 ], [ %n.vec550, %vec.epilog.iter.check561 ], [ %n.vec564, %vec.epilog.middle.block569 ] ; 3 uses
  %xtraiter645 = and i64 %spec.select.i.i217, 3   ; 2 uses
  %lcmp.mod646.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod646.not, label %.lr.ph.i.i219.prol.loopexit, label %.lr.ph.i.i219.prol

.lr.ph.i.i219.prol:                               ; preds = %.lr.ph.i.i219.preheader, %.lr.ph.i.i219.prol
  %.023.i.i220.prol = phi i64 [ %i.vu, %.lr.ph.i.i219.prol ], [ %.023.i.i220.ph, %.lr.ph.i.i219.preheader ] ; 3 uses
  %prol.iter647 = phi i64 [ %prol.iter647.next, %.lr.ph.i.i219.prol ], [ 0, %.lr.ph.i.i219.preheader ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %.023.i.i220.prol
  %i.vs = load i8, ptr %i.vr, align 1
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.023.i.i220.prol
  store i8 %i.vs, ptr %i.vt, align 1
  %i.vu = add nuw i64 %.023.i.i220.prol, 1        ; 2 uses
  %prol.iter647.next = add i64 %prol.iter647, 1   ; 2 uses
  %prol.iter647.cmp.not = icmp eq i64 %prol.iter647.next, %xtraiter645
  br i1 %prol.iter647.cmp.not, label %.lr.ph.i.i219.prol.loopexit, label %.lr.ph.i.i219.prol, !llvm.loop !225

.lr.ph.i.i219.prol.loopexit:                      ; preds = %.lr.ph.i.i219.prol, %.lr.ph.i.i219.preheader
  %.023.i.i220.unr = phi i64 [ %.023.i.i220.ph, %.lr.ph.i.i219.preheader ], [ %i.vu, %.lr.ph.i.i219.prol ]
  %i.vv = sub i64 %.023.i.i220.ph, %spec.select.i.i217
  %i.vw = icmp ugt i64 %i.vv, -4
  br i1 %i.vw, label %._crit_edge.loopexit.i.i222, label %.lr.ph.i.i219

._crit_edge.loopexit.i.i222:                      ; preds = %.lr.ph.i.i219.prol.loopexit, %.lr.ph.i.i219, %vec.epilog.middle.block569, %middle.block556
  %.pre32.i.i223 = load i64, ptr %i.mx, align 8
  br label %._crit_edge.i.i224

._crit_edge.i.i224:                               ; preds = %._crit_edge.loopexit.i.i222, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i216
  %i.vx = phi i64 [ %.pre32.i.i223, %._crit_edge.loopexit.i.i222 ], [ %i.va, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i216 ]
  %i.vy = add i64 %i.vx, %spec.select.i.i217      ; 3 uses
  store i64 %i.vy, ptr %i.mx, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %spec.select.i.i217 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.vz, %i.ur
  br i1 %.not.i.i225, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228, label %bb.aw, !llvm.loop !14

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219.prol.loopexit, %.lr.ph.i.i219
  %.023.i.i220 = phi i64 [ %i.wp, %.lr.ph.i.i219 ], [ %.023.i.i220.unr, %.lr.ph.i.i219.prol.loopexit ] ; 6 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %.023.i.i220
  %i.wb = load i8, ptr %i.wa, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.023.i.i220
  store i8 %i.wb, ptr %i.wc, align 1
  %i.wd = add nuw i64 %.023.i.i220, 1             ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.wd
  store i8 %i.wf, ptr %i.wg, align 1
  %i.wh = add nuw i64 %.023.i.i220, 2             ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.wh
  store i8 %i.wj, ptr %i.wk, align 1
  %i.wl = add nuw i64 %.023.i.i220, 3             ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.01925.i.i215, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.wl
  store i8 %i.wn, ptr %i.wo, align 1
  %i.wp = add nuw i64 %.023.i.i220, 4             ; 2 uses
  %exitcond.not.i.i221.3 = icmp eq i64 %i.wp, %spec.select.i.i217
  br i1 %exitcond.not.i.i221.3, label %._crit_edge.loopexit.i.i222, label %.lr.ph.i.i219, !llvm.loop !226

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228: ; preds = %._crit_edge.i.i224, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit210
  %i.wq = phi i64 [ %.pre340, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit210 ], [ %i.vy, %._crit_edge.i.i224 ] ; 2 uses
  %i.wr = add i64 %i.wq, 1                        ; 3 uses
  %i.ws = load i64, ptr %i.na, align 8
  %i.wt = icmp ugt i64 %i.wr, %i.ws
  br i1 %i.wt, label %bb.ay, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233

bb.ay:                                            ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228
  %i.wu = load ptr, ptr %i.rl, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.wr) #21, !inline_history !18
  %.pre.i231 = load i64, ptr %i.mx, align 8       ; 2 uses
  %.pre2.i232 = add i64 %.pre.i231, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228, %bb.ay
  %.pre-phi.i230 = phi i64 [ %i.wr, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228 ], [ %.pre2.i232, %bb.ay ]
  %i.wv = phi i64 [ %i.wq, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit228 ], [ %.pre.i231, %bb.ay ]
  %i.ww = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i230, ptr %i.mx, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wv
  store i8 58, ptr %i.wx, align 1
  %i.wy = load i32, ptr %i.ub, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.wz = icmp slt i32 %i.wy, 0
  %spec.select.i.i.i234 = call i32 @llvm.abs.i32(i32 %i.wy, i1 false) ; 3 uses
  %i.xa = icmp ugt i32 %spec.select.i.i.i234, 99
  br i1 %i.xa, label %.lr.ph.i.i.i.i.i258, label %._crit_edge.i.i.i.i.i235

.lr.ph.i.i.i.i.i258:                              ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233, %.lr.ph.i.i.i.i.i258
  %.020.i.i.i.i.i259 = phi i32 [ %i.xb, %.lr.ph.i.i.i.i.i258 ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233 ]
  %.01819.i.i.i.i.i260 = phi i32 [ %i.xj, %.lr.ph.i.i.i.i.i258 ], [ %spec.select.i.i.i234, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233 ] ; 3 uses
  %i.xb = add i32 %.020.i.i.i.i.i259, -2          ; 3 uses
  %i.xc = zext i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %4, i64 %i.xc
  %i.xe = urem i32 %.01819.i.i.i.i.i260, 100
  %i.xf = shl nuw nsw i32 %i.xe, 1
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2
  store i16 %i.xi, ptr %i.xd, align 1
  %i.xj = udiv i32 %.01819.i.i.i.i.i260, 100      ; 2 uses
  %i.xk = icmp ugt i32 %.01819.i.i.i.i.i260, 9999
  br i1 %i.xk, label %.lr.ph.i.i.i.i.i258, label %._crit_edge.i.i.i.i.i235, !llvm.loop !19

._crit_edge.i.i.i.i.i235:                         ; preds = %.lr.ph.i.i.i.i.i258, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233
  %.018.lcssa.i.i.i.i.i236 = phi i32 [ %spec.select.i.i.i234, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233 ], [ %i.xj, %.lr.ph.i.i.i.i.i258 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i237 = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit233 ], [ %i.xb, %.lr.ph.i.i.i.i.i258 ] ; 2 uses
  %i.xl = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i236, 9
  br i1 %i.xl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i235
  %i.xm = add i32 %.0.lcssa.i.i.i.i.i237, -2
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %4, i64 %i.xn
  %i.xp = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i236, 1
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.xq
  %i.xs = load i16, ptr %i.xr, align 2
  store i16 %i.xs, ptr %i.xo, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i235
  %i.xt = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i236 to i8
  %i.xu = or disjoint i8 %i.xt, 48
  %i.xv = add i32 %.0.lcssa.i.i.i.i.i237, -1
  %i.xw = zext i32 %i.xv to i64                   ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %4, i64 %i.xw
  store i8 %i.xu, ptr %i.xx, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238: ; preds = %bb.ba, %bb.az
  %.pre-phi.i.i.i.i.i239 = phi i64 [ %i.xw, %bb.ba ], [ %i.xn, %bb.az ]
  %i.xy = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i239 ; 2 uses
  br i1 %i.wz, label %bb.bb, label %_ZN3fmt3v1110format_intC2Ei.exit.i240

bb.bb:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -1 ; 2 uses
  store i8 45, ptr %i.xz, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i240

_ZN3fmt3v1110format_intC2Ei.exit.i240:            ; preds = %bb.bb, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238
  %.0.i.i.i241 = phi ptr [ %i.xz, %bb.bb ], [ %i.xy, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i238 ] ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i241, ptr %i.ya, align 8
  %i.yb = ptrtoint ptr %4 to i64
  %i.yc = ptrtoint ptr %.0.i.i.i241 to i64        ; 2 uses
  %i.yd = add i64 %i.yb, 21                       ; 3 uses
  %i.ye = sub i64 %i.yd, %i.yc
  %i.yf = getelementptr inbounds nuw i8, ptr %.0.i.i.i241, i64 %i.ye
  %.not24.i.i242 = icmp eq i64 %i.yd, %i.yc
  %.pre341 = load i64, ptr %i.mx, align 8         ; 2 uses
  br i1 %.not24.i.i242, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261, label %.lr.ph27.i.i243.a

.lr.ph27.i.i243.a:                                ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i240, %._crit_edge.i.i254
  %i.yg = phi i64 [ %i.zl, %._crit_edge.i.i254 ], [ %.pre341, %_ZN3fmt3v1110format_intC2Ei.exit.i240 ] ; 2 uses
  %.01925.i.i245 = phi ptr [ %i.zm, %._crit_edge.i.i254 ], [ %.0.i.i.i241, %_ZN3fmt3v1110format_intC2Ei.exit.i240 ] ; 9 uses
  %i.yh = ptrtoint ptr %.01925.i.i245 to i64      ; 2 uses
  %i.yi = sub i64 %i.yd, %i.yh                    ; 2 uses
  %i.yj = add i64 %i.yi, %i.yg                    ; 2 uses
  %i.yk = load i64, ptr %i.na, align 8            ; 2 uses
  %i.yl = icmp ugt i64 %i.yj, %i.yk
  br i1 %i.yl, label %bb.bc, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246

bb.bc:                                            ; preds = %.lr.ph27.i.i243.a
  %i.ym = load ptr, ptr %i.rl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.yj) #21, !inline_history !20
  %.pre30.i.i256 = load i64, ptr %i.na, align 8
  %.pre31.i.i257 = load i64, ptr %i.mx, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246: ; preds = %bb.bc, %.lr.ph27.i.i243.a
  %i.yn = phi i64 [ %i.yg, %.lr.ph27.i.i243.a ], [ %.pre31.i.i257, %bb.bc ] ; 4 uses
  %i.yo = phi i64 [ %i.yk, %.lr.ph27.i.i243.a ], [ %.pre30.i.i256, %bb.bc ]
  %i.yp = sub i64 %i.yo, %i.yn
  %spec.select.i.i247 = call i64 @llvm.umin.i64(i64 %i.yp, i64 %i.yi) ; 13 uses
  %i.yq = load ptr, ptr %3, align 8               ; 2 uses
  %i.yr = ptrtoaddr ptr %i.yq to i64
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yn ; 7 uses
  %.not29.i.i248 = icmp eq i64 %spec.select.i.i247, 0
  br i1 %.not29.i.i248, label %._crit_edge.i.i254, label %iter.check587

iter.check587:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246
  %min.iters.check574.a = icmp ult i64 %spec.select.i.i247, 4
  br i1 %min.iters.check574.a, label %.lr.ph.i.i249.preheader, label %vector.memcheck572

vector.memcheck572:                               ; preds = %iter.check587
  %i.yt = add i64 %i.yn, %i.yr
  %i.yu = sub i64 %i.yh, %i.yt
  %diff.check573 = icmp ugt i64 %i.yu, -32
  br i1 %diff.check573, label %.lr.ph.i.i249.preheader, label %vector.main.loop.iter.check575

vector.main.loop.iter.check575:                   ; preds = %vector.memcheck572
  %min.iters.check576 = icmp ult i64 %spec.select.i.i247, 32
  br i1 %min.iters.check576, label %vec.epilog.ph591, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check575
  %i.yv = and i64 %spec.select.i.i247, 28
  %n.vec578 = and i64 %spec.select.i.i247, -32    ; 4 uses
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next583, %vector.body579 ] ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %index580 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load581 = load <16 x i8>, ptr %i.yw, align 1
  %wide.load582 = load <16 x i8>, ptr %i.yx, align 1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 %index580 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store <16 x i8> %wide.load581, ptr %i.yy, align 1
  store <16 x i8> %wide.load582, ptr %i.yz, align 1
  %index.next583 = add nuw i64 %index580, 32      ; 2 uses
  %i.za = icmp eq i64 %index.next583, %n.vec578
  br i1 %i.za, label %middle.block584, label %vector.body579, !llvm.loop !227

middle.block584:                                  ; preds = %vector.body579
  %cmp.n585 = icmp eq i64 %spec.select.i.i247, %n.vec578
  br i1 %cmp.n585, label %._crit_edge.loopexit.i.i252, label %vec.epilog.iter.check589

vec.epilog.iter.check589:                         ; preds = %middle.block584
  %min.epilog.iters.check590 = icmp eq i64 %i.yv, 0
  br i1 %min.epilog.iters.check590, label %.lr.ph.i.i249.preheader, label %vec.epilog.ph591, !prof !76

vec.epilog.ph591:                                 ; preds = %vector.main.loop.iter.check575, %vec.epilog.iter.check589
  %vec.epilog.resume.val586 = phi i64 [ %n.vec578, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check575 ]
  %n.vec592 = and i64 %spec.select.i.i247, -4     ; 3 uses
  br label %vec.epilog.vector.body593

vec.epilog.vector.body593:                        ; preds = %vec.epilog.vector.body593, %vec.epilog.ph591
  %index594 = phi i64 [ %vec.epilog.resume.val586, %vec.epilog.ph591 ], [ %index.next596, %vec.epilog.vector.body593 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %index594
  %wide.load595 = load <4 x i8>, ptr %i.zb, align 1
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ys, i64 %index594
  store <4 x i8> %wide.load595, ptr %i.zc, align 1
  %index.next596 = add nuw i64 %index594, 4       ; 2 uses
  %i.zd = icmp eq i64 %index.next596, %n.vec592
  br i1 %i.zd, label %vec.epilog.middle.block597, label %vec.epilog.vector.body593, !llvm.loop !228

vec.epilog.middle.block597:                       ; preds = %vec.epilog.vector.body593
  %cmp.n598 = icmp eq i64 %spec.select.i.i247, %n.vec592
  br i1 %cmp.n598, label %._crit_edge.loopexit.i.i252, label %.lr.ph.i.i249.preheader

.lr.ph.i.i249.preheader:                          ; preds = %vector.memcheck572, %iter.check587, %vec.epilog.iter.check589, %vec.epilog.middle.block597
  %.023.i.i250.ph = phi i64 [ 0, %iter.check587 ], [ 0, %vector.memcheck572 ], [ %n.vec578, %vec.epilog.iter.check589 ], [ %n.vec592, %vec.epilog.middle.block597 ] ; 3 uses
  %xtraiter648 = and i64 %spec.select.i.i247, 3   ; 2 uses
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.lr.ph.i.i249.prol.loopexit, label %.lr.ph.i.i249.prol

.lr.ph.i.i249.prol:                               ; preds = %.lr.ph.i.i249.preheader, %.lr.ph.i.i249.prol
  %.023.i.i250.prol = phi i64 [ %i.zh, %.lr.ph.i.i249.prol ], [ %.023.i.i250.ph, %.lr.ph.i.i249.preheader ] ; 3 uses
  %prol.iter650 = phi i64 [ %prol.iter650.next, %.lr.ph.i.i249.prol ], [ 0, %.lr.ph.i.i249.preheader ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %.023.i.i250.prol
  %i.zf = load i8, ptr %i.ze, align 1
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ys, i64 %.023.i.i250.prol
  store i8 %i.zf, ptr %i.zg, align 1
  %i.zh = add nuw i64 %.023.i.i250.prol, 1        ; 2 uses
  %prol.iter650.next = add i64 %prol.iter650, 1   ; 2 uses
  %prol.iter650.cmp.not = icmp eq i64 %prol.iter650.next, %xtraiter648
  br i1 %prol.iter650.cmp.not, label %.lr.ph.i.i249.prol.loopexit, label %.lr.ph.i.i249.prol, !llvm.loop !229

.lr.ph.i.i249.prol.loopexit:                      ; preds = %.lr.ph.i.i249.prol, %.lr.ph.i.i249.preheader
  %.023.i.i250.unr = phi i64 [ %.023.i.i250.ph, %.lr.ph.i.i249.preheader ], [ %i.zh, %.lr.ph.i.i249.prol ]
  %i.zi = sub i64 %.023.i.i250.ph, %spec.select.i.i247
  %i.zj = icmp ugt i64 %i.zi, -4
  br i1 %i.zj, label %._crit_edge.loopexit.i.i252, label %.lr.ph.i.i249

._crit_edge.loopexit.i.i252:                      ; preds = %.lr.ph.i.i249.prol.loopexit, %.lr.ph.i.i249, %vec.epilog.middle.block597, %middle.block584
  %.pre32.i.i253 = load i64, ptr %i.mx, align 8
  br label %._crit_edge.i.i254

._crit_edge.i.i254:                               ; preds = %._crit_edge.loopexit.i.i252, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246
  %i.zk = phi i64 [ %.pre32.i.i253, %._crit_edge.loopexit.i.i252 ], [ %i.yn, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i246 ]
  %i.zl = add i64 %i.zk, %spec.select.i.i247      ; 3 uses
  store i64 %i.zl, ptr %i.mx, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %spec.select.i.i247 ; 2 uses
  %.not.i.i255 = icmp eq ptr %i.zm, %i.yf
  br i1 %.not.i.i255, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261, label %.lr.ph27.i.i243.a, !llvm.loop !14

.lr.ph.i.i249:                                    ; preds = %.lr.ph.i.i249.prol.loopexit, %.lr.ph.i.i249
  %.023.i.i250 = phi i64 [ %i.aac, %.lr.ph.i.i249 ], [ %.023.i.i250.unr, %.lr.ph.i.i249.prol.loopexit ] ; 6 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %.023.i.i250
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ys, i64 %.023.i.i250
  store i8 %i.zo, ptr %i.zp, align 1
  %i.zq = add nuw i64 %.023.i.i250, 1             ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.zq
  store i8 %i.zs, ptr %i.zt, align 1
  %i.zu = add nuw i64 %.023.i.i250, 2             ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.zu
  store i8 %i.zw, ptr %i.zx, align 1
  %i.zy = add nuw i64 %.023.i.i250, 3             ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.01925.i.i245, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.zy
  store i8 %i.aaa, ptr %i.aab, align 1
  %i.aac = add nuw i64 %.023.i.i250, 4            ; 2 uses
  %exitcond.not.i.i251.3 = icmp eq i64 %i.aac, %spec.select.i.i247
  br i1 %exitcond.not.i.i251.3, label %._crit_edge.loopexit.i.i252, label %.lr.ph.i.i249, !llvm.loop !230

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261: ; preds = %._crit_edge.i.i254, %_ZN3fmt3v1110format_intC2Ei.exit.i240
  %i.aad = phi i64 [ %.pre341, %_ZN3fmt3v1110format_intC2Ei.exit.i240 ], [ %i.zl, %._crit_edge.i.i254 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aae = add i64 %i.aad, 1                      ; 3 uses
  %i.aaf = load i64, ptr %i.na, align 8
  %i.aag = icmp ugt i64 %i.aae, %i.aaf
  br i1 %i.aag, label %bb.bd, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266

bb.bd:                                            ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261
  %i.aah = load ptr, ptr %i.rl, align 8
  call void %i.aah(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aae) #21, !inline_history !18
  %.pre.i264 = load i64, ptr %i.mx, align 8       ; 2 uses
  %.pre2.i265 = add i64 %.pre.i264, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261, %bb.bd
  %.pre-phi.i263 = phi i64 [ %i.aae, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261 ], [ %.pre2.i265, %bb.bd ]
  %i.aai = phi i64 [ %i.aad, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit261 ], [ %.pre.i264, %bb.bd ]
  %i.aaj = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i263, ptr %i.mx, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aai
  store i8 93, ptr %i.aak, align 1
  %i.aal = load i64, ptr %i.mx, align 8           ; 2 uses
  %i.aam = add i64 %i.aal, 1                      ; 3 uses
  %i.aan = load i64, ptr %i.na, align 8
  %i.aao = icmp ugt i64 %i.aam, %i.aan
  br i1 %i.aao, label %bb.be, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit271

bb.be:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266
  %i.aap = load ptr, ptr %i.rl, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aam) #21, !inline_history !18
  %.pre.i269 = load i64, ptr %i.mx, align 8       ; 2 uses
  %.pre2.i270 = add i64 %.pre.i269, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit271

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit271: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266, %bb.be
  %.pre-phi.i268 = phi i64 [ %i.aam, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266 ], [ %.pre2.i270, %bb.be ]
  %i.aaq = phi i64 [ %i.aal, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit266 ], [ %.pre.i269, %bb.be ]
  %i.aar = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i268, ptr %i.mx, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aaq
  store i8 32, ptr %i.aas, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit271, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit205
  %i.aat = load i8, ptr @_ZGVZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, align 8
  %i.aau = icmp eq i8 %i.aat, 0
  br i1 %i.aau, label %bb.bg, label %_ZN6spdlog3mdc11get_contextB5cxx11Ev.exit, !prof !80

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 16), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, i64 40), align 8
  %i.aav = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZZN6spdlog3mdc11get_contextB5cxx11EvE7contextB5cxx11, ptr nonnull @__dso_handle) #21 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(283) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 1000
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %0 to i16       ; 2 uses
  %i.b = udiv i16 %.lhs.trunc, 100
  %i.c = urem i16 %.lhs.trunc, 100
  %i.d = trunc nuw nsw i16 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.f, align 8           ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8
  store i64 %.pre-phi.i, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1
  %.lhs.trunc21 = trunc nuw nsw i16 %i.c to i8    ; 2 uses
  %i.q = udiv i8 %.lhs.trunc21, 10
  %i.r = urem i8 %.lhs.trunc21, 10
  %i.s = or disjoint i8 %i.q, 48
  %i.t = load i64, ptr %i.f, align 8              ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.i, align 8
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u) #21, !inline_history !18
  %.pre.i10 = load i64, ptr %i.f, align 8         ; 2 uses
  %.pre2.i11 = add i64 %.pre.i10, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.d
  %.pre-phi.i9 = phi i64 [ %i.u, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i11, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i10, %bb.d ]
  %i.aa = load ptr, ptr %1, align 8
  store i64 %.pre-phi.i9, ptr %i.f, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1
  %i.ac = or disjoint i8 %i.r, 48
  %i.ad = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.i, align 8
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16

bb.e:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae) #21, !inline_history !18
  %.pre.i14 = load i64, ptr %i.f, align 8         ; 2 uses
  %.pre2.i15 = add i64 %.pre.i14, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12, %bb.e
  %.pre-phi.i13 = phi i64 [ %i.ae, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12 ], [ %.pre2.i15, %bb.e ]
  %i.aj = phi i64 [ %i.ad, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12 ], [ %.pre.i14, %bb.e ]
  %i.ak = load ptr, ptr %1, align 8
  store i64 %.pre-phi.i13, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 %i.ac, ptr %i.al, align 1
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
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
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  store i16 %i.at, ptr %i.ao, align 1
  %i.au = udiv i32 %.01819.i.i.i.i, 100           ; 3 uses
  %i.av = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.aw = icmp samesign ugt i32 %.01819.i.i.i.i, 999
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = add i32 %.020.i.i.i.i, -4
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.au, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  store i16 %i.bd, ptr %i.az, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = trunc nuw nsw i32 %i.au to i8
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = add i32 %.020.i.i.i.i, -3
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.ay, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.bk, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = add i64 %i.bl, 21                       ; 3 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %.not24.i.i = icmp eq i64 %i.bn, %i.bm
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i = load i64, ptr %i.bq, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.bt = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cy, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.bk, %.lr.ph27.i.i ], [ %i.cz, %._crit_edge.i.i ] ; 9 uses
  %i.bu = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.bv = sub i64 %i.bn, %i.bu                    ; 2 uses
  %i.bw = add i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = load i64, ptr %i.br, align 8            ; 2 uses
  %i.by = icmp ugt i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.bs, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(283) %1, i64 noundef %i.bw) #21, !inline_history !23
  %.pre30.i.i = load i64, ptr %i.br, align 8
  %.pre31.i.i = load i64, ptr %i.bq, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.j, %bb.i
  %i.ca = phi i64 [ %i.bt, %bb.i ], [ %.pre31.i.i, %bb.j ] ; 4 uses
  %i.cb = phi i64 [ %i.bx, %bb.i ], [ %.pre30.i.i, %bb.j ]
  %i.cc = sub i64 %i.cb, %i.ca
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bv) ; 13 uses
  %i.cd = load ptr, ptr %1, align 8               ; 2 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cg = add i64 %i.ca, %i.ce
  %i.ch = sub i64 %i.bu, %i.cg
  %diff.check = icmp ugt i64 %i.ch, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <16 x i8>, ptr %i.cj, align 1
  %wide.load36 = load <16 x i8>, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <16 x i8> %wide.load, ptr %i.cl, align 1
  store <16 x i8> %wide.load36, ptr %i.cm, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.cp, align 1
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %spec.select.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.cu, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.023.i.i.prol
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !247

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.prol ]
  %i.cv = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.bq, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.cx = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ca, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cy = add i64 %i.cx, %spec.select.i.i         ; 2 uses
  store i64 %i.cy, ptr %i.bq, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cz, %i.bp
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.i, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.dp, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.023.i.i
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1
  %i.dp = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dp, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !248

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.k

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::default_arg_formatter", align 8 ; 12 uses
  %9 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 32123
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %3, -1
  %i.g = trunc i64 %3 to i32                      ; 2 uses
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16
  br label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %i.g, 15                         ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  br label %bb.v

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %bb.f, %bb.e
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.e ], [ %i.i, %bb.f ]
  %.sroa.0.0.copyload.sink64 = load i128, ptr %4, align 16 ; 8 uses
  %i.j = trunc i128 %.sroa.0.0.copyload.sink64 to i64 ; 4 uses
  %i.k = lshr i128 %.sroa.0.0.copyload.sink64, 64
end_hunk_2
begin_hunk_3_@_ZN6spdlog7details21short_level_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %min.epilog.iters.check37, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph38, !prof !76

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check22, %vec.epilog.iter.check36
  %vec.epilog.resume.val33 = phi i64 [ %n.vec25, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check22 ]
  %n.vec39 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph38
  %index41 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph38 ], [ %index.next43, %vec.epilog.vector.body40 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index41
  store <4 x i8> %wide.load42, ptr %i.cr, align 1
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.cs, label %vec.epilog.middle.block44, label %vec.epilog.vector.body40, !llvm.loop !831

vec.epilog.middle.block44:                        ; preds = %vec.epilog.vector.body40
  %cmp.n45 = icmp eq i64 %spec.select.i.i.i.i, %n.vec39
  br i1 %cmp.n45, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck19, %iter.check34, %vec.epilog.iter.check36, %vec.epilog.middle.block44
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check34 ], [ 0, %vector.memcheck19 ], [ %n.vec25, %vec.epilog.iter.check36 ], [ %n.vec39, %vec.epilog.middle.block44 ] ; 3 uses
  %xtraiter47 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.023.i.i.i.i.prol
  store i8 %i.cu, ptr %i.cv, align 1
  %i.cw = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !832

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.prol ]
  %i.cx = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block44, %middle.block31
  %.pre32.i.i.i.i = load i64, ptr %i.bs, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.cz = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.da = add i64 %i.cz, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.da, ptr %i.bs, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, %i.bq
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.023.i.i.i.i
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dr, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !833

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.ds = load ptr, ptr %4, align 8, !nonnull !70, !align !79
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i8, ptr %i.dt, align 4, !range !69, !noundef !70
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.h, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = add nsw i64 %i.dz, %i.bk
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.ea, i64 0) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp ugt i64 %spec.store.select.i, %i.ec
  br i1 %i.ed, label %bb.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(283) %i.dx, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.eb, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.i, %bb.h
  %i.eg = phi i64 [ %i.ec, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.eg)
  store i64 %i.eh, ptr %i.dy, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.g, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = or i64 %i.b, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.b, %i.j
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %.neg.i.i.i.i, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(14) %i.n, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.o = load i64, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = ptrtoint ptr %4 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not24.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ca, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.am, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 9 uses
  %i.aw = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ax = sub i64 %i.ap, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = load i64, ptr %i.at, align 8            ; 2 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ay) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.at, align 8
  %.pre31.i.i = load i64, ptr %i.as, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bc = phi i64 [ %i.av, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.bd = phi i64 [ %i.az, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.be = sub i64 %i.bd, %i.bc
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ax) ; 13 uses
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = add i64 %i.bc, %i.bg
  %i.bj = sub i64 %i.aw, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <16 x i8>, ptr %i.bl, align 1
  %wide.load22 = load <16 x i8>, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load, ptr %i.bn, align 1
  store <16 x i8> %wide.load22, ptr %i.bo, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.br, align 1
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !835

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %spec.select.i.i, %n.vec23
  br i1 %cmp.n27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !836

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.as, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bz = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.ca = add i64 %i.bz, %spec.select.i.i         ; 2 uses
  store i64 %i.ca, ptr %i.as, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ar
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cn
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cr, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !837

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ct = load i64, ptr %i.cs, align 8            ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  br i1 %i.cu, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.ct, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.db, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i6, %.lr.ph27.i.i.i.i
  %i.de = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ej, %._crit_edge.i.i.i.i6 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cw, %.lr.ph27.i.i.i.i ], [ %i.ek, %._crit_edge.i.i.i.i6 ] ; 9 uses
  %i.df = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.dg = sub i64 %i.da, %i.df                    ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dk = load ptr, ptr %i.dd, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(283) %i.cy, i64 noundef %i.dh) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.dc, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.db, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dl = phi i64 [ %i.de, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dm = phi i64 [ %i.di, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.dn = sub i64 %i.dm, %i.dl
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.dg) ; 13 uses
  %i.do = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i6, label %iter.check43

iter.check43:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check30 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i5.preheader, label %vector.memcheck28

end_hunk_3
begin_hunk_4_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vector.main.loop.iter.check217:                   ; preds = %vector.memcheck214
  %min.iters.check218 = icmp ult i64 %spec.select.i.i27, 32
  br i1 %min.iters.check218, label %vec.epilog.ph233, label %vector.ph219

vector.ph219:                                     ; preds = %vector.main.loop.iter.check217
  %i.cs = and i64 %spec.select.i.i27, 28
  %n.vec220 = and i64 %spec.select.i.i27, -32     ; 4 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next225, %vector.body221 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index222 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load223 = load <16 x i8>, ptr %i.ct, align 1
  %wide.load224 = load <16 x i8>, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index222 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load223, ptr %i.cv, align 1
  store <16 x i8> %wide.load224, ptr %i.cw, align 1
  %index.next225 = add nuw i64 %index222, 32      ; 2 uses
  %i.cx = icmp eq i64 %index.next225, %n.vec220
  br i1 %i.cx, label %middle.block226, label %vector.body221, !llvm.loop !886

middle.block226:                                  ; preds = %vector.body221
  %cmp.n227 = icmp eq i64 %spec.select.i.i27, %n.vec220
  br i1 %cmp.n227, label %._crit_edge.loopexit.i.i32, label %vec.epilog.iter.check231

vec.epilog.iter.check231:                         ; preds = %middle.block226
  %min.epilog.iters.check232 = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check232, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph233, !prof !76

vec.epilog.ph233:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check231
  %vec.epilog.resume.val228 = phi i64 [ %n.vec220, %vec.epilog.iter.check231 ], [ 0, %vector.main.loop.iter.check217 ]
  %n.vec234 = and i64 %spec.select.i.i27, -4      ; 3 uses
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph233
  %index236 = phi i64 [ %vec.epilog.resume.val228, %vec.epilog.ph233 ], [ %index.next238, %vec.epilog.vector.body235 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index236
  %wide.load237 = load <4 x i8>, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index236
  store <4 x i8> %wide.load237, ptr %i.cz, align 1
  %index.next238 = add nuw i64 %index236, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next238, %n.vec234
  br i1 %i.da, label %vec.epilog.middle.block239, label %vec.epilog.vector.body235, !llvm.loop !887

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body235
  %cmp.n240 = icmp eq i64 %spec.select.i.i27, %n.vec234
  br i1 %cmp.n240, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck214, %iter.check229, %vec.epilog.iter.check231, %vec.epilog.middle.block239
  %.023.i.i30.ph = phi i64 [ 0, %iter.check229 ], [ 0, %vector.memcheck214 ], [ %n.vec220, %vec.epilog.iter.check231 ], [ %n.vec234, %vec.epilog.middle.block239 ] ; 3 uses
  %xtraiter332 = and i64 %spec.select.i.i27, 3    ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %.023.i.i30.prol = phi i64 [ %i.de, %.lr.ph.i.i29.prol ], [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 3 uses
  %prol.iter334 = phi i64 [ %prol.iter334.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30.prol
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.023.i.i30.prol
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = add nuw i64 %.023.i.i30.prol, 1         ; 2 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !888

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.023.i.i30.unr = phi i64 [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ], [ %i.de, %.lr.ph.i.i29.prol ]
  %i.df = sub i64 %.023.i.i30.ph, %spec.select.i.i27
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29

._crit_edge.loopexit.i.i32:                       ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %vec.epilog.middle.block239, %middle.block226
  %.pre32.i.i33 = load i64, ptr %i.bk, align 8
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %._crit_edge.loopexit.i.i32, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26
  %i.dh = phi i64 [ %.pre32.i.i33, %._crit_edge.loopexit.i.i32 ], [ %i.ck, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26 ]
  %i.di = add i64 %i.dh, %spec.select.i.i27       ; 3 uses
  store i64 %i.di, ptr %i.bk, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %spec.select.i.i27 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dj, %i.ca
  br i1 %.not.i.i35, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38, label %bb.e, !llvm.loop !14

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.023.i.i30 = phi i64 [ %i.dz, %.lr.ph.i.i29 ], [ %.023.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.023.i.i30
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = add nuw i64 %.023.i.i30, 1              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = add nuw i64 %.023.i.i30, 2              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = add nuw i64 %.023.i.i30, 3              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1
  %i.dz = add nuw i64 %.023.i.i30, 4              ; 2 uses
  %exitcond.not.i.i31.3 = icmp eq i64 %i.dz, %spec.select.i.i27
  br i1 %exitcond.not.i.i31.3, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29, !llvm.loop !889

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38: ; preds = %._crit_edge.i.i34, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.ea = phi i64 [ %.pre145, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.di, %._crit_edge.i.i34 ] ; 2 uses
  %i.eb = add i64 %i.ea, 1                        ; 3 uses
  %i.ec = load i64, ptr %i.bm, align 8
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eb) #21, !inline_history !18
  %.pre.i40 = load i64, ptr %i.bk, align 8        ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38, %bb.g
  %.pre-phi.i39 = phi i64 [ %i.eb, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38 ], [ %.pre2.i41, %bb.g ]
  %i.eg = phi i64 [ %i.ea, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38 ], [ %.pre.i40, %bb.g ]
  %i.eh = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i39, ptr %i.bk, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 32, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ek = load i32, ptr %i.ej, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.el = icmp slt i32 %i.ek, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.ek, i1 false) ; 3 uses
  %i.em = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.em, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.en, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ] ; 3 uses
  %i.en = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 %i.eo
  %i.eq = urem i32 %.01819.i.i.i.i.i, 100
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2
  store i16 %i.eu, ptr %i.ep, align 1
  %i.ev = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ew = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.ev, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.en, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ex = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ex, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ey = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 %i.ez
  %i.fb = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2
  store i16 %i.fe, ptr %i.fa, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ff = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.fi, %bb.i ], [ %i.ez, %bb.h ]
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.el, label %bb.j, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.j:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -1 ; 2 uses
  store i8 45, ptr %i.fl, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.j, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.fl, %bb.j ], [ %i.fk, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %.0.i.i.i, ptr %i.fm, align 8
  %i.fn = ptrtoint ptr %11 to i64
  %i.fo = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fp = add i64 %i.fn, 21                       ; 3 uses
  %i.fq = sub i64 %i.fp, %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fq
  %.not24.i.i43 = icmp eq i64 %i.fp, %i.fo
  %.pre146 = load i64, ptr %i.bk, align 8         ; 2 uses
  br i1 %.not24.i.i43, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i44

.lr.ph27.i.i44:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i55, %.lr.ph27.i.i44
  %i.ft = phi i64 [ %.pre146, %.lr.ph27.i.i44 ], [ %i.gy, %._crit_edge.i.i55 ] ; 2 uses
  %.01925.i.i46 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i44 ], [ %i.gz, %._crit_edge.i.i55 ] ; 9 uses
  %i.fu = ptrtoint ptr %.01925.i.i46 to i64       ; 2 uses
  %i.fv = sub i64 %i.fp, %i.fu                    ; 2 uses
  %i.fw = add i64 %i.fv, %i.ft                    ; 2 uses
  %i.fx = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx
  br i1 %i.fy, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

bb.l:                                             ; preds = %bb.k
  %i.fz = load ptr, ptr %i.fs, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.fw) #21, !inline_history !20
  %.pre30.i.i57 = load i64, ptr %i.bm, align 8
  %.pre31.i.i58 = load i64, ptr %i.bk, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47: ; preds = %bb.l, %bb.k
  %i.ga = phi i64 [ %i.ft, %bb.k ], [ %.pre31.i.i58, %bb.l ] ; 4 uses
  %i.gb = phi i64 [ %i.fx, %bb.k ], [ %.pre30.i.i57, %bb.l ]
  %i.gc = sub i64 %i.gb, %i.ga
  %spec.select.i.i48 = call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.fv) ; 13 uses
  %i.gd = load ptr, ptr %3, align 8               ; 2 uses
  %i.ge = ptrtoaddr ptr %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga ; 7 uses
  %.not29.i.i49 = icmp eq i64 %spec.select.i.i48, 0
  br i1 %.not29.i.i49, label %._crit_edge.i.i55, label %iter.check257

iter.check257:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %min.iters.check244.a = icmp ult i64 %spec.select.i.i48, 4
  br i1 %min.iters.check244.a, label %.lr.ph.i.i50.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %iter.check257
  %i.gg = add i64 %i.ga, %i.ge
  %i.gh = sub i64 %i.fu, %i.gg
  %diff.check243 = icmp ugt i64 %i.gh, -32
  br i1 %diff.check243, label %.lr.ph.i.i50.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck242
  %min.iters.check246 = icmp ult i64 %spec.select.i.i48, 32
  br i1 %min.iters.check246, label %vec.epilog.ph261, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.gi = and i64 %spec.select.i.i48, 28
  %n.vec248 = and i64 %spec.select.i.i48, -32     ; 4 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next253, %vector.body249 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index250 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.gj, align 1
  %wide.load252 = load <16 x i8>, ptr %i.gk, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %index250 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <16 x i8> %wide.load251, ptr %i.gl, align 1
  store <16 x i8> %wide.load252, ptr %i.gm, align 1
  %index.next253 = add nuw i64 %index250, 32      ; 2 uses
  %i.gn = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.gn, label %middle.block254, label %vector.body249, !llvm.loop !890

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i64 %spec.select.i.i48, %n.vec248
  br i1 %cmp.n255, label %._crit_edge.loopexit.i.i53, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block254
  %min.epilog.iters.check260 = icmp eq i64 %i.gi, 0
  br i1 %min.epilog.iters.check260, label %.lr.ph.i.i50.preheader, label %vec.epilog.ph261, !prof !76

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check259
  %vec.epilog.resume.val256 = phi i64 [ %n.vec248, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec262 = and i64 %spec.select.i.i48, -4      ; 3 uses
  br label %vec.epilog.vector.body263

vec.epilog.vector.body263:                        ; preds = %vec.epilog.vector.body263, %vec.epilog.ph261
  %index264 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph261 ], [ %index.next266, %vec.epilog.vector.body263 ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index264
  %wide.load265 = load <4 x i8>, ptr %i.go, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 %index264
  store <4 x i8> %wide.load265, ptr %i.gp, align 1
  %index.next266 = add nuw i64 %index264, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next266, %n.vec262
  br i1 %i.gq, label %vec.epilog.middle.block267, label %vec.epilog.vector.body263, !llvm.loop !891

vec.epilog.middle.block267:                       ; preds = %vec.epilog.vector.body263
  %cmp.n268 = icmp eq i64 %spec.select.i.i48, %n.vec262
  br i1 %cmp.n268, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50.preheader

.lr.ph.i.i50.preheader:                           ; preds = %vector.memcheck242, %iter.check257, %vec.epilog.iter.check259, %vec.epilog.middle.block267
  %.023.i.i51.ph = phi i64 [ 0, %iter.check257 ], [ 0, %vector.memcheck242 ], [ %n.vec248, %vec.epilog.iter.check259 ], [ %n.vec262, %vec.epilog.middle.block267 ] ; 3 uses
  %xtraiter335 = and i64 %spec.select.i.i48, 3    ; 2 uses
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol

.lr.ph.i.i50.prol:                                ; preds = %.lr.ph.i.i50.preheader, %.lr.ph.i.i50.prol
  %.023.i.i51.prol = phi i64 [ %i.gu, %.lr.ph.i.i50.prol ], [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ] ; 3 uses
  %prol.iter337 = phi i64 [ %prol.iter337.next, %.lr.ph.i.i50.prol ], [ 0, %.lr.ph.i.i50.preheader ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51.prol
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.023.i.i51.prol
  store i8 %i.gs, ptr %i.gt, align 1
  %i.gu = add nuw i64 %.023.i.i51.prol, 1         ; 2 uses
  %prol.iter337.next = add i64 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i64 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol, !llvm.loop !892

.lr.ph.i.i50.prol.loopexit:                       ; preds = %.lr.ph.i.i50.prol, %.lr.ph.i.i50.preheader
  %.023.i.i51.unr = phi i64 [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ], [ %i.gu, %.lr.ph.i.i50.prol ]
  %i.gv = sub i64 %.023.i.i51.ph, %spec.select.i.i48
  %i.gw = icmp ugt i64 %i.gv, -4
  br i1 %i.gw, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50

._crit_edge.loopexit.i.i53:                       ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50, %vec.epilog.middle.block267, %middle.block254
  %.pre32.i.i54 = load i64, ptr %i.bk, align 8
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %._crit_edge.loopexit.i.i53, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %i.gx = phi i64 [ %.pre32.i.i54, %._crit_edge.loopexit.i.i53 ], [ %i.ga, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47 ]
  %i.gy = add i64 %i.gx, %spec.select.i.i48       ; 3 uses
  store i64 %i.gy, ptr %i.bk, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %spec.select.i.i48 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gz, %i.fr
  br i1 %.not.i.i56, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.k, !llvm.loop !14

.lr.ph.i.i50:                                     ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50
  %.023.i.i51 = phi i64 [ %i.hp, %.lr.ph.i.i50 ], [ %.023.i.i51.unr, %.lr.ph.i.i50.prol.loopexit ] ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.023.i.i51
  store i8 %i.hb, ptr %i.hc, align 1
  %i.hd = add nuw i64 %.023.i.i51, 1              ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hd
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = add nuw i64 %.023.i.i51, 2              ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hh
  store i8 %i.hj, ptr %i.hk, align 1
  %i.hl = add nuw i64 %.023.i.i51, 3              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hl
  store i8 %i.hn, ptr %i.ho, align 1
  %i.hp = add nuw i64 %.023.i.i51, 4              ; 2 uses
  %exitcond.not.i.i52.3 = icmp eq i64 %i.hp, %spec.select.i.i48
  br i1 %exitcond.not.i.i52.3, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50, !llvm.loop !893

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i55, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.hq = phi i64 [ %.pre146, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.gy, %._crit_edge.i.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.bm, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

bb.m:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hr) #21, !inline_history !18
  %.pre.i60 = load i64, ptr %i.bk, align 8        ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %bb.m
  %.pre-phi.i59 = phi i64 [ %i.hr, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre2.i61, %bb.m ]
  %i.hw = phi i64 [ %i.hq, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre.i60, %bb.m ]
  %i.hx = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i59, ptr %i.bk, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  store i8 32, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ia = load i32, ptr %i.hz, align 8            ; 3 uses
  %or.cond.i = icmp ult i32 %i.ia, 100
  br i1 %or.cond.i, label %bb.n, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i

bb.n:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ia to i8   ; 2 uses
  %i.ib = udiv i8 %.lhs.trunc.i, 10
  %i.ic = urem i8 %.lhs.trunc.i, 10
  %i.id = or disjoint i8 %i.ib, 48
  %i.ie = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.if = add i64 %i.ie, 1                        ; 3 uses
  %i.ig = load i64, ptr %i.bm, align 8
  %i.ih = icmp ugt i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.if) #21, !inline_history !21
  %.pre.i.i63 = load i64, ptr %i.bk, align 8      ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i63, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i = phi i64 [ %i.if, %bb.n ], [ %.pre2.i.i, %bb.o ]
  %i.ik = phi i64 [ %i.ie, %bb.n ], [ %.pre.i.i63, %bb.o ]
  %i.il = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.bk, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ik
  store i8 %i.id, ptr %i.im, align 1
  %i.in = or disjoint i8 %i.ic, 48
  %i.io = load i64, ptr %i.bk, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.kk, align 8
  %.sroa.2.0..sroa_idx.i15.i.i71 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i15.i.i71, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr null, ptr %i.kl, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i75, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i69
  %i.km = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.kn = add i64 %i.km, 1                        ; 3 uses
  %i.ko = load i64, ptr %i.bm, align 8
  %i.kp = icmp ugt i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.u, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85

bb.u:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kn) #21, !inline_history !18
  %.pre.i83 = load i64, ptr %i.bk, align 8        ; 2 uses
  %.pre2.i84 = add i64 %.pre.i83, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81, %bb.u
  %.pre-phi.i82 = phi i64 [ %i.kn, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81 ], [ %.pre2.i84, %bb.u ]
  %i.ks = phi i64 [ %i.km, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81 ], [ %.pre.i83, %bb.u ]
  %i.kt = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i82, ptr %i.bk, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ks
  store i8 58, ptr %i.ku, align 1
  %i.kv = load i32, ptr %2, align 8               ; 3 uses
  %or.cond.i86 = icmp ult i32 %i.kv, 100
  br i1 %or.cond.i86, label %bb.v, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85
  %.lhs.trunc.i90 = trunc nuw nsw i32 %i.kv to i8 ; 2 uses
  %i.kw = udiv i8 %.lhs.trunc.i90, 10
  %i.kx = urem i8 %.lhs.trunc.i90, 10
  %i.ky = or disjoint i8 %i.kw, 48
  %i.kz = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.la = add i64 %i.kz, 1                        ; 3 uses
  %i.lb = load i64, ptr %i.bm, align 8
  %i.lc = icmp ugt i64 %i.la, %i.lb
  br i1 %i.lc, label %bb.w, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91

bb.w:                                             ; preds = %bb.v
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.la) #21, !inline_history !21
  %.pre.i.i97 = load i64, ptr %i.bk, align 8      ; 2 uses
  %.pre2.i.i98 = add i64 %.pre.i.i97, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91: ; preds = %bb.w, %bb.v
  %.pre-phi.i.i92 = phi i64 [ %i.la, %bb.v ], [ %.pre2.i.i98, %bb.w ]
  %i.lf = phi i64 [ %i.kz, %bb.v ], [ %.pre.i.i97, %bb.w ]
  %i.lg = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i92, ptr %i.bk, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  store i8 %i.ky, ptr %i.lh, align 1
  %i.li = or disjoint i8 %i.kx, 48
  %i.lj = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.lk = add i64 %i.lj, 1                        ; 3 uses
  %i.ll = load i64, ptr %i.bm, align 8
  %i.lm = icmp ugt i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.x, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93

bb.x:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.lk) #21, !inline_history !21
  %.pre.i5.i95 = load i64, ptr %i.bk, align 8     ; 2 uses
  %.pre2.i6.i96 = add i64 %.pre.i5.i95, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93: ; preds = %bb.x, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91
  %.pre-phi.i4.i94 = phi i64 [ %i.lk, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91 ], [ %.pre2.i6.i96, %bb.x ]
  %i.lp = phi i64 [ %i.lj, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91 ], [ %.pre.i5.i95, %bb.x ]
  %i.lq = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i94, ptr %i.bk, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lp
  store i8 %i.li, ptr %i.lr, align 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 %i.kv, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.85, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i14.i.i88 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i14.i.i88, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1, ptr %i.lu, align 8
  %.sroa.2.0..sroa_idx.i15.i.i89 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i15.i.i89, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.lv, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87
  %i.lw = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.lx = add i64 %i.lw, 1                        ; 3 uses
  %i.ly = load i64, ptr %i.bm, align 8
  %i.lz = icmp ugt i64 %i.lx, %i.ly
  br i1 %i.lz, label %bb.y, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103

bb.y:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.lx) #21, !inline_history !18
  %.pre.i101 = load i64, ptr %i.bk, align 8       ; 2 uses
  %.pre2.i102 = add i64 %.pre.i101, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99, %bb.y
  %.pre-phi.i100 = phi i64 [ %i.lx, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99 ], [ %.pre2.i102, %bb.y ]
  %i.mc = phi i64 [ %i.lw, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99 ], [ %.pre.i101, %bb.y ]
  %i.md = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i100, ptr %i.bk, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mc
  store i8 32, ptr %i.me, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mg = load i32, ptr %i.mf, align 4            ; 2 uses
  %i.mh = add nsw i32 %i.mg, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.mi = icmp slt i32 %i.mg, -1900
  %spec.select.i.i.i104 = call i32 @llvm.abs.i32(i32 %i.mh, i1 true) ; 3 uses
  %i.mj = icmp samesign ugt i32 %spec.select.i.i.i104, 99
  br i1 %i.mj, label %.lr.ph.i.i.i.i.i128, label %._crit_edge.i.i.i.i.i105

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103, %.lr.ph.i.i.i.i.i128
  %.020.i.i.i.i.i129 = phi i32 [ %i.mk, %.lr.ph.i.i.i.i.i128 ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ]
  %.01819.i.i.i.i.i130 = phi i32 [ %i.ms, %.lr.ph.i.i.i.i.i128 ], [ %spec.select.i.i.i104, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ] ; 3 uses
  %i.mk = add i32 %.020.i.i.i.i.i129, -2          ; 3 uses
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %4, i64 %i.ml
  %i.mn = urem i32 %.01819.i.i.i.i.i130, 100
  %i.mo = shl nuw nsw i32 %i.mn, 1
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 2
  store i16 %i.mr, ptr %i.mm, align 1
  %i.ms = udiv i32 %.01819.i.i.i.i.i130, 100      ; 2 uses
  %i.mt = icmp samesign ugt i32 %.01819.i.i.i.i.i130, 9999
  br i1 %i.mt, label %.lr.ph.i.i.i.i.i128, label %._crit_edge.i.i.i.i.i105, !llvm.loop !19

._crit_edge.i.i.i.i.i105:                         ; preds = %.lr.ph.i.i.i.i.i128, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103
  %.018.lcssa.i.i.i.i.i106 = phi i32 [ %spec.select.i.i.i104, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ], [ %i.ms, %.lr.ph.i.i.i.i.i128 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i107 = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ], [ %i.mk, %.lr.ph.i.i.i.i.i128 ] ; 2 uses
  %i.mu = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i106, 9
  br i1 %i.mu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i105
  %i.mv = add i32 %.0.lcssa.i.i.i.i.i107, -2
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 %i.mw
  %i.my = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i106, 1
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2
  store i16 %i.nb, ptr %i.mx, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i105
  %i.nc = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i106 to i8
  %i.nd = or disjoint i8 %i.nc, 48
  %i.ne = add i32 %.0.lcssa.i.i.i.i.i107, -1
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 %i.nf
  store i8 %i.nd, ptr %i.ng, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108: ; preds = %bb.aa, %bb.z
  %.pre-phi.i.i.i.i.i109 = phi i64 [ %i.nf, %bb.aa ], [ %i.mw, %bb.z ]
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i109 ; 2 uses
  br i1 %i.mi, label %bb.ab, label %_ZN3fmt3v1110format_intC2Ei.exit.i110

bb.ab:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -1 ; 2 uses
  store i8 45, ptr %i.ni, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i110

_ZN3fmt3v1110format_intC2Ei.exit.i110:            ; preds = %bb.ab, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108
  %.0.i.i.i111 = phi ptr [ %i.ni, %bb.ab ], [ %i.nh, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108 ] ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i111, ptr %i.nj, align 8
  %i.nk = ptrtoint ptr %4 to i64
  %i.nl = ptrtoint ptr %.0.i.i.i111 to i64        ; 2 uses
  %i.nm = add i64 %i.nk, 21                       ; 3 uses
  %i.nn = sub i64 %i.nm, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i.i111, i64 %i.nn
  %.not24.i.i112 = icmp eq i64 %i.nm, %i.nl
  br i1 %.not24.i.i112, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131, label %.lr.ph27.i.i113

.lr.ph27.i.i113:                                  ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i110
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i114 = load i64, ptr %i.bk, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i124, %.lr.ph27.i.i113
  %i.nq = phi i64 [ %.pre.i.i114, %.lr.ph27.i.i113 ], [ %i.ov, %._crit_edge.i.i124 ] ; 2 uses
  %.01925.i.i115 = phi ptr [ %.0.i.i.i111, %.lr.ph27.i.i113 ], [ %i.ow, %._crit_edge.i.i124 ] ; 9 uses
  %i.nr = ptrtoint ptr %.01925.i.i115 to i64      ; 2 uses
  %i.ns = sub i64 %i.nm, %i.nr                    ; 2 uses
  %i.nt = add i64 %i.ns, %i.nq                    ; 2 uses
  %i.nu = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.nv = icmp ugt i64 %i.nt, %i.nu
  br i1 %i.nv, label %bb.ad, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116

bb.ad:                                            ; preds = %bb.ac
  %i.nw = load ptr, ptr %i.np, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.nt) #21, !inline_history !20
  %.pre30.i.i126 = load i64, ptr %i.bm, align 8
  %.pre31.i.i127 = load i64, ptr %i.bk, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116: ; preds = %bb.ad, %bb.ac
  %i.nx = phi i64 [ %i.nq, %bb.ac ], [ %.pre31.i.i127, %bb.ad ] ; 4 uses
  %i.ny = phi i64 [ %i.nu, %bb.ac ], [ %.pre30.i.i126, %bb.ad ]
  %i.nz = sub i64 %i.ny, %i.nx
  %spec.select.i.i117 = call i64 @llvm.umin.i64(i64 %i.nz, i64 %i.ns) ; 13 uses
  %i.oa = load ptr, ptr %3, align 8               ; 2 uses
  %i.ob = ptrtoaddr ptr %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nx ; 7 uses
  %.not29.i.i118 = icmp eq i64 %spec.select.i.i117, 0
  br i1 %.not29.i.i118, label %._crit_edge.i.i124, label %iter.check285

iter.check285:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116
  %min.iters.check272.a = icmp ult i64 %spec.select.i.i117, 4
  br i1 %min.iters.check272.a, label %.lr.ph.i.i119.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %iter.check285
  %i.od = add i64 %i.nx, %i.ob
  %i.oe = sub i64 %i.nr, %i.od
  %diff.check271 = icmp ugt i64 %i.oe, -32
  br i1 %diff.check271, label %.lr.ph.i.i119.preheader, label %vector.main.loop.iter.check273

vector.main.loop.iter.check273:                   ; preds = %vector.memcheck270
  %min.iters.check274 = icmp ult i64 %spec.select.i.i117, 32
  br i1 %min.iters.check274, label %vec.epilog.ph289, label %vector.ph275

vector.ph275:                                     ; preds = %vector.main.loop.iter.check273
  %i.of = and i64 %spec.select.i.i117, 28
  %n.vec276 = and i64 %spec.select.i.i117, -32    ; 4 uses
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next281, %vector.body277 ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %index278 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load279 = load <16 x i8>, ptr %i.og, align 1
  %wide.load280 = load <16 x i8>, ptr %i.oh, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %index278 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <16 x i8> %wide.load279, ptr %i.oi, align 1
  store <16 x i8> %wide.load280, ptr %i.oj, align 1
  %index.next281 = add nuw i64 %index278, 32      ; 2 uses
  %i.ok = icmp eq i64 %index.next281, %n.vec276
  br i1 %i.ok, label %middle.block282, label %vector.body277, !llvm.loop !894

middle.block282:                                  ; preds = %vector.body277
  %cmp.n283 = icmp eq i64 %spec.select.i.i117, %n.vec276
  br i1 %cmp.n283, label %._crit_edge.loopexit.i.i122, label %vec.epilog.iter.check287

vec.epilog.iter.check287:                         ; preds = %middle.block282
  %min.epilog.iters.check288 = icmp eq i64 %i.of, 0
  br i1 %min.epilog.iters.check288, label %.lr.ph.i.i119.preheader, label %vec.epilog.ph289, !prof !76

vec.epilog.ph289:                                 ; preds = %vector.main.loop.iter.check273, %vec.epilog.iter.check287
  %vec.epilog.resume.val284 = phi i64 [ %n.vec276, %vec.epilog.iter.check287 ], [ 0, %vector.main.loop.iter.check273 ]
  %n.vec290 = and i64 %spec.select.i.i117, -4     ; 3 uses
  br label %vec.epilog.vector.body291

vec.epilog.vector.body291:                        ; preds = %vec.epilog.vector.body291, %vec.epilog.ph289
  %index292 = phi i64 [ %vec.epilog.resume.val284, %vec.epilog.ph289 ], [ %index.next294, %vec.epilog.vector.body291 ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %index292
  %wide.load293 = load <4 x i8>, ptr %i.ol, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 %index292
  store <4 x i8> %wide.load293, ptr %i.om, align 1
  %index.next294 = add nuw i64 %index292, 4       ; 2 uses
  %i.on = icmp eq i64 %index.next294, %n.vec290
  br i1 %i.on, label %vec.epilog.middle.block295, label %vec.epilog.vector.body291, !llvm.loop !895

vec.epilog.middle.block295:                       ; preds = %vec.epilog.vector.body291
  %cmp.n296 = icmp eq i64 %spec.select.i.i117, %n.vec290
  br i1 %cmp.n296, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %vector.memcheck270, %iter.check285, %vec.epilog.iter.check287, %vec.epilog.middle.block295
  %.023.i.i120.ph = phi i64 [ 0, %iter.check285 ], [ 0, %vector.memcheck270 ], [ %n.vec276, %vec.epilog.iter.check287 ], [ %n.vec290, %vec.epilog.middle.block295 ] ; 3 uses
  %xtraiter338 = and i64 %spec.select.i.i117, 3   ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph.i.i119.prol.loopexit, label %.lr.ph.i.i119.prol

.lr.ph.i.i119.prol:                               ; preds = %.lr.ph.i.i119.preheader, %.lr.ph.i.i119.prol
  %.023.i.i120.prol = phi i64 [ %i.or, %.lr.ph.i.i119.prol ], [ %.023.i.i120.ph, %.lr.ph.i.i119.preheader ] ; 3 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.lr.ph.i.i119.prol ], [ 0, %.lr.ph.i.i119.preheader ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %.023.i.i120.prol
  %i.op = load i8, ptr %i.oo, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.023.i.i120.prol
  store i8 %i.op, ptr %i.oq, align 1
  %i.or = add nuw i64 %.023.i.i120.prol, 1        ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.lr.ph.i.i119.prol.loopexit, label %.lr.ph.i.i119.prol, !llvm.loop !896

.lr.ph.i.i119.prol.loopexit:                      ; preds = %.lr.ph.i.i119.prol, %.lr.ph.i.i119.preheader
  %.023.i.i120.unr = phi i64 [ %.023.i.i120.ph, %.lr.ph.i.i119.preheader ], [ %i.or, %.lr.ph.i.i119.prol ]
  %i.os = sub i64 %.023.i.i120.ph, %spec.select.i.i117
  %i.ot = icmp ugt i64 %i.os, -4
  br i1 %i.ot, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119

._crit_edge.loopexit.i.i122:                      ; preds = %.lr.ph.i.i119.prol.loopexit, %.lr.ph.i.i119, %vec.epilog.middle.block295, %middle.block282
  %.pre32.i.i123 = load i64, ptr %i.bk, align 8
  br label %._crit_edge.i.i124

._crit_edge.i.i124:                               ; preds = %._crit_edge.loopexit.i.i122, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116
  %i.ou = phi i64 [ %.pre32.i.i123, %._crit_edge.loopexit.i.i122 ], [ %i.nx, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116 ]
  %i.ov = add i64 %i.ou, %spec.select.i.i117      ; 2 uses
  store i64 %i.ov, ptr %i.bk, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %spec.select.i.i117 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ow, %i.no
  br i1 %.not.i.i125, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131, label %bb.ac, !llvm.loop !14

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119.prol.loopexit, %.lr.ph.i.i119
  %.023.i.i120 = phi i64 [ %i.pm, %.lr.ph.i.i119 ], [ %.023.i.i120.unr, %.lr.ph.i.i119.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %.023.i.i120
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.023.i.i120
  store i8 %i.oy, ptr %i.oz, align 1
  %i.pa = add nuw i64 %.023.i.i120, 1             ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pa
  store i8 %i.pc, ptr %i.pd, align 1
  %i.pe = add nuw i64 %.023.i.i120, 2             ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pe
  store i8 %i.pg, ptr %i.ph, align 1
  %i.pi = add nuw i64 %.023.i.i120, 3             ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pi
  store i8 %i.pk, ptr %i.pl, align 1
  %i.pm = add nuw i64 %.023.i.i120, 4             ; 2 uses
  %exitcond.not.i.i121.3 = icmp eq i64 %i.pm, %spec.select.i.i117
  br i1 %exitcond.not.i.i121.3, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119, !llvm.loop !897

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131: ; preds = %._crit_edge.i.i124, %_ZN3fmt3v1110format_intC2Ei.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.pn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.po = load i64, ptr %i.pn, align 8            ; 4 uses
  %i.pp = icmp sgt i64 %i.po, -1
  br i1 %i.pp, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8            ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.po ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.po, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.ae
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.pw, align 8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.pz = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.re, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.pr, %.lr.ph27.i.i.i.i ], [ %i.rf, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.qa = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.qb = sub i64 %i.pv, %i.qa                    ; 2 uses
  %i.qc = add i64 %i.qb, %i.pz                    ; 2 uses
  %i.qd = load i64, ptr %i.px, align 8            ; 2 uses
  %i.qe = icmp ugt i64 %i.qc, %i.qd
  br i1 %i.qe, label %bb.ag, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.qf = load ptr, ptr %i.py, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(283) %i.pt, i64 noundef %i.qc) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.px, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.pw, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.qg = phi i64 [ %i.pz, %bb.af ], [ %.pre31.i.i.i.i, %bb.ag ] ; 4 uses
  %i.qh = phi i64 [ %i.qd, %bb.af ], [ %.pre30.i.i.i.i, %bb.ag ]
  %i.qi = sub i64 %i.qh, %i.qg
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.qi, i64 %i.qb) ; 13 uses
  %i.qj = load ptr, ptr %i.pt, align 8            ; 2 uses
  %i.qk = ptrtoaddr ptr %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qg ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check313

iter.check313:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check300.a = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check300.a, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck298

end_hunk_5
begin_hunk_6_@_ZN6spdlog7details11C_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.bo, align 1
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !903

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %spec.select.i.i.i.i, %n.vec16
  br i1 %cmp.n20, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %.023.i.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !904

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.prol ]
  %i.bu = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.ap, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.bw = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.az, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.bx = add i64 %i.bw, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.bx, ptr %i.ap, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.an
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.f, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 %.023.i.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.co, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !905

bb.h:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.cp = load ptr, ptr %6, align 8, !nonnull !70, !align !79
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i8, ptr %i.cq, align 4, !range !69, !noundef !70
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add nsw i64 %i.cw, %i.ah
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.cx, i64 0) ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp ugt i64 %spec.store.select.i, %i.cz
  br i1 %i.da, label %bb.j, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(283) %i.cu, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.cy, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.j, %bb.i
  %i.dd = phi i64 [ %i.cz, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  %i.de = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.dd)
  store i64 %i.de, ptr %i.cv, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.h, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add nsw i32 %i.c, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.i, align 1
  %i.o = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.p = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

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
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.s, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.e, label %bb.d, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  store i8 45, ptr %i.ae, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.ad, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.af, align 8
  %i.ag = ptrtoint ptr %4 to i64
  %i.ah = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ai = add i64 %i.ag, 21                       ; 3 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.aj
  %.not24.i.i = icmp eq i64 %i.ai, %i.ah
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ao = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bu, %._crit_edge.i.i ] ; 9 uses
  %i.ap = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.aq = sub i64 %i.ai, %i.ap                    ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = load i64, ptr %i.am, align 8            ; 2 uses
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.an, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar) #21, !inline_history !20
  %.pre30.i.i = load i64, ptr %i.am, align 8
  %.pre31.i.i = load i64, ptr %i.al, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.av = phi i64 [ %i.ao, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.aw = phi i64 [ %i.as, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.ax = sub i64 %i.aw, %i.av
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.aq) ; 13 uses
  %i.ay = load ptr, ptr %3, align 8               ; 2 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = add i64 %i.av, %i.az
  %i.bc = sub i64 %i.ap, %i.bb
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1
  %wide.load17 = load <16 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <16 x i8> %wide.load, ptr %i.bg, align 1
  store <16 x i8> %wide.load17, ptr %i.bh, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index19
  store <4 x i8> %wide.load20, ptr %i.bk, align 1
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec18
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %spec.select.i.i, %n.vec18
  br i1 %cmp.n22, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.023.i.i.prol
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !908

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %i.bq = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.al, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bs = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.av, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bt = add i64 %i.bs, %spec.select.i.i         ; 2 uses
  store i64 %i.bt, ptr %i.al, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.ak
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.023.i.i
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ck, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !909

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cm = load i64, ptr %i.cl, align 8            ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  br i1 %i.cn, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cm, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.g
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cu, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.cx = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ec, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cp, %.lr.ph27.i.i.i.i ], [ %i.ed, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.cy = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.cz = sub i64 %i.ct, %i.cy                    ; 2 uses
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  %i.db = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dd = load ptr, ptr %i.cw, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(283) %i.cr, i64 noundef %i.da) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.cv, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.cu, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.de = phi i64 [ %i.cx, %bb.h ], [ %.pre31.i.i.i.i, %bb.i ] ; 4 uses
  %i.df = phi i64 [ %i.db, %bb.h ], [ %.pre30.i.i.i.i, %bb.i ]
  %i.dg = sub i64 %i.df, %i.de
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.cz) ; 13 uses
  %i.dh = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check38

iter.check38:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check25 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check25, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck23

end_hunk_6
begin_hunk_7_@_ZN6spdlog7details11f_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.an, align 1
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !947

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %spec.select.i.i.i.i, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.023.i.i.i.i.prol
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !948

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.at = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.o, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.av = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.y, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.aw = add i64 %i.av, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.aw, ptr %i.o, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.m
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.023.i.i.i.i
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bn, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !949

bb.e:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %4, align 8, !nonnull !70, !align !79
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i8, ptr %i.bp, align 4, !range !69, !noundef !70
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.f, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add nsw i64 %i.bv, %i.g
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.bw, i64 0) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp ugt i64 %spec.store.select.i, %i.by
  br i1 %i.bz, label %bb.g, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(283) %i.bt, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.bx, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.g, %bb.f
  %i.cc = phi i64 [ %i.by, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.cd = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.cc)
  store i64 %i.cd, ptr %i.bu, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.e, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(283) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = or i64 %0, 1
  %i.b = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = xor i64 %i.b, 63
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
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
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = ptrtoint ptr %3 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not24.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ca, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.am, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 9 uses
  %i.aw = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ax = sub i64 %i.ap, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = load i64, ptr %i.at, align 8            ; 2 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.ay) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.at, align 8
  %.pre31.i.i = load i64, ptr %i.as, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bc = phi i64 [ %i.av, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.bd = phi i64 [ %i.az, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.be = sub i64 %i.bd, %i.bc
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ax) ; 13 uses
  %i.bf = load ptr, ptr %2, align 8               ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = add i64 %i.bc, %i.bg
  %i.bj = sub i64 %i.aw, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <16 x i8>, ptr %i.bl, align 1
  %wide.load21 = load <16 x i8>, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load, ptr %i.bn, align 1
  store <16 x i8> %wide.load21, ptr %i.bo, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.br, align 1
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !951

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !952

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.as, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bz = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.ca = add i64 %i.bz, %spec.select.i.i         ; 2 uses
  store i64 %i.ca, ptr %i.as, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ar
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cn
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cr, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !953

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ %i.da, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %i.cs = load i64, ptr %i.m, align 8             ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.n, align 8
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.g:                                             ; preds = %bb.f
  %i.cw = load ptr, ptr %i.o, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ct) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.m, align 8           ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.f, %bb.g
  %.pre-phi.i = phi i64 [ %i.ct, %bb.f ], [ %.pre2.i, %bb.g ]
  %i.cx = phi i64 [ %i.cs, %bb.f ], [ %.pre.i, %bb.g ]
  %i.cy = load ptr, ptr %2, align 8
  store i64 %.pre-phi.i, ptr %i.m, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 48, ptr %i.cz, align 1
  %i.da = add i32 %.07, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !954
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 9, ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.al, align 1
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !956

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %spec.select.i.i.i.i, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.023.i.i.i.i.prol
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !957

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %i.ar = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.m, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.at = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.w, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.au = add i64 %i.at, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.au, ptr %i.m, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.k
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.023.i.i.i.i
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bl, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !958

bb.e:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %4, align 8, !nonnull !70, !align !79
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !range !69, !noundef !70
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.f, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add nsw i64 %i.bt, %i.e
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.bu, i64 0) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp ugt i64 %spec.store.select.i, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(283) %i.br, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.bv, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.g, %bb.f
  %i.ca = phi i64 [ %i.bw, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %i.cb = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.ca)
  store i64 %i.cb, ptr %i.bs, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.e, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !25

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
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1110format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store i8 45, ptr %i.ab, align 1
  br label %_ZN3fmt3v1110format_intC2El.exit.i

_ZN3fmt3v1110format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.aa, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %4 to i64
  %i.ae = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.af = add i64 %i.ad, 21                       ; 3 uses
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ag
  %.not24.i.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2El.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.br, %._crit_edge.i.i ] ; 9 uses
  %i.am = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.an = sub i64 %i.af, %i.am                    ; 2 uses
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ao) #21, !inline_history !61
  %.pre30.i.i = load i64, ptr %i.aj, align 8
  %.pre31.i.i = load i64, ptr %i.ai, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.as = phi i64 [ %i.al, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.at = phi i64 [ %i.ap, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.au = sub i64 %i.at, %i.as
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.an) ; 13 uses
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.as, %i.aw
  %i.az = sub i64 %i.am, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1
  %wide.load18 = load <16 x i8>, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1
  store <16 x i8> %wide.load18, ptr %i.be, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index20
  %wide.load21 = load <4 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index20
  store <4 x i8> %wide.load21, ptr %i.bh, align 1
  %index.next22 = add nuw i64 %index20, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next22, %n.vec19
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !960

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %spec.select.i.i, %n.vec19
  br i1 %cmp.n23, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.023.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !961

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bn = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ai, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bp = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.as, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bq = add i64 %i.bp, %spec.select.i.i         ; 2 uses
  store i64 %i.bq, ptr %i.ai, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.023.i.i
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !962

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cj = load i64, ptr %i.ci, align 8            ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cj, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.g
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cr, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.cu = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.dz, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cm, %.lr.ph27.i.i.i.i ], [ %i.ea, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.cv = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.cw = sub i64 %i.cq, %i.cv                    ; 2 uses
  %i.cx = add i64 %i.cw, %i.cu                    ; 2 uses
  %i.cy = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cz = icmp ugt i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %i.ct, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(283) %i.co, i64 noundef %i.cx) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.cs, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.cr, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.db = phi i64 [ %i.cu, %bb.h ], [ %.pre31.i.i.i.i, %bb.i ] ; 4 uses
  %i.dc = phi i64 [ %i.cy, %bb.h ], [ %.pre30.i.i.i.i, %bb.i ]
  %i.dd = sub i64 %i.dc, %i.db
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.cw) ; 13 uses
  %i.de = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check39

iter.check39:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check26 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check26, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck24

end_hunk_8
begin_hunk_9_@_ZN6spdlog7details11z_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index63
  %wide.load64 = load <4 x i8>, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index63
  store <4 x i8> %wide.load64, ptr %i.ed, align 1
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.ee = icmp eq i64 %index.next65, %n.vec62
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !992

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %spec.select.i.i.i.i, %n.vec62
  br i1 %cmp.n66, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec62, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.023.i.i.i.i.prol
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !993

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.prol ]
  %i.ej = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ek = icmp ugt i64 %i.ej, -4
  br i1 %i.ek, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.de, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.el = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.do, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.em = add i64 %i.el, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.em, ptr %i.de, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.dc
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.o, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.fd, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.023.i.i.i.i
  store i8 %i.ep, ptr %i.eq, align 1
  %i.er = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1
  %i.ev = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ev
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ez
  store i8 %i.fb, ptr %i.fc, align 1
  %i.fd = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fd, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !994

bb.q:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36
  %i.fe = load ptr, ptr %6, align 8, !nonnull !70, !align !79
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i8, ptr %i.ff, align 4, !range !69, !noundef !70
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.r, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = add nsw i64 %i.fl, %i.cw
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fm, i64 0) ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %i.fp = icmp ugt i64 %spec.store.select.i, %i.fo
  br i1 %i.fp, label %bb.s, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(283) %i.fj, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.fn, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.s, %bb.r
  %i.fs = phi i64 [ %i.fo, %bb.r ], [ %.pre.i.i.i, %bb.s ]
  %i.ft = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fs)
  store i64 %i.ft, ptr %i.fk, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.n, %bb.q, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = tail call noundef i32 @getpid() #21      ; 5 uses
  %i.b = or i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = zext i32 %i.a to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(14) %i.k, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.o, align 1
  %i.u = udiv i32 %.01819.i.i.i.i, 100            ; 2 uses
  %i.v = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !19

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
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  store i16 %i.ad, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = trunc nuw nsw i32 %.018.lcssa.i.i.i.i to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ah, %bb.c ], [ %i.y, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %4 to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = add i64 %i.al, 21                       ; 3 uses
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %.not24.i.i = icmp eq i64 %i.an, %i.am
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.aq, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.at = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.by, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.ak, %.lr.ph27.i.i ], [ %i.bz, %._crit_edge.i.i ] ; 9 uses
  %i.au = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.av = sub i64 %i.an, %i.au                    ; 2 uses
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.as, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aw) #21, !inline_history !23
  %.pre30.i.i = load i64, ptr %i.ar, align 8
  %.pre31.i.i = load i64, ptr %i.aq, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ba = phi i64 [ %i.at, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.bb = phi i64 [ %i.ax, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.bc = sub i64 %i.bb, %i.ba
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.av) ; 13 uses
  %i.bd = load ptr, ptr %3, align 8               ; 2 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bg = add i64 %i.ba, %i.be
  %i.bh = sub i64 %i.au, %i.bg
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <16 x i8>, ptr %i.bj, align 1
  %wide.load22 = load <16 x i8>, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load, ptr %i.bl, align 1
  store <16 x i8> %wide.load22, ptr %i.bm, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !995

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.bp, align 1
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !996

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %spec.select.i.i, %n.vec23
  br i1 %cmp.n27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.023.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !997

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.prol ]
  %i.bv = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.aq, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bx = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ba, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.by = add i64 %i.bx, %spec.select.i.i         ; 2 uses
  store i64 %i.by, ptr %i.aq, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.ap
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.023.i.i
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cp, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !998

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = load i64, ptr %i.cq, align 8            ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  br i1 %i.cs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cr, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cz, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i6, %.lr.ph27.i.i.i.i
  %i.dc = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.eh, %._crit_edge.i.i.i.i6 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cu, %.lr.ph27.i.i.i.i ], [ %i.ei, %._crit_edge.i.i.i.i6 ] ; 9 uses
  %i.dd = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.de = sub i64 %i.cy, %i.dd                    ; 2 uses
  %i.df = add i64 %i.de, %i.dc                    ; 2 uses
  %i.dg = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dh = icmp ugt i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.di = load ptr, ptr %i.db, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(283) %i.cw, i64 noundef %i.df) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.da, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.cz, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dj = phi i64 [ %i.dc, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dk = phi i64 [ %i.dg, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.dl = sub i64 %i.dk, %i.dj
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.de) ; 13 uses
  %i.dm = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i6, label %iter.check43

iter.check43:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check30 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i5.preheader, label %vector.memcheck28

end_hunk_9
begin_hunk_10_@_ZN6spdlog7details25source_location_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check74 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dr = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <16 x i8>, ptr %i.ds, align 1
  %wide.load75 = load <16 x i8>, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %wide.load, ptr %i.du, align 1
  store <16 x i8> %wide.load75, ptr %i.dv, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1007

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index77
  %wide.load78 = load <4 x i8>, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %index77
  store <4 x i8> %wide.load78, ptr %i.dy, align 1
  %index.next79 = add nuw i64 %index77, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1008

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %spec.select.i.i, %n.vec76
  br i1 %cmp.n80, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec76, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i.prol
  store i8 %i.eb, ptr %i.ec, align 1
  %i.ed = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1009

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.prol ]
  %i.ee = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.cz, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.eg = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.dj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.eh = add i64 %i.eg, %spec.select.i.i         ; 3 uses
  store i64 %i.eh, ptr %i.cz, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ei, %i.cx
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.l, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ey, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1
  %i.eu = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eu
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ey, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1010

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge
  %i.ez = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge ], [ %i.eh, %._crit_edge.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.fb = add i64 %i.ez, 1                        ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = icmp ugt i64 %i.fb, %i.fd
  br i1 %i.fe, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.n:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fb) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.fa, align 8          ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.n
  %.pre-phi.i = phi i64 [ %i.fb, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %bb.n ]
  %i.fh = phi i64 [ %i.ez, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %bb.n ]
  %i.fi = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i, ptr %i.fa, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 58, ptr %i.fj, align 1
  %i.fk = load i32, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fl = icmp slt i32 %i.fk, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.fk, i1 false) ; 3 uses
  %i.fm = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.fn, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %.01819.i.i.i.i.i = phi i32 [ %i.fv, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %i.fn = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 %i.fo
  %i.fq = urem i32 %.01819.i.i.i.i.i, 100
  %i.fr = shl nuw nsw i32 %i.fq, 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2
  store i16 %i.fu, ptr %i.fp, align 1
  %i.fv = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.fw = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.fv, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.fn, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.fx = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.fx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fy = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz
  %i.gb = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  store i16 %i.ge, ptr %i.ga, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gf = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.gg = or disjoint i8 %i.gf, 48
  %i.gh = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 %i.gi
  store i8 %i.gg, ptr %i.gj, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.gi, %bb.p ], [ %i.fz, %bb.o ]
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.fl, label %bb.q, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.q:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -1 ; 2 uses
  store i8 45, ptr %i.gl, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.q, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.gl, %bb.q ], [ %i.gk, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.gm, align 8
  %i.gn = ptrtoint ptr %4 to i64
  %i.go = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.gp = add i64 %i.gn, 21                       ; 3 uses
  %i.gq = sub i64 %i.gp, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.gq
  %.not24.i.i11 = icmp eq i64 %i.gp, %i.go
  br i1 %.not24.i.i11, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i12

.lr.ph27.i.i12:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i13 = load i64, ptr %i.fa, align 8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i23, %.lr.ph27.i.i12
  %i.gt = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i12 ], [ %i.hy, %._crit_edge.i.i23 ] ; 2 uses
  %.01925.i.i14 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i12 ], [ %i.hz, %._crit_edge.i.i23 ] ; 9 uses
  %i.gu = ptrtoint ptr %.01925.i.i14 to i64       ; 2 uses
  %i.gv = sub i64 %i.gp, %i.gu                    ; 2 uses
  %i.gw = add i64 %i.gv, %i.gt                    ; 2 uses
  %i.gx = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.gy = icmp ugt i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.s, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

bb.s:                                             ; preds = %bb.r
  %i.gz = load ptr, ptr %i.gs, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.gw) #21, !inline_history !20
  %.pre30.i.i25 = load i64, ptr %i.fc, align 8
  %.pre31.i.i26 = load i64, ptr %i.fa, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15: ; preds = %bb.s, %bb.r
  %i.ha = phi i64 [ %i.gt, %bb.r ], [ %.pre31.i.i26, %bb.s ] ; 4 uses
  %i.hb = phi i64 [ %i.gx, %bb.r ], [ %.pre30.i.i25, %bb.s ]
  %i.hc = sub i64 %i.hb, %i.ha
  %spec.select.i.i16 = call i64 @llvm.umin.i64(i64 %i.hc, i64 %i.gv) ; 13 uses
  %i.hd = load ptr, ptr %3, align 8               ; 2 uses
  %i.he = ptrtoaddr ptr %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ha ; 7 uses
  %.not29.i.i17 = icmp eq i64 %spec.select.i.i16, 0
  br i1 %.not29.i.i17, label %._crit_edge.i.i23, label %iter.check96

iter.check96:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %min.iters.check83 = icmp ult i64 %spec.select.i.i16, 4
  br i1 %min.iters.check83, label %.lr.ph.i.i18.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %iter.check96
  %i.hg = add i64 %i.ha, %i.he
  %i.hh = sub i64 %i.gu, %i.hg
  %diff.check82 = icmp ugt i64 %i.hh, -32
  br i1 %diff.check82, label %.lr.ph.i.i18.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %vector.memcheck81
  %min.iters.check85 = icmp ult i64 %spec.select.i.i16, 32
  br i1 %min.iters.check85, label %vec.epilog.ph100, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.hi = and i64 %spec.select.i.i16, 28
  %n.vec87 = and i64 %spec.select.i.i16, -32      ; 4 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index89 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load90.a = load <16 x i8>, ptr %i.hj, align 1
  %wide.load91 = load <16 x i8>, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 %index89 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <16 x i8> %wide.load90.a, ptr %i.hl, align 1
  store <16 x i8> %wide.load91, ptr %i.hm, align 1
  %index.next92 = add nuw i64 %index89, 32        ; 2 uses
  %i.hn = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.hn, label %middle.block93, label %vector.body88, !llvm.loop !1011

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %spec.select.i.i16, %n.vec87
  br i1 %cmp.n94, label %._crit_edge.loopexit.i.i21, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block93
  %min.epilog.iters.check99 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i.i18.preheader, label %vec.epilog.ph100, !prof !76

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check98
  %vec.epilog.resume.val95 = phi i64 [ %n.vec87, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec101 = and i64 %spec.select.i.i16, -4      ; 3 uses
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph100
  %index103 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph100 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.hp, align 1
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.hq, label %vec.epilog.middle.block106, label %vec.epilog.vector.body102, !llvm.loop !1012

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body102
  %cmp.n107 = icmp eq i64 %spec.select.i.i16, %n.vec101
  br i1 %cmp.n107, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %vector.memcheck81, %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block106
  %.023.i.i19.ph = phi i64 [ 0, %iter.check96 ], [ 0, %vector.memcheck81 ], [ %n.vec87, %vec.epilog.iter.check98 ], [ %n.vec101, %vec.epilog.middle.block106 ] ; 3 uses
  %xtraiter167 = and i64 %spec.select.i.i16, 3    ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.i.i18.preheader, %.lr.ph.i.i18.prol
  %.023.i.i19.prol = phi i64 [ %i.hu, %.lr.ph.i.i18.prol ], [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ] ; 3 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.i.i18.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19.prol
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.023.i.i19.prol
  store i8 %i.hs, ptr %i.ht, align 1
  %i.hu = add nuw i64 %.023.i.i19.prol, 1         ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !1013

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.i.i18.preheader
  %.023.i.i19.unr = phi i64 [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ], [ %i.hu, %.lr.ph.i.i18.prol ]
  %i.hv = sub i64 %.023.i.i19.ph, %spec.select.i.i16
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18

._crit_edge.loopexit.i.i21:                       ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %vec.epilog.middle.block106, %middle.block93
  %.pre32.i.i22 = load i64, ptr %i.fa, align 8
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %._crit_edge.loopexit.i.i21, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %i.hx = phi i64 [ %.pre32.i.i22, %._crit_edge.loopexit.i.i21 ], [ %i.ha, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15 ]
  %i.hy = add i64 %i.hx, %spec.select.i.i16       ; 2 uses
  store i64 %i.hy, ptr %i.fa, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %spec.select.i.i16 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.hz, %i.gr
  br i1 %.not.i.i24, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.r, !llvm.loop !14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.023.i.i19 = phi i64 [ %i.ip, %.lr.ph.i.i18 ], [ %.023.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.023.i.i19
  store i8 %i.ib, ptr %i.ic, align 1
  %i.id = add nuw i64 %.023.i.i19, 1              ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.id
  store i8 %i.if, ptr %i.ig, align 1
  %i.ih = add nuw i64 %.023.i.i19, 2              ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ih
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = add nuw i64 %.023.i.i19, 3              ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.il
  store i8 %i.in, ptr %i.io, align 1
  %i.ip = add nuw i64 %.023.i.i19, 4              ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %i.ip, %spec.select.i.i16
  br i1 %exitcond.not.i.i20.3, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18, !llvm.loop !1014

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i23, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ir = load i64, ptr %i.iq, align 8            ; 4 uses
  %i.is = icmp sgt i64 %i.ir, -1
  br i1 %i.is, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ir ; 2 uses
  %.not24.i.i.i.i30 = icmp samesign eq i64 %i.ir, 0
  br i1 %.not24.i.i.i.i30, label %_ZN6spdlog7details13scoped_padderD2Ev.exit46, label %.lr.ph27.i.i.i.i31

.lr.ph27.i.i.i.i31:                               ; preds = %bb.t
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %.pre.i.i.i.i32 = load i64, ptr %i.iz, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i42, %.lr.ph27.i.i.i.i31
  %i.jc = phi i64 [ %.pre.i.i.i.i32, %.lr.ph27.i.i.i.i31 ], [ %i.kh, %._crit_edge.i.i.i.i42 ] ; 2 uses
  %.01925.i.i.i.i33 = phi ptr [ %i.iu, %.lr.ph27.i.i.i.i31 ], [ %i.ki, %._crit_edge.i.i.i.i42 ] ; 9 uses
  %i.jd = ptrtoint ptr %.01925.i.i.i.i33 to i64   ; 2 uses
  %i.je = sub i64 %i.iy, %i.jd                    ; 2 uses
  %i.jf = add i64 %i.je, %i.jc                    ; 2 uses
  %i.jg = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jh = icmp ugt i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.v, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i34

bb.v:                                             ; preds = %bb.u
  %i.ji = load ptr, ptr %i.jb, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(283) %i.iw, i64 noundef %i.jf) #21, !inline_history !58
  %.pre30.i.i.i.i44 = load i64, ptr %i.ja, align 8
  %.pre31.i.i.i.i45 = load i64, ptr %i.iz, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i34

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i34: ; preds = %bb.v, %bb.u
  %i.jj = phi i64 [ %i.jc, %bb.u ], [ %.pre31.i.i.i.i45, %bb.v ] ; 4 uses
  %i.jk = phi i64 [ %i.jg, %bb.u ], [ %.pre30.i.i.i.i44, %bb.v ]
  %i.jl = sub i64 %i.jk, %i.jj
  %spec.select.i.i.i.i35 = call i64 @llvm.umin.i64(i64 %i.jl, i64 %i.je) ; 13 uses
  %i.jm = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.jn = ptrtoaddr ptr %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jj ; 7 uses
  %.not29.i.i.i.i36 = icmp eq i64 %spec.select.i.i.i.i35, 0
  br i1 %.not29.i.i.i.i36, label %._crit_edge.i.i.i.i42, label %iter.check124

iter.check124:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i34
  %min.iters.check111 = icmp ult i64 %spec.select.i.i.i.i35, 4
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i37.preheader, label %vector.memcheck109

end_hunk_10
begin_hunk_11_@_ZN6spdlog7details24source_linenum_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  br i1 %cmp.n94, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block93
  %min.epilog.iters.check99 = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph100, !prof !76

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check98
  %vec.epilog.resume.val95 = phi i64 [ %n.vec87, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec101 = and i64 %spec.select.i.i.i.i, -4    ; 3 uses
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph100
  %index103 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph100 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.am, align 1
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.an, label %vec.epilog.middle.block106, label %vec.epilog.vector.body102, !llvm.loop !1044

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body102
  %cmp.n107 = icmp eq i64 %spec.select.i.i.i.i, %n.vec101
  br i1 %cmp.n107, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck81, %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block106
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check96 ], [ 0, %vector.memcheck81 ], [ %n.vec87, %vec.epilog.iter.check98 ], [ %n.vec101, %vec.epilog.middle.block106 ] ; 3 uses
  %xtraiter113 = and i64 %spec.select.i.i.i.i, 3  ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.023.i.i.i.i.prol
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter115.next = add i64 %prol.iter115, 1   ; 2 uses
  %prol.iter115.cmp.not = icmp eq i64 %prol.iter115.next, %xtraiter113
  br i1 %prol.iter115.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1045

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %i.as = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block106, %middle.block93
  %.pre32.i.i.i.i = load i64, ptr %i.n, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.au = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.x, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.av = add i64 %i.au, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.av, ptr %i.n, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.l
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.023.i.i.i.i
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1046

bb.f:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %5, align 8, !nonnull !70, !align !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i8, ptr %i.bo, align 4, !range !69, !noundef !70
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.g, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = add nsw i64 %i.bu, %i.f
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.bv, i64 0) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp ugt i64 %spec.store.select.i, %i.bx
  br i1 %i.by, label %bb.h, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(283) %i.bs, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.bw, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.h, %bb.g
  %i.cb = phi i64 [ %i.bx, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.cc = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.cb)
  store i64 %i.cc, ptr %i.bt, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.f, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.cd = or i32 %i.b, 1
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = zext nneg i32 %i.b to i64
  %i.ck = add i64 %i.ci, %i.cj
  %i.cl = lshr i64 %i.ck, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(14) %i.cm, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.cn = load i32, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.co = icmp slt i32 %i.cn, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.cn, i1 false) ; 3 uses
  %i.cp = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.cq, %.lr.ph.i.i.i.i.i ], [ 21, %bb.i ]
  %.01819.i.i.i.i.i = phi i32 [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.i ] ; 3 uses
  %i.cq = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %i.cr
  %i.ct = urem i32 %.01819.i.i.i.i.i, 100
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2
  store i16 %i.cx, ptr %i.cs, align 1
  %i.cy = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.cz = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.i ], [ %i.cy, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %bb.i ], [ %i.cq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.da = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.db = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 %i.dc
  %i.de = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2
  store i16 %i.dh, ptr %i.dd, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.di = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.dl, %bb.k ], [ %i.dc, %bb.j ]
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.co, label %bb.l, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.l:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -1 ; 2 uses
  store i8 45, ptr %i.do, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.l, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.do, %bb.l ], [ %i.dn, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.dp, align 8
  %i.dq = ptrtoint ptr %4 to i64
  %i.dr = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ds = add i64 %i.dq, 21                       ; 3 uses
  %i.dt = sub i64 %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dt
  %.not24.i.i = icmp eq i64 %i.ds, %i.dr
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.dv, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.dy = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.fd, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.fe, %._crit_edge.i.i ] ; 9 uses
  %i.dz = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ea = sub i64 %i.ds, %i.dz                    ; 2 uses
  %i.eb = add i64 %i.ea, %i.dy                    ; 2 uses
  %i.ec = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.dx, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.eb) #21, !inline_history !20
  %.pre30.i.i = load i64, ptr %i.dw, align 8
  %.pre31.i.i = load i64, ptr %i.dv, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ef = phi i64 [ %i.dy, %bb.m ], [ %.pre31.i.i, %bb.n ] ; 4 uses
  %i.eg = phi i64 [ %i.ec, %bb.m ], [ %.pre30.i.i, %bb.n ]
  %i.eh = sub i64 %i.eg, %i.ef
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.eh, i64 %i.ea) ; 13 uses
  %i.ei = load ptr, ptr %3, align 8               ; 2 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ef ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.el = add i64 %i.ef, %i.ej
  %i.em = sub i64 %i.dz, %i.el
  %diff.check = icmp ugt i64 %i.em, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <16 x i8>, ptr %i.eo, align 1
  %wide.load47 = load <16 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <16 x i8> %wide.load, ptr %i.eq, align 1
  store <16 x i8> %wide.load47, ptr %i.er, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !1047

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index49
  %wide.load50 = load <4 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 %index49
  store <4 x i8> %wide.load50, ptr %i.eu, align 1
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.ev = icmp eq i64 %index.next51, %n.vec48
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1048

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %spec.select.i.i, %n.vec48
  br i1 %cmp.n52, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ez, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.023.i.i.prol
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1049

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ez, %.lr.ph.i.i.prol ]
  %i.fa = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.dv, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.fc = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ef, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.fd = add i64 %i.fc, %spec.select.i.i         ; 2 uses
  store i64 %i.fd, ptr %i.dv, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.fe, %i.du
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.m, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.fu, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.023.i.i
  store i8 %i.fg, ptr %i.fh, align 1
  %i.fi = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fi
  store i8 %i.fk, ptr %i.fl, align 1
  %i.fm = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fm
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fq
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fu, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1050

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fw = load i64, ptr %i.fv, align 8            ; 4 uses
  %i.fx = icmp sgt i64 %i.fw, -1
  br i1 %i.fx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fw ; 2 uses
  %.not24.i.i.i.i10 = icmp samesign eq i64 %i.fw, 0
  br i1 %.not24.i.i.i.i10, label %_ZN6spdlog7details13scoped_padderD2Ev.exit26, label %.lr.ph27.i.i.i.i11

.lr.ph27.i.i.i.i11:                               ; preds = %bb.o
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %.pre.i.i.i.i12 = load i64, ptr %i.ge, align 8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i.i22, %.lr.ph27.i.i.i.i11
  %i.gh = phi i64 [ %.pre.i.i.i.i12, %.lr.ph27.i.i.i.i11 ], [ %i.hm, %._crit_edge.i.i.i.i22 ] ; 2 uses
  %.01925.i.i.i.i13 = phi ptr [ %i.fz, %.lr.ph27.i.i.i.i11 ], [ %i.hn, %._crit_edge.i.i.i.i22 ] ; 9 uses
  %i.gi = ptrtoint ptr %.01925.i.i.i.i13 to i64   ; 2 uses
  %i.gj = sub i64 %i.gd, %i.gi                    ; 2 uses
  %i.gk = add i64 %i.gj, %i.gh                    ; 2 uses
  %i.gl = load i64, ptr %i.gf, align 8            ; 2 uses
  %i.gm = icmp ugt i64 %i.gk, %i.gl
  br i1 %i.gm, label %bb.q, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14

bb.q:                                             ; preds = %bb.p
  %i.gn = load ptr, ptr %i.gg, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(283) %i.gb, i64 noundef %i.gk) #21, !inline_history !58
  %.pre30.i.i.i.i24 = load i64, ptr %i.gf, align 8
  %.pre31.i.i.i.i25 = load i64, ptr %i.ge, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14: ; preds = %bb.q, %bb.p
  %i.go = phi i64 [ %i.gh, %bb.p ], [ %.pre31.i.i.i.i25, %bb.q ] ; 4 uses
  %i.gp = phi i64 [ %i.gl, %bb.p ], [ %.pre30.i.i.i.i24, %bb.q ]
  %i.gq = sub i64 %i.gp, %i.go
  %spec.select.i.i.i.i15 = call i64 @llvm.umin.i64(i64 %i.gq, i64 %i.gj) ; 13 uses
  %i.gr = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.go ; 7 uses
  %.not29.i.i.i.i16 = icmp eq i64 %spec.select.i.i.i.i15, 0
  br i1 %.not29.i.i.i.i16, label %._crit_edge.i.i.i.i22, label %iter.check68

iter.check68:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14
  %min.iters.check55 = icmp ult i64 %spec.select.i.i.i.i15, 4
  br i1 %min.iters.check55, label %.lr.ph.i.i.i.i17.preheader, label %vector.memcheck53

end_hunk_11
begin_hunk_12_@_ZN6spdlog7details25source_funcname_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

._crit_edge.i.i.i.i22:                            ; preds = %._crit_edge.loopexit.i.i.i.i20, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14
  %i.gg = phi i64 [ %.pre32.i.i.i.i21, %._crit_edge.loopexit.i.i.i.i20 ], [ %i.fj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i14 ]
  %i.gh = add i64 %i.gg, %spec.select.i.i.i.i15   ; 2 uses
  store i64 %i.gh, ptr %i.ez, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i13, i64 %spec.select.i.i.i.i15 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.gi, %i.ex
  br i1 %.not.i.i.i.i23, label %_ZN6spdlog7details13scoped_padderD2Ev.exit26, label %bb.o, !llvm.loop !14

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i17
  %.023.i.i.i.i18 = phi i64 [ %i.gy, %.lr.ph.i.i.i.i17 ], [ %.023.i.i.i.i18.unr, %.lr.ph.i.i.i.i17.prol.loopexit ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i13, i64 %.023.i.i.i.i18
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.023.i.i.i.i18
  store i8 %i.gk, ptr %i.gl, align 1
  %i.gm = add nuw i64 %.023.i.i.i.i18, 1          ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i13, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gm
  store i8 %i.go, ptr %i.gp, align 1
  %i.gq = add nuw i64 %.023.i.i.i.i18, 2          ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i13, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gq
  store i8 %i.gs, ptr %i.gt, align 1
  %i.gu = add nuw i64 %.023.i.i.i.i18, 3          ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i13, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gu
  store i8 %i.gw, ptr %i.gx, align 1
  %i.gy = add nuw i64 %.023.i.i.i.i18, 4          ; 2 uses
  %exitcond.not.i.i.i.i19.3 = icmp eq i64 %i.gy, %spec.select.i.i.i.i15
  br i1 %exitcond.not.i.i.i.i19.3, label %._crit_edge.loopexit.i.i.i.i20, label %.lr.ph.i.i.i.i17, !llvm.loop !1066

bb.q:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.gz = load ptr, ptr %5, align 8, !nonnull !70, !align !79
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load i8, ptr %i.ha, align 4, !range !69, !noundef !70
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.r, label %_ZN6spdlog7details13scoped_padderD2Ev.exit26

bb.r:                                             ; preds = %bb.q
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = add nsw i64 %i.hg, %i.er
  %spec.store.select.i7 = call i64 @llvm.smax.i64(i64 %i.hh, i64 0) ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = icmp ugt i64 %spec.store.select.i7, %i.hj
  br i1 %i.hk, label %bb.s, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i8

bb.s:                                             ; preds = %bb.r
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(283) %i.he, i64 noundef %spec.store.select.i7) #21, !inline_history !59
  %.pre.i.i.i9 = load i64, ptr %i.hi, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i8

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i8: ; preds = %bb.s, %bb.r
  %i.hn = phi i64 [ %i.hj, %bb.r ], [ %.pre.i.i.i9, %bb.s ]
  %i.ho = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i7, i64 %i.hn)
  store i64 %i.ho, ptr %i.hf, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit26

_ZN6spdlog7details13scoped_padderD2Ev.exit26:     ; preds = %._crit_edge.i.i.i.i22, %bb.n, %bb.q, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZN6spdlog7details13scoped_padderD2Ev.exit26, %_ZN6spdlog7details13scoped_padderD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details12ch_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details12ch_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.a, align 8           ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8
  %i.l = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 %i.k, ptr %i.m, align 1
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0) ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  %i.d = or i64 %.sroa.speculated, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %.sroa.speculated, %i.k
  %.neg.i.i.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %.neg.i.i.i.i, %i.i
  %i.n = and i64 %i.m, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(14) %i.o, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.y = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add i32 %.0.lcssa.i.i.i.i, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %i.aj
  store i8 %i.ah, ptr %i.ak, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.ab, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = ptrtoint ptr %4 to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = add i64 %i.an, 21                       ; 3 uses
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %.not24.i.i = icmp eq i64 %i.ap, %i.ao
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.as, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.av = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ca, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.am, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 9 uses
  %i.aw = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ax = sub i64 %i.ap, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = load i64, ptr %i.at, align 8            ; 2 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ay) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.at, align 8
  %.pre31.i.i = load i64, ptr %i.as, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bc = phi i64 [ %i.av, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.bd = phi i64 [ %i.az, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.be = sub i64 %i.bd, %i.bc
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ax) ; 13 uses
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = add i64 %i.bc, %i.bg
  %i.bj = sub i64 %i.aw, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <16 x i8>, ptr %i.bl, align 1
  %wide.load28 = load <16 x i8>, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load, ptr %i.bn, align 1
  store <16 x i8> %wide.load28, ptr %i.bo, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1067

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index30
  store <4 x i8> %wide.load31, ptr %i.br, align 1
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next32, %n.vec29
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1068

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %spec.select.i.i, %n.vec29
  br i1 %cmp.n33, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1069

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.as, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bz = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.ca = add i64 %i.bz, %spec.select.i.i         ; 2 uses
  store i64 %i.ca, ptr %i.as, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.ar
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cn
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cr, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1070

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ct = load i64, ptr %i.cs, align 8            ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  br i1 %i.cu, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.ct, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.db, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.de = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ej, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cw, %.lr.ph27.i.i.i.i ], [ %i.ek, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.df = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.dg = sub i64 %i.da, %i.df                    ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dk = load ptr, ptr %i.dd, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(283) %i.cy, i64 noundef %i.dh) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.dc, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.db, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dl = phi i64 [ %i.de, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dm = phi i64 [ %i.di, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.dn = sub i64 %i.dm, %i.dl
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.dg) ; 13 uses
  %i.do = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i8, label %iter.check49

iter.check49:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check36, label %.lr.ph.i.i.i.i7.preheader, label %vector.memcheck34

end_hunk_12
begin_hunk_13_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  br label %vec.epilog.vector.body55

vec.epilog.vector.body55:                         ; preds = %vec.epilog.vector.body55, %vec.epilog.ph53
  %index56 = phi i64 [ %vec.epilog.resume.val48, %vec.epilog.ph53 ], [ %index.next58, %vec.epilog.vector.body55 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index56
  store <4 x i8> %wide.load57, ptr %i.ea, align 1
  %index.next58 = add nuw i64 %index56, 4         ; 2 uses
  %i.eb = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.eb, label %vec.epilog.middle.block59, label %vec.epilog.vector.body55, !llvm.loop !1072

vec.epilog.middle.block59:                        ; preds = %vec.epilog.vector.body55
  %cmp.n60 = icmp eq i64 %spec.select.i.i.i.i, %n.vec54
  br i1 %cmp.n60, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7.preheader

.lr.ph.i.i.i.i7.preheader:                        ; preds = %vector.memcheck34, %iter.check49, %vec.epilog.iter.check51, %vec.epilog.middle.block59
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check49 ], [ 0, %vector.memcheck34 ], [ %n.vec40, %vec.epilog.iter.check51 ], [ %n.vec54, %vec.epilog.middle.block59 ] ; 3 uses
  %xtraiter63 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol

.lr.ph.i.i.i.i7.prol:                             ; preds = %.lr.ph.i.i.i.i7.preheader, %.lr.ph.i.i.i.i7.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ef, %.lr.ph.i.i.i.i7.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ] ; 3 uses
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.lr.ph.i.i.i.i7.prol ], [ 0, %.lr.ph.i.i.i.i7.preheader ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.023.i.i.i.i.prol
  store i8 %i.ed, ptr %i.ee, align 1
  %i.ef = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol, !llvm.loop !1073

.lr.ph.i.i.i.i7.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i7.prol, %.lr.ph.i.i.i.i7.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ], [ %i.ef, %.lr.ph.i.i.i.i7.prol ]
  %i.eg = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7, %vec.epilog.middle.block59, %middle.block46
  %.pre32.i.i.i.i = load i64, ptr %i.db, align 8
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ei = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dl, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ej = add i64 %i.ei, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ej, ptr %i.db, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ek, %i.cz
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !14

.lr.ph.i.i.i.i7:                                  ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7
  %.023.i.i.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i.i7 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i7.prol.loopexit ] ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.023.i.i.i.i
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.eo
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.es
  store i8 %i.eu, ptr %i.ev, align 1
  %i.ew = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ew
  store i8 %i.ey, ptr %i.ez, align 1
  %i.fa = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fa, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7, !llvm.loop !1074

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.fb = load ptr, ptr %5, align 8, !nonnull !70, !align !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i8, ptr %i.fc, align 4, !range !69, !noundef !70
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = add nsw i64 %i.fi, %i.ct
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fj, i64 0) ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = icmp ugt i64 %spec.store.select.i, %i.fl
  br i1 %i.fm, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(283) %i.fg, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.fk, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.k, %bb.j
  %i.fp = phi i64 [ %i.fl, %bb.j ], [ %.pre.i.i.i, %bb.k ]
  %i.fq = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fp)
  store i64 %i.fq, ptr %i.fh, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i8, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not24.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.an, %.lr.ph27.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 9 uses
  %i.ax = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ay = sub i64 %i.aq, %i.ax                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.az) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.au, align 8
  %.pre31.i.i = load i64, ptr %i.at, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bd = phi i64 [ %i.aw, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.be = phi i64 [ %i.ba, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.bf = sub i64 %i.be, %i.bd
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.ay) ; 13 uses
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = add i64 %i.bd, %i.bh
  %i.bk = sub i64 %i.ax, %i.bj
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <16 x i8>, ptr %i.bm, align 1
  %wide.load27 = load <16 x i8>, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <16 x i8> %wide.load, ptr %i.bo, align 1
  store <16 x i8> %wide.load27, ptr %i.bp, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.bs, align 1
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1076

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %spec.select.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i.prol
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1077

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bx, %.lr.ph.i.i.prol ]
  %i.by = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.at, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ca = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bd, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cb = add i64 %i.ca, %spec.select.i.i         ; 2 uses
  store i64 %i.cb, ptr %i.at, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.as
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cs, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1078

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i64, ptr %i.ct, align 8            ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cu, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.df = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ek, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cx, %.lr.ph27.i.i.i.i ], [ %i.el, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.dg = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.dh = sub i64 %i.db, %i.dg                    ; 2 uses
  %i.di = add i64 %i.dh, %i.df                    ; 2 uses
  %i.dj = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dl = load ptr, ptr %i.de, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(283) %i.cz, i64 noundef %i.di) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.dd, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dm = phi i64 [ %i.df, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dn = phi i64 [ %i.dj, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.do = sub i64 %i.dn, %i.dm
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dh) ; 13 uses
  %i.dp = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i8, label %iter.check48

iter.check48:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check35 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check35, label %.lr.ph.i.i.i.i7.preheader, label %vector.memcheck33

end_hunk_13
begin_hunk_14_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  br label %vec.epilog.vector.body54

vec.epilog.vector.body54:                         ; preds = %vec.epilog.vector.body54, %vec.epilog.ph52
  %index55 = phi i64 [ %vec.epilog.resume.val47, %vec.epilog.ph52 ], [ %index.next57, %vec.epilog.vector.body54 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index55
  store <4 x i8> %wide.load56, ptr %i.eb, align 1
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.ec = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.ec, label %vec.epilog.middle.block58, label %vec.epilog.vector.body54, !llvm.loop !1080

vec.epilog.middle.block58:                        ; preds = %vec.epilog.vector.body54
  %cmp.n59 = icmp eq i64 %spec.select.i.i.i.i, %n.vec53
  br i1 %cmp.n59, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7.preheader

.lr.ph.i.i.i.i7.preheader:                        ; preds = %vector.memcheck33, %iter.check48, %vec.epilog.iter.check50, %vec.epilog.middle.block58
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check48 ], [ 0, %vector.memcheck33 ], [ %n.vec39, %vec.epilog.iter.check50 ], [ %n.vec53, %vec.epilog.middle.block58 ] ; 3 uses
  %xtraiter62 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol

.lr.ph.i.i.i.i7.prol:                             ; preds = %.lr.ph.i.i.i.i7.preheader, %.lr.ph.i.i.i.i7.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i.i7.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ] ; 3 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i7.prol ], [ 0, %.lr.ph.i.i.i.i7.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.023.i.i.i.i.prol
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol, !llvm.loop !1081

.lr.ph.i.i.i.i7.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i7.prol, %.lr.ph.i.i.i.i7.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ], [ %i.eg, %.lr.ph.i.i.i.i7.prol ]
  %i.eh = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7, %vec.epilog.middle.block58, %middle.block45
  %.pre32.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ej = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dm, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ek = add i64 %i.ej, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ek, ptr %i.dc, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, %i.da
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !14

.lr.ph.i.i.i.i7:                                  ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7
  %.023.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i7 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i7.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.023.i.i.i.i
  store i8 %i.en, ptr %i.eo, align 1
  %i.ep = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1
  %i.et = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1
  %i.fb = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fb, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7, !llvm.loop !1082

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.fc = load ptr, ptr %5, align 8, !nonnull !70, !align !79
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fe = load i8, ptr %i.fd, align 4, !range !69, !noundef !70
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = add nsw i64 %i.fj, %i.cu
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fk, i64 0) ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp ugt i64 %spec.store.select.i, %i.fm
  br i1 %i.fn, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(283) %i.fh, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.fl, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.k, %bb.j
  %i.fq = phi i64 [ %i.fm, %bb.j ], [ %.pre.i.i.i, %bb.k ]
  %i.fr = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fq)
  store i64 %i.fr, ptr %i.fi, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i8, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not24.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.an, %.lr.ph27.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 9 uses
  %i.ax = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ay = sub i64 %i.aq, %i.ax                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.az) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.au, align 8
  %.pre31.i.i = load i64, ptr %i.at, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bd = phi i64 [ %i.aw, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.be = phi i64 [ %i.ba, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.bf = sub i64 %i.be, %i.bd
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.ay) ; 13 uses
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = add i64 %i.bd, %i.bh
  %i.bk = sub i64 %i.ax, %i.bj
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <16 x i8>, ptr %i.bm, align 1
  %wide.load27 = load <16 x i8>, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <16 x i8> %wide.load, ptr %i.bo, align 1
  store <16 x i8> %wide.load27, ptr %i.bp, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1083

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.bs, align 1
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1084

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %spec.select.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i.prol
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1085

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bx, %.lr.ph.i.i.prol ]
  %i.by = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.at, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ca = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bd, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cb = add i64 %i.ca, %spec.select.i.i         ; 2 uses
  store i64 %i.cb, ptr %i.at, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.as
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cs, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1086

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i64, ptr %i.ct, align 8            ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cu, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.df = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ek, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cx, %.lr.ph27.i.i.i.i ], [ %i.el, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.dg = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.dh = sub i64 %i.db, %i.dg                    ; 2 uses
  %i.di = add i64 %i.dh, %i.df                    ; 2 uses
  %i.dj = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dl = load ptr, ptr %i.de, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(283) %i.cz, i64 noundef %i.di) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.dd, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dm = phi i64 [ %i.df, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dn = phi i64 [ %i.dj, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.do = sub i64 %i.dn, %i.dm
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dh) ; 13 uses
  %i.dp = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i8, label %iter.check48

iter.check48:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check35 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check35, label %.lr.ph.i.i.i.i7.preheader, label %vector.memcheck33

end_hunk_14
begin_hunk_15_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE:bb.a
  br label %vec.epilog.vector.body54

vec.epilog.vector.body54:                         ; preds = %vec.epilog.vector.body54, %vec.epilog.ph52
  %index55 = phi i64 [ %vec.epilog.resume.val47, %vec.epilog.ph52 ], [ %index.next57, %vec.epilog.vector.body54 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index55
  store <4 x i8> %wide.load56, ptr %i.eb, align 1
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.ec = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.ec, label %vec.epilog.middle.block58, label %vec.epilog.vector.body54, !llvm.loop !1088

vec.epilog.middle.block58:                        ; preds = %vec.epilog.vector.body54
  %cmp.n59 = icmp eq i64 %spec.select.i.i.i.i, %n.vec53
  br i1 %cmp.n59, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7.preheader

.lr.ph.i.i.i.i7.preheader:                        ; preds = %vector.memcheck33, %iter.check48, %vec.epilog.iter.check50, %vec.epilog.middle.block58
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check48 ], [ 0, %vector.memcheck33 ], [ %n.vec39, %vec.epilog.iter.check50 ], [ %n.vec53, %vec.epilog.middle.block58 ] ; 3 uses
  %xtraiter62 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol

.lr.ph.i.i.i.i7.prol:                             ; preds = %.lr.ph.i.i.i.i7.preheader, %.lr.ph.i.i.i.i7.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i.i7.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ] ; 3 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i7.prol ], [ 0, %.lr.ph.i.i.i.i7.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.023.i.i.i.i.prol
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i7.prol, !llvm.loop !1089

.lr.ph.i.i.i.i7.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i7.prol, %.lr.ph.i.i.i.i7.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i7.preheader ], [ %i.eg, %.lr.ph.i.i.i.i7.prol ]
  %i.eh = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7, %vec.epilog.middle.block58, %middle.block45
  %.pre32.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %._crit_edge.i.i.i.i8

._crit_edge.i.i.i.i8:                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ej = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dm, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ek = add i64 %i.ej, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ek, ptr %i.dc, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, %i.da
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !14

.lr.ph.i.i.i.i7:                                  ; preds = %.lr.ph.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i7
  %.023.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i7 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i7.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.023.i.i.i.i
  store i8 %i.en, ptr %i.eo, align 1
  %i.ep = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1
  %i.et = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1
  %i.fb = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fb, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i7, !llvm.loop !1090

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.fc = load ptr, ptr %5, align 8, !nonnull !70, !align !79
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fe = load i8, ptr %i.fd, align 4, !range !69, !noundef !70
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !70, !align !79 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = add nsw i64 %i.fj, %i.cu
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fk, i64 0) ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8            ; 2 uses
  %i.fn = icmp ugt i64 %spec.store.select.i, %i.fm
  br i1 %i.fn, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(283) %i.fh, i64 noundef %spec.store.select.i) #21, !inline_history !59
  %.pre.i.i.i = load i64, ptr %i.fl, align 8
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %bb.k, %bb.j
  %i.fq = phi i64 [ %i.fm, %bb.j ], [ %.pre.i.i.i, %bb.k ]
  %i.fr = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fq)
  store i64 %i.fr, ptr %i.fi, align 8
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i8, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.w = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.t, align 1
  %i.y = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.z = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  %i.aj = add i32 %.0.lcssa.i.i.i.i, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.ac, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %4 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = add i64 %i.ao, 21                       ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %.not24.i.i = icmp eq i64 %i.aq, %i.ap
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.at, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aw = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.an, %.lr.ph27.i.i ], [ %i.cc, %._crit_edge.i.i ] ; 9 uses
  %i.ax = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ay = sub i64 %i.aq, %i.ax                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.av, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.az) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.au, align 8
  %.pre31.i.i = load i64, ptr %i.at, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bd = phi i64 [ %i.aw, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.be = phi i64 [ %i.ba, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.bf = sub i64 %i.be, %i.bd
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.ay) ; 13 uses
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = add i64 %i.bd, %i.bh
  %i.bk = sub i64 %i.ax, %i.bj
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <16 x i8>, ptr %i.bm, align 1
  %wide.load27 = load <16 x i8>, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <16 x i8> %wide.load, ptr %i.bo, align 1
  store <16 x i8> %wide.load27, ptr %i.bp, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1091

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.bs, align 1
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1092

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %spec.select.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i.prol
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1093

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bx, %.lr.ph.i.i.prol ]
  %i.by = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.at, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ca = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bd, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cb = add i64 %i.ca, %spec.select.i.i         ; 2 uses
  store i64 %i.cb, ptr %i.at, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.as
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.023.i.i
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cs, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1094

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i64, ptr %i.ct, align 8            ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !70, !align !79 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cu, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.df = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ek, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cx, %.lr.ph27.i.i.i.i ], [ %i.el, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.dg = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.dh = sub i64 %i.db, %i.dg                    ; 2 uses
  %i.di = add i64 %i.dh, %i.df                    ; 2 uses
  %i.dj = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dl = load ptr, ptr %i.de, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(283) %i.cz, i64 noundef %i.di) #21, !inline_history !58
  %.pre30.i.i.i.i = load i64, ptr %i.dd, align 8
  %.pre31.i.i.i.i = load i64, ptr %i.dc, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.dm = phi i64 [ %i.df, %bb.g ], [ %.pre31.i.i.i.i, %bb.h ] ; 4 uses
  %i.dn = phi i64 [ %i.dj, %bb.g ], [ %.pre30.i.i.i.i, %bb.h ]
  %i.do = sub i64 %i.dn, %i.dm
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dh) ; 13 uses
  %i.dp = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i8, label %iter.check48

iter.check48:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check35 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check35, label %.lr.ph.i.i.i.i7.preheader, label %vector.memcheck33

end_hunk_15
begin_hunk_16_@_ZN6spdlog7details21short_level_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %i.l, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.t = phi i64 [ %i.p, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.u = sub i64 %i.t, %i.s
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.n) ; 13 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load9 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1
  store <16 x i8> %wide.load9, ptr %i.ae, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.ah, align 1
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1125

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
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1126

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1127

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.f, align 1
  %i.k = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.l = icmp ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  store i16 %i.s, ptr %i.p, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = add i32 %.0.lcssa.i.i.i.i, -1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.o, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %4 to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = add i64 %i.aa, 21                       ; 3 uses
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %.not24.i.i = icmp eq i64 %i.ac, %i.ab
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.af, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ai = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bn, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.z, %.lr.ph27.i.i ], [ %i.bo, %._crit_edge.i.i ] ; 9 uses
  %i.aj = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ak = sub i64 %i.ac, %i.aj                    ; 2 uses
  %i.al = add i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.al) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.ag, align 8
  %.pre31.i.i = load i64, ptr %i.af, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ap = phi i64 [ %i.ai, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.ar = sub i64 %i.aq, %i.ap
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ak) ; 13 uses
  %i.as = load ptr, ptr %3, align 8               ; 2 uses
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
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <16 x i8> %wide.load, ptr %i.ba, align 1
  store <16 x i8> %wide.load14, ptr %i.bb, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.be, align 1
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %.023.i.i.prol
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1130

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.prol ]
  %i.bk = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.af, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bm = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ap, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bn = add i64 %i.bm, %spec.select.i.i         ; 2 uses
  store i64 %i.bn, ptr %i.af, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.ae
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 %.023.i.i
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ce, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1131

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.g = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.al, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %i.h = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.j) #21, !inline_history !13
  %.pre30.i.i = load i64, ptr %i.e, align 8
  %.pre31.i.i = load i64, ptr %i.d, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.p = sub i64 %i.o, %i.n
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.i) ; 13 uses
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 7 uses
end_hunk_16
begin_hunk_17_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

vector.main.loop.iter.check212:                   ; preds = %vector.memcheck209
  %min.iters.check213 = icmp ult i64 %spec.select.i.i27, 32
  br i1 %min.iters.check213, label %vec.epilog.ph228, label %vector.ph214

vector.ph214:                                     ; preds = %vector.main.loop.iter.check212
  %i.cr = and i64 %spec.select.i.i27, 28
  %n.vec215 = and i64 %spec.select.i.i27, -32     ; 4 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body216 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index217 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load218 = load <16 x i8>, ptr %i.cs, align 1
  %wide.load219 = load <16 x i8>, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %index217 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <16 x i8> %wide.load218, ptr %i.cu, align 1
  store <16 x i8> %wide.load219, ptr %i.cv, align 1
  %index.next220 = add nuw i64 %index217, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.cw, label %middle.block221, label %vector.body216, !llvm.loop !1156

middle.block221:                                  ; preds = %vector.body216
  %cmp.n222 = icmp eq i64 %spec.select.i.i27, %n.vec215
  br i1 %cmp.n222, label %._crit_edge.loopexit.i.i32, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block221
  %min.epilog.iters.check227 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph228, !prof !76

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check212, %vec.epilog.iter.check226
  %vec.epilog.resume.val223 = phi i64 [ %n.vec215, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check212 ]
  %n.vec229 = and i64 %spec.select.i.i27, -4      ; 3 uses
  br label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %vec.epilog.vector.body230, %vec.epilog.ph228
  %index231 = phi i64 [ %vec.epilog.resume.val223, %vec.epilog.ph228 ], [ %index.next233, %vec.epilog.vector.body230 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index231
  %wide.load232 = load <4 x i8>, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %index231
  store <4 x i8> %wide.load232, ptr %i.cy, align 1
  %index.next233 = add nuw i64 %index231, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.cz, label %vec.epilog.middle.block234, label %vec.epilog.vector.body230, !llvm.loop !1157

vec.epilog.middle.block234:                       ; preds = %vec.epilog.vector.body230
  %cmp.n235 = icmp eq i64 %spec.select.i.i27, %n.vec229
  br i1 %cmp.n235, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck209, %iter.check224, %vec.epilog.iter.check226, %vec.epilog.middle.block234
  %.023.i.i30.ph = phi i64 [ 0, %iter.check224 ], [ 0, %vector.memcheck209 ], [ %n.vec215, %vec.epilog.iter.check226 ], [ %n.vec229, %vec.epilog.middle.block234 ] ; 3 uses
  %xtraiter299 = and i64 %spec.select.i.i27, 3    ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %.023.i.i30.prol = phi i64 [ %i.dd, %.lr.ph.i.i29.prol ], [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30.prol
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 %.023.i.i30.prol
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = add nuw i64 %.023.i.i30.prol, 1         ; 2 uses
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !1158

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.023.i.i30.unr = phi i64 [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ], [ %i.dd, %.lr.ph.i.i29.prol ]
  %i.de = sub i64 %.023.i.i30.ph, %spec.select.i.i27
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29

._crit_edge.loopexit.i.i32:                       ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %vec.epilog.middle.block234, %middle.block221
  %.pre32.i.i33 = load i64, ptr %i.bj, align 8
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %._crit_edge.loopexit.i.i32, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26
  %i.dg = phi i64 [ %.pre32.i.i33, %._crit_edge.loopexit.i.i32 ], [ %i.cj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26 ]
  %i.dh = add i64 %i.dg, %spec.select.i.i27       ; 3 uses
  store i64 %i.dh, ptr %i.bj, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %spec.select.i.i27 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.di, %i.bz
  br i1 %.not.i.i35, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38, label %bb.e, !llvm.loop !14

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.023.i.i30 = phi i64 [ %i.dy, %.lr.ph.i.i29 ], [ %.023.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 %.023.i.i30
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = add nuw i64 %.023.i.i30, 1              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = add nuw i64 %.023.i.i30, 2              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1
  %i.du = add nuw i64 %.023.i.i30, 3              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = add nuw i64 %.023.i.i30, 4              ; 2 uses
  %exitcond.not.i.i31.3 = icmp eq i64 %i.dy, %spec.select.i.i27
  br i1 %exitcond.not.i.i31.3, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29, !llvm.loop !1159

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38: ; preds = %._crit_edge.i.i34, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.dz = phi i64 [ %.pre146, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.dh, %._crit_edge.i.i34 ] ; 2 uses
  %i.ea = add i64 %i.dz, 1                        ; 3 uses
  %i.eb = load i64, ptr %i.bl, align 8
  %i.ec = icmp ugt i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ea) #21, !inline_history !18
  %.pre.i40 = load i64, ptr %i.bj, align 8        ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38, %bb.g
  %.pre-phi.i39 = phi i64 [ %i.ea, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38 ], [ %.pre2.i41, %bb.g ]
  %i.ef = phi i64 [ %i.dz, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit38 ], [ %.pre.i40, %bb.g ]
  %i.eg = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i39, ptr %i.bj, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 32, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ej = load i32, ptr %i.ei, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ek = icmp slt i32 %i.ej, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 false) ; 3 uses
  %i.el = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.el, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ]
  %.01819.i.i.i.i.i = phi i32 [ %i.eu, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ] ; 3 uses
  %i.em = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 %i.en
  %i.ep = urem i32 %.01819.i.i.i.i.i, 100
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  store i16 %i.et, ptr %i.eo, align 1
  %i.eu = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.ev = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.eu, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.em, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ew = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.ew, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ex = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 %i.ey
  %i.fa = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2
  store i16 %i.fd, ptr %i.ez, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fe = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.ff = or disjoint i8 %i.fe, 48
  %i.fg = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 %i.fh
  store i8 %i.ff, ptr %i.fi, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.fh, %bb.i ], [ %i.ey, %bb.h ]
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.ek, label %bb.j, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.j:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -1 ; 2 uses
  store i8 45, ptr %i.fk, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.j, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.fk, %bb.j ], [ %i.fj, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %.0.i.i.i, ptr %i.fl, align 8
  %i.fm = ptrtoint ptr %11 to i64
  %i.fn = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fo = add i64 %i.fm, 21                       ; 3 uses
  %i.fp = sub i64 %i.fo, %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fp
  %.not24.i.i43 = icmp eq i64 %i.fo, %i.fn
  %.pre147 = load i64, ptr %i.bj, align 8         ; 2 uses
  br i1 %.not24.i.i43, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i44

.lr.ph27.i.i44:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i55, %.lr.ph27.i.i44
  %i.fs = phi i64 [ %.pre147, %.lr.ph27.i.i44 ], [ %i.gx, %._crit_edge.i.i55 ] ; 2 uses
  %.01925.i.i46 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i44 ], [ %i.gy, %._crit_edge.i.i55 ] ; 9 uses
  %i.ft = ptrtoint ptr %.01925.i.i46 to i64       ; 2 uses
  %i.fu = sub i64 %i.fo, %i.ft                    ; 2 uses
  %i.fv = add i64 %i.fu, %i.fs                    ; 2 uses
  %i.fw = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

bb.l:                                             ; preds = %bb.k
  %i.fy = load ptr, ptr %i.fr, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.fv) #21, !inline_history !20
  %.pre30.i.i57 = load i64, ptr %i.bl, align 8
  %.pre31.i.i58 = load i64, ptr %i.bj, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47: ; preds = %bb.l, %bb.k
  %i.fz = phi i64 [ %i.fs, %bb.k ], [ %.pre31.i.i58, %bb.l ] ; 4 uses
  %i.ga = phi i64 [ %i.fw, %bb.k ], [ %.pre30.i.i57, %bb.l ]
  %i.gb = sub i64 %i.ga, %i.fz
  %spec.select.i.i48 = call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.fu) ; 13 uses
  %i.gc = load ptr, ptr %3, align 8               ; 2 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fz ; 7 uses
  %.not29.i.i49 = icmp eq i64 %spec.select.i.i48, 0
  br i1 %.not29.i.i49, label %._crit_edge.i.i55, label %iter.check252

iter.check252:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %min.iters.check239.a = icmp ult i64 %spec.select.i.i48, 4
  br i1 %min.iters.check239.a, label %.lr.ph.i.i50.preheader, label %vector.memcheck237

vector.memcheck237:                               ; preds = %iter.check252
  %i.gf = add i64 %i.fz, %i.gd
  %i.gg = sub i64 %i.ft, %i.gf
  %diff.check238 = icmp ugt i64 %i.gg, -32
  br i1 %diff.check238, label %.lr.ph.i.i50.preheader, label %vector.main.loop.iter.check240

vector.main.loop.iter.check240:                   ; preds = %vector.memcheck237
  %min.iters.check241 = icmp ult i64 %spec.select.i.i48, 32
  br i1 %min.iters.check241, label %vec.epilog.ph256, label %vector.ph242

vector.ph242:                                     ; preds = %vector.main.loop.iter.check240
  %i.gh = and i64 %spec.select.i.i48, 28
  %n.vec243 = and i64 %spec.select.i.i48, -32     ; 4 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next248, %vector.body244 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index245 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load246 = load <16 x i8>, ptr %i.gi, align 1
  %wide.load247 = load <16 x i8>, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 %index245 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <16 x i8> %wide.load246, ptr %i.gk, align 1
  store <16 x i8> %wide.load247, ptr %i.gl, align 1
  %index.next248 = add nuw i64 %index245, 32      ; 2 uses
  %i.gm = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.gm, label %middle.block249, label %vector.body244, !llvm.loop !1160

middle.block249:                                  ; preds = %vector.body244
  %cmp.n250 = icmp eq i64 %spec.select.i.i48, %n.vec243
  br i1 %cmp.n250, label %._crit_edge.loopexit.i.i53, label %vec.epilog.iter.check254

vec.epilog.iter.check254:                         ; preds = %middle.block249
  %min.epilog.iters.check255 = icmp eq i64 %i.gh, 0
  br i1 %min.epilog.iters.check255, label %.lr.ph.i.i50.preheader, label %vec.epilog.ph256, !prof !76

vec.epilog.ph256:                                 ; preds = %vector.main.loop.iter.check240, %vec.epilog.iter.check254
  %vec.epilog.resume.val251 = phi i64 [ %n.vec243, %vec.epilog.iter.check254 ], [ 0, %vector.main.loop.iter.check240 ]
  %n.vec257 = and i64 %spec.select.i.i48, -4      ; 3 uses
  br label %vec.epilog.vector.body258

vec.epilog.vector.body258:                        ; preds = %vec.epilog.vector.body258, %vec.epilog.ph256
  %index259 = phi i64 [ %vec.epilog.resume.val251, %vec.epilog.ph256 ], [ %index.next261, %vec.epilog.vector.body258 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index259
  %wide.load260 = load <4 x i8>, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 %index259
  store <4 x i8> %wide.load260, ptr %i.go, align 1
  %index.next261 = add nuw i64 %index259, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next261, %n.vec257
  br i1 %i.gp, label %vec.epilog.middle.block262, label %vec.epilog.vector.body258, !llvm.loop !1161

vec.epilog.middle.block262:                       ; preds = %vec.epilog.vector.body258
  %cmp.n263 = icmp eq i64 %spec.select.i.i48, %n.vec257
  br i1 %cmp.n263, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50.preheader

.lr.ph.i.i50.preheader:                           ; preds = %vector.memcheck237, %iter.check252, %vec.epilog.iter.check254, %vec.epilog.middle.block262
  %.023.i.i51.ph = phi i64 [ 0, %iter.check252 ], [ 0, %vector.memcheck237 ], [ %n.vec243, %vec.epilog.iter.check254 ], [ %n.vec257, %vec.epilog.middle.block262 ] ; 3 uses
  %xtraiter302 = and i64 %spec.select.i.i48, 3    ; 2 uses
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol

.lr.ph.i.i50.prol:                                ; preds = %.lr.ph.i.i50.preheader, %.lr.ph.i.i50.prol
  %.023.i.i51.prol = phi i64 [ %i.gt, %.lr.ph.i.i50.prol ], [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.i50.prol ], [ 0, %.lr.ph.i.i50.preheader ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51.prol
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.023.i.i51.prol
  store i8 %i.gr, ptr %i.gs, align 1
  %i.gt = add nuw i64 %.023.i.i51.prol, 1         ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol, !llvm.loop !1162

.lr.ph.i.i50.prol.loopexit:                       ; preds = %.lr.ph.i.i50.prol, %.lr.ph.i.i50.preheader
  %.023.i.i51.unr = phi i64 [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ], [ %i.gt, %.lr.ph.i.i50.prol ]
  %i.gu = sub i64 %.023.i.i51.ph, %spec.select.i.i48
  %i.gv = icmp ugt i64 %i.gu, -4
  br i1 %i.gv, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50

._crit_edge.loopexit.i.i53:                       ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50, %vec.epilog.middle.block262, %middle.block249
  %.pre32.i.i54 = load i64, ptr %i.bj, align 8
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %._crit_edge.loopexit.i.i53, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %i.gw = phi i64 [ %.pre32.i.i54, %._crit_edge.loopexit.i.i53 ], [ %i.fz, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47 ]
  %i.gx = add i64 %i.gw, %spec.select.i.i48       ; 3 uses
  store i64 %i.gx, ptr %i.bj, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %spec.select.i.i48 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gy, %i.fq
  br i1 %.not.i.i56, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.k, !llvm.loop !14

.lr.ph.i.i50:                                     ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50
  %.023.i.i51 = phi i64 [ %i.ho, %.lr.ph.i.i50 ], [ %.023.i.i51.unr, %.lr.ph.i.i50.prol.loopexit ] ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.023.i.i51
  store i8 %i.ha, ptr %i.hb, align 1
  %i.hc = add nuw i64 %.023.i.i51, 1              ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.hc
  store i8 %i.he, ptr %i.hf, align 1
  %i.hg = add nuw i64 %.023.i.i51, 2              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.hg
  store i8 %i.hi, ptr %i.hj, align 1
  %i.hk = add nuw i64 %.023.i.i51, 3              ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.hk
  store i8 %i.hm, ptr %i.hn, align 1
  %i.ho = add nuw i64 %.023.i.i51, 4              ; 2 uses
  %exitcond.not.i.i52.3 = icmp eq i64 %i.ho, %spec.select.i.i48
  br i1 %exitcond.not.i.i52.3, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50, !llvm.loop !1163

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i55, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.hp = phi i64 [ %.pre147, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.gx, %._crit_edge.i.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.hq = add i64 %i.hp, 1                        ; 3 uses
  %i.hr = load i64, ptr %i.bl, align 8
  %i.hs = icmp ugt i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

bb.m:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hq) #21, !inline_history !18
  %.pre.i60 = load i64, ptr %i.bj, align 8        ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, %bb.m
  %.pre-phi.i59 = phi i64 [ %i.hq, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre2.i61, %bb.m ]
  %i.hv = phi i64 [ %i.hp, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit ], [ %.pre.i60, %bb.m ]
  %i.hw = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i59, ptr %i.bj, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hv
  store i8 32, ptr %i.hx, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hz = load i32, ptr %i.hy, align 8            ; 3 uses
  %or.cond.i = icmp ult i32 %i.hz, 100
  br i1 %or.cond.i, label %bb.n, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i

bb.n:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62
  %.lhs.trunc.i = trunc nuw nsw i32 %i.hz to i8   ; 2 uses
  %i.ia = udiv i8 %.lhs.trunc.i, 10
  %i.ib = urem i8 %.lhs.trunc.i, 10
  %i.ic = or disjoint i8 %i.ia, 48
  %i.id = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.ie = add i64 %i.id, 1                        ; 3 uses
  %i.if = load i64, ptr %i.bl, align 8
  %i.ig = icmp ugt i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ie) #21, !inline_history !21
  %.pre.i.i63 = load i64, ptr %i.bj, align 8      ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i63, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i = phi i64 [ %i.ie, %bb.n ], [ %.pre2.i.i, %bb.o ]
  %i.ij = phi i64 [ %i.id, %bb.n ], [ %.pre.i.i63, %bb.o ]
  %i.ik = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.bj, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  store i8 %i.ic, ptr %i.il, align 1
  %i.im = or disjoint i8 %i.ib, 48
  %i.in = load i64, ptr %i.bj, align 8            ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.kj, align 8
  %.sroa.2.0..sroa_idx.i15.i.i71 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i15.i.i71, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr null, ptr %i.kk, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i75, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i69
  %i.kl = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.km = add i64 %i.kl, 1                        ; 3 uses
  %i.kn = load i64, ptr %i.bl, align 8
  %i.ko = icmp ugt i64 %i.km, %i.kn
  br i1 %i.ko, label %bb.u, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85

bb.u:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.km) #21, !inline_history !18
  %.pre.i83 = load i64, ptr %i.bj, align 8        ; 2 uses
  %.pre2.i84 = add i64 %.pre.i83, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81, %bb.u
  %.pre-phi.i82 = phi i64 [ %i.km, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81 ], [ %.pre2.i84, %bb.u ]
  %i.kr = phi i64 [ %i.kl, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit81 ], [ %.pre.i83, %bb.u ]
  %i.ks = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i82, ptr %i.bj, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kr
  store i8 58, ptr %i.kt, align 1
  %i.ku = load i32, ptr %2, align 8               ; 3 uses
  %or.cond.i86 = icmp ult i32 %i.ku, 100
  br i1 %or.cond.i86, label %bb.v, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85
  %.lhs.trunc.i90 = trunc nuw nsw i32 %i.ku to i8 ; 2 uses
  %i.kv = udiv i8 %.lhs.trunc.i90, 10
  %i.kw = urem i8 %.lhs.trunc.i90, 10
  %i.kx = or disjoint i8 %i.kv, 48
  %i.ky = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.kz = add i64 %i.ky, 1                        ; 3 uses
  %i.la = load i64, ptr %i.bl, align 8
  %i.lb = icmp ugt i64 %i.kz, %i.la
  br i1 %i.lb, label %bb.w, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91

bb.w:                                             ; preds = %bb.v
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.kz) #21, !inline_history !21
  %.pre.i.i97 = load i64, ptr %i.bj, align 8      ; 2 uses
  %.pre2.i.i98 = add i64 %.pre.i.i97, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91: ; preds = %bb.w, %bb.v
  %.pre-phi.i.i92 = phi i64 [ %i.kz, %bb.v ], [ %.pre2.i.i98, %bb.w ]
  %i.le = phi i64 [ %i.ky, %bb.v ], [ %.pre.i.i97, %bb.w ]
  %i.lf = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i92, ptr %i.bj, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.le
  store i8 %i.kx, ptr %i.lg, align 1
  %i.lh = or disjoint i8 %i.kw, 48
  %i.li = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.lj = add i64 %i.li, 1                        ; 3 uses
  %i.lk = load i64, ptr %i.bl, align 8
  %i.ll = icmp ugt i64 %i.lj, %i.lk
  br i1 %i.ll, label %bb.x, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93

bb.x:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.lj) #21, !inline_history !21
  %.pre.i5.i95 = load i64, ptr %i.bj, align 8     ; 2 uses
  %.pre2.i6.i96 = add i64 %.pre.i5.i95, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93: ; preds = %bb.x, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91
  %.pre-phi.i4.i94 = phi i64 [ %i.lj, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91 ], [ %.pre2.i6.i96, %bb.x ]
  %i.lo = phi i64 [ %i.li, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i91 ], [ %.pre.i5.i95, %bb.x ]
  %i.lp = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i94, ptr %i.bj, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lo
  store i8 %i.lh, ptr %i.lq, align 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 %i.ku, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.85, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i14.i.i88 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i14.i.i88, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.lr, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1, ptr %i.lt, align 8
  %.sroa.2.0..sroa_idx.i15.i.i89 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i15.i.i89, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.lu, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i93, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i87
  %i.lv = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.lw = add i64 %i.lv, 1                        ; 3 uses
  %i.lx = load i64, ptr %i.bl, align 8
  %i.ly = icmp ugt i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.y, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103

bb.y:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.lw) #21, !inline_history !18
  %.pre.i101 = load i64, ptr %i.bj, align 8       ; 2 uses
  %.pre2.i102 = add i64 %.pre.i101, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99, %bb.y
  %.pre-phi.i100 = phi i64 [ %i.lw, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99 ], [ %.pre2.i102, %bb.y ]
  %i.mb = phi i64 [ %i.lv, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit99 ], [ %.pre.i101, %bb.y ]
  %i.mc = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i100, ptr %i.bj, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mb
  store i8 32, ptr %i.md, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mf = load i32, ptr %i.me, align 4            ; 2 uses
  %i.mg = add nsw i32 %i.mf, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.mh = icmp slt i32 %i.mf, -1900
  %spec.select.i.i.i104 = call i32 @llvm.abs.i32(i32 %i.mg, i1 true) ; 3 uses
  %i.mi = icmp samesign ugt i32 %spec.select.i.i.i104, 99
  br i1 %i.mi, label %.lr.ph.i.i.i.i.i128, label %._crit_edge.i.i.i.i.i105

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103, %.lr.ph.i.i.i.i.i128
  %.020.i.i.i.i.i129 = phi i32 [ %i.mj, %.lr.ph.i.i.i.i.i128 ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ]
  %.01819.i.i.i.i.i130 = phi i32 [ %i.mr, %.lr.ph.i.i.i.i.i128 ], [ %spec.select.i.i.i104, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ] ; 3 uses
  %i.mj = add i32 %.020.i.i.i.i.i129, -2          ; 3 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 %i.mk
  %i.mm = urem i32 %.01819.i.i.i.i.i130, 100
  %i.mn = shl nuw nsw i32 %i.mm, 1
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.ml, align 1
  %i.mr = udiv i32 %.01819.i.i.i.i.i130, 100      ; 2 uses
  %i.ms = icmp samesign ugt i32 %.01819.i.i.i.i.i130, 9999
  br i1 %i.ms, label %.lr.ph.i.i.i.i.i128, label %._crit_edge.i.i.i.i.i105, !llvm.loop !19

._crit_edge.i.i.i.i.i105:                         ; preds = %.lr.ph.i.i.i.i.i128, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103
  %.018.lcssa.i.i.i.i.i106 = phi i32 [ %spec.select.i.i.i104, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ], [ %i.mr, %.lr.ph.i.i.i.i.i128 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i107 = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit103 ], [ %i.mj, %.lr.ph.i.i.i.i.i128 ] ; 2 uses
  %i.mt = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i106, 9
  br i1 %i.mt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i105
  %i.mu = add i32 %.0.lcssa.i.i.i.i.i107, -2
  %i.mv = zext i32 %i.mu to i64                   ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 %i.mv
  %i.mx = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i106, 1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2
  store i16 %i.na, ptr %i.mw, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i105
  %i.nb = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i106 to i8
  %i.nc = or disjoint i8 %i.nb, 48
  %i.nd = add i32 %.0.lcssa.i.i.i.i.i107, -1
  %i.ne = zext i32 %i.nd to i64                   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %4, i64 %i.ne
  store i8 %i.nc, ptr %i.nf, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108: ; preds = %bb.aa, %bb.z
  %.pre-phi.i.i.i.i.i109 = phi i64 [ %i.ne, %bb.aa ], [ %i.mv, %bb.z ]
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i109 ; 2 uses
  br i1 %i.mh, label %bb.ab, label %_ZN3fmt3v1110format_intC2Ei.exit.i110

bb.ab:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -1 ; 2 uses
  store i8 45, ptr %i.nh, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i110

_ZN3fmt3v1110format_intC2Ei.exit.i110:            ; preds = %bb.ab, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108
  %.0.i.i.i111 = phi ptr [ %i.nh, %bb.ab ], [ %i.ng, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i108 ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i111, ptr %i.ni, align 8
  %i.nj = ptrtoint ptr %4 to i64
  %i.nk = ptrtoint ptr %.0.i.i.i111 to i64        ; 2 uses
  %i.nl = add i64 %i.nj, 21                       ; 3 uses
  %i.nm = sub i64 %i.nl, %i.nk
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i.i.i111, i64 %i.nm
  %.not24.i.i112 = icmp eq i64 %i.nl, %i.nk
  br i1 %.not24.i.i112, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131, label %.lr.ph27.i.i113

.lr.ph27.i.i113:                                  ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i110
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i114 = load i64, ptr %i.bj, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i124, %.lr.ph27.i.i113
  %i.np = phi i64 [ %.pre.i.i114, %.lr.ph27.i.i113 ], [ %i.ou, %._crit_edge.i.i124 ] ; 2 uses
  %.01925.i.i115 = phi ptr [ %.0.i.i.i111, %.lr.ph27.i.i113 ], [ %i.ov, %._crit_edge.i.i124 ] ; 9 uses
  %i.nq = ptrtoint ptr %.01925.i.i115 to i64      ; 2 uses
  %i.nr = sub i64 %i.nl, %i.nq                    ; 2 uses
  %i.ns = add i64 %i.nr, %i.np                    ; 2 uses
  %i.nt = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.nu = icmp ugt i64 %i.ns, %i.nt
  br i1 %i.nu, label %bb.ad, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116

bb.ad:                                            ; preds = %bb.ac
  %i.nv = load ptr, ptr %i.no, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ns) #21, !inline_history !20
  %.pre30.i.i126 = load i64, ptr %i.bl, align 8
  %.pre31.i.i127 = load i64, ptr %i.bj, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116: ; preds = %bb.ad, %bb.ac
  %i.nw = phi i64 [ %i.np, %bb.ac ], [ %.pre31.i.i127, %bb.ad ] ; 4 uses
  %i.nx = phi i64 [ %i.nt, %bb.ac ], [ %.pre30.i.i126, %bb.ad ]
  %i.ny = sub i64 %i.nx, %i.nw
  %spec.select.i.i117 = call i64 @llvm.umin.i64(i64 %i.ny, i64 %i.nr) ; 13 uses
  %i.nz = load ptr, ptr %3, align 8               ; 2 uses
  %i.oa = ptrtoaddr ptr %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nw ; 7 uses
  %.not29.i.i118 = icmp eq i64 %spec.select.i.i117, 0
  br i1 %.not29.i.i118, label %._crit_edge.i.i124, label %iter.check280

iter.check280:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116
  %min.iters.check267.a = icmp ult i64 %spec.select.i.i117, 4
  br i1 %min.iters.check267.a, label %.lr.ph.i.i119.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %iter.check280
  %i.oc = add i64 %i.nw, %i.oa
  %i.od = sub i64 %i.nq, %i.oc
  %diff.check266 = icmp ugt i64 %i.od, -32
  br i1 %diff.check266, label %.lr.ph.i.i119.preheader, label %vector.main.loop.iter.check268

vector.main.loop.iter.check268:                   ; preds = %vector.memcheck265
  %min.iters.check269 = icmp ult i64 %spec.select.i.i117, 32
  br i1 %min.iters.check269, label %vec.epilog.ph284, label %vector.ph270

vector.ph270:                                     ; preds = %vector.main.loop.iter.check268
  %i.oe = and i64 %spec.select.i.i117, 28
  %n.vec271 = and i64 %spec.select.i.i117, -32    ; 4 uses
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next276, %vector.body272 ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %index273 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %wide.load274 = load <16 x i8>, ptr %i.of, align 1
  %wide.load275 = load <16 x i8>, ptr %i.og, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index273 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <16 x i8> %wide.load274, ptr %i.oh, align 1
  store <16 x i8> %wide.load275, ptr %i.oi, align 1
  %index.next276 = add nuw i64 %index273, 32      ; 2 uses
  %i.oj = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.oj, label %middle.block277, label %vector.body272, !llvm.loop !1164

middle.block277:                                  ; preds = %vector.body272
  %cmp.n278 = icmp eq i64 %spec.select.i.i117, %n.vec271
  br i1 %cmp.n278, label %._crit_edge.loopexit.i.i122, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block277
  %min.epilog.iters.check283 = icmp eq i64 %i.oe, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph.i.i119.preheader, label %vec.epilog.ph284, !prof !76

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check268, %vec.epilog.iter.check282
  %vec.epilog.resume.val279 = phi i64 [ %n.vec271, %vec.epilog.iter.check282 ], [ 0, %vector.main.loop.iter.check268 ]
  %n.vec285 = and i64 %spec.select.i.i117, -4     ; 3 uses
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph284
  %index287 = phi i64 [ %vec.epilog.resume.val279, %vec.epilog.ph284 ], [ %index.next289, %vec.epilog.vector.body286 ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %index287
  %wide.load288 = load <4 x i8>, ptr %i.ok, align 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index287
  store <4 x i8> %wide.load288, ptr %i.ol, align 1
  %index.next289 = add nuw i64 %index287, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next289, %n.vec285
  br i1 %i.om, label %vec.epilog.middle.block290, label %vec.epilog.vector.body286, !llvm.loop !1165

vec.epilog.middle.block290:                       ; preds = %vec.epilog.vector.body286
  %cmp.n291 = icmp eq i64 %spec.select.i.i117, %n.vec285
  br i1 %cmp.n291, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %vector.memcheck265, %iter.check280, %vec.epilog.iter.check282, %vec.epilog.middle.block290
  %.023.i.i120.ph = phi i64 [ 0, %iter.check280 ], [ 0, %vector.memcheck265 ], [ %n.vec271, %vec.epilog.iter.check282 ], [ %n.vec285, %vec.epilog.middle.block290 ] ; 3 uses
  %xtraiter305 = and i64 %spec.select.i.i117, 3   ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.i.i119.prol.loopexit, label %.lr.ph.i.i119.prol

.lr.ph.i.i119.prol:                               ; preds = %.lr.ph.i.i119.preheader, %.lr.ph.i.i119.prol
  %.023.i.i120.prol = phi i64 [ %i.oq, %.lr.ph.i.i119.prol ], [ %.023.i.i120.ph, %.lr.ph.i.i119.preheader ] ; 3 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %.lr.ph.i.i119.prol ], [ 0, %.lr.ph.i.i119.preheader ]
  %i.on = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %.023.i.i120.prol
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.023.i.i120.prol
  store i8 %i.oo, ptr %i.op, align 1
  %i.oq = add nuw i64 %.023.i.i120.prol, 1        ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.i.i119.prol.loopexit, label %.lr.ph.i.i119.prol, !llvm.loop !1166

.lr.ph.i.i119.prol.loopexit:                      ; preds = %.lr.ph.i.i119.prol, %.lr.ph.i.i119.preheader
  %.023.i.i120.unr = phi i64 [ %.023.i.i120.ph, %.lr.ph.i.i119.preheader ], [ %i.oq, %.lr.ph.i.i119.prol ]
  %i.or = sub i64 %.023.i.i120.ph, %spec.select.i.i117
  %i.os = icmp ugt i64 %i.or, -4
  br i1 %i.os, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119

._crit_edge.loopexit.i.i122:                      ; preds = %.lr.ph.i.i119.prol.loopexit, %.lr.ph.i.i119, %vec.epilog.middle.block290, %middle.block277
  %.pre32.i.i123 = load i64, ptr %i.bj, align 8
  br label %._crit_edge.i.i124

._crit_edge.i.i124:                               ; preds = %._crit_edge.loopexit.i.i122, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116
  %i.ot = phi i64 [ %.pre32.i.i123, %._crit_edge.loopexit.i.i122 ], [ %i.nw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i116 ]
  %i.ou = add i64 %i.ot, %spec.select.i.i117      ; 2 uses
  store i64 %i.ou, ptr %i.bj, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %spec.select.i.i117 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ov, %i.nn
  br i1 %.not.i.i125, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131, label %bb.ac, !llvm.loop !14

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119.prol.loopexit, %.lr.ph.i.i119
  %.023.i.i120 = phi i64 [ %i.pl, %.lr.ph.i.i119 ], [ %.023.i.i120.unr, %.lr.ph.i.i119.prol.loopexit ] ; 6 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %.023.i.i120
  %i.ox = load i8, ptr %i.ow, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.023.i.i120
  store i8 %i.ox, ptr %i.oy, align 1
  %i.oz = add nuw i64 %.023.i.i120, 1             ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oz
  store i8 %i.pb, ptr %i.pc, align 1
  %i.pd = add nuw i64 %.023.i.i120, 2             ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.pd
  store i8 %i.pf, ptr %i.pg, align 1
  %i.ph = add nuw i64 %.023.i.i120, 3             ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.01925.i.i115, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ph
  store i8 %i.pj, ptr %i.pk, align 1
  %i.pl = add nuw i64 %.023.i.i120, 4             ; 2 uses
  %exitcond.not.i.i121.3 = icmp eq i64 %i.pl, %spec.select.i.i117
  br i1 %exitcond.not.i.i121.3, label %._crit_edge.loopexit.i.i122, label %.lr.ph.i.i119, !llvm.loop !1167

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit131: ; preds = %._crit_edge.i.i124, %_ZN3fmt3v1110format_intC2Ei.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = srem i32 %i.b, 100                       ; 3 uses
  %or.cond.i = icmp sgt i32 %i.c, -1
  br i1 %or.cond.i, label %bb.b, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i) #21, !inline_history !21
  %.pre.i.i = load i64, ptr %i.g, align 8         ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1
  %i.r = or disjoint i8 %i.e, 48
  %i.s = load i64, ptr %i.g, align 8              ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load i64, ptr %i.j, align 8
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.t) #21, !inline_history !21
  %.pre.i5.i = load i64, ptr %i.g, align 8        ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.t, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.y = phi i64 [ %i.s, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.z = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %i.r, ptr %i.aa, align 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 %i.c, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.85, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i14.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i15.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.ae, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %i.h, align 1
  %i.n = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.o = icmp samesign ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

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
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.r, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  store i8 45, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %4 to i64
  %i.ag = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ah = add i64 %i.af, 21                       ; 3 uses
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ai
  %.not24.i.i = icmp eq i64 %i.ah, %i.ag
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ak, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.an = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 9 uses
  %i.ao = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ap = sub i64 %i.ah, %i.ao                    ; 2 uses
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = load i64, ptr %i.al, align 8            ; 2 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.am, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aq) #21, !inline_history !20
  %.pre30.i.i = load i64, ptr %i.al, align 8
  %.pre31.i.i = load i64, ptr %i.ak, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.au = phi i64 [ %i.an, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.av = phi i64 [ %i.ar, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.aw = sub i64 %i.av, %i.au
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ap) ; 13 uses
  %i.ax = load ptr, ptr %3, align 8               ; 2 uses
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
  %min.iters.check11 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1
  %wide.load12 = load <16 x i8>, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1
  store <16 x i8> %wide.load12, ptr %i.bg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.bj, align 1
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.023.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1170

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ak, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.br = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.au, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bs = add i64 %i.br, %spec.select.i.i         ; 2 uses
  store i64 %i.bs, ptr %i.ak, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.aj
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.023.i.i
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1171

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %or.cond.i = icmp ult i32 %i.c, 100
  br i1 %or.cond.i, label %bb.b, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i) #21, !inline_history !21
  %.pre.i.i = load i64, ptr %i.g, align 8         ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1
  %i.r = or disjoint i8 %i.e, 48
end_hunk_18
begin_hunk_19_@_ZN6spdlog7details11S_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.g) #21, !inline_history !21
  %.pre.i.i = load i64, ptr %i.e, align 8         ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.n = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1
  %i.p = or disjoint i8 %i.c, 48
  %i.q = load i64, ptr %i.e, align 8              ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load i64, ptr %i.h, align 8
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r) #21, !inline_history !21
  %.pre.i5.i = load i64, ptr %i.e, align 8        ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.r, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.w = phi i64 [ %i.q, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.x = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 %i.p, ptr %i.y, align 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 %i.a, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.85, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i14.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i15.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.ac, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000000
  %.neg.i = mul i64 %i.b, 4294966296
  %i.d = add i64 %.neg.i, %i.c
  %i.e = trunc i64 %i.d to i32
  tail call void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000
  %.neg.i = mul nsw i64 %i.b, -1000000
  %i.d = add nsw i64 %.neg.i, %i.c
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.d, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.m = icmp samesign ugt i64 %.01819.i.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !25

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
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.u = trunc nuw nsw i64 %.018.lcssa.i.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN3fmt3v1110format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  store i8 45, ptr %i.aa, align 1
  br label %_ZN3fmt3v1110format_intC2El.exit.i

_ZN3fmt3v1110format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.z, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.af
  %.not24.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2El.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 9 uses
  %i.al = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.am = sub i64 %i.ae, %i.al                    ; 2 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.an) #21, !inline_history !61
  %.pre30.i.i = load i64, ptr %i.ai, align 8
  %.pre31.i.i = load i64, ptr %i.ah, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ar = phi i64 [ %i.ak, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.as = phi i64 [ %i.ao, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.at = sub i64 %i.as, %i.ar
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am) ; 13 uses
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.ar, %i.av
  %i.ay = sub i64 %i.al, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1
  %wide.load14 = load <16 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> %wide.load, ptr %i.bc, align 1
  store <16 x i8> %wide.load14, ptr %i.bd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.bg, align 1
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i.prol
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1174

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.prol ]
  %i.bm = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ah, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bo = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ar, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bp = add i64 %i.bo, %spec.select.i.i         ; 2 uses
  store i64 %i.bp, ptr %i.ah, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1175

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
.lr.ph27.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8
  %i.b = icmp sgt i32 %.val, 11                   ; 2 uses
  %i.c = select i1 %i.b, ptr getelementptr inbounds nuw (i8, ptr @.str.158, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.159, i64 2) ; 2 uses
  %.str.158..str.159.i = select i1 %i.b, ptr @.str.158, ptr @.str.159
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.158..str.159.i, %.lr.ph27.i.i ], [ %i.an, %._crit_edge.i.i ] ; 9 uses
  %i.i = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.j = sub i64 %i.d, %i.i                       ; 2 uses
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = load i64, ptr %i.f, align 8              ; 2 uses
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.k) #21, !inline_history !13
  %.pre30.i.i = load i64, ptr %i.f, align 8
  %.pre31.i.i = load i64, ptr %i.e, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.a ], [ %.pre31.i.i, %bb.b ] ; 4 uses
  %i.p = phi i64 [ %i.l, %bb.a ], [ %.pre30.i.i, %bb.b ]
  %i.q = sub i64 %i.p, %i.o
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.j) ; 13 uses
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
end_hunk_19
begin_hunk_20_@_ZN6spdlog7details11z_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aq) #21, !inline_history !21
  %.pre.i.i = load i64, ptr %i.ao, align 8        ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.aq, %bb.h ], [ %.pre2.i.i, %bb.i ]
  %i.aw = phi i64 [ %i.ap, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.ax = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i, ptr %i.ao, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 %i.an, ptr %i.ay, align 1
  %i.az = or disjoint i8 %i.am, 48
  %i.ba = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load i64, ptr %i.ar, align 8
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bb) #21, !inline_history !21
  %.pre.i5.i = load i64, ptr %i.ao, align 8       ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.j, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.bb, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.j ]
  %i.bg = phi i64 [ %i.ba, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.j ]
  %i.bh = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i, ptr %i.ao, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 %i.az, ptr %i.bi, align 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 %i.aj, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.85, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i14.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %i.bl, align 8
  %.sroa.2.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i15.i.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.bm, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.85, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.k, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bp) #21, !inline_history !18
  %.pre.i20 = load i64, ptr %i.bn, align 8        ; 2 uses
  %.pre2.i21 = add i64 %.pre.i20, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.k
  %.pre-phi.i19 = phi i64 [ %i.bp, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i21, %bb.k ]
  %i.bv = phi i64 [ %i.bo, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i20, %bb.k ]
  %i.bw = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i19, ptr %i.bn, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 58, ptr %i.bx, align 1
  %.lhs.trunc.i27 = trunc nuw nsw i32 %i.ak to i8 ; 2 uses
  %i.by = udiv i8 %.lhs.trunc.i27, 10
  %i.bz = urem i8 %.lhs.trunc.i27, 10
  %i.ca = or disjoint i8 %i.by, 48
  %i.cb = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load i64, ptr %i.bq, align 8
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cc) #21, !inline_history !21
  %.pre.i.i34 = load i64, ptr %i.bn, align 8      ; 2 uses
  %.pre2.i.i35 = add i64 %.pre.i.i34, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28: ; preds = %bb.l, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22
  %.pre-phi.i.i29 = phi i64 [ %i.cc, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22 ], [ %.pre2.i.i35, %bb.l ]
  %i.ch = phi i64 [ %i.cb, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22 ], [ %.pre.i.i34, %bb.l ]
  %i.ci = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i.i29, ptr %i.bn, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 %i.ca, ptr %i.cj, align 1
  %i.ck = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  %i.cm = load i64, ptr %i.bq, align 8
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cl) #21, !inline_history !21
  %.pre.i5.i32 = load i64, ptr %i.bn, align 8     ; 2 uses
  %.pre2.i6.i33 = add i64 %.pre.i5.i32, 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit36: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28, %bb.m
  %.pre-phi.i4.i31 = phi i64 [ %i.cl, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28 ], [ %.pre2.i6.i33, %bb.m ]
  %i.cq = phi i64 [ %i.ck, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i28 ], [ %.pre.i5.i32, %bb.m ]
  %i.cr = or disjoint i8 %i.bz, 48
  %i.cs = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i4.i31, ptr %i.bn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 %i.cr, ptr %i.ct, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = tail call noundef i32 @getpid() #21      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.e, align 1
  %i.k = udiv i32 %.01819.i.i.i.i, 100            ; 2 uses
  %i.l = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !19

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
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.p, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = trunc nuw nsw i32 %.018.lcssa.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.o, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %4 to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = add i64 %i.ab, 21                       ; 3 uses
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %.not24.i.i = icmp eq i64 %i.ad, %i.ac
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ag, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aj = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bo, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.aa, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 9 uses
  %i.ak = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.al = sub i64 %i.ad, %i.ak                    ; 2 uses
  %i.am = add i64 %i.al, %i.aj                    ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ao = icmp ugt i64 %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ai, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.am) #21, !inline_history !23
  %.pre30.i.i = load i64, ptr %i.ah, align 8
  %.pre31.i.i = load i64, ptr %i.ag, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aq = phi i64 [ %i.aj, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ar = phi i64 [ %i.an, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.as = sub i64 %i.ar, %i.aq
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.al) ; 13 uses
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = add i64 %i.aq, %i.au
  %i.ax = sub i64 %i.ak, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1
  %wide.load14 = load <16 x i8>, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <16 x i8> %wide.load, ptr %i.bb, align 1
  store <16 x i8> %wide.load14, ptr %i.bc, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.bf, align 1
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %.023.i.i.prol
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1186

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.prol ]
  %i.bl = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ag, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bn = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aq, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bo = add i64 %i.bn, %spec.select.i.i         ; 2 uses
  store i64 %i.bo, ptr %i.ag, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %.023.i.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cf, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1187

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not24.i.i, label %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge, label %.lr.ph27.i.i

._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.l = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.e, %.lr.ph27.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 9 uses
  %i.m = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.n = sub i64 %i.h, %i.m                       ; 2 uses
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = load i64, ptr %i.j, align 8              ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o) #21, !inline_history !13
  %.pre30.i.i = load i64, ptr %i.j, align 8
end_hunk_20
begin_hunk_21_@_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
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
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load43 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1
  store <16 x i8> %wide.load43, ptr %i.ae, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index45
  %wide.load46 = load <4 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index45
  store <4 x i8> %wide.load46, ptr %i.ah, align 1
  %index.next47 = add nuw i64 %index45, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1189

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
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1190

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1191

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge
  %i.bi = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit_crit_edge ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bk = add i64 %i.bi, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bk) #21, !inline_history !18
  %.pre.i = load i64, ptr %i.bj, align 8          ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.e
  %.pre-phi.i = phi i64 [ %i.bk, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %bb.e ]
  %i.bq = phi i64 [ %i.bi, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %bb.e ]
  %i.br = load ptr, ptr %3, align 8
  store i64 %.pre-phi.i, ptr %i.bj, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 58, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bu = icmp slt i32 %i.bt, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 false) ; 3 uses
  %i.bv = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.bw, %.lr.ph.i.i.i.i.i ], [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %.01819.i.i.i.i.i = phi i32 [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %i.bw = add i32 %.020.i.i.i.i.i, -2             ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx
  %i.bz = urem i32 %.01819.i.i.i.i.i, 100
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  store i16 %i.cd, ptr %i.by, align 1
  %i.ce = udiv i32 %.01819.i.i.i.i.i, 100         ; 2 uses
  %i.cf = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.018.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.ce, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ 21, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.bw, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cg = icmp samesign ugt i32 %.018.lcssa.i.i.i.i.i, 9
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ch = add i32 %.0.lcssa.i.i.i.i.i, -2
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci
  %i.ck = shl nuw nsw i32 %.018.lcssa.i.i.i.i.i, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  store i16 %i.cn, ptr %i.cj, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.co = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %i.cr
  store i8 %i.cp, ptr %i.cs, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.cr, %bb.g ], [ %i.ci, %bb.f ]
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.bu, label %bb.h, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.h:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -1 ; 2 uses
  store i8 45, ptr %i.cu, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.h, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.cu, %bb.h ], [ %i.ct, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.cv, align 8
  %i.cw = ptrtoint ptr %4 to i64
  %i.cx = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.cy = add i64 %i.cw, 21                       ; 3 uses
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.cz
  %.not24.i.i11 = icmp eq i64 %i.cy, %i.cx
  br i1 %.not24.i.i11, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i12

.lr.ph27.i.i12:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i13 = load i64, ptr %i.bj, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i23, %.lr.ph27.i.i12
  %i.dc = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i12 ], [ %i.eh, %._crit_edge.i.i23 ] ; 2 uses
  %.01925.i.i14 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i12 ], [ %i.ei, %._crit_edge.i.i23 ] ; 9 uses
  %i.dd = ptrtoint ptr %.01925.i.i14 to i64       ; 2 uses
  %i.de = sub i64 %i.cy, %i.dd                    ; 2 uses
  %i.df = add i64 %i.de, %i.dc                    ; 2 uses
  %i.dg = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.dh = icmp ugt i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

bb.j:                                             ; preds = %bb.i
  %i.di = load ptr, ptr %i.db, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.df) #21, !inline_history !20
  %.pre30.i.i25 = load i64, ptr %i.bl, align 8
  %.pre31.i.i26 = load i64, ptr %i.bj, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15: ; preds = %bb.j, %bb.i
  %i.dj = phi i64 [ %i.dc, %bb.i ], [ %.pre31.i.i26, %bb.j ] ; 4 uses
  %i.dk = phi i64 [ %i.dg, %bb.i ], [ %.pre30.i.i25, %bb.j ]
  %i.dl = sub i64 %i.dk, %i.dj
  %spec.select.i.i16 = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.de) ; 13 uses
  %i.dm = load ptr, ptr %3, align 8               ; 2 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 7 uses
  %.not29.i.i17 = icmp eq i64 %spec.select.i.i16, 0
  br i1 %.not29.i.i17, label %._crit_edge.i.i23, label %iter.check64

iter.check64:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %min.iters.check51 = icmp ult i64 %spec.select.i.i16, 4
  br i1 %min.iters.check51, label %.lr.ph.i.i18.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %iter.check64
  %i.dp = add i64 %i.dj, %i.dn
  %i.dq = sub i64 %i.dd, %i.dp
  %diff.check50 = icmp ugt i64 %i.dq, -32
  br i1 %diff.check50, label %.lr.ph.i.i18.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %vector.memcheck49
  %min.iters.check53 = icmp ult i64 %spec.select.i.i16, 32
  br i1 %min.iters.check53, label %vec.epilog.ph68, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.dr = and i64 %spec.select.i.i16, 28
  %n.vec55 = and i64 %spec.select.i.i16, -32      ; 4 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next60, %vector.body56 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index57 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load58.a = load <16 x i8>, ptr %i.ds, align 1
  %wide.load59 = load <16 x i8>, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %index57 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %wide.load58.a, ptr %i.du, align 1
  store <16 x i8> %wide.load59, ptr %i.dv, align 1
  %index.next60 = add nuw i64 %index57, 32        ; 2 uses
  %i.dw = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.dw, label %middle.block61, label %vector.body56, !llvm.loop !1192

middle.block61:                                   ; preds = %vector.body56
  %cmp.n62 = icmp eq i64 %spec.select.i.i16, %n.vec55
  br i1 %cmp.n62, label %._crit_edge.loopexit.i.i21, label %vec.epilog.iter.check66

vec.epilog.iter.check66:                          ; preds = %middle.block61
  %min.epilog.iters.check67 = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check67, label %.lr.ph.i.i18.preheader, label %vec.epilog.ph68, !prof !76

vec.epilog.ph68:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check66
  %vec.epilog.resume.val63 = phi i64 [ %n.vec55, %vec.epilog.iter.check66 ], [ 0, %vector.main.loop.iter.check52 ]
  %n.vec69 = and i64 %spec.select.i.i16, -4       ; 3 uses
  br label %vec.epilog.vector.body70

vec.epilog.vector.body70:                         ; preds = %vec.epilog.vector.body70, %vec.epilog.ph68
  %index71 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph68 ], [ %index.next73, %vec.epilog.vector.body70 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index71
  %wide.load72 = load <4 x i8>, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %index71
  store <4 x i8> %wide.load72, ptr %i.dy, align 1
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next73, %n.vec69
  br i1 %i.dz, label %vec.epilog.middle.block74, label %vec.epilog.vector.body70, !llvm.loop !1193

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body70
  %cmp.n75 = icmp eq i64 %spec.select.i.i16, %n.vec69
  br i1 %cmp.n75, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %vector.memcheck49, %iter.check64, %vec.epilog.iter.check66, %vec.epilog.middle.block74
  %.023.i.i19.ph = phi i64 [ 0, %iter.check64 ], [ 0, %vector.memcheck49 ], [ %n.vec55, %vec.epilog.iter.check66 ], [ %n.vec69, %vec.epilog.middle.block74 ] ; 3 uses
  %xtraiter79 = and i64 %spec.select.i.i16, 3     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.i.i18.preheader, %.lr.ph.i.i18.prol
  %.023.i.i19.prol = phi i64 [ %i.ed, %.lr.ph.i.i18.prol ], [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.i.i18.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19.prol
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i19.prol
  store i8 %i.eb, ptr %i.ec, align 1
  %i.ed = add nuw i64 %.023.i.i19.prol, 1         ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !1194

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.i.i18.preheader
  %.023.i.i19.unr = phi i64 [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ], [ %i.ed, %.lr.ph.i.i18.prol ]
  %i.ee = sub i64 %.023.i.i19.ph, %spec.select.i.i16
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18

._crit_edge.loopexit.i.i21:                       ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %vec.epilog.middle.block74, %middle.block61
  %.pre32.i.i22 = load i64, ptr %i.bj, align 8
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %._crit_edge.loopexit.i.i21, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %i.eg = phi i64 [ %.pre32.i.i22, %._crit_edge.loopexit.i.i21 ], [ %i.dj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15 ]
  %i.eh = add i64 %i.eg, %spec.select.i.i16       ; 2 uses
  store i64 %i.eh, ptr %i.bj, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %spec.select.i.i16 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ei, %i.da
  br i1 %.not.i.i24, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.i, !llvm.loop !14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.023.i.i19 = phi i64 [ %i.ey, %.lr.ph.i.i18 ], [ %.023.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i19
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = add nuw i64 %.023.i.i19, 1              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add nuw i64 %.023.i.i19, 2              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1
  %i.eu = add nuw i64 %.023.i.i19, 3              ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eu
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = add nuw i64 %.023.i.i19, 4              ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %i.ey, %spec.select.i.i16
  br i1 %exitcond.not.i.i20.3, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18, !llvm.loop !1195

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i23, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 47) #33 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = select i1 %.not.i, ptr %i.e, ptr %i.g    ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.o = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.at, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.h, %.lr.ph27.i.i ], [ %i.au, %._crit_edge.i.i ] ; 9 uses
  %i.p = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.q = sub i64 %i.k, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = load i64, ptr %i.m, align 8              ; 2 uses
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r) #21, !inline_history !13
end_hunk_21
begin_hunk_22_@_ZN6spdlog7details25source_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
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
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load12 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1
  store <16 x i8> %wide.load12, ptr %i.ae, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.ah, align 1
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1201

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
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1202

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1203

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.g, align 1
  %i.m = udiv i32 %.01819.i.i.i.i.i, 100          ; 2 uses
  %i.n = icmp ugt i32 %.01819.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !19

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
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  store i16 %i.v, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = trunc nuw nsw i32 %.018.lcssa.i.i.i.i.i to i8
  %i.x = or disjoint i8 %i.w, 48
  %i.y = add i32 %.0.lcssa.i.i.i.i.i, -1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.c, %bb.d
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.z, %bb.d ], [ %i.q, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %4 to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = add i64 %i.ad, 21                       ; 3 uses
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.not24.i.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.ab, %.lr.ph27.i.i ], [ %i.br, %._crit_edge.i.i ] ; 9 uses
  %i.am = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.an = sub i64 %i.af, %i.am                    ; 2 uses
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ao) #21, !inline_history !20
  %.pre30.i.i = load i64, ptr %i.aj, align 8
  %.pre31.i.i = load i64, ptr %i.ai, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.as = phi i64 [ %i.al, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.at = phi i64 [ %i.ap, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.au = sub i64 %i.at, %i.as
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.an) ; 13 uses
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.as, %i.aw
  %i.az = sub i64 %i.am, %i.ay
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1
  %wide.load17 = load <16 x i8>, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1
  store <16 x i8> %wide.load17, ptr %i.be, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index19
  store <4 x i8> %wide.load20, ptr %i.bh, align 1
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next21, %n.vec18
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %spec.select.i.i, %n.vec18
  br i1 %cmp.n22, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.023.i.i.prol
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1206

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bn = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ai, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bp = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.as, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bq = add i64 %i.bp, %spec.select.i.i         ; 2 uses
  store i64 %i.bq, ptr %i.ai, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.023.i.i
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1207

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.l = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.e, %.lr.ph27.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 9 uses
  %i.m = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.n = sub i64 %i.h, %i.m                       ; 2 uses
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = load i64, ptr %i.j, align 8              ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o) #21, !inline_history !13
  %.pre30.i.i = load i64, ptr %i.j, align 8
  %.pre31.i.i = load i64, ptr %i.i, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

end_hunk_22
begin_hunk_23_@_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load12 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1
  store <16 x i8> %wide.load12, ptr %i.ae, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.ah, align 1
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1209

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
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1210

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.c, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1211

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.m = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i.i, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %4 to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = add i64 %i.ab, 21                       ; 3 uses
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %.not24.i.i = icmp eq i64 %i.ad, %i.ac
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ag, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aj = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bo, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.aa, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 9 uses
  %i.ak = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.al = sub i64 %i.ad, %i.ak                    ; 2 uses
  %i.am = add i64 %i.al, %i.aj                    ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ao = icmp ugt i64 %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ai, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.am) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.ah, align 8
  %.pre31.i.i = load i64, ptr %i.ag, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aq = phi i64 [ %i.aj, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ar = phi i64 [ %i.an, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.as = sub i64 %i.ar, %i.aq
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.al) ; 13 uses
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = add i64 %i.aq, %i.au
  %i.ax = sub i64 %i.ak, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1
  %wide.load22 = load <16 x i8>, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <16 x i8> %wide.load, ptr %i.bb, align 1
  store <16 x i8> %wide.load22, ptr %i.bc, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.bf, align 1
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %spec.select.i.i, %n.vec23
  br i1 %cmp.n27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %.023.i.i.prol
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1214

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.prol ]
  %i.bl = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ag, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bn = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aq, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bo = add i64 %i.bn, %spec.select.i.i         ; 2 uses
  store i64 %i.bo, ptr %i.ag, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %.023.i.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cf, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1215

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not24.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.ab, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 9 uses
  %i.al = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.am = sub i64 %i.ae, %i.al                    ; 2 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.an) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.ai, align 8
  %.pre31.i.i = load i64, ptr %i.ah, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ar = phi i64 [ %i.ak, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.at = sub i64 %i.as, %i.ar
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am) ; 13 uses
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.ar, %i.av
  %i.ay = sub i64 %i.al, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1
  %wide.load21 = load <16 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> %wide.load, ptr %i.bc, align 1
  store <16 x i8> %wide.load21, ptr %i.bd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bg, align 1
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i.prol
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1218

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.prol ]
  %i.bm = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ah, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bo = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ar, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bp = add i64 %i.bo, %spec.select.i.i         ; 2 uses
  store i64 %i.bp, ptr %i.ah, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1219

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not24.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.ab, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 9 uses
  %i.al = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.am = sub i64 %i.ae, %i.al                    ; 2 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.an) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.ai, align 8
  %.pre31.i.i = load i64, ptr %i.ah, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ar = phi i64 [ %i.ak, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.at = sub i64 %i.as, %i.ar
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am) ; 13 uses
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.ar, %i.av
  %i.ay = sub i64 %i.al, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1
  %wide.load21 = load <16 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> %wide.load, ptr %i.bc, align 1
  store <16 x i8> %wide.load21, ptr %i.bd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bg, align 1
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1221

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i.prol
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1222

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.prol ]
  %i.bm = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ah, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bo = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ar, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bp = add i64 %i.bo, %spec.select.i.i         ; 2 uses
  store i64 %i.bp, ptr %i.ah, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1223

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14flag_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENSG_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
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
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 1
  %i.m = udiv i64 %.01819.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i64 %.01819.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !25

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
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i.i.i.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i.i.i.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %.not24.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ak = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bp, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.ab, %.lr.ph27.i.i ], [ %i.bq, %._crit_edge.i.i ] ; 9 uses
  %i.al = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.am = sub i64 %i.ae, %i.al                    ; 2 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.an) #21, !inline_history !60
  %.pre30.i.i = load i64, ptr %i.ai, align 8
  %.pre31.i.i = load i64, ptr %i.ah, align 8
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ar = phi i64 [ %i.ak, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.at = sub i64 %i.as, %i.ar
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.am) ; 13 uses
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.ar, %i.av
  %i.ay = sub i64 %i.al, %i.ax
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1
  %wide.load21 = load <16 x i8>, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> %wide.load, ptr %i.bc, align 1
  store <16 x i8> %wide.load21, ptr %i.bd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bg, align 1
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i.prol
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1226

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.prol ]
  %i.bm = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ah, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bo = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ar, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bp = add i64 %i.bo, %spec.select.i.i         ; 2 uses
  store i64 %i.bp, ptr %i.ah, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.d, !llvm.loop !14

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.023.i.i
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1227

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19aggregate_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19aggregate_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit

_ZN6spdlog7details19aggregate_formatterD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19aggregate_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ENS9_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
end_hunk_23
