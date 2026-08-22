Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_arrow?download=true
inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb18ArrowTypeExtensionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE:bb.a
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %4, align 8, !tbaa !12
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %4, align 8, !tbaa !15
  %i.j = load i64, ptr %i.d, align 8, !tbaa !20
  store i64 %i.j, ptr %i.b, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !18
  store ptr %i.d, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %i.l, align 8, !tbaa !18
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !18
  store i8 0, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !12
  %i.s = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.s, ptr %7, align 8, !tbaa !15
  %i.z = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.z, ptr %i.r, align 8, !tbaa !20
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !18
  store ptr %i.t, ptr %2, align 8, !tbaa !15
  store i64 0, ptr %i.ab, align 8, !tbaa !18
  store i8 0, ptr %i.t, align 8, !tbaa !20
  invoke void @_ZN6duckdb22ArrowExtensionMetadataC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
  %i.ad = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.af) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ah = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  call void @_ZdlPv(ptr noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.aj = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  call void @_ZdlPv(ptr noundef %i.aj) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.am, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load <2 x ptr>, ptr %3, align 8, !tbaa !106
  store ptr null, ptr %i.an, align 8, !tbaa !72
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !106
  store ptr null, ptr %3, align 8, !tbaa !104
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.r
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.as = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.p
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.as) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.au = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.n
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  call void @_ZdlPv(ptr noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.aw = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.b
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @_ZdlPv(ptr noundef %i.aw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ArrowTypeExtensionC2ERNS_22ArrowExtensionMetadataENS_10unique_ptrINS_9ArrowTypeESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr.16", align 16 ; 7 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb22ArrowExtensionMetadataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9ArrowTypeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb9ArrowType11GetDuckTypeEb(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(97) %i.c, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15make_shared_ptrINS_22ArrowTypeExtensionDataEJNS_11LogicalTypeEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.16") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load <2 x ptr>, ptr %3, align 16, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !72   ; 8 uses
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !106
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.h, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !75
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #34, !inline_history !598
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #34, !inline_history !598
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.h ], [ %i.u, %bb.i ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.j, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit, !prof !79

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.x, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !75
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #34, !inline_history !78
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #34, !inline_history !78
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i5 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.n ], [ %i.ak, %bb.o ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.p, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !79

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEaSEOS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.am, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #34
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22ArrowExtensionMetadataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.h, ptr %i.d, align 8, !tbaa !19
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %i.k = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.k, ptr %i.e, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !20
  store i8 %i.m, ptr %i.l, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !12
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i64 %i.w, ptr %i.c, align 8, !tbaa !19
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i11
  store ptr %i.y, ptr %i.r, align 8, !tbaa !15
  %i.z = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.z, ptr %i.t, align 8, !tbaa !20
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ArrowMergeEvent8ScheduleEv:bb.a

_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit: ; preds = %.noexc
  %i.l = add i64 %i.i, %.039240                   ; 3 uses
  %i.m = icmp ult i64 %i.l, 122880                ; 2 uses
  %.not.i = icmp ult i64 %i.g, %i.f
  %or.cond = select i1 %i.m, i1 %.not.i, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189

_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189: ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit, %.preheader204
  %.sroa.6180.1.lcssa = phi i64 [ %.sroa.6180.0248, %.preheader204 ], [ %i.g, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ] ; 3 uses
  %.039.lcssa = phi i64 [ 0, %.preheader204 ], [ %i.l, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ] ; 2 uses
  %.lcssa222 = phi i1 [ true, %.preheader204 ], [ %i.m, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit ]
  %i.n = icmp eq i64 %.sroa.6180.0248, %.sroa.6180.1.lcssa
  br i1 %i.n, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !1145, !nonnull !44, !align !1011
  %i.p = invoke { ptr, ptr } @_ZN6duckdb21BatchedDataCollection10BatchRangeEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.o, i64 noundef %.sroa.6180.0248, i64 noundef %.sroa.6180.1.lcssa)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i91 = icmp eq ptr %.sroa.9.0246, %.sroa.14.0247
  br i1 %.not.i91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.039.lcssa, ptr %.sroa.9.0246, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0246, i64 8
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1014
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.0246, i64 16
  store ptr %i.r, ptr %.sroa.8173.0..sroa_idx, align 8, !tbaa !1014
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %.sroa.14.0247 to i64
  %i.t = ptrtoint ptr %.sroa.0176.0245 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc92 unwind label %.loopexit.split-lp206

