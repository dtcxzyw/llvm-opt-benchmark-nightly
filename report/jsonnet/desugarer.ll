Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/desugarer?download=true
inline.NumInlined: 3682
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.x = icmp eq i32 %i.w, 224
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %storemerge8, 2                  ; 4 uses
  %.not43.i = icmp ult i64 %i.y, %i.e
  br i1 %.not43.i, label %bb.g, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.g:                                             ; preds = %bb.f
  %i.z = add nuw i64 %storemerge8, 1              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44
  %i.ac = sext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 192
  %.not44.i = icmp eq i32 %i.ad, 128
  br i1 %.not44.i, label %bb.h, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.y
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !44
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not45.i = icmp eq i32 %i.ah, 128
  br i1 %.not45.i, label %bb.i, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = shl nsw i32 %i.j, 12
  %i.aj = and i32 %i.ai, 61440
  %i.ak = shl nsw i32 %i.ac, 6
  %i.al = and i32 %i.ak, 4032
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = and i32 %i.ag, 63
  %i.ao = or disjoint i32 %i.am, %i.an
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.j:                                             ; preds = %bb.e
  %i.ap = and i32 %i.j, 248
  %i.aq = icmp eq i32 %i.ap, 240
  %i.ar = add i64 %storemerge8, 3                 ; 4 uses
  %.not.i = icmp ult i64 %i.ar, %i.e
  %or.cond.i = and i1 %.not.i, %i.aq
  br i1 %or.cond.i, label %bb.k, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.k:                                             ; preds = %bb.j
  %i.as = add nuw i64 %storemerge8, 1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !44
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = and i32 %i.av, 192
  %.not40.i = icmp eq i32 %i.aw, 128
  br i1 %.not40.i, label %bb.l, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = add i64 %storemerge8, 2                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !44
  %i.ba = sext i8 %i.az to i32                    ; 2 uses
  %i.bb = and i32 %i.ba, 192
  %.not41.i = icmp eq i32 %i.bb, 128
  br i1 %.not41.i, label %bb.m, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !44
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = and i32 %i.be, 192
  %.not42.i = icmp eq i32 %i.bf, 128
  br i1 %.not42.i, label %bb.n, label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = shl nsw i32 %i.j, 18
  %i.bh = and i32 %i.bg, 1835008
  %i.bi = shl nsw i32 %i.av, 12
  %i.bj = and i32 %i.bi, 258048
  %i.bk = or disjoint i32 %i.bj, %i.bh
  %i.bl = shl nsw i32 %i.ba, 6
  %i.bm = and i32 %i.bl, 4032
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = and i32 %i.be, 63
  %i.bp = or disjoint i32 %i.bn, %i.bo
  br label %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit

_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit: ; preds = %.lr.ph, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0 = phi i64 [ %storemerge8, %.lr.ph ], [ %i.n, %bb.d ], [ %storemerge8, %bb.c ], [ %i.y, %bb.i ], [ %i.y, %bb.h ], [ %i.z, %bb.g ], [ %storemerge8, %bb.f ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ], [ %i.ax, %bb.l ], [ %i.as, %bb.k ], [ %storemerge8, %bb.j ]
  %.6.i = phi i32 [ %i.j, %.lr.ph ], [ %.0.i, %bb.d ], [ 65533, %bb.c ], [ %i.ao, %bb.i ], [ 65533, %bb.h ], [ 65533, %bb.g ], [ 65533, %bb.f ], [ %i.bp, %bb.n ], [ 65533, %bb.m ], [ 65533, %bb.l ], [ 65533, %bb.k ], [ 65533, %bb.j ]
  %i.bq = add i64 %i.g, 1                         ; 4 uses
  %i.br = icmp eq ptr %i.f, %i.a
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit
  %i.bs = icmp ult i64 %i.g, 4
  tail call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm.exit
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !44
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i ]
  %i.bv = icmp ugt i64 %i.bq, %i.bu
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !51
  %.pre = load i64, ptr %i.c, align 8, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.bw = phi i64 [ %.pre, %.noexc ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i, %.noexc ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.g
  store i32 %.6.i, ptr %i.by, align 4, !tbaa !54
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bq
  store i32 0, ptr %i.bz, align 4, !tbaa !54
  %i.ca = add i64 %.0, 1                          ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bw
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !351

bb.q:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.a
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i5: ; preds = %bb.q
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !44
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, 4
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.cc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  tail call void @_ZN7jsonnet8internal5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.c) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 208) #26
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !5

_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EE8_M_clearEv.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer22makeArrayComprehensionEPNS0_18ArrayComprehensionE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %4 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %6 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %9 = alloca %"class.jsonnet::internal::UStringStream", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %11 = alloca %"class.jsonnet::internal::UStringStream", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %13 = alloca %"class.std::vector.83", align 8   ; 13 uses
  %14 = alloca [2 x %"struct.jsonnet::internal::ArgParam"], align 8 ; 11 uses
  %15 = alloca %"class.std::vector.83", align 8   ; 12 uses
  %16 = alloca [2 x %"struct.jsonnet::internal::ArgParam"], align 8 ; 11 uses
  %17 = alloca %"class.std::vector.102", align 8  ; 12 uses
  %18 = alloca [2 x %"struct.jsonnet::internal::Local::Bind"], align 8 ; 11 uses
  %19 = alloca %"class.std::vector.83", align 8   ; 13 uses
  %20 = alloca [2 x %"struct.jsonnet::internal::ArgParam"], align 8 ; 12 uses
  %21 = alloca %"class.std::vector.102", align 8  ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %23 = alloca %"class.std::vector.83", align 8   ; 12 uses
  %24 = alloca [2 x %"struct.jsonnet::internal::ArgParam"], align 8 ; 11 uses
  %25 = alloca %"class.std::vector.89", align 8   ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 96                  ; 4 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !64
  %i.n = tail call noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 1 dereferenceable(4) @.str.100)
  %i.o = load ptr, ptr %0, align 8, !tbaa !64
  %i.p = tail call noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralNumberEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERA4_KcEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 1 dereferenceable(4) @.str.101) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !55
  store i64 489626271780, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.r, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !54
  %i.t = load ptr, ptr %0, align 8, !tbaa !64
  %i.u = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.b ; 5 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %._crit_edge.i.i
  %i.v = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.q
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.x = load i64, ptr %i.q, align 8, !tbaa !44
  %i.y = shl i64 %i.x, 2
  %i.z = add i64 %i.y, 4
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.aa, ptr %8, align 8, !tbaa !55
  store i64 463856468004, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %i.ac, align 8, !tbaa !54
  %i.ad = load ptr, ptr %0, align 8, !tbaa !64
  %i.ae = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit241 unwind label %bb.c ; 4 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.af = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i242: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit241
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ai = shl i64 %i.ah, 2
  %i.aj = add i64 %i.ai, 4
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit244: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit241, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %sext = shl i64 %i.k, 32                        ; 4 uses
  %i.ak = ashr exact i64 %sext, 32                ; 6 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %.noexc245, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc245:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit244
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit244
  %.not.i.i.i.i = icmp eq i64 %sext, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit, label %.noexc246

