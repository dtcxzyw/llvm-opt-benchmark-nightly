inline.NumInlined: 2100
inline.NumDeleted: 1255
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.96", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !406
  %i.e = load ptr, ptr %0, align 8, !tbaa !407    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 80                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !86
  store i64 %i.i, ptr %i.b, align 8, !tbaa !86
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #1

declare noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb14PhysicalUnnest16GetOperatorStateERNS_16ExecutionContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.66") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.b = load ptr, ptr %2, align 8, !tbaa !25, !noalias !408, !nonnull !31, !align !32
  %i.c = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #23, !noalias !411 ; 3 uses
  invoke void @_ZN6duckdb19UnnestOperatorStateC2ERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(512) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN6duckdb14PhysicalUnnest8GetStateERNS_16ExecutionContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE.exit unwind label %bb.b, !noalias !411

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #22, !noalias !411
  resume { ptr, i32 } %i.d

_ZN6duckdb14PhysicalUnnest8GetStateERNS_16ExecutionContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !33, !alias.scope !408
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14PhysicalUnnest8GetStateERNS_16ExecutionContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.66") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25, !nonnull !31, !align !32
  %i.b = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #23, !noalias !414 ; 3 uses
  invoke void @_ZN6duckdb19UnnestOperatorStateC2ERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIN6duckdb19UnnestOperatorStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !414

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22, !noalias !414
  resume { ptr, i32 } %i.c

_ZNSt10unique_ptrIN6duckdb19UnnestOperatorStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree nonnull readnone align 8 captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.96", align 1 ; 5 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ae = alloca i64, align 8                     ; 3 uses
  %i.af = alloca i64, align 8                     ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.am = alloca i64, align 8                     ; 18 uses
  %i.an = alloca i64, align 8                     ; 18 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %scevgep636 = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.am, %scevgep636
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge484, %bb.a
  %i.bh = load i8, ptr %i.ao, align 8, !tbaa !361, !range !237, !noundef !31
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb19UnnestOperatorState12PrepareInputERNS_9DataChunkERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(344) %3, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = load i64, ptr %i.ap, align 8, !tbaa !417 ; 3 uses
  %i.bk = load i64, ptr %i.aq, align 8, !tbaa !236
  %.not = icmp ult i64 %i.bj, %i.bk
  br i1 %.not, label %.preheader386, label %bb.e

.preheader386:                                    ; preds = %bb.d
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !233 ; 4 uses
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !234 ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %.fr657 = freeze i64 %i.bp
  %i.bq = sdiv i64 %.fr657, 104                   ; 5 uses
  %.not485 = icmp eq ptr %i.bl, %i.bm             ; 2 uses
  br i1 %.not485, label %.preheader385, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader386
  %i.br = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !200 ; 8 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 9 uses
  %i.bx = add nsw i64 %i.bq, -1
  %umin646 = call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bw)
  %i.by = add nsw i64 %umin646, 1                 ; 3 uses
  %min.iters.check648 = icmp ult i64 %i.by, 13
  br i1 %min.iters.check648, label %scalar.ph647.preheader, label %vector.memcheck

scalar.ph647.preheader:                           ; preds = %vector.body652, %vector.memcheck, %.lr.ph
  %.0152445.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ch, %vector.body652 ] ; 6 uses
  %i.bz = sub i64 %i.bq, %.0152445.ph             ; 2 uses
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph647.prol.loopexit, label %scalar.ph647.prol

scalar.ph647.prol:                                ; preds = %scalar.ph647.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.0152445.ph, ptr %i.am, align 8, !tbaa !86
  store i64 %i.bw, ptr %i.an, align 8, !tbaa !86
  %exitcond.not.prol = icmp eq i64 %.0152445.ph, %i.bw
  br i1 %exitcond.not.prol, label %.noexc.i, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.prol, !prof !90

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.prol:      ; preds = %scalar.ph647.prol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0152445.ph
  store i64 0, ptr %i.ca, align 8, !tbaa !86
  %i.cb = add nuw i64 %.0152445.ph, 1
  br label %scalar.ph647.prol.loopexit