.noexc92:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.w = sdiv exact i64 %i.u, 24                  ; 3 uses
  %i.x = icmp eq ptr %.sroa.14.0247, %.sroa.0176.0245 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.x, i64 1, i64 %i.w
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 384307168202282325)
  %i.ab = select i1 %i.z, i64 384307168202282325, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = mul nuw nsw i64 %i.ab, 24
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #35
          to label %.noexc93 unwind label %.loopexit205 ; 5 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 3 uses
  store i64 %.039.lcssa, ptr %i.ae, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx171, align 8, !tbaa !1014
  %.sroa.8173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.r, ptr %.sroa.8173.0..sroa_idx174, align 8, !tbaa !1014
  br i1 %i.x, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc93, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc93 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0176.0245, %.noexc93 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1146, !alias.scope !1147
  %i.af = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %.sroa.14.0247
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1151

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc93
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc93 ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %.not.i27.i.i = icmp eq ptr %.sroa.0176.0245, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0176.0245) #37
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.0176.1 = phi ptr [ %.sroa.0176.0245, %bb.f ], [ %i.ad, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.9.0.pn = phi ptr [ %.sroa.9.0246, %bb.f ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0247, %bb.f ], [ %i.ah, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.pn, i64 24 ; 2 uses
  br i1 %.lcssa222, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread, label %.preheader204

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit205:                                     ; preds = %_ZNKSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp206:                            ; preds = %bb.h
  %lpad.loopexit.split-lp208 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit
  %.sroa.0176.0.lcssa = phi ptr [ %.sroa.0176.0245, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189 ], [ %.sroa.0176.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.0246, %_ZN6duckdb12_GLOBAL__N_124BatchesToTaskTransformer19TryGetNextBatchSizeERm.exit.thread189 ], [ %.sroa.9.1, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.not253 = icmp eq ptr %.sroa.0176.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not253, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.k

._crit_edge257:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread
  %.034.lcssa = phi i64 [ 0, %_ZNSt6vectorIN6duckdb12_GLOBAL__N_114BatchesForTaskESaIS2_EE9push_backERKS2_.exit.thread ], [ %.1.lcssa, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.034.lcssa)
          to label %.preheader unwind label %bb.bc

.preheader:                                       ; preds = %._crit_edge257
  %.not263 = icmp eq i64 %.034.lcssa, 0
  br i1 %.not263, label %._crit_edge261, label %.lr.ph260

bb.k:                                             ; preds = %.lr.ph256, %_ZNSt6vectorImSaImEED2Ev.exit
  %.034255 = phi i64 [ 0, %.lr.ph256 ], [ %.1.lcssa, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 4 uses
  %.sroa.0168.0254 = phi ptr [ %.sroa.0176.0.lcssa, %.lr.ph256 ], [ %i.fi, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.at = load i64, ptr %.sroa.0168.0254, align 8, !tbaa !1152 ; 2 uses
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !1121 ; 2 uses
  %i.av = udiv i64 %i.at, %i.au
  %i.aw = urem i64 %i.at, %i.au
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i64
  %i.az = add i64 %i.av, %i.ay
  %.fr = freeze i64 %i.az                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ba = icmp ugt i64 %.fr, 1152921504606846975
  br i1 %i.ba, label %bb.l, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #36
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bb = shl nuw nsw i64 %.fr, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #35
          to label %.noexc95 unwind label %.loopexit ; 7 uses

.noexc95:                                         ; preds = %bb.m
  store ptr %i.bc, ptr %3, align 8, !tbaa !1154
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.fr
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !945
  store i64 0, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr i8, ptr %i.bc, i64 8      ; 3 uses
  %i.bf = add nsw i64 %.fr, -1                    ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph251, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc95
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bf, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc95
  %.0.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.noexc95 ], [ %i.bh, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i.ph, ptr %i.al, align 8, !tbaa !1155
  %i.bi = ptrtoint ptr %.0.i.i.i.i.i.i.ph to i64
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 4 uses
  %10 = call i64 @llvm.usub.sat.i64(i64 %.fr, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %10, i64 %i.bl) ; 2 uses
  %min.iters.check = icmp ult i64 %umin, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph251
  %.033250.ph = phi i64 [ 0, %.lr.ph251 ], [ %n.vec, %vector.body ]
  %.1249.ph = phi i64 [ %.034255, %.lr.ph251 ], [ %i.bq, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph251
  %i.bm = add nuw nsw i64 %umin, 1                ; 2 uses
  %i.bn = and i64 %i.bm, 3                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 4, i64 %i.bn
  %n.vec = sub nsw i64 %i.bm, %i.bp               ; 3 uses
  %i.bq = add i64 %.034255, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.034255, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.br = or disjoint i64 %index, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.br, ptr %i.b, align 8, !tbaa !19
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x i64> %vec.ind, ptr %i.bs, align 8, !tbaa !19
  store <2 x i64> %step.add, ptr %i.bt, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1156

._crit_edge:                                      ; preds = %bb.r, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.1.lcssa = phi i64 [ %.034255, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ci, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !1145, !nonnull !44, !align !1011
  %i.bw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.s unwind label %bb.ap

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit110

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit110

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.033250 = phi i64 [ %i.cj, %bb.r ], [ %.033250.ph, %scalar.ph.preheader ] ; 4 uses
  %.1249 = phi i64 [ %i.ci, %bb.r ], [ %.1249.ph, %scalar.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.033250, ptr %i.b, align 8, !tbaa !19
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !19
  %exitcond.not = icmp eq i64 %.033250, %i.bl
  br i1 %exitcond.not, label %.noexc.i, label %bb.r, !prof !79

.noexc.i:                                         ; preds = %scalar.ph
  %i.bx = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.by, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 55, ptr %i.a, align 8, !tbaa !19
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc156 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc156:                                        ; preds = %.noexc.i
  store ptr %i.bz, ptr %1, align 8, !tbaa !15
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bz, ptr noundef nonnull align 1 dereferenceable(55) @.str.76, i64 55, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc156
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %.noexc156
  %.0.i.i.i = phi i1 [ false, %bb.n ], [ true, %.noexc156 ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.by
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.cf) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i.i.i, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i.i.i, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bx) #34
  br label %.body

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.033250
  %i.ci = add i64 %.1249, 1                       ; 2 uses
  store i64 %.1249, ptr %i.ch, align 8, !tbaa !19
  %i.cj = add nuw i64 %.033250, 1                 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %.fr
  br i1 %i.ck, label %scalar.ph, label %._crit_edge, !llvm.loop !1157

bb.s:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0168.0254, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1158, !nonnull !44, !align !1011
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1026, !nonnull !44, !align !1011
  invoke void @_ZN6duckdb29BatchCollectionChunkScanStateC1ERNS_21BatchedDataCollectionERNS_25BatchedChunkIteratorRangeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(192) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(512) %i.co)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !1186, !nonnull !44, !align !1011
  %i.cq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1158, !nonnull !44, !align !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.504") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !1186, !nonnull !44, !align !1011
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  invoke void @_ZN6duckdb9make_uniqINS_14ArrowBatchTaskEJRNS_16ArrowQueryResultENS_6vectorImLb1ESaImEEERNS_8ExecutorENS_10shared_ptrINS_5EventELb1EEENS_29BatchCollectionChunkScanStateERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISI_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.737") align 8 %6, ptr noundef nonnull align 8 dereferenceable(424) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(424) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.w unwind label %bb.as

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %5, align 16, !tbaa !1187 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %spec.select.i = select i1 %i.cw, ptr null, ptr %i.cx
  call void @_ZN6duckdb10shared_ptrINS_4TaskELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %spec.select.i, ptr noundef %i.cv) #34
  %i.cy = load ptr, ptr %i.ap, align 8, !tbaa !1188 ; 7 uses
  %i.cz = load ptr, ptr %i.aq, align 16, !tbaa !1191
  %.not.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !72
  %i.db = load <2 x ptr>, ptr %5, align 16, !tbaa !106
  store ptr null, ptr %i.ar, align 8, !tbaa !72
  store <2 x ptr> %i.db, ptr %i.cy, align 8, !tbaa !106
  store ptr null, ptr %5, align 16, !tbaa !1187
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.dc, ptr %i.ap, align 8, !tbaa !1188
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE9push_backEOS3_.exit

bb.z:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %2, align 16, !tbaa !1192 ; 5 uses
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775792
  br i1 %i.dh, label %bb.aa, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc159 unwind label %.loopexit.split-lp200

.noexc159:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.z
  %i.di = ashr exact i64 %i.dg, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 576460752303423487)
end_hunk_1
begin_hunk_2_@_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv:bb.a
  %i.av = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.i.i.preheader18:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1387, !noalias !1390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1398

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc5 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.h
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !1090
  store ptr %i.ba, ptr %i.k, align 8, !tbaa !1087
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !1203
  %.pr = load ptr, ptr %1, align 8, !tbaa !1091   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1369
  %i.be = add i64 %i.bd, %i.f
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !1369
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #34
  call void @_ZdlPv(ptr noundef nonnull %.pr) #37
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.bg, %bb.j ]
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1091  ; 3 uses
  %.not.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7: ; preds = %bb.k
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #34
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #37
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalArrowCollector7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1399, !nonnull !44, !align !1011 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1401, !nonnull !44, !align !1011 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !1360
  %.not25 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.i, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  tail call void @_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv(ptr noundef nonnull align 8 dereferenceable(88) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1204
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !1204 ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.v, ptr %i.p, ptr %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1090 ; 3 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1087 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.y) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !1087
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.g, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1369
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1402
  %i.ae = add i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1402
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 0 uses
  resume { ptr, i32 } %i.ag

bb.i:                                             ; preds = %bb.b, %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6duckdb22PhysicalArrowCollector9GetResultERNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.645") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %2) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1282
  store i64 %i.b, ptr %0, align 8, !tbaa !1282
  store ptr null, ptr %i.a, align 8, !tbaa !1282
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22PhysicalArrowCollector18GetGlobalSinkStateERNS_13ClientContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.826") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb25ArrowCollectorGlobalStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35, !noalias !1415 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(184) %i.a, i8 0, i64 96, i1 false), !noalias !1415
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 1, !tbaa !1418, !noalias !1415
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.c, i8 0, i64 65, i1 false), !noalias !1415
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %i.a, align 8, !tbaa !76, !noalias !1415
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !noalias !1415
  store ptr %i.a, ptr %0, align 8, !tbaa !1419
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22PhysicalArrowCollector17GetLocalSinkStateERNS_16ExecutionContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.877") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb24ArrowCollectorLocalStateESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #35, !noalias !1420 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 -1, i64 16, i1 false), !noalias !1420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !1420
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb24ArrowCollectorLocalStateE, i64 16), ptr %i.a, align 8, !tbaa !76, !noalias !1420
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false), !noalias !1420
  store ptr %i.a, ptr %0, align 8, !tbaa !1423
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalArrowCollector8FinalizeERNS_8PipelineERNS_5EventERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE(ptr noundef nonnull align 8 dereferenceable(329) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.895", align 8 ; 7 uses
  %8 = alloca %"struct.duckdb::ClientProperties", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.895", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::ClientProperties", align 8 ; 9 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !1425, !nonnull !44, !align !1011 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1204
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1204
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1402
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.l) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.015, label %bb.g, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.015, label %bb.g, label %bb.o

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn50 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #34
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %8, ptr noundef nonnull align 8 dereferenceable(512) %3)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZN6duckdb9make_uniqINS_16ArrowQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEERKNS8_INS_11LogicalTypeELb1ESaISJ_EEENS_16ClientPropertiesERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.895") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(129) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %7, align 8, !tbaa !942
  store ptr null, ptr %7, align 8, !tbaa !942
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1282 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1282
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(392) %i.v) #34, !inline_history !1427
  %.pr = load ptr, ptr %7, align 8, !tbaa !942    ; 3 uses
  %.not.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit
  %i.z = load ptr, ptr %.pr, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(424) %.pr) #34, !inline_history !1428
  br label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i
  %i.ac = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ac) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6duckdb16ClientPropertiesD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ag) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit25