.noexc246:                                        ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.am = ashr exact i64 %sext, 29
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #27 ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ak ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !101
  %i.ap = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit, label %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc246
  %i.ar = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !101
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit: ; preds = %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc246, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %.sroa.15.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %.noexc246 ], [ null, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %.sroa.0715.0 = phi ptr [ %i.an, %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %.noexc246 ], [ null, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 10 uses
  %i.as = icmp sgt i32 %i.l, 0                    ; 3 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.lr.ph, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.lr.ph: ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = and i64 %i.k, 2147483647
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 28
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247: ; preds = %_ZN7jsonnet8internal13UStringStreamD2Ev.exit, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247
  %i.ay = ashr exact i64 %sext, 29
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #27
          to label %.noexc254 unwind label %bb.l  ; 5 uses

.noexc254:                                        ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ak ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !101
  %i.bb = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255, label %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i249

_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i249: ; preds = %.noexc254
  %i.bd = getelementptr i8, ptr %i.az, i64 8
  %.idx.i.i.i.i.i.i.i250 = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %.idx.i.i.i.i.i.i.i250, i1 false), !tbaa !101
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i256: ; preds = %bb.b
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !44
  %i.bi = shl i64 %i.bh, 2
  %i.bj = add i64 %i.bi, 4
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit258: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit592

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aa
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i259: ; preds = %bb.c
  %i.bn = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.bo = shl i64 %i.bn, 2
  %i.bp = add i64 %i.bo, 4
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit261: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit592

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.lr.ph, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.lr.ph ], [ %indvars.iv.next, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %i.at, ptr %9, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 4 dereferenceable(12) @.str.104, i64 12, i1 false)
  store i64 3, ptr %i.au, align 8, !tbaa !52
  store i32 0, ptr %i.ax, align 4, !tbaa !54
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7jsonnet8internal13UStringStreamlsIiEERS1_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %i.bq)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  store ptr %i.av, ptr %10, align 8, !tbaa !55, !alias.scope !365
  %i.bs = load ptr, ptr %9, align 8, !tbaa !51, !noalias !365 ; 2 uses
  %i.bt = load i64, ptr %i.au, align 8, !tbaa !52, !noalias !365 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.bt, 2            ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 3
  br i1 %i.bu, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp ugt i64 %i.bt, 1152921504606846975
  br i1 %i.bv, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
          to label %.noexc264 unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.bw = add nuw nsw i64 %.idx.i.i, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #27
          to label %.noexc265 unwind label %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc265:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.bx, ptr %10, align 8, !tbaa !51, !alias.scope !365
  store i64 %i.bt, ptr %i.av, align 8, !tbaa !44, !alias.scope !365
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc265, %bb.d
  %.pre8.i.i.i = phi ptr [ %i.bx, %.noexc265 ], [ %i.av, %bb.d ] ; 3 uses
  switch i64 %i.bt, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.by = load i32, ptr %i.bs, align 4, !tbaa !54
  store i32 %i.by, ptr %.pre8.i.i.i, align 4, !tbaa !54
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %i.bs, i64 %.idx.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  store i64 %i.bt, ptr %i.aw, align 8, !tbaa !52, !alias.scope !365
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.bz, align 4, !tbaa !54
  %i.ca = load ptr, ptr %0, align 8, !tbaa !64
  %i.cb = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit267 unwind label %bb.j

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit267: ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0715.0, i64 %indvars.iv
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !101
  %i.cd = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.av
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i268: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit267
  %i.cf = load i64, ptr %i.av, align 8, !tbaa !44
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit270: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit267, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ci = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit270
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !44
  %i.cl = shl i64 %i.ck, 2
  %i.cm = add i64 %i.cl, 4
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

_ZN7jsonnet8internal13UStringStreamD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit270, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i, !llvm.loop !354

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp3658 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273

bb.j:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.av
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i271: ; preds = %bb.j
  %i.cr = load i64, ptr %i.av, align 8, !tbaa !44
  %i.cs = shl i64 %i.cr, 2
  %i.ct = add i64 %i.cs, 4
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273: ; preds = %bb.j, %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i271
  %.pn220 = phi { ptr, i32 } [ %i.co, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i271 ], [ %lpad.loopexit.split-lp3658, %.loopexit.split-lp786.loopexit.split-lp.loopexit.split-lp ], [ %i.co, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273, %bb.i
  %.pn220.pn = phi { ptr, i32 } [ %.pn220, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit273 ], [ %i.cn, %bb.i ]
  %i.cu = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.at
  br i1 %i.cv, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i274

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i274: ; preds = %bb.k
  %i.cw = load i64, ptr %i.at, align 8, !tbaa !44
  %i.cx = shl i64 %i.cw, 2
  %i.cy = add i64 %i.cx, 4
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit276

_ZN7jsonnet8internal13UStringStreamD2Ev.exit276:  ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255: ; preds = %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i249, %.noexc254, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247
  %.sroa.14.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i249 ], [ %i.ba, %.noexc254 ], [ null, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247 ] ; 2 uses
  %.sroa.0706.0 = phi ptr [ %i.az, %_ZSt6fill_nIPPKN7jsonnet8internal10IdentifierEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i249 ], [ %i.az, %.noexc254 ], [ null, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i247 ] ; 10 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280.lr.ph, label %._crit_edge

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280.lr.ph: ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %wide.trip.count2034 = and i64 %i.k, 2147483647
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280

._crit_edge:                                      ; preds = %_ZN7jsonnet8internal13UStringStreamD2Ev.exit303, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EEC2EmRKS5_.exit255
  %27 = add i32 %i.l, -1                          ; 2 uses
  %28 = load ptr, ptr %i.d, align 8, !tbaa !194
  %29 = sext i32 %27 to i64
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280.lr.ph, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit303
  %indvars.iv2031 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280.lr.ph ], [ %indvars.iv.next2032, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit303 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr %i.cz, ptr %11, align 8, !tbaa !55
  store i64 0, ptr %i.da, align 8, !tbaa !52
  store i32 0, ptr %i.cz, align 8, !tbaa !54
  %i.de = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #27
          to label %.noexc286 unwind label %bb.r  ; 3 uses

.noexc286:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.de, ptr noundef nonnull align 4 dereferenceable(20) @.str.105, i64 20, i1 false)
  store ptr %i.de, ptr %11, align 8, !tbaa !51
  store i64 6, ptr %i.cz, align 8, !tbaa !44
  store i64 5, ptr %i.da, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 0, ptr %i.df, align 4, !tbaa !54
  %i.dg = trunc nuw nsw i64 %indvars.iv2031 to i32
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7jsonnet8internal13UStringStreamlsIiEERS1_T_(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.dg)
          to label %bb.m unwind label %bb.r       ; 0 uses

bb.m:                                             ; preds = %.noexc286
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  store ptr %i.db, ptr %12, align 8, !tbaa !55, !alias.scope !366
  %i.di = load ptr, ptr %11, align 8, !tbaa !51, !noalias !366 ; 2 uses
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !52, !noalias !366 ; 6 uses
  %.idx.i.i288 = shl nuw nsw i64 %i.dj, 2         ; 3 uses
  %i.dk = icmp ugt i64 %i.dj, 3
  br i1 %i.dk, label %bb.n, label %._crit_edge.i.i.i289

bb.n:                                             ; preds = %bb.m
  %i.dl = icmp ugt i64 %i.dj, 1152921504606846975
  br i1 %i.dl, label %.noexc.i.i292, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i291

.noexc.i.i292:                                    ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
          to label %.noexc293 unwind label %.loopexit.split-lp781.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %.noexc.i.i292
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i291: ; preds = %bb.n
  %i.dm = add nuw nsw i64 %.idx.i.i288, 4
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #27
          to label %.noexc294 unwind label %.loopexit.split-lp781.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc294:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i291
  store ptr %i.dn, ptr %12, align 8, !tbaa !51, !alias.scope !366
  store i64 %i.dj, ptr %i.db, align 8, !tbaa !44, !alias.scope !366
  br label %._crit_edge.i.i.i289

