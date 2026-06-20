inline.NumInlined: 9532
inline.NumDeleted: 3275
begin_hunk_0_@_ZN8facebook5velox15ArrayVectorBase16transferOrCopyToEPNS0_6memory10MemoryPoolE:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr32, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125
  %.not.i.i24 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %.pr32, align 8, !tbaa !50
  %..i.i25 = select i1 %.not.i.i24, i64 8, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %..i.i25
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.pr32)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26 unwind label %bb.r, !inline_history !124

bb.r:                                             ; preds = %.noexc.i23, %.sink.split.i.i22
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26: ; preds = %bb.k, %_ZN8facebook5velox13AlignedBuffer4copyIiEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit13, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20, %bb.q, %.noexc.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !109
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !117
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !304
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox15ArrayVectorBase19ensureNullRowsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !112
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !112
  %i.o = and i8 %i.n, 2
  %.not.i2 = icmp eq i8 %i.o, 0
  br i1 %.not.i2, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, label %bb.d, !prof !20

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !162  ; 5 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3
  %i.v = and i32 %i.t, 2147483584                 ; 4 uses
  %.not32.not57.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not32.not57.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.w = zext nneg i32 %i.v to i64
  %i.x = sub i64 %i.j, %i.r
  %diff.check = icmp ult i64 %i.x, 128
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %bb.e
  %.not33.i.i.i = icmp eq i32 %i.t, %i.v
  br i1 %.not33.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.g

bb.f:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %.lr.ph.i.i.i
  %indvars.iv60.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next61.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 7 uses
  %indvars.iv.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 3 uses
  %i.y = lshr exact i64 %indvars.iv60.i.i.i, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !43
  %i.ab = xor i64 %i.aa, -1                       ; 2 uses
  switch i64 %i.ab, label %.lr.ph.i.i.i.i [
    i64 -1, label %vector.memcheck
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"
  ]

vector.memcheck:                                  ; preds = %bb.f
  br i1 %diff.check, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv60.i.i.i ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ac, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ad, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv60.i.i.i ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ag, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ai, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.aj, align 4, !tbaa !3
  %i.ak = or disjoint i64 %indvars.iv60.i.i.i, 32 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <8 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.am, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.an, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ar, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !3
  br label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %.023.i.i.i.i = phi i64 [ %i.be, %.preheader.i ], [ %indvars.iv60.i.i.i, %vector.memcheck ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.023.i.i.i.i
  store i32 0, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.023.i.i.i.i
  store i32 0, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.023.i.i.i.i, 1        ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.av
  store i32 0, ptr %i.ax, align 4, !tbaa !3
  %i.ay = or disjoint i64 %.023.i.i.i.i, 2        ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !3
  %i.bb = or disjoint i64 %.023.i.i.i.i, 3        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  store i32 0, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bb
  store i32 0, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.023.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.be, %indvars.iv.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.preheader.i, !llvm.loop !409

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.01522.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i, i1 true)
  %i.bg = or disjoint i64 %i.bf, %indvars.iv60.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bg
  store i32 0, ptr %i.bh, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bg
  store i32 0, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.01522.i.i.i.i, -1
  %i.bk = and i64 %i.bj, %.01522.i.i.i.i          ; 2 uses
  %.not.i45.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i45.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !410

"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i": ; preds = %.preheader.i, %.lr.ph.i.i.i.i, %vector.body, %bb.f
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 64
  %.not32.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i, %i.w
  %indvars.iv.next61.i.i.i = add nuw nsw i64 %indvars.iv60.i.i.i, 64
  br i1 %.not32.not.i.i.i, label %bb.f, label %._crit_edge.i.i.i, !llvm.loop !411

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bl = lshr i32 %i.t, 6
  %i.bm = and i32 %i.t, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i46.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !43
  %.demorgan.i.i = or i64 %i.bq, %notmask.i46.i.i.i ; 2 uses
  %.not.i47.i.i.i = icmp eq i64 %.demorgan.i.i, -1
  br i1 %.not.i47.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %.preheader.i48.i.i.i

.preheader.i48.i.i.i:                             ; preds = %bb.g
  %i.br = xor i64 %.demorgan.i.i, -1
  %1 = zext nneg i32 %i.v to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i48.i.i.i
  %.012.i53.i.i.i = phi i64 [ %i.br, %.preheader.i48.i.i.i ], [ %i.bw, %bb.h ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i53.i.i.i, i1 true)
  %2 = or disjoint i64 %i.bs, %1                  ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %2
  store i32 0, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2
  store i32 0, ptr %i.bu, align 4, !tbaa !3
  %i.bv = add nsw i64 %.012.i53.i.i.i, -1
  %i.bw = and i64 %i.bv, %.012.i53.i.i.i          ; 2 uses
  %.not10.i54.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not10.i54.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.h, !llvm.loop !412

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit": ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEi(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %.not = icmp ult i64 %i.h, %i.d
  br i1 %.not, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !413
  store i64 %i.h, ptr %7, align 16, !tbaa !61, !alias.scope !416, !noalias !413
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.d, ptr %i.i, align 16, !tbaa !61, !alias.scope !416, !noalias !413
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !413
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.12) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %8, align 8, !tbaa !56     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !146  ; 2 uses
  %.not9 = icmp ult i64 %i.s, %i.d
  br i1 %.not9, label %bb.j, label %.preheader, !prof !13

.preheader:                                       ; preds = %bb.e
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not10 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %.not10, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 5 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %.split.us, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv105
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 4 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.split77.us, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw nsw i32 %i.af, %i.ab
  %.not11.us = icmp sgt i32 %i.ah, %2
  br i1 %.not11.us, label %.split82.us, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h, %.critedge.us
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.critedge.us, !llvm.loop !419

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !420
  store i64 %i.s, ptr %6, align 16, !tbaa !61, !alias.scope !423, !noalias !420
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.d, ptr %i.ai, align 16, !tbaa !61, !alias.scope !423, !noalias !420
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !420
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.12) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  %i.an = load i64, ptr %i.al, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.w

._crit_edge:                                      ; preds = %bb.v, %bb.i, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.lr.ph ] ; 8 uses
  %i.ap = lshr i64 %indvars.iv, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43
  %i.as = and i64 %indvars.iv, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.v, label %.critedge

.critedge:                                        ; preds = %.lr.ph.split
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 5 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ay = icmp slt i32 %i.aw, 0
  br i1 %i.ay, label %.split.us, label %bb.p, !prof !13

.split.us:                                        ; preds = %bb.m, %bb.f
  %i.az = phi i32 [ %i.ab, %bb.f ], [ %i.aw, %bb.m ]
  %.us-phi75.in = phi i64 [ %indvars.iv105, %bb.f ], [ %indvars.iv, %bb.m ]
  %.us-phi75 = trunc i64 %.us-phi75.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !426
  store i32 %i.az, ptr %5, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ba, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.us-phi75, ptr %i.bb, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.34, i64 70, i64 273, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !426
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.34) #38
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.split.us
  unreachable

bb.o:                                             ; preds = %.split.us
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

end_hunk_0
