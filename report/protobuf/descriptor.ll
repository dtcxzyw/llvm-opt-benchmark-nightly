inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  ret i1 %i.y

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.k, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  %i.ai = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.g
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(3) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %7 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %8 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %9 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %10 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %11 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %12 = alloca %"class.std::vector.195", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.google::protobuf::EnumOptions", align 8 ; 10 uses
  %17 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 7 uses
  %20 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.d, ptr %13, align 8, !tbaa !16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.c, i8 noundef signext 32)
  %i.e = add nsw i32 %1, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %i.l, align 8, !tbaa !23
  store i8 0, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !955
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 7 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = load ptr, ptr %13, align 8, !tbaa !20    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i64 %i.s, ptr %i.a, align 8, !tbaa !19
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.u, ptr %i.o, align 8, !tbaa !20
  %i.v = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.v, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !22
  store i8 %i.x, ptr %i.w, align 1, !tbaa !22
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i64 %i.y, ptr %i.z, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  %i.ac = load i8, ptr %3, align 1, !tbaa !947, !range !49, !noundef !51
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf14EnumDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %12)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !674
  %i.ag = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.f)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %12, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf14EnumDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !730
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #43
  br label %_ZNK6google8protobuf14EnumDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %12, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !730
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i:               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.p
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNK6google8protobuf14EnumDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  %i.aw = zext i1 %i.ag to i8
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.az) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.an, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i ]
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.f) #42
  br label %.body

bb.k:                                             ; preds = %_ZNK6google8protobuf14EnumDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, %bb.c
  %i.ba = phi i8 [ 0, %bb.c ], [ %i.aw, %_ZNK6google8protobuf14EnumDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.ba, ptr %14, align 8, !tbaa !956
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %13, align 8, !tbaa !20
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %22 = lshr i8 %i.be, 2
  %23 = and i8 %22, 3
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store ptr %24, ptr %15, align 8, !tbaa !16, !alias.scope !1041
  switch i8 %23, label %._crit_edge.i.i8.i [
    i8 2, label %._crit_edge.i.i.i80
    i8 1, label %._crit_edge.i.i4.i
  ]

._crit_edge.i.i.i80:                              ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %24, ptr noundef nonnull align 1 dereferenceable(7) @.str.284, i64 7, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.bf, align 8, !tbaa !23, !alias.scope !1041
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.bg, align 1, !tbaa !22, !alias.scope !1041
  br label %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit

._crit_edge.i.i4.i:                               ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %24, ptr noundef nonnull align 1 dereferenceable(6) @.str.285, i64 6, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 6, ptr %i.bh, align 8, !tbaa !23, !alias.scope !1041
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i8 0, ptr %i.bi, align 2, !tbaa !22, !alias.scope !1041
  br label %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit

._crit_edge.i.i8.i:                               ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !23, !alias.scope !1041
  store i8 0, ptr %24, align 8, !tbaa !22, !alias.scope !1041
  br label %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit

_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit: ; preds = %._crit_edge.i.i.i80, %._crit_edge.i.i4.i, %._crit_edge.i.i8.i
  %i.bk = phi i64 [ 7, %._crit_edge.i.i.i80 ], [ 6, %._crit_edge.i.i4.i ], [ 0, %._crit_edge.i.i8.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.bm, align 1
  %i.bn = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.bo = xor i64 %i.bn, -1
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  store i64 %i.bc, ptr %11, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.bk, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %24, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.bn, ptr %i.bt, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.bp, ptr %i.bu, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.110, ptr noundef nonnull %11, i64 noundef 3)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  %i.bv = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %24
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bx = load i64, ptr %24, align 8, !tbaa !22
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !912
  invoke void @_ZN6google8protobuf11EnumOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ca)
          to label %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit unwind label %bb.t

_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !913 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  %i.cf = or i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.o, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !535 ; 3 uses
  %i.cl = trunc i64 %i.ck to i1
  br i1 %i.cl, label %bb.p, label %bb.q, !prof !163