._crit_edge.i.i.i289:                             ; preds = %.noexc294, %bb.m
  %.pre8.i.i.i290 = phi ptr [ %i.dn, %.noexc294 ], [ %i.db, %bb.m ] ; 3 uses
  switch i64 %i.dj, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i289
  %i.do = load i32, ptr %i.di, align 4, !tbaa !54
  store i32 %i.do, ptr %.pre8.i.i.i290, align 4, !tbaa !54
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i289
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i290, ptr align 4 %i.di, i64 %.idx.i.i288, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i289
  store i64 %i.dj, ptr %i.dc, align 8, !tbaa !52, !alias.scope !366
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i290, i64 %.idx.i.i288
  store i32 0, ptr %i.dp, align 4, !tbaa !54
  %i.dq = load ptr, ptr %0, align 8, !tbaa !64
  %i.dr = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit297 unwind label %bb.s

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit297: ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0706.0, i64 %indvars.iv2031
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !101
  %i.dt = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.db
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i298: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit297
  %i.dv = load i64, ptr %i.db, align 8, !tbaa !44
  %i.dw = shl i64 %i.dv, 2
  %i.dx = add i64 %i.dw, 4
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit300: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit297, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.dy = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cz
  br i1 %i.dz, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i301

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit300
  %i.ea = load i64, ptr %i.cz, align 8, !tbaa !44
  %i.eb = shl i64 %i.ea, 2
  %i.ec = add i64 %i.eb, 4
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit303

_ZN7jsonnet8internal13UStringStreamD2Ev.exit303:  ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %indvars.iv.next2032 = add nuw nsw i64 %indvars.iv2031, 1 ; 2 uses
  %exitcond2035.not = icmp eq i64 %indvars.iv.next2032, %wide.trip.count2034
  br i1 %exitcond2035.not, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280, !llvm.loop !357

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i280, %.noexc286
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp781.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i291, %.noexc.i.i292
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306

bb.s:                                             ; preds = %bb.q
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.db
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i304: ; preds = %bb.s
  %i.eh = load i64, ptr %i.db, align 8, !tbaa !44
  %i.ei = shl i64 %i.eh, 2
  %i.ej = add i64 %i.ei, 4
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306: ; preds = %bb.s, %.loopexit.split-lp781.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i304
  %.pn215 = phi { ptr, i32 } [ %i.ee, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i304 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp781.loopexit.split-lp.loopexit.split-lp ], [ %i.ee, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306, %bb.r
  %.pn215.pn = phi { ptr, i32 } [ %.pn215, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit306 ], [ %i.ed, %bb.r ]
  %i.ek = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cz
  br i1 %i.el, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i307

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i307: ; preds = %bb.t
  %i.em = load i64, ptr %i.cz, align 8, !tbaa !44
  %i.en = shl i64 %i.em, 2
  %i.eo = add i64 %i.en, 4
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit309

_ZN7jsonnet8internal13UStringStreamD2Ev.exit309:  ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.es

bb.u:                                             ; preds = %bb.u, %._crit_edge
  %indvars.iv2036 = phi i64 [ %indvars.iv.next2037, %bb.u ], [ %29, %._crit_edge ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [96 x i8], ptr %28, i64 %indvars.iv2036
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !197
  %.not177 = icmp eq i32 %i.eq, 0
  %indvars.iv.next2037 = add nsw i64 %indvars.iv2036, -1
  br i1 %.not177, label %bb.v, label %bb.u, !llvm.loop !358

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !202
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0706.0, i64 %indvars.iv2036
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !101
  %i.ew = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ex = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc310 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc310:                                        ; preds = %bb.v
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.ex, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i unwind label %bb.w

bb.w:                                             ; preds = %.noexc310
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 136) #26
  br label %.body

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i: ; preds = %.noexc310
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.ex, align 8, !tbaa !107
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !122
  %i.fa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %i.ex, ptr %i.fc, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.fb) #28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 112 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !84
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0715.0, i64 %indvars.iv2036
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !101
  %i.fi = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.fj = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc313 unwind label %bb.as ; 6 uses

.noexc313:                                        ; preds = %bb.x
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.fj, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i312 unwind label %bb.y

bb.y:                                             ; preds = %.noexc313
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef 136) #26
  br label %.body314.thread

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i312: ; preds = %.noexc313
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.fj, align 8, !tbaa !107
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  store ptr %i.fh, ptr %i.fl, align 8, !tbaa !122
  %i.fm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.z unwind label %bb.as      ; 2 uses

bb.z:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i312
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fj, ptr %i.fo, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.fn) #28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 112 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !84
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !84
  %i.fs = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ft = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc318 unwind label %bb.as ; 4 uses

.noexc318:                                        ; preds = %bb.z
  invoke void @_ZN7jsonnet8internal6BinaryC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_NS0_8BinaryOpESC_(ptr noundef nonnull align 8 dereferenceable(176) %i.ft, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.fj, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i32 noundef 3, ptr noundef %i.p)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc318
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 176) #26
  br label %.body314.thread

_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i: ; preds = %.noexc318
  %i.fv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ab unwind label %bb.as     ; 2 uses

bb.ab:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.fw) #28
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 112 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !84
  %i.ga = add i64 %i.fz, 1
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !84
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull %i.ft, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.ac unwind label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.gd = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc323 unwind label %bb.at ; 6 uses

.noexc323:                                        ; preds = %bb.ac
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.gd, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i322 unwind label %bb.ad

bb.ad:                                            ; preds = %.noexc323
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 136) #26
  br label %.body314

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i322: ; preds = %.noexc323
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.gd, align 8, !tbaa !107
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  store ptr %i.u, ptr %i.gf, align 8, !tbaa !122
  %i.gg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ae unwind label %bb.at     ; 2 uses

bb.ae:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i322
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 96
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr %i.gd, ptr %i.gi, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.gh) #28
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 112 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !84
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !84
  %i.gm = load ptr, ptr %i.er, align 8, !tbaa !202
  %i.gn = invoke noundef ptr @_ZN7jsonnet8internal9Desugarer9singletonEPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %i.gm)
          to label %bb.af unwind label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.go = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.gp = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc328 unwind label %bb.at ; 4 uses

.noexc328:                                        ; preds = %bb.af
  invoke void @_ZN7jsonnet8internal6BinaryC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_NS0_8BinaryOpESC_(ptr noundef nonnull align 8 dereferenceable(176) %i.gp, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.gd, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i32 noundef 3, ptr noundef %i.gn)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ArrayEEEEPT_DpOT0_.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc328
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 176) #26
  br label %.body314

_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ArrayEEEEPT_DpOT0_.exit.i: ; preds = %.noexc328
  %i.gr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ah unwind label %bb.at     ; 2 uses

bb.ah:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ArrayEEEEPT_DpOT0_.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.gs) #28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !84
  %i.gw = add i64 %i.gv, 1
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !84
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.gb, ptr noundef nonnull %i.gp, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.gx = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc613 unwind label %.body614.thread ; 6 uses

.noexc613:                                        ; preds = %bb.ai
  store ptr %i.gx, ptr %13, align 8, !tbaa !130
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 176
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !105
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.gx, ptr noundef nonnull align 8 dereferenceable(88) %14)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread2140

.thread2140:                                      ; preds = %.noexc613
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc613
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.hd, ptr noundef nonnull align 8 dereferenceable(88) %i.gb)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 176
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !104
  %i.hg = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.hh = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc335 unwind label %bb.au ; 5 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  %i.hk = call ptr @__cxa_begin_catch(ptr %i.hj) #28 ; 0 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.gx) #28
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread2140
  invoke void @__cxa_rethrow() #29
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body614 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #25
  unreachable