scalar.ph647.prol.loopexit:                       ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.prol, %scalar.ph647.preheader
  %.0152445.unr = phi i64 [ %.0152445.ph, %scalar.ph647.preheader ], [ %i.cb, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.prol ]
  %i.cc = icmp eq i64 %i.bz, 1
  br i1 %i.cc, label %.preheader385.loopexit, label %scalar.ph647

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep637 = getelementptr i8, ptr %i.bs, i64 8
  %i.cd = add nsw i64 %i.bq, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.bw)
  %i.ce = shl nsw i64 %umin, 3
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.ce ; 2 uses
  %bound0639 = icmp ult ptr %i.am, %scevgep638
  %bound1640 = icmp ult ptr %i.bs, %scevgep
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx = or i1 %found.conflict, %found.conflict641
  %bound0642 = icmp ult ptr %i.an, %scevgep638
  %bound1643 = icmp ult ptr %i.bs, %scevgep636
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx645 = or i1 %conflict.rdx, %found.conflict644
  br i1 %conflict.rdx645, label %scalar.ph647.preheader, label %vector.ph649

vector.ph649:                                     ; preds = %vector.memcheck
  %n.mod.vf650 = and i64 %i.by, 3                 ; 2 uses
  %i.cf = icmp eq i64 %n.mod.vf650, 0
  %i.cg = select i1 %i.cf, i64 4, i64 %n.mod.vf650
  %n.vec651 = sub i64 %i.by, %i.cg
  %i.ch = freeze i64 %n.vec651                    ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph649
  %index653 = phi i64 [ 0, %vector.ph649 ], [ %index.next654, %vector.body652 ] ; 3 uses
  %i.ci = or disjoint i64 %index653, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %i.ci, ptr %i.am, align 8, !tbaa !86, !alias.scope !418, !noalias !421
  store i64 %i.bw, ptr %i.an, align 8, !tbaa !86, !alias.scope !424, !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index653 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x i64> zeroinitializer, ptr %i.cj, align 8, !tbaa !86, !alias.scope !425
  store <2 x i64> zeroinitializer, ptr %i.ck, align 8, !tbaa !86, !alias.scope !425
  %index.next654 = add nuw i64 %index653, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next654, %i.ch
  br i1 %i.cl, label %scalar.ph647.preheader, label %vector.body652, !llvm.loop !426

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ao, align 8, !tbaa !361
  br label %.loopexit387

.preheader385.loopexit:                           ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1, %scalar.ph647.prol.loopexit
  %.pre.pre = load i64, ptr %i.ap, align 8, !tbaa !417
  br label %.preheader385

.preheader385:                                    ; preds = %.preheader386, %.preheader385.loopexit
  %umax521.pre-phi = phi i64 [ %i.bq, %.preheader385.loopexit ], [ 1, %.preheader386 ]
  %.pre = phi i64 [ %.pre.pre, %.preheader385.loopexit ], [ %i.bj, %.preheader386 ]
  br label %bb.j

