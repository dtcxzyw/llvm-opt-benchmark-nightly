Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/escaping?download=true
inline.NumInlined: 483
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.aj = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not, label %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.noexc3, %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i.loopexit.unr-lcssa"
  %.08.i.i.i.i.i.epil.init = phi i64 [ 0, %.noexc3 ], [ %i.ai, %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod9 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.ak = shl nuw nsw i64 %.08.i.i.i.i.i.epil.init, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_116kHexValueLenientE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = shl i8 %i.ap, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_116kHexValueLenientE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = add i8 %i.av, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 %.08.i.i.i.i.i.epil.init
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !17
  br label %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i"

"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i.loopexit.unr-lcssa", %.noexc3
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.az = icmp ugt i64 %i.c, %i.ay
  br i1 %i.az, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i"
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34, i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef %i.ay) #12
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ba

bb.f:                                             ; preds = %"_ZZN4absl12lts_2026052616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i"
  %i.bf = load ptr, ptr %0, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.c
  store i64 %i.c, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.bg, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = shl i64 %1, 1                            ; 6 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.d, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef nonnull @.str.24) #12
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i8 noundef signext 0)
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not10.i.i.i.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %.noexc2
  %i.f = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.prol ], [ %2, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  %i.g = load i8, ptr %.0911.i.i.i.i.i.prol, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  store i16 %i.k, ptr %.012.i.i.i.i.i.prol, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !66

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.012.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.preheader.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.preheader.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.o = load i8, ptr %.0911.i.i.i.i.i, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  store i16 %i.s, ptr %.012.i.i.i.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 2
  %i.v = load i8, ptr %i.t, align 1, !tbaa !17
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  store i16 %i.z, ptr %i.u, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ab, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  store i16 %i.an, ptr %i.ai, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i.i.i.i.3, label %"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !67

"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.noexc2
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.ar = icmp ugt i64 %i.c, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i"
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34, i64 noundef %i.c, i64 noundef %i.aq) #12
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.av = load i64, ptr %i.a, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.as

bb.f:                                             ; preds = %"_ZZN4absl12lts_2026052616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPcm.exit.i.i.i"
  %i.ax = load ptr, ptr %0, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.c
  store i64 %i.c, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef zeroext %0, i64 %1, ptr %2, ptr nofree noundef captures(address) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 5 uses
  %i.a = and i32 %0, -2048
  %or.cond = icmp eq i32 %i.a, 55296              ; 2 uses
  %.not = icmp ne ptr %3, null
  %or.cond8.not = and i1 %or.cond, %.not
  br i1 %or.cond8.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 44, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.17, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 %1, ptr %6, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68
  call void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %3, align 8, !tbaa !16     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %4, align 8, !tbaa !16     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %4, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.l, ptr %i.c, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = load i64, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %3, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !17
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !17
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !17
  store ptr %i.f, ptr %3, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !17
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %4, align 8, !tbaa !16
  store i64 %i.t, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %i.c, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !14
  store i8 0, ptr %i.x, align 1, !tbaa !17
  %i.z = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %or.cond
}

declare noundef i64 @_ZN4absl12lts_2026052616strings_internal14EncodeUTF8CharEPcDi(ptr noundef, i32 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, i64 noundef 1, i8 noundef signext %2) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !20
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.l, ptr %i.d, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !14
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZN4absl12lts_2026052616strings_internal33CalculateBase64EscapedLenInternalEmb(i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!13, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!11, !10, i64 0}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !19}
end_hunk_0