bb.al:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i
  unreachable

.body614.thread:                                  ; preds = %bb.ai
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body333

.body614:                                         ; preds = %bb.aj
  %.pr = load ptr, ptr %13, align 8, !tbaa !130   ; 3 uses
  %.not.i.i.i332 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i332, label %.body333, label %bb.am

bb.am:                                            ; preds = %.body614
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !105
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %.pr to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ht) #26
  br label %.body333

.noexc335:                                        ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  invoke void @_ZN7jsonnet8internal5ApplyC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_RKS5_INS0_8ArgParamESaISD_EEbSA_SA_b(ptr noundef nonnull align 8 dereferenceable(241) %i.hh, ptr noundef nonnull align 8 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.ex, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i1 noundef zeroext true)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_3VarESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i unwind label %bb.an

bb.an:                                            ; preds = %.noexc335
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 248) #26
  br label %.body336

_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_3VarESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i: ; preds = %.noexc335
  %i.hv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ao unwind label %bb.au     ; 2 uses

bb.ao:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_3VarESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %i.hh, ptr %i.hx, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.hw) #28
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 112 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !84
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !84
  %i.ib = load ptr, ptr %13, align 8, !tbaa !130  ; 3 uses
  %i.ic = load ptr, ptr %i.hf, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i ], [ %i.ib, %bb.ao ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #28
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i339 = icmp eq ptr %i.id, %i.ic
  br i1 %.not.i.i.i339, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.ao
  %i.ie = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ib, %bb.ao ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i
  %i.if = load ptr, ptr %i.gz, align 8, !tbaa !105
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ii) #26
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.ap
  %i.ij = getelementptr inbounds nuw i8, ptr %14, i64 88
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ij) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  store ptr %i.hh, ptr %i.b, align 8, !tbaa !70
  br i1 %i.as, label %.lr.ph, label %._crit_edge1587.thread

._crit_edge1587.thread:                           ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.aq

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %18, i64 176 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %30 = zext nneg i32 %27 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.jo = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.jp = getelementptr inbounds nuw i8, ptr %18, i64 176
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 88
  br label %bb.av

._crit_edge1587:                                  ; preds = %bb.er
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not.i.i.i341 = icmp eq ptr %.sroa.0706.0, null
  br i1 %.not.i.i.i341, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1587.thread, %._crit_edge1587
  %i.jr = phi ptr [ %i.hh, %._crit_edge1587.thread ], [ %.pre, %._crit_edge1587 ]
  %i.js = ptrtoint ptr %.sroa.14.0 to i64
  %i.jt = ptrtoint ptr %.sroa.0706.0 to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0706.0, i64 noundef %i.ju) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit: ; preds = %._crit_edge1587, %bb.aq
  %i.jv = phi ptr [ %.pre, %._crit_edge1587 ], [ %i.jr, %bb.aq ]
  %.not.i.i.i342 = icmp eq ptr %.sroa.0715.0, null
  br i1 %.not.i.i.i342, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit343, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit
  %i.jw = ptrtoint ptr %.sroa.15.0 to i64
  %i.jx = ptrtoint ptr %.sroa.0715.0 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0, i64 noundef %i.jy) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit343

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit343: ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit, %bb.ar
  ret ptr %i.jv

bb.as:                                            ; preds = %bb.x, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i312, %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i, %bb.z, %bb.ab
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body314.thread

bb.at:                                            ; preds = %bb.ac, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i322, %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ArrayEEEEPT_DpOT0_.exit.i, %bb.af, %bb.ah, %bb.ae
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body314

bb.au:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_3VarESB_S6_INS0_8ArgParamESaISE_EEbSB_SB_bEEEPT_DpOT0_.exit.i, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body336

.body336:                                         ; preds = %bb.an, %bb.au
  %eh.lpad-body337 = phi { ptr, i32 } [ %i.kb, %bb.au ], [ %i.hu, %bb.an ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #28
  br label %.body333

.body333:                                         ; preds = %.body614.thread, %bb.am, %.body614, %.body336
  %.pn178 = phi { ptr, i32 } [ %eh.lpad-body337, %.body336 ], [ %i.hl, %.body614 ], [ %i.hl, %bb.am ], [ %i.ho, %.body614.thread ]
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 88
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.kc) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %14) #28
  br label %.body314.thread

.body314:                                         ; preds = %bb.ag, %bb.at, %bb.ad
  %.pn178.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.ad ], [ %i.ka, %bb.at ], [ %i.gq, %bb.ag ]
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %14) #28
  br label %.body314.thread

.body314.thread:                                  ; preds = %.body314, %.body333, %bb.aa, %bb.as, %bb.y
  %.pn178.pn.pn.pn.pn734 = phi { ptr, i32 } [ %i.fk, %bb.y ], [ %.pn178, %.body333 ], [ %i.fu, %bb.aa ], [ %i.jz, %bb.as ], [ %.pn178.pn.pn.pn.pn, %.body314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body

bb.av:                                            ; preds = %.lr.ph, %bb.er
  %indvars.iv2044 = phi i64 [ %30, %.lr.ph ], [ %indvars.iv.next2045, %bb.er ] ; 6 uses
  %indvars.iv2039.in = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv2039.a, %bb.er ]
  %indvars.iv2039.a = add nsw i64 %indvars.iv2039.in, -1 ; 2 uses
  %i.kd = load ptr, ptr %i.d, align 8, !tbaa !194 ; 2 uses
  %i.ke = getelementptr inbounds nuw [96 x i8], ptr %i.kd, i64 %indvars.iv2044 ; 4 uses
  %.not = icmp eq i64 %indvars.iv2044, 0          ; 5 uses
  br i1 %.not, label %bb.bo, label %.preheader778

.preheader778:                                    ; preds = %bb.av, %.preheader778
  %indvars.iv2041 = phi i64 [ %indvars.iv.next2042, %.preheader778 ], [ %indvars.iv2039.a, %bb.av ]
  %indvars.iv.next2042 = add nsw i64 %indvars.iv2041, -1 ; 4 uses
  %i.kf = getelementptr inbounds nuw [96 x i8], ptr %i.kd, i64 %indvars.iv.next2042
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !197
  %.not185 = icmp eq i32 %i.kg, 0
  br i1 %.not185, label %bb.aw, label %.preheader778, !llvm.loop !359

bb.aw:                                            ; preds = %.preheader778
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0706.0, i64 %indvars.iv.next2042
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !101
  %i.kj = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.kk = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc345:                                        ; preds = %bb.aw
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.kk, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i344 unwind label %bb.ax

bb.ax:                                            ; preds = %.noexc345
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 136) #26
  br label %.body

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i344: ; preds = %.noexc345
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.kk, align 8, !tbaa !107
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 128
  store ptr %i.ki, ptr %i.km, align 8, !tbaa !122
  %i.kn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ay:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i344
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 96
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store ptr %i.kk, ptr %i.kp, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull align 8 dereferenceable(24) %i.ko) #28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 112 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !84
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0715.0, i64 %indvars.iv.next2042
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !101
  %i.kv = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.kw = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc351 unwind label %.body352.thread2158 ; 6 uses

.noexc351:                                        ; preds = %bb.ay
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.kw, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i350 unwind label %bb.az

bb.az:                                            ; preds = %.noexc351
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef 136) #26
  br label %.body352.thread

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i350: ; preds = %.noexc351
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.kw, align 8, !tbaa !107
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  store ptr %i.ku, ptr %i.ky, align 8, !tbaa !122
  %i.kz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ba unwind label %.body352.thread2158 ; 2 uses

