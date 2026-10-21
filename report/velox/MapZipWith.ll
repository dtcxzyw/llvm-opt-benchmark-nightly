Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MapZipWith?download=true
inline.NumInlined: 5627
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi:bb.a
  %i.aq = sext i32 %1 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !62 ; 2 uses
  %i.aw = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aj, i32 %i.av) ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.d, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit, !prof !68

bb.d:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !750
  store ptr @.str.34, ptr %2, align 16, !tbaa !49, !noalias !750
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.aj, ptr %i.ay, align 16, !tbaa !49, !alias.scope !751, !noalias !750
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.av, ptr %i.az, align 16, !tbaa !49, !alias.scope !751, !noalias !750
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.37, i64 20, i64 284, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !750
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.37) #28
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !49
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ba

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.bg = extractvalue { i32, i1 } %i.aw, 0
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %.split3, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !67
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.33
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISC_EEvSE_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.168) align 8 %2, ptr noundef byval(%class.anon.169) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.167", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !270, !range !76, !noundef !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !271
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !110
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.ae)
  %i.af = add nuw i64 %.011.i, 9223372036854775807
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !752

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !270, !range !76, !noundef !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !271
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !110
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !752

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre63 = load i8, ptr %3, align 8, !tbaa !273, !range !76
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.o

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %6 = phi i8 [ %.pre63, %.lr.ph ], [ %8, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 5 uses
  %.053.a = phi i32 [ %i.bg, %.lr.ph ], [ %i.ez, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.053 = phi i32 [ %i.c, %.lr.ph ], [ %.053.a, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %7 = sdiv i32 %.053, 64                         ; 3 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !274
  %i.bn = sext i32 %7 to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !110
  %i.bq = xor i8 %6, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = xor i64 %i.bp, %i.bs                    ; 3 uses
  switch i64 %i.bt, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.bu = shl nsw i32 %7, 6                       ; 2 uses
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !275, !nonnull !77, !align !246 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !276 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 59
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load ptr, ptr %i.bj, align 8, !nonnull !77, !align !277 ; 4 uses
  %i.cc = load ptr, ptr %i.bk, align 8, !nonnull !77, !align !246 ; 2 uses
  %i.cd = load ptr, ptr %i.bl, align 8, !nonnull !77, !align !246 ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !229
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !229
  %.promoted = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cg = sext i32 %i.bu to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %.lr.ph.i.split.us
  %i.ch = phi i32 [ %.promoted, %.lr.ph.i.split.us ], [ %i.cp, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 2 uses
  %.01519.i.us = phi i64 [ %i.bt, %.lr.ph.i.split.us ], [ %i.cr, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ] ; 3 uses
  %i.ci = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us, i1 true)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cj = load i32, ptr %gep, align 4, !tbaa !62
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !62 ; 2 uses
  %i.cn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ch, i32 %i.cm) ; 2 uses
  %i.co = extractvalue { i32, i1 } %i.cn, 1
  br i1 %i.co, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, !prof !68

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %i.cp = extractvalue { i32, i1 } %i.cn, 0       ; 2 uses
  store i32 %i.cp, ptr %i.cb, align 4, !tbaa !62
  %i.cq = add i64 %.01519.i.us, -1
  %i.cr = and i64 %i.cq, %.01519.i.us             ; 2 uses
  %.not.i41.us = icmp eq i64 %i.cr, 0
  br i1 %.not.i41.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !753

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 58
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !225, !range !76, !noundef !77
  %i.cu = trunc nuw i8 %i.ct to i1
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cv = shl nsw i32 %7, 6                       ; 2 uses
  %i.cw = add nuw i32 %i.cv, 64
  %i.cx = sext i32 %i.cw to i64
  %.0.off = add i32 %.053, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.cy = sext i32 %i.cv to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.cy, %.lr.ph21.i ], [ %i.da, %bb.j ] ; 2 uses
  %i.cz = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef %i.cz)
  %i.da = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cx
  br i1 %i.db, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.loopexit57, !llvm.loop !754

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %.lr.ph.i.split
  %.01519.i = phi i64 [ %i.bt, %.lr.ph.i.split ], [ %i.ey, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit ] ; 3 uses
  %i.dc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = or disjoint i32 %i.bu, %i.dd            ; 3 uses
  %i.df = load i8, ptr %i.by, align 1, !range !76
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %.split.i, label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.dh = zext i32 %i.de to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dk, %i.dm
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.do = load i8, ptr %i.bz, align 1, !tbaa !222, !range !76, !noundef !77
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split3.i