_ZN6duckdb16ClientPropertiesD2Ev.exit25:          ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %3)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZN6duckdb9make_uniqINS_16ArrowQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEERKNS8_INS_11LogicalTypeELb1ESaISJ_EEENS_16ClientPropertiesERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.895") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(129) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %9, align 8, !tbaa !942
  store ptr null, ptr %9, align 8, !tbaa !942
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1282 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1282
  %.not.i.i.i.i.i26 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i26, label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit34, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit31: ; preds = %bb.l
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(392) %i.aq) #34, !inline_history !1427
  %.pr52 = load ptr, ptr %9, align 8, !tbaa !942  ; 3 uses
  %.not.i32 = icmp eq ptr %.pr52, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i33: ; preds = %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit31
  %i.au = load ptr, ptr %.pr52, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(424) %.pr52) #34, !inline_history !1428
  br label %_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN6duckdb16ArrowQueryResultESt14default_deleteIS1_EED2Ev.exit34: ; preds = %bb.l, %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit31, %_ZNKSt14default_deleteIN6duckdb16ArrowQueryResultEEclEPS1_.exit.i33
  %i.ax = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  %i.av = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ar, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !18
  store ptr %i.ap, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.ap, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 0, ptr %i.ba, align 8, !tbaa !18
  store i8 0, ptr %i.az, align 8, !tbaa !20
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !1996
  %i.bb = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.d, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.loopexit

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.bc

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.bb, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.d ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