bb.ba:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i350
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.kw, ptr %i.lb, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %i.la) #28
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 112 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !84
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !84
  %i.lf = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.lg = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc357 unwind label %.body352.thread2158 ; 4 uses

.noexc357:                                        ; preds = %bb.ba
  invoke void @_ZN7jsonnet8internal6BinaryC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_NS0_8BinaryOpESC_(ptr noundef nonnull align 8 dereferenceable(176) %i.lg, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.kw, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i32 noundef 3, ptr noundef %i.p)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i356 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc357
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 176) #26
  br label %.body352.thread

_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i356: ; preds = %.noexc357
  %i.li = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bc unwind label %.body352.thread2158 ; 2 uses

bb.bc:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i356
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 96
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store ptr %i.lg, ptr %i.lk, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.li, ptr noundef nonnull align 8 dereferenceable(24) %i.lj) #28
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 112 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !84
  %i.ln = add i64 %i.lm, 1
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !84
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull %i.lg, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.bd unwind label %.body352.thread2158

bb.bd:                                            ; preds = %bb.bc
  %i.lo = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.lp = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc363 unwind label %.body352 ; 6 uses

.noexc363:                                        ; preds = %bb.bd
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.lp, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i362 unwind label %.body352.thread2151

.body352.thread2151:                              ; preds = %.noexc363
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef 136) #26
  br label %.preheader776

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i362: ; preds = %.noexc363
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.lp, align 8, !tbaa !107
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 128
  store ptr %i.u, ptr %i.lr, align 8, !tbaa !122
  %i.ls = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.be unwind label %.body352  ; 2 uses

bb.be:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i362
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 96
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr %i.lp, ptr %i.lu, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %i.lt) #28
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 112 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !84
  %i.lx = add i64 %i.lw, 1
  store i64 %i.lx, ptr %i.lv, align 8, !tbaa !84
  invoke void @_ZN7jsonnet8internal8ArgParamC2EPNS0_3ASTERKSt6vectorINS0_13FodderElementESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.ik, ptr noundef nonnull %i.lp, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.bf unwind label %.body352

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ly = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc626 unwind label %.body627.thread ; 6 uses

.noexc626:                                        ; preds = %bb.bf
  store ptr %i.ly, ptr %15, align 8, !tbaa !130
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 176
  store ptr %i.lz, ptr %i.il, align 8, !tbaa !105
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ly, ptr noundef nonnull align 8 dereferenceable(88) %16)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624 unwind label %.thread2146

.thread2146:                                      ; preds = %.noexc626
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  %i.mc = call ptr @__cxa_begin_catch(ptr %i.mb) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i623

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624: ; preds = %.noexc626
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 88
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.md, ptr noundef nonnull align 8 dereferenceable(88) %i.ik)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624.1 unwind label %.lr.ph.i.i.i.i.i.i.i620.preheader

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624.1: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 176
  store ptr %i.me, ptr %i.im, align 8, !tbaa !104
  %i.mf = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.mg = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc374 unwind label %bb.bn ; 4 uses

.lr.ph.i.i.i.i.i.i.i620.preheader:                ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  %i.mj = call ptr @__cxa_begin_catch(ptr %i.mi) #28 ; 0 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ly) #28
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i623

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i623: ; preds = %.lr.ph.i.i.i.i.i.i.i620.preheader, %.thread2146
  invoke void @__cxa_rethrow() #29
          to label %bb.bi unwind label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i623
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body627 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #25
  unreachable

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i623
  unreachable

end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal9Desugarer22makeArrayComprehensionEPNS0_18ArrayComprehensionE:._crit_edge.i.i
  br i1 %.not4.i.i.i378, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i384, label %.lr.ph.i.i.i379

.lr.ph.i.i.i379:                                  ; preds = %bb.bl, %.lr.ph.i.i.i379
  %.05.i.i.i380 = phi ptr [ %i.nb, %.lr.ph.i.i.i379 ], [ %i.mz, %bb.bl ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i380) #28
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i.i.i380, i64 88 ; 2 uses
  %.not.i.i.i381 = icmp eq ptr %i.nb, %i.na
  br i1 %.not.i.i.i381, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i382, label %.lr.ph.i.i.i379, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i382: ; preds = %.lr.ph.i.i.i379
  %.pr.i383 = load ptr, ptr %15, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i384

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i384: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i382, %bb.bl
  %i.nc = phi ptr [ %.pr.i383, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i382 ], [ %i.mz, %bb.bl ] ; 3 uses
  %.not.i.i1.i385 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i1.i385, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit387, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i384
  %i.nd = load ptr, ptr %i.il, align 8, !tbaa !105
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nc to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.ng) #26
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit387

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit387: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i384, %bb.bm
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.jn) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.br

bb.bn:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_S7_INS0_8ArgParamESaISF_EEbSC_SC_bEEEPT_DpOT0_.exit.i, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i624.1
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body375

.body375:                                         ; preds = %bb.bk, %bb.bn
  %eh.lpad-body376 = phi { ptr, i32 } [ %i.nh, %bb.bn ], [ %i.ms, %bb.bk ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #28
  br label %.body371

.body371:                                         ; preds = %.body627.thread, %bb.bj, %.body627, %.body375
  %.pn186 = phi { ptr, i32 } [ %eh.lpad-body376, %.body375 ], [ %i.mk, %.body627 ], [ %i.mk, %bb.bj ], [ %i.mn, %.body627.thread ]
  %i.ni = getelementptr inbounds nuw i8, ptr %16, i64 88
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ni) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %16) #28
  br label %.body352.thread

.body352.thread2158:                              ; preds = %bb.ay, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i350, %bb.bc, %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpERPNS0_3ASTEEEEPT_DpOT0_.exit.i356, %bb.ba
  %lpad.thr_comm2156 = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread

.body352:                                         ; preds = %bb.be, %bb.bd, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i362
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.preheader776

.preheader776:                                    ; preds = %.body352.thread2151, %.body352
  %.pn186.pn.pn2155 = phi { ptr, i32 } [ %i.lq, %.body352.thread2151 ], [ %lpad.thr_comm.split-lp, %.body352 ]
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %16) #28
  br label %.body352.thread

.body352.thread:                                  ; preds = %.preheader776, %.body352.thread2158, %.body371, %bb.bb, %bb.az
  %.pn186.pn.pn740 = phi { ptr, i32 } [ %lpad.thr_comm2156, %.body352.thread2158 ], [ %.pn186, %.body371 ], [ %i.lh, %bb.bb ], [ %i.kx, %bb.az ], [ %.pn186.pn.pn2155, %.preheader776 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.body

bb.bo:                                            ; preds = %bb.av
  %i.nj = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.nk = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc389:                                        ; preds = %bb.bo
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.nk, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i388 unwind label %bb.bp

bb.bp:                                            ; preds = %.noexc389
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef 136) #26
  br label %.body

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i388: ; preds = %.noexc389
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.nk, align 8, !tbaa !107
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 128
  store ptr %i.u, ptr %i.nm, align 8, !tbaa !122
  %i.nn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bq:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i388
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 96
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store ptr %i.nk, ptr %i.np, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, ptr noundef nonnull align 8 dereferenceable(24) %i.no) #28
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 112 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !84
  %i.ns = add i64 %i.nr, 1
  store i64 %i.ns, ptr %i.nq, align 8, !tbaa !84
  br label %bb.br

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i344, %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERKPNS0_3ASTESB_RSD_SB_SG_EEEPT_DpOT0_.exit.i, %bb.bs, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i388, %bb.bo, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i, %bb.v
  %lpad.loopexit.split-lp3194 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.br:                                            ; preds = %bb.bq, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit387
  %.0729 = phi ptr [ %i.nk, %bb.bq ], [ %i.mg, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit387 ] ; 2 uses
  %i.nt = load i32, ptr %i.ke, align 8, !tbaa !197
  switch i32 %i.nt, label %bb.er [
    i32 1, label %bb.bs
    i32 0, label %bb.bv
  ]