bb.p:                                             ; preds = %bb.o
  %i.cm = add nsw i64 %i.ck, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cp = inttoptr i64 %i.ck to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi ptr [ %i.co, %bb.p ], [ %i.cp, %bb.q ]
  %i.cq = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !22
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i: ; preds = %.noexc, %bb.n
  %i.cr = phi ptr [ %i.cq, %.noexc ], [ %i.ch, %bb.n ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(72) %i.cc)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.u

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit, %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !674
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1007
  %i.cw = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.cv, ptr noundef %2)
          to label %.preheader unwind label %bb.u ; 0 uses

.preheader:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !906
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !783
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit

bb.r:                                             ; preds = %bb.k
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.s:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %24
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.s
  %i.di = load i64, ptr %24, align 8, !tbaa !22
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  br label %bb.be

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.u:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.ay, %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.v:                                             ; preds = %.lr.ph
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !466
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %indvars.iv
  invoke void @_ZNK6google8protobuf19EnumValueDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(48) %i.do, i32 noundef %i.e, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.cx, align 4, !tbaa !906
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %.lr.ph, label %._crit_edge, !llvm.loop !1044

bb.x:                                             ; preds = %._crit_edge
  %i.ds = load ptr, ptr %13, align 8, !tbaa !20
  %i.dt = load i64, ptr %i.r, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #42
  store i64 %i.dt, ptr %10, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ds, ptr %i.du, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 13, ptr nonnull @.str.94, ptr noundef nonnull %10, i64 noundef 1)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  %i.dv = load i32, ptr %i.db, align 8, !tbaa !783
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph71.preheader, label %._crit_edge72

.lr.ph71.preheader:                               ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.lr.ph71

._crit_edge72:                                    ; preds = %bb.aq, %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !23 ; 3 uses
  %i.er = add i64 %i.eq, -2                       ; 2 uses
  %i.es = icmp ult i64 %i.eq, 2
  br i1 %i.es, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %._crit_edge72
  %i.et = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.er, i64 noundef 2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit unwind label %bb.u ; 0 uses

bb.z:                                             ; preds = %bb.x
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.aq
  %indvars.iv184 = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next185, %bb.aq ] ; 2 uses
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !784
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv184 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !787 ; 3 uses
  %i.ez = load i32, ptr %i.ew, align 4, !tbaa !785 ; 3 uses
  %i.fa = icmp eq i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph71
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  %i.fb = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ey, ptr noundef nonnull %i.el)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.em                    ; 2 uses
  store i64 %i.fd, ptr %17, align 8, !tbaa !847
  store ptr %i.el, ptr %i.en, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #42
  store i64 %i.fd, ptr %9, align 16
  store ptr %i.el, ptr %i.eo, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 4, ptr nonnull @.str.95, ptr noundef nonnull %9, i64 noundef 1)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.aq

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.bc