scalar.ph647:                                     ; preds = %scalar.ph647.prol.loopexit, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1
  %.0152445 = phi i64 [ %i.cz, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1 ], [ %.0152445.unr, %scalar.ph647.prol.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.0152445, ptr %i.am, align 8, !tbaa !86
  store i64 %i.bw, ptr %i.an, align 8, !tbaa !86
  %exitcond.not = icmp eq i64 %.0152445, %i.bw
  br i1 %exitcond.not, label %.noexc.i, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit, !prof !90

.noexc.i:                                         ; preds = %scalar.ph647.prol, %scalar.ph647, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.cn, ptr %20, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  store i64 55, ptr %i.n, align 8, !tbaa !86
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.co, ptr %20, align 8, !tbaa !55
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !86  ; 3 uses
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.co, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.f ], [ true, %.noexc ] ; 2 uses
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cu = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cn
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.cu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br i1 %.0.i.i.i, label %bb.h, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br i1 %.0.i.i.i, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cm) #21
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i294, %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i286, %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i278, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i270, %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199, %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i191, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i184, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.h, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183 ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198 ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206 ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221 ], [ %.pn.pn, %.body ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245 ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269 ], [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i277 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.h ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i176 ], [ %.pn8.i.i.i172, %bb.p ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.w ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i184 ], [ %.pn8.i.i.i180, %bb.ab ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i191 ], [ %.pn8.i.i.i187, %bb.af ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199 ], [ %.pn8.i.i.i195, %bb.aj ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207 ], [ %.pn8.i.i.i203, %bb.aq ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222 ], [ %.pn8.i.i.i218, %bb.au ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246 ], [ %.pn8.i.i.i242, %bb.ay ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i270 ], [ %.pn8.i.i.i266, %bb.bt ], [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i278 ], [ %.pn8.i.i.i274, %bb.bx ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i286 ], [ %.pn8.i.i.i282, %bb.cc ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i294 ], [ %.pn8.i.i.i290, %bb.cg ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293 ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit:           ; preds = %scalar.ph647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0152445
  store i64 0, ptr %i.cw, align 8, !tbaa !86
  %i.cx = add nuw i64 %.0152445, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %i.cx, ptr %i.am, align 8, !tbaa !86
  store i64 %i.bw, ptr %i.an, align 8, !tbaa !86
  %exitcond.not.1 = icmp eq i64 %i.cx, %i.bw
  br i1 %exitcond.not.1, label %.noexc.i, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1, !prof !90

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1:         ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cx
  store i64 0, ptr %i.cy, align 8, !tbaa !86
  %i.cz = add nuw i64 %.0152445, 2                ; 2 uses
  %exitcond516.not.1 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond516.not.1, label %.preheader385.loopexit, label %scalar.ph647, !llvm.loop !429
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i191: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %.0.i.i.i189, label %bb.af, label %common.resume

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i186
  %.pn8.i.i.i187 = phi { ptr, i32 } [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i186 ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i191 ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190 ]
  call void @__cxa_free_exception(ptr %i.gu) #21
  br label %common.resume

bb.ag:                                            ; preds = %bb.ad
  unreachable

_ZN6duckdb6vectorINS_15SelectionVectorELb1ESaIS1_EEixEm.exit192: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %.0159471
  %i.hf = icmp ult i64 %i.fm, %i.di
  br i1 %i.hf, label %.lr.ph451, label %._crit_edge452.split.us

.lr.ph451:                                        ; preds = %_ZN6duckdb6vectorINS_15SelectionVectorELb1ESaIS1_EEixEm.exit192
  %i.hg = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.hh = load ptr, ptr %i.at, align 8, !tbaa !200 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 3                 ; 2 uses
  %.not.i.i.i193 = icmp ult i64 %.0159471, %i.hl
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.0159471 ; 3 uses
  %.pre523.a = load ptr, ptr %i.ge, align 8, !tbaa !402 ; 4 uses
  br i1 %.not.i.i.i193, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader, label %.lr.ph451.split, !prof !87

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader: ; preds = %.lr.ph451
  %.pre524 = load i64, ptr %i.hm, align 8, !tbaa !86 ; 3 uses
  %.pre525.a = load ptr, ptr %i.he, align 8, !tbaa !402 ; 3 uses
  %i.hn = sub nsw i64 %i.di, %i.fn
  %.neg = add nuw nsw i64 %i.fn, 1
  %xtraiter682 = and i64 %i.hn, 1
  %lcmp.mod683.not = icmp eq i64 %xtraiter682, 0
  br i1 %lcmp.mod683.not, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol: ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader
  %i.ho = add nuw nsw i64 %i.fn, %.0144476        ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.pre523.a, i64 %i.ho
  store i32 0, ptr %i.hp, align 4, !tbaa !3
  %i.hq = add i64 %.pre524, 1                     ; 2 uses
  store i64 %i.hq, ptr %i.hm, align 8, !tbaa !86
  %i.hr = trunc nuw nsw i64 %i.ho to i32
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.pre525.a, i64 %.pre524
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !3
  %i.ht = add nuw nsw i64 %i.fn, 1
  br label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit: ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader
  %.unr = phi i64 [ %.pre524, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader ], [ %i.hq, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol ]
  %.0156450.us.unr = phi i64 [ %i.fn, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader ], [ %i.ht, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol ]
  %i.hu = icmp eq i64 %i.di, %.neg
  br i1 %i.hu, label %._crit_edge452.split.us, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us:     ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us
  %i.hv = phi i64 [ %i.ic, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us ], [ %.unr, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit ] ; 3 uses
  %.0156450.us = phi i64 [ %i.if, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us ], [ %.0156450.us.unr, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit ] ; 3 uses
  %i.hw = add i64 %.0156450.us, %.0144476         ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.pre523.a, i64 %i.hw
  store i32 0, ptr %i.hx, align 4, !tbaa !3
  %i.hy = add i64 %i.hv, 1
  %i.hz = trunc i64 %i.hw to i32
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.pre525.a, i64 %i.hv
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !3
  %.reass706 = add i64 %.0156450.us, %invariant.op705 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.pre523.a, i64 %.reass706
  store i32 0, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add i64 %i.hv, 2                        ; 2 uses
  %i.id = trunc i64 %.reass706 to i32
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.pre525.a, i64 %i.hy
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !3
  %i.if = add nuw i64 %.0156450.us, 2             ; 2 uses
  %exitcond519.not.1 = icmp eq i64 %i.if, %i.di
  br i1 %exitcond519.not.1, label %._crit_edge452.split.us.loopexit.unr-lcssa, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us, !llvm.loop !438

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0158448 = phi i64 [ %i.ij, %scalar.ph ], [ %.0158448.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ig = add i64 %i.gf, %.0158448
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = getelementptr [4 x i8], ptr %i.gh, i64 %.0158448
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !3
  %i.ij = add nuw i64 %.0158448, 1                ; 2 uses
  %exitcond518.not = icmp eq i64 %i.ij, %i.fn
  br i1 %exitcond518.not, label %._crit_edge, label %scalar.ph, !llvm.loop !439

._crit_edge452.split.us.loopexit.unr-lcssa:       ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us
  store i64 %i.ic, ptr %i.hm, align 8, !tbaa !86
  br label %._crit_edge452.split.us

._crit_edge452.split.us:                          ; preds = %._crit_edge452.split.us.loopexit.unr-lcssa, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit, %_ZN6duckdb6vectorINS_15SelectionVectorELb1ESaIS1_EEixEm.exit192
  %i.ik = add nuw i64 %.0159471, 1                ; 2 uses
  %exitcond522.not = icmp eq i64 %i.ik, %umax521.pre-phi
  br i1 %exitcond522.not, label %._crit_edge474.loopexit, label %bb.m, !llvm.loop !440

.lr.ph451.split:                                  ; preds = %.lr.ph451
  %i.il = getelementptr [4 x i8], ptr %.pre523.a, i64 %i.fn
  %i.im = getelementptr [4 x i8], ptr %i.il, i64 %.0144476
  store i32 0, ptr %i.im, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.0159471, ptr %i.ae, align 8, !tbaa !86
  store i64 %i.hl, ptr %i.af, align 8, !tbaa !86
  %i.in = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.io, ptr %16, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  store i64 55, ptr %i.i, align 8, !tbaa !86
  %i.ip = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc313 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i194 ; 3 uses

.noexc313:                                        ; preds = %.lr.ph451.split
  store ptr %i.ip, ptr %16, align 8, !tbaa !55
  %i.iq = load i64, ptr %i.i, align 8, !tbaa !86  ; 3 uses
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ip, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !50
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  store i8 0, ptr %i.is, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc313
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i194: ; preds = %.lr.ph451.split
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.noexc313
  %.0.i.i.i197 = phi i1 [ false, %bb.ah ], [ true, %.noexc313 ] ; 2 uses
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iv = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.io
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.iv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0.i.i.i197, label %bb.aj, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0.i.i.i197, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i194
  %.pn8.i.i.i195 = phi { ptr, i32 } [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i194 ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i199 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198 ]
  call void @__cxa_free_exception(ptr %i.in) #21
  br label %common.resume

bb.ak:                                            ; preds = %bb.ah
  unreachable

bb.al:                                            ; preds = %.loopexit382, %._crit_edge474.loopexit
  %.pre527.a = phi i64 [ %.pre527.pre, %._crit_edge474.loopexit ], [ %.pre527529, %.loopexit382 ] ; 3 uses
  %i.ix = phi i64 [ %.pre526.a, %._crit_edge474.loopexit ], [ %i.dg, %.loopexit382 ]
  %i.iy = add nuw nsw i64 %i.di, %.0144476        ; 2 uses
  %i.iz = add i64 %i.ix, %i.di                    ; 2 uses
  store i64 %i.iz, ptr %i.aw, align 8, !tbaa !430
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.pre527.a
  %.pre533 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !86
  %i.ja = icmp eq i64 %i.iz, %.pre533
  %i.jb = add i64 %.0151475, 1                    ; 2 uses
  br i1 %i.ja, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread, %bb.al
  %i.jc = phi i64 [ %i.dj, %.thread ], [ %i.jb, %bb.al ]
  %.1573 = phi i64 [ %.0144476, %.thread ], [ %i.iy, %bb.al ]
  %i.jd = phi i64 [ %.pre527529, %.thread ], [ %.pre527.a, %bb.al ]
  %i.je = add i64 %i.jd, 1                        ; 2 uses
  store i64 %i.je, ptr %i.ap, align 8, !tbaa !417
  store i64 0, ptr %i.aw, align 8, !tbaa !430
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jf = phi i64 [ %i.jc, %bb.am ], [ %i.jb, %bb.al ] ; 2 uses
  %.1572 = phi i64 [ %.1573, %bb.am ], [ %i.iy, %bb.al ] ; 3 uses
  %.pre527530 = phi i64 [ %i.je, %bb.am ], [ %.pre527.a, %bb.al ]
  %i.jg = icmp ult i64 %.1572, 2048
  br i1 %i.jg, label %bb.j, label %.critedge, !llvm.loop !441

.critedge:                                        ; preds = %bb.an, %bb.j
  %.0151.lcssa = phi i64 [ %i.jf, %bb.an ], [ %.0151475, %bb.j ]
  %.0144.lcssa = phi i64 [ %.1572, %bb.an ], [ %.0144476, %bb.j ] ; 4 uses
  store i64 %.0144.lcssa, ptr %i.be, align 8, !tbaa !236
  br i1 %5, label %.preheader383, label %.loopexit384

.preheader383:                                    ; preds = %.critedge
  %i.jh = load ptr, ptr %i.bf, align 8, !tbaa !233
  %i.ji = load ptr, ptr %1, align 8, !tbaa !234   ; 2 uses
  %.not488 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not488, label %.loopexit384, label %.lr.ph478

.lr.ph478:                                        ; preds = %.preheader383
  %i.jj = icmp eq i64 %.0151.lcssa, 1
  br label %.lr.ph478.split.us

.lr.ph478.split.us:                               ; preds = %.lr.ph478, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a
  %i.jk = phi ptr [ %i.ji, %.lr.ph478 ], [ %i.kn, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a ] ; 2 uses
  %.0154477.us = phi i64 [ 0, %.lr.ph478 ], [ %i.kl, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a ] ; 8 uses
  %i.jl = load ptr, ptr %i.bg, align 8, !tbaa !233
  %i.jm = load ptr, ptr %2, align 8, !tbaa !234   ; 3 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = sdiv exact i64 %i.jp, 104               ; 3 uses
  %.not.i.i.i201.us = icmp ult i64 %.0154477.us, %i.jq ; 2 uses
  br i1 %i.jj, label %.lr.ph478.split, label %26

.lr.ph478.split:                                  ; preds = %.lr.ph478.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.0154477.us, ptr %i.ac, align 8, !tbaa !86
  store i64 %i.jq, ptr %i.ad, align 8, !tbaa !86
  br i1 %.not.i.i.i201.us, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit215, label %.noexc.i316, !prof !87

.noexc.i316:                                      ; preds = %.lr.ph478.split
  %i.jr = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.js, ptr %15, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i64 55, ptr %i.h, align 8, !tbaa !86
  %i.jt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc317 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ; 3 uses

.noexc317:                                        ; preds = %.noexc.i316
  store ptr %i.jt, ptr %15, align 8, !tbaa !55
  %i.ju = load i64, ptr %i.h, align 8, !tbaa !86  ; 3 uses
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.jt, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !50
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju
  store i8 0, ptr %i.jw, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc317
  invoke void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ar unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202: ; preds = %.noexc.i316
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.noexc317
  %.0.i.i.i205 = phi i1 [ false, %bb.ao ], [ true, %.noexc317 ] ; 2 uses
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jz = load ptr, ptr %15, align 8, !tbaa !55   ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.js
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.jz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %.0.i.i.i205, label %bb.aq, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %.0.i.i.i205, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202
  %.pn8.i.i.i203 = phi { ptr, i32 } [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207 ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206 ]
  call void @__cxa_free_exception(ptr %i.jr) #21
  br label %common.resume

bb.ar:                                            ; preds = %bb.ao
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit215: ; preds = %.lr.ph478.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %23 = getelementptr inbounds nuw [104 x i8], ptr %i.jm, i64 %.0154477.us
  %24 = getelementptr inbounds nuw [104 x i8], ptr %i.jk, i64 %.0154477.us
  %25 = load i64, ptr %i.aq, align 8, !tbaa !236
  call void @_ZN6duckdb14ConstantVector9ReferenceERNS_6VectorES2_mm(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull align 8 dereferenceable(104) %24, i64 noundef %i.bj, i64 noundef %25)
  br label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a

26:                                               ; preds = %.lr.ph478.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.0154477.us, ptr %i.aa, align 8, !tbaa !86
  store i64 %i.jq, ptr %i.ab, align 8, !tbaa !86
  br i1 %.not.i.i.i201.us, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231, label %.noexc.i324, !prof !87

.noexc.i324:                                      ; preds = %26
  %i.kb = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.kc, ptr %14, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i64 55, ptr %i.g, align 8, !tbaa !86
  %i.kd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc325 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i217 ; 3 uses

.noexc325:                                        ; preds = %.noexc.i324
  store ptr %i.kd, ptr %14, align 8, !tbaa !55
  %i.ke = load i64, ptr %i.g, align 8, !tbaa !86  ; 3 uses
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.kd, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !50
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i8 0, ptr %i.kg, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc325
  invoke void @__cxa_throw(ptr nonnull %i.kb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.av unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i217: ; preds = %.noexc.i324
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %.noexc325
  %.0.i.i.i220 = phi i1 [ false, %bb.as ], [ true, %.noexc325 ] ; 2 uses
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kj = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.kc
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.kj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0.i.i.i220, label %bb.au, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0.i.i.i220, label %bb.au, label %common.resume

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i217
  %.pn8.i.i.i218 = phi { ptr, i32 } [ %i.kh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i217 ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i222 ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221 ]
  call void @__cxa_free_exception(ptr %i.kb) #21
  br label %common.resume

bb.av:                                            ; preds = %bb.as
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231: ; preds = %26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %27 = getelementptr inbounds nuw [104 x i8], ptr %i.jm, i64 %.0154477.us
  %28 = getelementptr inbounds nuw [104 x i8], ptr %i.jk, i64 %.0154477.us
  call void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %27, ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %.0144.lcssa)
  br label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit215, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231
  %i.kl = add nuw i64 %.0154477.us, 1             ; 2 uses
  %i.km = load ptr, ptr %i.bf, align 8, !tbaa !233
  %i.kn = load ptr, ptr %1, align 8, !tbaa !234   ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 104               ; 2 uses
  %i.ks = icmp ult i64 %i.kl, %i.kr
  br i1 %i.ks, label %.lr.ph478.split.us, label %.loopexit384.loopexit, !llvm.loop !442

.loopexit384.loopexit:                            ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit231.a
  %.pre526 = load ptr, ptr %i.as, align 8, !tbaa !233
  %.pre527 = load ptr, ptr %i.ar, align 8, !tbaa !234
  br label %.loopexit384

.loopexit384:                                     ; preds = %.loopexit384.loopexit, %.preheader383, %.critedge
  %29 = phi ptr [ %i.bm, %.critedge ], [ %i.bm, %.preheader383 ], [ %.pre527, %.loopexit384.loopexit ] ; 2 uses
  %30 = phi ptr [ %i.bl, %.critedge ], [ %i.bl, %.preheader383 ], [ %.pre526, %.loopexit384.loopexit ]
  %.0155 = phi i64 [ 0, %.critedge ], [ 0, %.preheader383 ], [ %i.kr, %.loopexit384.loopexit ]
  %.not489 = icmp eq ptr %30, %29
  br i1 %.not489, label %._crit_edge484, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit239

._crit_edge484:                                   ; preds = %.loopexit, %.loopexit384
  %i.kt = load i64, ptr %i.be, align 8, !tbaa !236
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %bb.b, label %.loopexit387, !llvm.loop !443

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit239: ; preds = %.loopexit384, %.loopexit
  %i.kv = phi ptr [ %i.pz, %.loopexit ], [ %29, %.loopexit384 ]
  %.0153482 = phi i64 [ %i.px, %.loopexit ], [ 0, %.loopexit384 ] ; 20 uses
  %i.kw = getelementptr inbounds nuw [104 x i8], ptr %i.kv, i64 %.0153482 ; 3 uses
  %i.kx = add nuw i64 %.0153482, %.0155           ; 3 uses
  %i.ky = load ptr, ptr %i.bg, align 8, !tbaa !233
  %i.kz = load ptr, ptr %2, align 8, !tbaa !234   ; 2 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %i.kx, ptr %i.y, align 8, !tbaa !86
  store i64 %i.ld, ptr %i.z, align 8, !tbaa !86
  %.not.i.i.i240 = icmp ult i64 %i.kx, %i.ld
  br i1 %.not.i.i.i240, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit255, label %.noexc.i336, !prof !87

.noexc.i336:                                      ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit239
  %i.le = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.lf, ptr %13, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i64 55, ptr %i.f, align 8, !tbaa !86
  %i.lg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc337 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241 ; 3 uses

.noexc337:                                        ; preds = %.noexc.i336
  store ptr %i.lg, ptr %13, align 8, !tbaa !55
  %i.lh = load i64, ptr %i.f, align 8, !tbaa !86  ; 3 uses
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.lg, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !50
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  store i8 0, ptr %i.lj, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.noexc337
  invoke void @__cxa_throw(ptr nonnull %i.le, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.az unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241: ; preds = %.noexc.i336
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.noexc337
  %.0.i.i.i244 = phi i1 [ false, %bb.aw ], [ true, %.noexc337 ] ; 2 uses
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lm = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.lf
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.lm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.0.i.i.i244, label %bb.ay, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.0.i.i.i244, label %bb.ay, label %common.resume

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241
  %.pn8.i.i.i242 = phi { ptr, i32 } [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i241 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i246 ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245 ]
  call void @__cxa_free_exception(ptr %i.le) #21
  br label %common.resume

bb.az:                                            ; preds = %bb.aw
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit255: ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.lo = getelementptr inbounds nuw [104 x i8], ptr %i.kz, i64 %i.kx ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 noundef zeroext 1)
  %i.lq = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit255
  br i1 %i.lq, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lr = load ptr, ptr %i.as, align 8, !tbaa !233
  %i.ls = load ptr, ptr %i.ar, align 8, !tbaa !234 ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = sdiv exact i64 %i.lv, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.0153482, ptr %i.w, align 8, !tbaa !86
  store i64 %i.lw, ptr %i.x, align 8, !tbaa !86
  %.not.i.i.i256 = icmp ult i64 %.0153482, %i.lw
  br i1 %.not.i.i.i256, label %bb.bg, label %.noexc.i344, !prof !87

.noexc.i344:                                      ; preds = %bb.bb
  %i.lx = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ly = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ly, ptr %12, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 55, ptr %i.e, align 8, !tbaa !86
  %i.lz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc345 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i257 ; 3 uses

.noexc345:                                        ; preds = %.noexc.i344
  store ptr %i.lz, ptr %12, align 8, !tbaa !55
  %i.ma = load i64, ptr %i.e, align 8, !tbaa !86  ; 3 uses
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.lz, ptr noundef nonnull align 1 dereferenceable(55) @.str.11, i64 55, i1 false)
  %i.mb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !50
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ma
  store i8 0, ptr %i.mc, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc345
  invoke void @__cxa_throw(ptr nonnull %i.lx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.bf unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i257: ; preds = %.noexc.i344
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc345
  %.0.i.i.i260 = phi i1 [ false, %bb.bc ], [ true, %.noexc345 ] ; 2 uses
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mf = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.ly
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.mf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %.0.i.i.i260, label %bb.be, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i262: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %.0.i.i.i260, label %bb.be, label %.body

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i257
  %.pn8.i.i.i258 = phi { ptr, i32 } [ %i.md, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i257 ], [ %i.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i262 ], [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i261 ]
  call void @__cxa_free_exception(ptr %i.lx) #21
  br label %.body

bb.bf:                                            ; preds = %bb.bc
  unreachable

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mh = getelementptr inbounds nuw [104 x i8], ptr %i.ls, i64 %.0153482
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.mi)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 noundef zeroext 1)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.mk = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.mj, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.mk, label %.critedge380, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ml = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.kw)
          to label %.critedge169 unwind label %bb.bo

.critedge169:                                     ; preds = %bb.bk
  %i.mm = icmp eq i64 %i.ml, 0
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br i1 %i.mm, label %bb.bl, label %bb.bq

.critedge380:                                     ; preds = %bb.bj
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ba, %.critedge380
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.bl
end_hunk_1