bb.bs:                                            ; preds = %bb.br
  %i.nu = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.nv = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27
          to label %.noexc394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc394:                                        ; preds = %bb.bs
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ke, i64 88
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !70
  %i.ny = load ptr, ptr %i.b, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal11ConditionalC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_SC_SA_SC_(ptr noundef nonnull align 8 dereferenceable(200) %i.nv, ptr noundef nonnull align 8 dereferenceable(64) %i.in, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.nx, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %.0729)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERKPNS0_3ASTESB_RSD_SB_SG_EEEPT_DpOT0_.exit.i unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc394
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef 200) #26
  br label %.body

_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERKPNS0_3ASTESB_RSD_SB_SG_EEEPT_DpOT0_.exit.i: ; preds = %.noexc394
  %i.oa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bu:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERKPNS0_3ASTESB_RSD_SB_SG_EEEPT_DpOT0_.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 96
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store ptr %i.nv, ptr %i.oc, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.ob) #28
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 112 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !84
  %i.of = add i64 %i.oe, 1
  store i64 %i.of, ptr %i.od, align 8, !tbaa !84
  store ptr %i.nv, ptr %i.b, align 8, !tbaa !70
  br label %bb.er

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.og = getelementptr inbounds nuw i8, ptr %i.ke, i64 88
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !367
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKSt6vectorINS0_13FodderElementESaIS4_EEPKNS0_10IdentifierES8_PNS0_3ASTEbS8_RKS3_INS0_8ArgParamESaISE_EEbS8_S8_(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.oh, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.oi = load ptr, ptr %6, align 8, !tbaa !130, !noalias !367 ; 3 uses
  %i.oj = load ptr, ptr %i.io, align 8, !tbaa !104, !noalias !367 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.oi, %i.oj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bw, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i ], [ %i.oi, %bb.bw ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i) #28
  %i.ok = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i398 = icmp eq ptr %i.ok, %i.oj
  br i1 %.not.i.i.i.i398, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !130, !noalias !367
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.bw
  %i.ol = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.oi, %bb.bw ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i.i1.i.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.om = load ptr, ptr %i.ip, align 8, !tbaa !105, !noalias !367
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.op) #26
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !367
  br label %.body399.thread

bb.bz:                                            ; preds = %bb.bx, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !367
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0706.0, i64 %indvars.iv2044 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0715.0, i64 %indvars.iv2044 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !101
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.ou, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.ca unwind label %.thread

.thread:                                          ; preds = %bb.bz
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body399.thread2184

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKSt6vectorINS0_13FodderElementESaIS3_EEPKNS0_10IdentifierES7_(ptr noundef nonnull align 8 dereferenceable(88) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.cb unwind label %.body399.loopexit1588

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ow = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc640 unwind label %.body641.thread ; 6 uses

.noexc640:                                        ; preds = %bb.cb
  store ptr %i.ow, ptr %19, align 8, !tbaa !130
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 176
  store ptr %i.ox, ptr %i.is, align 8, !tbaa !105
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ow, ptr noundef nonnull align 8 dereferenceable(88) %20)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638 unwind label %.thread2161

.thread2161:                                      ; preds = %.noexc640
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  %i.pa = call ptr @__cxa_begin_catch(ptr %i.oz) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i637

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638: ; preds = %.noexc640
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 88
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.pb, ptr noundef nonnull align 8 dereferenceable(88) %i.ir)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638.1 unwind label %.lr.ph.i.i.i.i.i.i.i634.preheader

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638.1: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 176
  store ptr %i.pc, ptr %i.it, align 8, !tbaa !104
  %i.pd = load ptr, ptr %i.ot, align 8, !tbaa !101
  %i.pe = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.pf = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc407 unwind label %bb.eh ; 6 uses

.lr.ph.i.i.i.i.i.i.i634.preheader:                ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  %i.pi = call ptr @__cxa_begin_catch(ptr %i.ph) #28 ; 0 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ow) #28
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i637

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i637: ; preds = %.lr.ph.i.i.i.i.i.i.i634.preheader, %.thread2161
  invoke void @__cxa_rethrow() #29
          to label %bb.ce unwind label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i637
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body641 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #25
  unreachable

bb.ce:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i.i637
  unreachable

.body641.thread:                                  ; preds = %bb.cb
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body399

.body641:                                         ; preds = %bb.cc
  %.pr741 = load ptr, ptr %19, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i401 = icmp eq ptr %.pr741, null
  br i1 %.not.i.i.i401, label %.body399, label %bb.cf

bb.cf:                                            ; preds = %.body641
  %i.pn = load ptr, ptr %i.is, align 8, !tbaa !105
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %.pr741 to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %.pr741, i64 noundef %i.pq) #26
  br label %.body399

.noexc407:                                        ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638.1
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.pf, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i406 unwind label %bb.cg

bb.cg:                                            ; preds = %.noexc407
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 136) #26
  br label %.body408

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i406: ; preds = %.noexc407
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.pf, align 8, !tbaa !107
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 128
  store ptr %i.pd, ptr %i.ps, align 8, !tbaa !122
  %i.pt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ch unwind label %bb.eh     ; 2 uses

bb.ch:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i406
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pe, i64 96
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store ptr %i.pf, ptr %i.pv, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %i.pu) #28
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pe, i64 112 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !84
  %i.py = add i64 %i.px, 1
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !84
  %i.pz = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.qa = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc413 unwind label %bb.eh ; 6 uses

.noexc413:                                        ; preds = %bb.ch
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.qa, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i412 unwind label %bb.ci

bb.ci:                                            ; preds = %.noexc413
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 136) #26
  br label %.body408

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i412: ; preds = %.noexc413
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.qa, align 8, !tbaa !107
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  store ptr %i.ae, ptr %i.qc, align 8, !tbaa !122
  %i.qd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.cj unwind label %bb.eh     ; 2 uses

bb.cj:                                            ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i412
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 96
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store ptr %i.qa, ptr %i.qf, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.qe) #28
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 112 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !84
  %i.qi = add i64 %i.qh, 1
  store i64 %i.qi, ptr %i.qg, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.qj = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #27
          to label %.noexc421 unwind label %bb.eh ; 3 uses

.noexc421:                                        ; preds = %bb.cj
  store ptr %i.qj, ptr %5, align 8, !tbaa !51
  store i64 6, ptr %i.iu, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.qj, ptr noundef nonnull align 4 dereferenceable(24) @.str.26, i64 24, i1 false)
  store i64 6, ptr %i.iv, align 8, !tbaa !52
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i32 0, ptr %i.qk, align 4, !tbaa !54
  %i.ql = invoke noundef ptr @_ZN7jsonnet8internal9Desugarer7stdFuncERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.qa)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %.noexc421
  %i.qm = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.iu
  br i1 %i.qn, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i420, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i419

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i419: ; preds = %bb.ck
  %i.qo = load i64, ptr %i.iu, align 8, !tbaa !44
  %i.qp = shl i64 %i.qo, 2
  %i.qq = add i64 %i.qp, 4
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qq) #26
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i420