bb.ae:                                            ; preds = %.lr.ph71
  %i.ff = icmp eq i32 %i.ey, 2147483647
  br i1 %i.ff, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.fg = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ez, ptr noundef nonnull %i.eh)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.ei                    ; 2 uses
  store i64 %i.fi, ptr %18, align 8, !tbaa !847
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #42
  store i64 %i.fi, ptr %8, align 16
  store ptr %i.eh, ptr %i.ek, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 11, ptr nonnull @.str.96, ptr noundef nonnull %8, i64 noundef 1)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.bc

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %i.fk = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ez, ptr noundef nonnull %i.dy)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.dz
  store i64 %i.fm, ptr %19, align 8, !tbaa !847
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.fn = load i32, ptr %i.ex, align 4, !tbaa !787
  %i.fo = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.fn, ptr noundef nonnull %i.eb)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fp, %i.ec                    ; 2 uses
  store i64 %i.fq, ptr %20, align 8, !tbaa !847
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  %.sroa.0.0.copyload.i.i108 = load i64, ptr %19, align 8, !tbaa !19
  %.sroa.2.0.copyload.i.i110 = load ptr, ptr %i.ea, align 8, !tbaa !270
  store i64 %.sroa.0.0.copyload.i.i108, ptr %7, align 16
  store ptr %.sroa.2.0.copyload.i.i110, ptr %i.ee, align 8
  store i64 %i.fq, ptr %i.ef, align 16
  store ptr %i.eb, ptr %i.eg, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 10, ptr nonnull @.str.97, ptr noundef nonnull %7, i64 noundef 2)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al, %bb.ak
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb:bb.a
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %7 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %8 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %9 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %10 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %11 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %12 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %13 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %14 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %15 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %16 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %17 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %18 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %19 = alloca %"class.std::vector.195", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %21 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.google::protobuf::MessageOptions", align 8 ; 10 uses
  %24 = alloca %"class.absl::lts_20250512::flat_hash_set.6", align 8 ; 22 uses
  %25 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %27 = alloca %"class.google::protobuf::ExtensionRangeOptions", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %35 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 7 uses
  %36 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !689
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 51
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22, !range !49, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.g = shl nsw i32 %1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.i, ptr %20, align 8, !tbaa !16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.h, i8 noundef signext 32)
  %i.j = add nsw i32 %1, 1                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 0, ptr %i.n, align 8, !tbaa !23
  store i8 0, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !955
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 7 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !16
  %i.v = load ptr, ptr %20, align 8, !tbaa !20    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i64 %i.x, ptr %i.a, align 8, !tbaa !19
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !20
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ab = phi ptr [ %i.z, %.noexc.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !22
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 128
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !23
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  %i.ah = load i8, ptr %3, align 1, !tbaa !947, !range !49, !noundef !51
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf10Descriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !669
  %i.al = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull %i.k)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %19, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #43
  br label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %19, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !730
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i:               ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  %i.bb = zext i1 %i.al to i8
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !22
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.be) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i ]
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.k) #42
  br label %.body

bb.l:                                             ; preds = %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, %bb.d
  %i.bf = phi i8 [ 0, %bb.d ], [ %i.bb, %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.bf, ptr %21, align 8, !tbaa !956
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %21, ptr noundef %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %4, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %20, align 8, !tbaa !20
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bj = load i16, ptr %i.bi, align 1
  %38 = lshr i16 %i.bj, 8
  %39 = and i16 %38, 3
  %40 = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  store ptr %40, ptr %22, align 8, !tbaa !16, !alias.scope !1047
  switch i16 %39, label %._crit_edge.i.i8.i [
    i16 2, label %._crit_edge.i.i.i211
    i16 1, label %._crit_edge.i.i4.i
  ]

._crit_edge.i.i.i211:                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %40, ptr noundef nonnull align 1 dereferenceable(7) @.str.284, i64 7, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 7, ptr %i.bk, align 8, !tbaa !23, !alias.scope !1047
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 23
  store i8 0, ptr %i.bl, align 1, !tbaa !22, !alias.scope !1047
  br label %bb.o

._crit_edge.i.i4.i:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %40, ptr noundef nonnull align 1 dereferenceable(6) @.str.285, i64 6, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 6, ptr %i.bm, align 8, !tbaa !23, !alias.scope !1047
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 22
  store i8 0, ptr %i.bn, align 2, !tbaa !22, !alias.scope !1047
  br label %bb.o

._crit_edge.i.i8.i:                               ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !23, !alias.scope !1047
  store i8 0, ptr %40, align 8, !tbaa !22, !alias.scope !1047
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i8.i, %._crit_edge.i.i4.i, %._crit_edge.i.i.i211
  %i.bp = phi i64 [ 0, %._crit_edge.i.i8.i ], [ 6, %._crit_edge.i.i4.i ], [ 7, %._crit_edge.i.i.i211 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  store i64 %i.bh, ptr %18, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bg, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.bp, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %40, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.bs, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr %i.bu, ptr %i.bz, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.85, ptr noundef nonnull %18, i64 noundef 3)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.ca = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %40
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cc = load i64, ptr %40, align 8, !tbaa !22
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %bb.s

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.t, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.r:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %40
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.r
  %i.ci = load i64, ptr %40, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %bb.em

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, -4611686018427387901
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #46
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.s
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.86, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !689
  invoke void @_ZN6google8protobuf14MessageOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.cp)
          to label %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit unwind label %bb.z