.split3.i:                                        ; preds = %bb.l
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !228
  %i.dr = sext i32 %i.de to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !62
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 6
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !110
  %i.dy = and i64 %i.du, 63
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.dx
  %.not.i7.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.l
  %i.eb = load i64, ptr %i.bx, align 8, !tbaa !110
  %i.ec = and i64 %i.eb, 1
  %.not.i6.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split3.i, %.split.i
  %i.ed = load i32, ptr %i.cb, align 4, !tbaa !62 ; 2 uses
  %i.ee = load ptr, ptr %i.cc, align 8, !tbaa !229
  %i.ef = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.eg = sext i32 %i.de to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !62
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !62 ; 2 uses
  %i.em = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ed, i32 %i.el) ; 2 uses
  %i.en = extractvalue { i32, i1 } %i.em, 1
  br i1 %i.en, label %.split.us, label %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i, !prof !68

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us
  %.us-phi = phi i32 [ %i.ch, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.ed, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.us-phi51 = phi i32 [ %i.cm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ], [ %i.el, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !760
  store ptr @.str.34, ptr %4, align 16, !tbaa !49, !noalias !760
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.us-phi, ptr %i.eo, align 16, !tbaa !49, !alias.scope !761, !noalias !760
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.us-phi51, ptr %i.ep, align 16, !tbaa !49, !alias.scope !761, !noalias !760
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.37, i64 20, i64 284, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !760
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIiEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.37) #28
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.split.us
  unreachable

bb.n:                                             ; preds = %.split.us
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !49
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.eq

_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.ew = extractvalue { i32, i1 } %i.em, 0
  store i32 %i.ew, ptr %i.cb, align 4, !tbaa !62
  br label %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit

_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit: ; preds = %.split.i, %.split3.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i
  %i.ex = add i64 %.01519.i, -1
  %i.ey = and i64 %i.ex, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ey, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !753

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.loopexit57: ; preds = %bb.j
  %.pre = load i8, ptr %3, align 8, !tbaa !273, !range !76
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.loopexit57, %bb.h, %bb.i
  %8 = phi i8 [ %.pre, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.loopexit57 ], [ %6, %_ZN8facebook5velox11checkedPlusIiEET_S2_S2_PKc.exit.i.us ], [ %6, %bb.i ], [ %6, %bb.h ], [ %6, %_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi.exit ]
  %i.ez = add nsw i32 %.053.a, 64                 ; 2 uses
  %.not33 = icmp sgt i32 %i.ez, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !759

bb.o:                                             ; preds = %._crit_edge
  %i.fa = ashr i32 %1, 6
  %i.fb = and i32 %1, 63
  %i.fc = zext nneg i32 %i.fb to i64
  %notmask.i42 = shl nsw i64 -1, %i.fc
  %i.fd = xor i64 %notmask.i42, -1
  %i.fe = load i8, ptr %2, align 8, !tbaa !270, !range !76, !noundef !77
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !271
  %i.fh = sext i32 %i.fa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !110
  %i.fk = xor i8 %i.fe, 1
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = xor i64 %i.fj, %i.fm
  %i.fo = and i64 %i.fn, %i.fd                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fo, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.o
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fo, %.preheader.i44 ], [ %i.fu, %bb.p ] ; 3 uses
  %i.fq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = or disjoint i32 %i.d, %i.fr
  call void @_ZZN8facebook5velox9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i32 noundef %i.fs)
  %i.ft = add nuw i64 %.011.i45, 9223372036854775807
  %i.fu = and i64 %i.ft, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fu, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.p, !llvm.loop !752

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13countElementsINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERNS0_13DecodedVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.p, %bb.d, %bb.o, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.213", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.213", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, -64                          ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 160) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !770
  store ptr @.str.34, ptr %7, align 16, !tbaa !49, !alias.scope !771, !noalias !770
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !49, !alias.scope !771, !noalias !770
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !49, !alias.scope !771, !noalias !770
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.37, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !770
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.37) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.b, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !68

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !772
  store ptr @.str.34, ptr %5, align 16, !tbaa !49, !alias.scope !773, !noalias !772
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !49, !alias.scope !773, !noalias !772
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !49, !alias.scope !773, !noalias !772
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.37, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !772
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.37) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !49
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !68

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #28
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.af = add i64 %.0, -96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !236
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !279
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.am, align 4, !tbaa !191
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ae, align 8, !tbaa !67
  store i64 %1, ptr %i.aj, align 8, !tbaa !280
  store ptr %i.ae, ptr %0, align 8, !tbaa !186
  %i.ao = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.216", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_0