bb.cl:                                            ; preds = %.noexc421
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.iu
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.cl
  %i.qu = load i64, ptr %i.iu, align 8, !tbaa !44
  %i.qv = shl i64 %i.qu, 2
  %i.qw = add i64 %i.qv, 4
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body408

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i420: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.qx = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.qy = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc424 unwind label %bb.eh ; 4 uses

.noexc424:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i420
  invoke void @_ZN7jsonnet8internal6BinaryC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_NS0_8BinaryOpESC_(ptr noundef nonnull align 8 dereferenceable(176) %i.qy, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.pf, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, i32 noundef 8, ptr noundef %i.ql)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ApplyEEEEPT_DpOT0_.exit.i unwind label %bb.cm
end_hunk_1
begin_hunk_2_@_ZN7jsonnet8internal9Desugarer22makeArrayComprehensionEPNS0_18ArrayComprehensionE:._crit_edge.i.i
.body399.loopexit1588:                            ; preds = %bb.ca
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %20) #28
  br label %.body399.thread2184

bb.eh:                                            ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i638.1, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i406, %_ZN7jsonnet8internal9Allocator4makeINS0_6BinaryEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_NS0_8BinaryOpEPNS0_5ApplyEEEEPT_DpOT0_.exit.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i420, %bb.cj, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i412, %bb.ch
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %.body408

bb.ei:                                            ; preds = %bb.cp, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i434, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i428, %bb.cn, %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bSE_SC_DnSC_DnSC_EEEPT_DpOT0_.exit.i, %bb.cr, %bb.ct
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body430

bb.ej:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_8FunctionEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EESB_S6_INS0_8ArgParamESaISC_EEbSB_PNS0_11ConditionalEEEEPT_DpOT0_.exit.i, %bb.cw, %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_6BinaryESB_RPNS0_3ASTESB_PNS0_5LocalEEEEPT_DpOT0_.exit.i, %_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EES6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit, %bb.cu
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.body446

bb.ek:                                            ; preds = %bb.di, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i467, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %.body469

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i486
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588

bb.em:                                            ; preds = %.noexc489, %bb.dl, %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i498, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i494
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %.body496

bb.en:                                            ; preds = %bb.dp
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %.critedge228.thread

.split.thread:                                    ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ArrayEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EES7_INS3_7ElementESaISD_EEbSC_EEEPT_DpOT0_.exit.i, %bb.dr
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.critedge228.thread2181

.split.thread770:                                 ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i508, %bb.ds
  %lpad.thr_comm768 = landingpad { ptr, i32 }
          cleanup
  br label %.preheader774.preheader

.split:                                           ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_5ArrayEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EES7_INS3_7ElementESaISD_EEbSC_EEEPT_DpOT0_.exit
  %lpad.thr_comm.split-lp769 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %.critedge228.thread2181, label %.preheader774.preheader

bb.eo:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_5ApplyEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_S7_INS0_8ArgParamESaISF_EEbSC_SC_bEEEPT_DpOT0_.exit.i520, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i663.1
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %.body522

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i530
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585

bb.eq:                                            ; preds = %bb.eb, %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EEPNS0_5ApplyESB_SD_SB_PNS0_5ErrorEEEEPT_DpOT0_.exit.i, %bb.dz, %.noexc533
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %.body536

.body536:                                         ; preds = %bb.ea, %bb.eq
  %eh.lpad-body537 = phi { ptr, i32 } [ %i.aal, %bb.eq ], [ %i.yc, %bb.ea ] ; 2 uses
  %i.aam = load ptr, ptr %26, align 8, !tbaa !51  ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.jj
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i583: ; preds = %.body536
  %i.aao = load i64, ptr %i.jj, align 8, !tbaa !44
  %i.aap = shl i64 %i.aao, 2
  %i.aaq = add i64 %i.aap, 4
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585: ; preds = %.body536, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i583, %bb.ep
  %.pn191 = phi { ptr, i32 } [ %i.aak, %bb.ep ], [ %eh.lpad-body537, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i583 ], [ %eh.lpad-body537, %.body536 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %.body522

.body522:                                         ; preds = %bb.eo, %bb.dy, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585
  %.pn191.pn = phi { ptr, i32 } [ %.pn191, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit585 ], [ %i.aaj, %bb.eo ], [ %i.xq, %bb.dy ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #28
  br label %.body517

.body517:                                         ; preds = %.body666.thread, %bb.dx, %.body666, %.body522
  %.pn191.pn.pn = phi { ptr, i32 } [ %.pn191.pn, %.body522 ], [ %i.xi, %.body666 ], [ %i.xi, %bb.dx ], [ %i.xl, %.body666.thread ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %24, i64 88
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.aar) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %24) #28
  br i1 %.not, label %.critedge228, label %.critedge228.thread

.critedge228.thread2181:                          ; preds = %.body505.thread, %.split, %.split.thread
  %.pn191.pn.pn.pn748.ph = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %lpad.thr_comm.split-lp769, %.split ], [ %i.wk, %.body505.thread ]
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.preheader774.preheader

.critedge228:                                     ; preds = %.body517
  call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.critedge228.thread

.preheader774.preheader:                          ; preds = %.split.thread770, %.split, %.body505.thread750, %.critedge228.thread2181
  %.pn191.pn.pn.pn.pn2179 = phi { ptr, i32 } [ %.pn191.pn.pn.pn748.ph, %.critedge228.thread2181 ], [ %lpad.thr_comm768, %.split.thread770 ], [ %lpad.thr_comm.split-lp769, %.split ], [ %i.wo, %.body505.thread750 ]
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %24) #28
  br label %.critedge228.thread

.critedge228.thread:                              ; preds = %.critedge228, %.preheader774.preheader, %bb.en, %.body517
  %.pn191.pn.pn.pn.pn758 = phi { ptr, i32 } [ %.pn191.pn.pn, %.critedge228 ], [ %.pn191.pn.pn, %.body517 ], [ %i.aai, %bb.en ], [ %.pn191.pn.pn.pn.pn2179, %.preheader774.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %.body496

.body496:                                         ; preds = %.critedge228.thread, %bb.do, %bb.em, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit10.i
  %.pn191.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vr, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit10.i ], [ %i.wa, %bb.do ], [ %.pn191.pn.pn.pn.pn758, %.critedge228.thread ], [ %i.aah, %bb.em ] ; 2 uses
  %i.aas = load ptr, ptr %22, align 8, !tbaa !51  ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.jc
  br i1 %i.aat, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i586

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i586: ; preds = %.body496
  %i.aau = load i64, ptr %i.jc, align 8, !tbaa !44
  %i.aav = shl i64 %i.aau, 2
  %i.aaw = add i64 %i.aav, 4
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aaw) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588: ; preds = %.body496, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i586, %bb.el
  %.pn191.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aag, %bb.el ], [ %.pn191.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i586 ], [ %.pn191.pn.pn.pn.pn.pn.pn, %.body496 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.body469

.body469:                                         ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i475, %bb.ek, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit588 ], [ %i.uj, %bb.dh ], [ %i.aaf, %bb.ek ], [ %i.uz, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i475 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #28
  br label %.body465

.body465:                                         ; preds = %.body653.thread, %bb.dg, %.body653, %.body469
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn, %.body469 ], [ %i.ub, %.body653 ], [ %i.ub, %bb.dg ], [ %i.ue, %.body653.thread ]
  %i.aax = getelementptr inbounds nuw i8, ptr %18, i64 176
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.aax) #28
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %18) #28
  br label %.body446