declare void @_ZN6duckdb11ComplexJSONC1Ev(ptr noundef nonnull align 8 dereferenceable(113)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !542
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !53 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !53 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1998

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !53 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1998

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #40
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !529  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !528
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !1243 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !53 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1243 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !1993

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !15
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !53 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1243 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !1993

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare void @_ZN6duckdb11ComplexJSONC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { nounwind memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn }
attributes #37 = { builtin nounwind }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !8, i64 16}
!11 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !17, i64 8, !5, i64 16}
!17 = !{!"long", !5, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!17, !17, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!11, !8, i64 8}
!22 = !{!11, !8, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb15ArrowAppendDataELb0EE", !25, i64 0}
!25 = !{!"p1 _ZTSN6duckdb15ArrowAppendDataE", !9, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN6duckdb11LogicalTypeE", !28, i64 0, !29, i64 1, !30, i64 8}
!28 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!29 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!30 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !31, i64 0}
!31 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !32, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !34, i64 8}
!33 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !9, i64 0}
!34 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!36 = !{!37, !39, i64 35}
!37 = !{!"_ZTSN6duckdb16ClientPropertiesE", !16, i64 0, !38, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !40, i64 36, !41, i64 40}
!38 = !{!"_ZTSN6duckdb15ArrowOffsetSizeE", !5, i64 0}
!39 = !{!"bool", !5, i64 0}
!40 = !{!"_ZTSN6duckdb18ArrowFormatVersionE", !5, i64 0}
!41 = !{!"_ZTSN6duckdb12optional_ptrINS_13ClientContextELb1EEE", !42, i64 0}
!42 = !{!"p1 _ZTSN6duckdb13ClientContextE", !9, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!46, !17, i64 24}
!46 = !{!"_ZTSSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE", !47, i64 0, !17, i64 8, !49, i64 16, !17, i64 24, !51, i64 32, !50, i64 48}
!47 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!48 = !{!"any p2 pointer", !9, i64 0}
!49 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !50, i64 0}
!50 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!51 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !52, i64 0, !17, i64 8}
!52 = !{!"float", !5, i64 0}
!53 = !{!49, !50, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!46, !17, i64 8}
!57 = !{!46, !47, i64 0}
!58 = !{!50, !50, i64 0}
!59 = distinct !{!59, !55}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !62, i64 0, !63, i64 8}
!62 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEEE", !9, i64 0}
!63 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS3_22ArrowTypeExtensionDataELb1EEEELb0EEE", !9, i64 0}
!64 = !{!65, !17, i64 0}
!65 = !{!"_ZTSSt4pairIKmKN6duckdb10shared_ptrINS1_22ArrowTypeExtensionDataELb1EEEE", !17, i64 0, !66, i64 8}
!66 = !{!"_ZTSN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE", !67, i64 0}
!67 = !{!"_ZTSSt10shared_ptrIN6duckdb22ArrowTypeExtensionDataEE", !68, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN6duckdb22ArrowTypeExtensionDataELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !34, i64 8}
!69 = !{!"p1 _ZTSN6duckdb22ArrowTypeExtensionDataE", !9, i64 0}
!70 = !{!61, !63, i64 8}
!71 = !{!25, !25, i64 0}
!72 = !{!34, !35, i64 0}
!73 = !{!74, !4, i64 8}
!74 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!75 = !{!74, !4, i64 12}
!76 = !{!77, !77, i64 0}
!77 = !{!"vtable pointer", !6, i64 0}
!78 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!79 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!80 = !{!81, !82, i64 8}
!81 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!82 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!83 = !{!81, !82, i64 16}
!84 = !{!81, !82, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!87 = distinct !{!87, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!90 = !{!89, !91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!86, !94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !55, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !55, !96}
!99 = distinct !{!99, !55}
!100 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!103 = distinct !{!103, !"_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!104 = !{!68, !69, i64 0}
!105 = !{!27, !29, i64 1}
!106 = !{!9, !9, i64 0}
!107 = !{!108, !9, i64 16}
!108 = !{!"_ZTSN6duckdb15ArrowAppendDataE", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 24, !66, i64 32, !9, i64 48, !109, i64 56, !113, i64 80, !121, i64 88, !122, i64 120, !128, i64 144, !133, i64 168, !37, i64 248, !17, i64 296, !134, i64 304}
!109 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !110, i64 0}
!110 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !81, i64 0}
!113 = !{!"_ZTSN6duckdb10unique_ptrI10ArrowArraySt14default_deleteIS1_ELb1EEE", !114, i64 0}
!114 = !{!"_ZTSSt10unique_ptrI10ArrowArraySt14default_deleteIS0_EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_dataI10ArrowArraySt14default_deleteIS0_ELb1ELb1EE", !116, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implI10ArrowArraySt14default_deleteIS0_EE", !117, i64 0}
!117 = !{!"_ZTSSt5tupleIJP10ArrowArraySt14default_deleteIS0_EEE", !118, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJP10ArrowArraySt14default_deleteIS0_EEE", !119, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EP10ArrowArrayLb0EE", !120, i64 0}
!120 = !{!"p1 _ZTS10ArrowArray", !9, i64 0}
!121 = !{!"_ZTSSt5arrayIPKvLm4EE", !5, i64 0}
!122 = !{!"_ZTSN6duckdb6vectorIP10ArrowArrayLb1ESaIS2_EEE", !123, i64 0}
!123 = !{!"_ZTSSt6vectorIP10ArrowArraySaIS1_EE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIP10ArrowArraySaIS1_EE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIP10ArrowArraySaIS1_EE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIP10ArrowArraySaIS1_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p2 _ZTS10ArrowArray", !48, i64 0}
!128 = !{!"_ZTSN6duckdb6vectorI10ArrowArrayLb1ESaIS1_EEE", !129, i64 0}
!129 = !{!"_ZTSSt6vectorI10ArrowArraySaIS0_EE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseI10ArrowArraySaIS0_EE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseI10ArrowArraySaIS0_EE12_Vector_implE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseI10ArrowArraySaIS0_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!133 = !{!"_ZTS10ArrowArray", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !48, i64 40, !127, i64 48, !120, i64 56, !9, i64 64, !9, i64 72}
!134 = !{!"_ZTSN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEE", !135, i64 0}
!135 = !{!"_ZTSSt6vectorIN6duckdb11ArrowBufferESaIS1_EE", !136, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIN6duckdb11ArrowBufferESaIS1_EE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ArrowBufferESaIS1_EE12_Vector_implE", !138, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ArrowBufferESaIS1_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!139 = !{!"p1 _ZTSN6duckdb11ArrowBufferE", !9, i64 0}
!140 = !{!108, !9, i64 24}
!141 = !{!108, !9, i64 48}
!142 = !{!108, !39, i64 283}
!143 = !{!108, !38, i64 280}
!144 = !{!108, !40, i64 284}
!145 = distinct !{null}
!146 = !{!108, !39, i64 282}
!147 = !{!108, !39, i64 281}
!148 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!149 = !{!150, !17, i64 16}
!150 = !{!"_ZTSN6duckdb11ArrowBufferE", !14, i64 0, !17, i64 8, !17, i64 16}
!151 = !{!150, !14, i64 0}
!152 = distinct !{null}
end_hunk_3
