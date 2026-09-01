Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/escaping?download=true
inline.NumInlined: 426
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2025051216HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ai, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.d = shl nuw i64 %.08.i, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = shl i8 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = add i8 %i.o, %i.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.08.i
  store i8 %i.p, ptr %i.r, align 1, !tbaa !13
  %i.s = or disjoint i64 %.08.i, 1                ; 2 uses
  %i.t = shl nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = shl i8 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = add i8 %i.ae, %i.z
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !13
  %i.ai = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !56

_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.aj = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa
  %.08.i.epil.init = phi i64 [ 0, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit ], [ %i.ai, %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.ak = shl nuw i64 %.08.i.epil.init, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = shl i8 %i.ap, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = add i8 %i.av, %i.aq
  %i.ax = load ptr, ptr %0, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.08.i.epil.init
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit

_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051216BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %i.c = shl i64 %1, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.b

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not1.i = icmp samesign eq i64 %1, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.03.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %.val, %.lr.ph.i.preheader ] ; 2 uses
  %.0102.i.prol = phi ptr [ %i.j, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.e = load i8, ptr %.0102.i.prol, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  store i16 %i.i, ptr %.03.i.prol, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0102.i.prol, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %.0102.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %1, 4
  br i1 %i.l, label %_ZN4absl12lts_2025051212_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0102.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.0102.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.m = load i8, ptr %.0102.i, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  store i16 %i.q, ptr %.03.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.0102.i, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i, i64 2
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  store i16 %i.x, ptr %i.s, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0102.i, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i, i64 4
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  store i16 %i.ae, ptr %i.z, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0102.i, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i, i64 6
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  store i16 %i.al, ptr %i.ag, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i.3 = icmp eq ptr %i.am, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051212_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i, !llvm.loop !58

bb.b:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !13
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ao

_ZN4absl12lts_2025051212_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef zeroext %0, i64 %1, ptr %2, ptr nofree noundef captures(address) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = and i32 %0, -2048                        ; 2 uses
  %or.cond.not = icmp ne i32 %i.a, 55296
  %.not = icmp eq ptr %3, null
  %or.cond8 = or i1 %or.cond.not, %.not
  br i1 %or.cond8, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 44, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.17, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 %1, ptr %6, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !59
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %3, align 8, !tbaa !7      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %4, align 8, !tbaa !7      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %4, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.f, align 1, !tbaa !13
  store i8 %i.l, ptr %i.c, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %3, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !13
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %3, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !13
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !13
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !13
  store ptr %i.f, ptr %3, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !13
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %4, align 8, !tbaa !7
  store i64 %i.t, ptr %i.g, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %i.c, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !16
  store i8 0, ptr %i.x, align 1, !tbaa !13
  %i.z = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %or.cond = icmp eq i32 %i.a, 55296
  ret i1 %or.cond
}

declare noundef i64 @_ZN4absl12lts_2025051216strings_internal14EncodeUTF8CharEPcDi(ptr noundef, i32 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, i64 noundef 1, i8 noundef signext %2) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !17
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !7
  %i.l = load i64, ptr %i.f, align 8, !tbaa !13
  store i64 %i.l, ptr %i.d, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !16
  store ptr %i.f, ptr %i.c, align 8, !tbaa !7
  store i64 0, ptr %i.n, align 8, !tbaa !16
  store i8 0, ptr %i.f, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !7
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.i, ptr %i.h, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !13
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

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare noundef i64 @_ZN4absl12lts_2025051216strings_internal33CalculateBase64EscapedLenInternalEmb(i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i64 @_ZN4absl12lts_2025051216strings_internal20Base64EscapeInternalEPKhmPcmPKcb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

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
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!8, !12, i64 8}
!17 = !{!9, !10, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!21 = distinct !{!21, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!24 = distinct !{!24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = distinct !{!26, !15}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!29 = distinct !{!29, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!32 = distinct !{!32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!35 = distinct !{!35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
end_hunk_0