.body446:                                         ; preds = %.body465, %bb.cv, %bb.ej, %bb.db, %bb.cx
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.to, %bb.db ], [ %i.sq, %bb.cv ], [ %i.sz, %bb.cx ], [ %i.aae, %bb.ej ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body465 ]
  %.0100 = phi i1 [ true, %bb.db ], [ true, %bb.cv ], [ true, %bb.cx ], [ true, %bb.ej ], [ false, %.body465 ]
  call void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  br label %.body430

.body430:                                         ; preds = %bb.cq, %bb.ei, %bb.cs, %.body446, %bb.co
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.co ], [ %i.sf, %bb.cs ], [ %i.rv, %bb.cq ], [ %i.aad, %bb.ei ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body446 ]
  %.3 = phi i1 [ true, %bb.co ], [ true, %bb.cs ], [ true, %bb.cq ], [ true, %bb.ei ], [ %.0100, %.body446 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %.body408

.body408:                                         ; preds = %.body430, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i, %bb.cm, %bb.eh, %bb.ci, %bb.cg
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pr, %bb.cg ], [ %i.qz, %bb.cm ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body430 ], [ %i.qb, %bb.ci ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i ], [ %i.aac, %bb.eh ]
  %.5 = phi i1 [ true, %bb.cg ], [ true, %bb.cm ], [ %.3, %.body430 ], [ true, %bb.ci ], [ true, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8.i ], [ true, %bb.eh ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #28
  br label %.body399

.body399.thread2184:                              ; preds = %.thread, %.body399.loopexit1588
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.aab, %.body399.loopexit1588 ], [ %i.ov, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.preheader.preheader

.body399:                                         ; preds = %.body408, %.body641, %bb.cf, %.body641.thread
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body408 ], [ %i.pj, %.body641 ], [ %i.pj, %bb.cf ], [ %i.pm, %.body641.thread ] ; 2 uses
  %.6 = phi i1 [ %.5, %.body408 ], [ true, %.body641 ], [ true, %bb.cf ], [ true, %.body641.thread ]
  %i.aay = getelementptr inbounds nuw i8, ptr %20, i64 88
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.aay) #28
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br i1 %.6, label %.preheader.preheader, label %.body399.thread

.preheader.preheader:                             ; preds = %.body399.thread2184, %.body399
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn2187 = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body399.thread2184 ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body399 ]
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %18) #28
  br label %.body399.thread

.body399.thread:                                  ; preds = %.preheader.preheader, %bb.by, %.body399
  %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn763 = phi { ptr, i32 } [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body399 ], [ %i.oq, %bb.by ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn2187, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

bb.er:                                            ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit582, %bb.bu, %bb.br
  %indvars.iv.next2045 = add nsw i64 %indvars.iv2044, -1
  %i.aaz = icmp sgt i64 %indvars.iv2044, 0
  br i1 %i.aaz, label %bb.av, label %._crit_edge1587, !llvm.loop !364

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body399.thread, %bb.ax, %.body352.thread, %bb.bt, %bb.bp, %.body314.thread, %bb.w
  %.pn212.pn = phi { ptr, i32 } [ %i.ey, %bb.w ], [ %.pn178.pn.pn.pn.pn734, %.body314.thread ], [ %i.nz, %bb.bt ], [ %i.kl, %bb.ax ], [ %.pn191.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn763, %.body399.thread ], [ %.pn186.pn.pn740, %.body352.thread ], [ %i.nl, %bb.bp ], [ %lpad.loopexit.split-lp3194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.es

bb.es:                                            ; preds = %.body, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit309
  %.pn215.pn.pn = phi { ptr, i32 } [ %.pn215.pn, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit309 ], [ %.pn212.pn, %.body ] ; 2 uses
  %.not.i.i.i589 = icmp eq ptr %.sroa.0706.0, null
  br i1 %.not.i.i.i589, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aba = ptrtoint ptr %.sroa.14.0 to i64
  %i.abb = ptrtoint ptr %.sroa.0706.0 to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0706.0, i64 noundef %i.abc) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590: ; preds = %bb.l, %bb.es, %bb.et, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit276
  %.pn220.pn.pn = phi { ptr, i32 } [ %.pn220.pn, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit276 ], [ %i.dd, %bb.l ], [ %.pn215.pn.pn, %bb.es ], [ %.pn215.pn.pn, %bb.et ] ; 2 uses
  %.not.i.i.i591 = icmp eq ptr %.sroa.0715.0, null
  br i1 %.not.i.i.i591, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit592, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590
  %i.abd = ptrtoint ptr %.sroa.15.0 to i64
  %i.abe = ptrtoint ptr %.sroa.0715.0 to i64
  %i.abf = sub i64 %i.abd, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0, i64 noundef %i.abf) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit592

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit592: ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590, %bb.eu, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit261, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit258
  %.pn220.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit258 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit261 ], [ %.pn220.pn.pn, %bb.eu ], [ %.pn220.pn.pn, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit590 ]
  resume { ptr, i32 } %.pn220.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer4makeINS0_5ErrorEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27 ; 6 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5ErrorEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTEEEEPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #26
  resume { ptr, i32 } %i.d

_ZN7jsonnet8internal9Allocator4makeINS0_5ErrorEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTEEEEPT_DpOT0_.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ErrorE, i64 16), ptr %i.b, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.e, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.b, ptr %i.h, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27 ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !70
  %i.d = load ptr, ptr %5, align 8, !tbaa !70
  %i.e = load ptr, ptr %7, align 8, !tbaa !70
  invoke void @_ZN7jsonnet8internal11ConditionalC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_SC_SA_SC_(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.e)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 200) #26
  resume { ptr, i32 } %i.f

_ZN7jsonnet8internal9Allocator4makeINS0_11ConditionalEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPNS0_3ASTERKS9_SD_SF_SD_EEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.b, ptr %i.i, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !84
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %11) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #27 ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !155
  %i.d = load i8, ptr %5, align 1, !tbaa !156, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr %6, align 8, !tbaa !158
  invoke void @_ZN7jsonnet8internal5IndexC2ERKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS6_EEPNS0_3ASTESA_bSC_SA_SC_SA_SC_SA_(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %i.e, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 272) #26
  resume { ptr, i32 } %i.g

_ZN7jsonnet8internal9Allocator4makeINS0_5IndexEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEPNS0_3VarESC_bPNS0_13LiteralStringESC_DnSC_DnSC_EEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.b, ptr %i.j, align 8, !tbaa !70
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !84
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer3stdEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = select i1 %i.c, ptr @.str.114, ptr @.str.115
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !55
  %wcslen.i.i = select i1 %i.c, i64 3, i64 4      ; 2 uses
  %.idx.i = shl nuw nsw i64 %wcslen.i.i, 2        ; 3 uses
  br i1 %i.c, label %._crit_edge.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  %i.f = add nuw nsw i64 %.idx.i, 4
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !51
  store i64 4, ptr %i.e, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  %.pre8.i.i = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre8.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.d, i64 %.idx.i, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %wcslen.i.i, ptr %i.h, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.i, align 4, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !64
  %i.k = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.d

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc6 unwind label %bb.d    ; 6 uses

.noexc6:                                          ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc6
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 136) #26
  br label %.body

_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i: ; preds = %.noexc6
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.m, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.k, ptr %i.o, align 8, !tbaa !122
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_3VarEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !84
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !84
  %i.v = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.e, align 8, !tbaa !44
  %i.y = shl i64 %i.x, 2
  %i.z = add i64 %i.y, 4
end_hunk_2