_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !931 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !3
  %i.cu = or i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.v, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !535 ; 3 uses
  %i.da = trunc i64 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.x, !prof !163

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i64 %i.cz, -1
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.de = inttoptr i64 %i.cz to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi ptr [ %i.dd, %bb.w ], [ %i.de, %bb.x ]
  %i.df = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc217 unwind label %bb.aa ; 2 uses

.noexc217:                                        ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.df, ptr %i.cv, align 8, !tbaa !22
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %.noexc217, %bb.u
  %i.dg = phi ptr [ %i.df, %.noexc217 ], [ %i.cw, %bb.u ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.aa

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit, %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !669
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1007
  %i.dl = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %i.dk, ptr noundef nonnull %2)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  store i64 1, ptr %24, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 10 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !893
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.preheader, label %.preheader167

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  br label %.lr.ph

.preheader167:                                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 5 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !690
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph170.preheader, label %.preheader166

.lr.ph170.preheader:                              ; preds = %.preheader167
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  br label %.lr.ph170

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.aa:                                            ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit ] ; 2 uses
  %i.ea = load ptr, ptr %i.dh, align 8, !tbaa !669
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !319
  %i.ed = load ptr, ptr %i.dp, align 8, !tbaa !439
  %i.ee = getelementptr inbounds nuw [88 x i8], ptr %i.ed, i64 %indvars.iv ; 4 uses
  %i.ef = icmp slt i32 %i.ec, 1000
  br i1 %i.ef, label %_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit: ; preds = %.lr.ph
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !692
  %i.ei = icmp eq i8 %i.eh, 10
  br i1 %i.ei, label %bb.ab, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

bb.ab:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !694 ; 6 uses
  %.not.i219 = icmp eq ptr %i.ek, null
  br i1 %.not.i219, label %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = load atomic i32, ptr %i.ek acquire, align 4
  %.not.i378 = icmp eq i32 %i.el, 221
  br i1 %.not.i378, label %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit, label %bb.ad, !prof !322

bb.ad:                                            ; preds = %bb.ac
  %i.em = cmpxchg ptr %i.ek, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.en = extractvalue { i32, i1 } %i.em, 1
  br i1 %i.en, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.ad
  %i.eo = invoke noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.ek, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
          to label %.noexc406 unwind label %bb.am

.noexc406:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %.noexc406, %bb.ad
  invoke void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ee)
          to label %.noexc407 unwind label %bb.am, !inline_history !1050

.noexc407:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  %i.eq = atomicrmw xchg ptr %i.ek, i32 221 release, align 4
  %i.er = icmp eq i32 %i.eq, 94570706
  br i1 %i.er, label %bb.ae, label %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit

bb.ae:                                            ; preds = %.noexc407
  invoke void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.ek, i1 noundef zeroext true)
          to label %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit unwind label %bb.am

_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit: ; preds = %bb.ab, %bb.ac, %.noexc407, %.noexc406, %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22 ; 5 uses
  %i.eu = load i64, ptr %24, align 8, !tbaa !73, !noalias !1051 ; 5 uses
  %i.ev = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp ult i64 %i.eu, 2
  br i1 %i.ew, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor12message_typeEv.exit
  %i.ex = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !79, !noalias !1066
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ex, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19, !noalias !1066
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.ah:                                            ; preds = %bb.af
  %i.ey = load ptr, ptr %i.dq, align 8, !tbaa !702, !noalias !1066 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.et
  br i1 %i.ez, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %bb.ai

end_hunk_1
