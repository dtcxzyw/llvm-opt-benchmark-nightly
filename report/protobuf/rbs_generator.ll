inline.NumInlined: 2687
inline.NumDeleted: 1127
begin_hunk_0_@_ZN6google8protobuf8compiler4ruby14ScalarReadTypeB5cxx11EPKNS0_15FieldDescriptorE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ai, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i21, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i14, %._crit_edge.i.i10, %._crit_edge.i.i6, %._crit_edge.i.i
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby15ScalarWriteTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !112
  switch i8 %i.e, label %._crit_edge.i.i49 [
    i8 1, label %.noexc.i
    i8 2, label %.noexc.i
    i8 7, label %.noexc.i19
    i8 6, label %.noexc.i19
    i8 5, label %.noexc.i19
    i8 3, label %.noexc.i19
    i8 15, label %.noexc.i19
    i8 16, label %.noexc.i19
    i8 17, label %.noexc.i19
    i8 18, label %.noexc.i19
    i8 13, label %.noexc.i19
    i8 4, label %.noexc.i19
    i8 8, label %._crit_edge.i.i22
    i8 9, label %.noexc.i27
    i8 12, label %._crit_edge.i.i30
    i8 14, label %bb.b
    i8 10, label %bb.e
    i8 11, label %bb.e
  ]

.noexc.i:                                         ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 19, ptr %i.c, align 8, !tbaa !21
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !7
  %i.h = load i64, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.g, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, i64 19, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.m

.noexc.i19:                                       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 19, ptr %i.b, align 8, !tbaa !21
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !7
  %i.n = load i64, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.m, ptr noundef nonnull align 1 dereferenceable(19) @.str.19, i64 19, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !13
  %i.p = load ptr, ptr %0, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.m

._crit_edge.i.i22:                                ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !15
  store i32 1819242338, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.t, align 4, !tbaa !14
  br label %bb.m

.noexc.i27:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 19, ptr %i.a, align 8, !tbaa !21
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !7
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.v, ptr noundef nonnull align 1 dereferenceable(19) @.str.20, i64 19, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !13
  %i.y = load ptr, ptr %0, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

._crit_edge.i.i30:                                ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !15
  store i64 7453010373643549242, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ac, align 8, !tbaa !14
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ad = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @_ZN6google8protobuf8compiler4ruby15RBSEnumFullNameB5cxx11EPKNS0_14EnumDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  store i64 %i.ag, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ae, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 10, ptr %4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.21, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 %i.ag, ptr %5, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 31, ptr %6, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.22, ptr %i.ak, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.al = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ar = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.d
  %i.au = load i64, ptr %i.as, align 8, !tbaa !14
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.aw = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i16, ptr %i.ax, align 1
  %13 = lshr i16 %i.ay, 2
  %i.az = and i16 %13, 31
  switch i16 %i.az, label %bb.l [
    i16 13, label %bb.f
    i16 12, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ba = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @_ZN6google8protobuf8compiler4ruby18RBSMessageFullNameB5cxx11EPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %8, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13
  store i64 %i.bd, ptr %7, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i64 9, ptr %9, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.23, ptr %i.bf, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.bg = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.g
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.bm = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.h
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.br = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @_ZN6google8protobuf8compiler4ruby18RBSMessageFullNameB5cxx11EPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.br)
  %i.bs = load ptr, ptr %11, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !13
  store i64 %i.bu, ptr %10, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bs, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store i64 8, ptr %12, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.24, ptr %i.bw, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.bx = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.j
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !14
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.cd = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.k
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !14
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  %i.ci = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  tail call void @_ZN6google8protobuf8compiler4ruby18RBSMessageFullNameB5cxx11EPKNS0_10DescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ci)
  br label %bb.m

._crit_edge.i.i49:                                ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cj, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ck, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.cl, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.l, %._crit_edge.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i30, %.noexc.i27, %._crit_edge.i.i22, %.noexc.i19, %.noexc.i
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn16 = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %.pn16
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4ruby13FieldReadTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %3 = alloca [9 x %"class.std::basic_string_view"], align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.d = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.e = tail call noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160) %i.d)
  call void @_ZN6google8protobuf8compiler4ruby14ScalarReadTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.f = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160) %i.f)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8compiler4ruby15ScalarWriteTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.g)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.h = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.h)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf8compiler4ruby14ScalarReadTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %i.i)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.j = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.k = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.j)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf8compiler4ruby15ScalarWriteTypeB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.k)
          to label %bb.k unwind label %bb.o

end_hunk_0
