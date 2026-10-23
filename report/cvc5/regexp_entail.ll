Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/regexp_entail?download=true
inline.NumInlined: 2657
inline.NumDeleted: 918
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal12NodeTemplateILb1EED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory7strings11ArithEntailD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1 unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.n, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1
  %i.o = add i64 %i.m, 1152920405095219200
  %i.p = and i64 %i.o, 1152920405095219200        ; 2 uses
  %i.q = and i64 %i.m, -1152920405095219201
  %i.r = or disjoint i64 %i.p, %i.q
  store i64 %i.r, ptr %i.l, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i2 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i2, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, label %bb.g, !prof !22

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, !prof !22

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3:  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %9 = alloca %"class.std::vector.78", align 8    ; 17 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 18 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %18 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %21 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %22 = alloca %"class.cvc5::internal::String", align 8 ; 14 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %25 = alloca %"class.std::vector.85", align 8   ; 11 uses
  %26 = alloca %"class.cvc5::internal::String", align 8 ; 8 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate.83", align 8 ; 2 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %29 = alloca %"class.cvc5::internal::String", align 8 ; 8 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %31 = alloca %"class.cvc5::internal::String", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %34 = alloca %"class.cvc5::internal::String", align 8 ; 8 uses
  %35 = alloca %"class.std::vector.78", align 8   ; 14 uses
  %36 = alloca %"class.std::vector.78", align 8   ; 12 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %38 = alloca %"class.std::vector.78", align 8   ; 14 uses
  %39 = alloca %"class.std::vector.78", align 8   ; 12 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %41 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %42 = alloca %"class.std::vector.78", align 8   ; 12 uses
  %43 = alloca %"class.std::vector.78", align 8   ; 12 uses
  %44 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %45 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %47 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %49 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %i.e = icmp sgt i32 %4, -1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not229 = icmp eq i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869
  %.not1293 = phi i1 [ true, %bb.a ], [ false, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869 ] ; 8 uses
  %storemerge1291 = phi i32 [ 0, %bb.a ], [ 1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869 ] ; 5 uses
  %.not171 = icmp sgt i32 %4, %storemerge1291
  %.not1721468 = icmp ult i32 %4, %storemerge1291
  %.not172 = and i1 %i.e, %.not1721468
  %or.cond230 = or i1 %.not171, %.not172
  br i1 %or.cond230, label %.thread1175, label %.preheader

.preheader:                                       ; preds = %bb.b, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855
  %.0 = phi i1 [ %.8, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855 ], [ true, %bb.b ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !31
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %.thread1175, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ah = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %50 = icmp ne ptr %i.ah, %i.ai
  %or.cond = select i1 %50, i1 %.0, i1 false
  br i1 %or.cond, label %bb.d, label %.thread1175

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21 ; 5 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !21
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = lshr i64 %i.ap, 40
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1048575                  ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1048574
  br i1 %i.at, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.au = add nuw nsw i32 %i.as, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = and i64 %i.ap, -1152920405095219201
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.ao, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.az = icmp eq i32 %i.as, 1048574
  br i1 %i.az, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ba = or i64 %i.ap, 1152920405095219200
  store i64 %i.ba, ptr %i.ao, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bc = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 10 uses
  store ptr %i.bi, ptr %8, align 8, !tbaa !21
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = lshr i64 %i.bj, 40
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1048575                  ; 3 uses
  %i.bn = icmp samesign ult i32 %i.bm, 1048574
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bo = add nuw nsw i32 %i.bm, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 40
  %i.br = and i64 %i.bj, -1152920405095219201
  %i.bs = or i64 %i.bq, %i.br
  store i64 %i.bs, ptr %i.bi, align 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bt = icmp eq i32 %i.bm, 1048574
  br i1 %i.bt, label %bb.j, label %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.bu = or i64 %i.bj, 1152920405095219200
  store i64 %i.bu, ptr %i.bi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread unwind label %bb.ae

_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread: ; preds = %bb.j, %bb.h, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 1023
  %i.by = icmp eq i64 %i.bx, 350
  br i1 %i.by, label %bb.k, label %bb.ez

bb.k:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.bz = load i64, ptr %i.bv, align 8, !noalias !189
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 1023                     ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 1023
  %i.cd = select i1 %i.cc, i32 -1, i32 %i.cb
  %i.ce = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.cd)
          to label %.noexc291 unwind label %bb.ag

.noexc291:                                        ; preds = %bb.k
  %i.cf = icmp eq i32 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ch = zext i1 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19, !noalias !189 ; 5 uses
  store ptr %i.cj, ptr %10, align 8, !tbaa !21, !alias.scope !189
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !189 ; 3 uses
  %i.cl = lshr i64 %i.ck, 40
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 1048575                  ; 3 uses
  %i.co = icmp samesign ult i32 %i.cn, 1048574
  br i1 %i.co, label %bb.l, label %bb.m, !prof !23

bb.l:                                             ; preds = %.noexc291
  %i.cp = add nuw nsw i32 %i.cn, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 40
  %i.cs = and i64 %i.ck, -1152920405095219201
  %i.ct = or i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %i.cj, align 8, !noalias !189
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.m:                                             ; preds = %.noexc291
  %i.cu = icmp eq i32 %i.cn, 1048574
  br i1 %i.cu, label %bb.n, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.cv = or i64 %i.ck, 1152920405095219200
  store i64 %i.cv, ptr %i.cj, align 8, !noalias !189
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit unwind label %bb.ag

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.m, %bb.l, %bb.n
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.cw = load ptr, ptr %10, align 8, !tbaa !21   ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = and i64 %i.cx, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cy, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.cz = add i64 %i.cx, 1152920405095219200
  %i.da = and i64 %i.cz, 1152920405095219200      ; 2 uses
  %i.db = and i64 %i.cx, -1152920405095219201
  %i.dc = or disjoint i64 %i.da, %i.db
  store i64 %i.dc, ptr %i.cw, align 8
  %i.dd = icmp eq i64 %i.da, 0
  br i1 %i.dd, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.o, %bb.p, %bb.q
  %.pre1311 = load ptr, ptr %9, align 8, !tbaa !34 ; 2 uses
  %i.dg = load ptr, ptr %i.ac, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %.pre1311 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %i.dl = add nsw i64 %i.dk, -1
  %i.dm = select i1 %.not1293, i64 %i.dl, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre1311, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21 ; 5 uses
  store ptr %i.do, ptr %11, align 8, !tbaa !21
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1048575                  ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 1048574
  br i1 %i.dt, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.du = add nuw nsw i32 %i.ds, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 40
  %i.dx = and i64 %i.dp, -1152920405095219201
  %i.dy = or i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.do, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit294

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.dz = icmp eq i32 %i.ds, 1048574
  br i1 %i.dz, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit294, !prof !22

bb.u:                                             ; preds = %bb.t
  %i.ea = or i64 %i.dp, 1152920405095219200
  store i64 %i.ea, ptr %i.do, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit294 unwind label %bb.ai

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit294: ; preds = %bb.t, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.eb = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %bb.z, !prof !16
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i:bb.a
  store i64 %i.nd, ptr %i.mw, align 8
  %i.ne = icmp eq i64 %i.nb, 0
  br i1 %i.ne, label %bb.dq, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i418, !prof !22

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i418 unwind label %bb.ek

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i418: ; preds = %bb.dq, %bb.dp, %bb.do
  %i.nf = load ptr, ptr %19, align 8, !tbaa !21   ; 5 uses
  store ptr %i.nf, ptr %i.mv, align 8, !tbaa !21
  %i.ng = load i64, ptr %i.nf, align 8            ; 3 uses
  %i.nh = lshr i64 %i.ng, 40
  %i.ni = trunc nuw nsw i64 %i.nh to i32
  %i.nj = and i32 %i.ni, 1048575                  ; 3 uses
  %i.nk = icmp samesign ult i32 %i.nj, 1048574
  br i1 %i.nk, label %bb.dr, label %bb.ds, !prof !23

bb.dr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i418
  %i.nl = add nuw nsw i32 %i.nj, 1
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 40
  %i.no = and i64 %i.ng, -1152920405095219201
  %i.np = or i64 %i.nn, %i.no
  store i64 %i.np, ptr %i.nf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421

bb.ds:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i418
  %i.nq = icmp eq i32 %i.nj, 1048574
  br i1 %i.nq, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421, !prof !22

bb.dt:                                            ; preds = %bb.ds
  %i.nr = or i64 %i.ng, 1152920405095219200
  store i64 %i.nr, ptr %i.nf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421 unwind label %bb.ek

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421: ; preds = %bb.ds, %bb.dr, %bb.dn, %bb.dt
  %i.ns = load ptr, ptr %19, align 8, !tbaa !21   ; 3 uses
  %i.nt = load i64, ptr %i.ns, align 8            ; 3 uses
  %i.nu = and i64 %i.nt, 1152920405095219200
  %.not.i.i422 = icmp eq i64 %i.nu, 1152920405095219200
  br i1 %.not.i.i422, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424, label %bb.du, !prof !22

bb.du:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421
  %i.nv = add i64 %i.nt, 1152920405095219200
  %i.nw = and i64 %i.nv, 1152920405095219200      ; 2 uses
  %i.nx = and i64 %i.nt, -1152920405095219201
  %i.ny = or disjoint i64 %i.nw, %i.nx
  store i64 %i.ny, ptr %i.ns, align 8
  %i.nz = icmp eq i64 %i.nw, 0
  br i1 %i.nz, label %bb.dv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424, !prof !22

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit421, %bb.du, %bb.dv
  %i.oc = load ptr, ptr %20, align 8, !tbaa !21   ; 3 uses
  %i.od = load i64, ptr %i.oc, align 8            ; 3 uses
  %i.oe = and i64 %i.od, 1152920405095219200
  %.not.i.i425 = icmp eq i64 %i.oe, 1152920405095219200
  br i1 %.not.i.i425, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427, label %bb.dx, !prof !22

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424
  %i.of = add i64 %i.od, 1152920405095219200
  %i.og = and i64 %i.of, 1152920405095219200      ; 2 uses
  %i.oh = and i64 %i.od, -1152920405095219201
  %i.oi = or disjoint i64 %i.og, %i.oh
  store i64 %i.oi, ptr %i.oc, align 8
  %i.oj = icmp eq i64 %i.og, 0
  br i1 %i.oj, label %bb.dy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427, !prof !22

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427 unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit424, %bb.dx, %bb.dy
  %i.om = load ptr, ptr %21, align 8, !tbaa !42   ; 3 uses
  %i.on = load i64, ptr %i.om, align 8            ; 3 uses
  %i.oo = and i64 %i.on, 1152920405095219200
  %.not.i.i428 = icmp eq i64 %i.oo, 1152920405095219200
  br i1 %.not.i.i428, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ea, !prof !22

bb.ea:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427
  %i.op = add i64 %i.on, 1152920405095219200
  %i.oq = and i64 %i.op, 1152920405095219200      ; 2 uses
  %i.or = and i64 %i.on, -1152920405095219201
  %i.os = or disjoint i64 %i.oq, %i.or
  store i64 %i.os, ptr %i.om, align 8
  %i.ot = icmp eq i64 %i.oq, 0
  br i1 %i.ot, label %bb.eb, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !22

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #23
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit427, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ow = load ptr, ptr %18, align 8, !tbaa !42   ; 3 uses
  %i.ox = load i64, ptr %i.ow, align 8            ; 3 uses
  %i.oy = and i64 %i.ox, 1152920405095219200
  %.not.i.i430 = icmp eq i64 %i.oy, 1152920405095219200
  br i1 %.not.i.i430, label %_ZN4cvc58internal8TypeNodeD2Ev.exit432, label %bb.ed, !prof !22

bb.ed:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.oz = add i64 %i.ox, 1152920405095219200
  %i.pa = and i64 %i.oz, 1152920405095219200      ; 2 uses
  %i.pb = and i64 %i.ox, -1152920405095219201
  %i.pc = or disjoint i64 %i.pa, %i.pb
  store i64 %i.pc, ptr %i.ow, align 8
  %i.pd = icmp eq i64 %i.pa, 0
  br i1 %i.pd, label %bb.ee, label %_ZN4cvc58internal8TypeNodeD2Ev.exit432, !prof !22

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ow)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit432 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  %i.pf = extractvalue { ptr, i32 } %i.pe, 0
  call void @__clang_call_terminate(ptr %i.pf) #23
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit432:           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit411

bb.eg:                                            ; preds = %bb.df
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.eh:                                            ; preds = %bb.dj
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ej:                                            ; preds = %bb.dk
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.body414

bb.ek:                                            ; preds = %bb.dt, %bb.dq
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #21
  br label %.body414

.body414:                                         ; preds = %bb.ej, %bb.dm, %bb.ek
  %.pn217 = phi { ptr, i32 } [ %i.pk, %bb.ek ], [ %i.pj, %bb.ej ], [ %i.mo, %bb.dm ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  br label %bb.el

bb.el:                                            ; preds = %.body414, %bb.ei
  %.pn217.pn = phi { ptr, i32 } [ %.pn217, %.body414 ], [ %i.pi, %bb.ei ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #21
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.eh
  %.pn217.pn.pn = phi { ptr, i32 } [ %.pn217.pn, %bb.el ], [ %i.ph, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.eg
  %.pn217.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn, %bb.em ], [ %i.pg, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body400

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit411: ; preds = %bb.an, %bb.ap, %bb.dd, %bb.dc, %bb.db, %_ZN4cvc58internal8TypeNodeD2Ev.exit432
  %.11448 = phi i1 [ true, %bb.dd ], [ true, %bb.dc ], [ true, %bb.db ], [ true, %_ZN4cvc58internal8TypeNodeD2Ev.exit432 ], [ false, %bb.an ], [ false, %bb.ap ] ; 2 uses
  %i.pl = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  %i.pm = load i64, ptr %i.pl, align 8            ; 3 uses
  %i.pn = and i64 %i.pm, 1152920405095219200
  %.not.i.i433 = icmp eq i64 %i.pn, 1152920405095219200
  br i1 %.not.i.i433, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435, label %bb.eo, !prof !22

bb.eo:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit411
  %i.po = add i64 %i.pm, 1152920405095219200
  %i.pp = and i64 %i.po, 1152920405095219200      ; 2 uses
  %i.pq = and i64 %i.pm, -1152920405095219201
  %i.pr = or disjoint i64 %i.pp, %i.pq
  store i64 %i.pr, ptr %i.pl, align 8
  %i.ps = icmp eq i64 %i.pp, 0
  br i1 %i.ps, label %bb.ep, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435, !prof !22

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit411, %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.pv = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %i.pw = load i64, ptr %i.pv, align 8            ; 3 uses
  %i.px = and i64 %i.pw, 1152920405095219200
  %.not.i.i436 = icmp eq i64 %i.px, 1152920405095219200
  br i1 %.not.i.i436, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, label %bb.er, !prof !22

bb.er:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435
  %i.py = add i64 %i.pw, 1152920405095219200
  %i.pz = and i64 %i.py, 1152920405095219200      ; 2 uses
  %i.qa = and i64 %i.pw, -1152920405095219201
  %i.qb = or disjoint i64 %i.pz, %i.qa
  store i64 %i.qb, ptr %i.pv, align 8
  %i.qc = icmp eq i64 %i.pz, 0
  br i1 %i.qc, label %bb.es, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, !prof !22

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438 unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qd = landingpad { ptr, i32 }
          catch ptr null
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  call void @__clang_call_terminate(ptr %i.qe) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit435, %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.qf = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %i.qg = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qf, %i.qg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.qr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.qf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438 ] ; 2 uses
  %i.qh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 3 uses
  %i.qi = load i64, ptr %i.qh, align 8            ; 3 uses
  %i.qj = and i64 %i.qi, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.qj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.eu, !prof !22

bb.eu:                                            ; preds = %.lr.ph.i.i.i
  %i.qk = add i64 %i.qi, 1152920405095219200
  %i.ql = and i64 %i.qk, 1152920405095219200      ; 2 uses
  %i.qm = and i64 %i.qi, -1152920405095219201
  %i.qn = or disjoint i64 %i.ql, %i.qm
  store i64 %i.qn, ptr %i.qh, align 8
  %i.qo = icmp eq i64 %i.ql, 0
  br i1 %i.qo, label %bb.ev, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !22

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ev, %bb.eu, %.lr.ph.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i439 = icmp eq ptr %i.qr, %i.qg
  br i1 %.not.i.i.i439, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438
  %i.qs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i1.i, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split

.body400:                                         ; preds = %bb.cq, %bb.en, %bb.ct, %.body372
  %.pn217.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn, %bb.en ], [ %i.kl, %bb.ct ], [ %.pn215, %.body372 ], [ %i.kf, %bb.cq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %.body

.body:                                            ; preds = %bb.y, %.body400
  %.pn217.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn, %.body400 ], [ %i.eg, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.ex

bb.ex:                                            ; preds = %.body, %bb.ai
  %.pn217.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn.pn, %.body ], [ %i.fb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ah, %bb.ag
  %.pn217.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %i.fa, %bb.ah ], [ %i.ez, %bb.ag ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.qk

bb.ez:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit287.thread
  %i.qt = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.fa unwind label %bb.af

bb.fa:                                            ; preds = %bb.ez
  br i1 %i.qt, label %bb.fb, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.qu = load ptr, ptr %7, align 8, !tbaa !21
  %i.qv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6StringEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.qu)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit unwind label %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit: ; preds = %bb.fb
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !49 ; 2 uses
  %i.qy = load ptr, ptr %i.qv, align 8, !tbaa !50 ; 2 uses
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.qx, %i.qy
  br i1 %.not.i.i.i.i.i, label %.noexc442, label %bb.fc

bb.fc:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %i.rc = icmp ugt i64 %i.rb, 9223372036854775804
  br i1 %i.rc, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !22

.noexc.i.i.i:                                     ; preds = %bb.fc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc441.a unwind label %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc441.a:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.fc
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #22
          to label %.noexc442 unwind label %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc442:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %i.re = phi ptr [ null, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ], [ %i.rd, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.re, ptr %22, align 8, !tbaa !50
  store ptr %i.re, ptr %i.h, align 8, !tbaa !49
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rb
  store ptr %i.rf, ptr %i.i, align 8, !tbaa !51
  %i.rg = load ptr, ptr %i.qv, align 8, !tbaa !52 ; 3 uses
  %i.rh = load ptr, ptr %i.qw, align 8, !tbaa !52
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj                    ; 4 uses
  %i.rl = icmp sgt i64 %i.rk, 4
  br i1 %i.rl, label %bb.fd, label %bb.fe, !prof !23

bb.fd:                                            ; preds = %.noexc442
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.re, ptr align 4 %i.rg, i64 %i.rk, i1 false)
  br label %bb.fg

bb.fe:                                            ; preds = %.noexc442
  %i.rm = icmp eq i64 %i.rk, 4
  br i1 %i.rm, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.rn = load i32, ptr %i.rg, align 4, !tbaa !53
  store i32 %i.rn, ptr %i.re, align 4, !tbaa !53
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd
  %i.ro = getelementptr inbounds i8, ptr %i.re, i64 %i.rk
  store ptr %i.ro, ptr %i.h, align 8, !tbaa !49
  %i.rp = load ptr, ptr %7, align 8, !tbaa !21
  store ptr %i.rp, ptr %23, align 8, !tbaa !36
  %i.rq = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7isEmptyENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %23)
          to label %bb.fh unwind label %bb.fp

bb.fh:                                            ; preds = %bb.fg
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i:bb.a
  %.not.i.i.i.i460 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i.i.i460, label %_ZN4cvc58internal6StringD2Ev.exit461, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vo = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = ptrtoint ptr %i.vn to i64
  %i.vr = sub i64 %i.vp, %i.vq
  call void @_ZdlPvm(ptr noundef nonnull %i.vn, i64 noundef %i.vr) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit461

_ZN4cvc58internal6StringD2Ev.exit461:             ; preds = %bb.gy, %bb.gx, %bb.gu
  %.pn202.pn = phi { ptr, i32 } [ %i.vk, %bb.gu ], [ %.pn202, %bb.gx ], [ %.pn202, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.hz

bb.gz:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  invoke void @_ZNK4cvc58internal6String6substrEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::String") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef 1)
          to label %bb.ha unwind label %bb.hl

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_6StringEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.hb unwind label %bb.hm

bb.hb:                                            ; preds = %bb.ha
  %i.vs = load ptr, ptr %i.g, align 8, !tbaa !33  ; 3 uses
  %i.vt = load ptr, ptr %i.w, align 8, !tbaa !40
  %.not.i.i462 = icmp eq ptr %i.vs, %i.vt
  br i1 %.not.i.i462, label %bb.hg, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.vu = load ptr, ptr %30, align 8, !tbaa !21   ; 5 uses
  store ptr %i.vu, ptr %i.vs, align 8, !tbaa !21
  %i.vv = load i64, ptr %i.vu, align 8            ; 3 uses
  %i.vw = lshr i64 %i.vv, 40
  %i.vx = trunc nuw nsw i64 %i.vw to i32
  %i.vy = and i32 %i.vx, 1048575                  ; 3 uses
  %i.vz = icmp samesign ult i32 %i.vy, 1048574
  br i1 %i.vz, label %bb.hd, label %bb.he, !prof !23

bb.hd:                                            ; preds = %bb.hc
  %i.wa = add nuw nsw i32 %i.vy, 1
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = shl nuw nsw i64 %i.wb, 40
  %i.wd = and i64 %i.vv, -1152920405095219201
  %i.we = or i64 %i.wc, %i.wd
  store i64 %i.we, ptr %i.vu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i463

bb.he:                                            ; preds = %bb.hc
  %i.wf = icmp eq i32 %i.vy, 1048574
  br i1 %i.wf, label %bb.hf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i463, !prof !22

bb.hf:                                            ; preds = %bb.he
  %i.wg = or i64 %i.vv, 1152920405095219200
  store i64 %i.wg, ptr %i.vu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i463 unwind label %bb.hn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i463: ; preds = %bb.hf, %bb.he, %bb.hd
  %i.wh = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store ptr %i.wi, ptr %i.g, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit466

bb.hg:                                            ; preds = %bb.hb
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.vs, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit466 unwind label %bb.hn

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit466: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i463, %bb.hg
  %i.wj = load ptr, ptr %30, align 8, !tbaa !21   ; 3 uses
  %i.wk = load i64, ptr %i.wj, align 8            ; 3 uses
  %i.wl = and i64 %i.wk, 1152920405095219200
  %.not.i.i467 = icmp eq i64 %i.wl, 1152920405095219200
  br i1 %.not.i.i467, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469, label %bb.hh, !prof !22

bb.hh:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit466
  %i.wm = add i64 %i.wk, 1152920405095219200
  %i.wn = and i64 %i.wm, 1152920405095219200      ; 2 uses
  %i.wo = and i64 %i.wk, -1152920405095219201
  %i.wp = or disjoint i64 %i.wn, %i.wo
  store i64 %i.wp, ptr %i.wj, align 8
  %i.wq = icmp eq i64 %i.wn, 0
  br i1 %i.wq, label %bb.hi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469, !prof !22

bb.hi:                                            ; preds = %bb.hh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469 unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wr = landingpad { ptr, i32 }
          catch ptr null
  %i.ws = extractvalue { ptr, i32 } %i.wr, 0
  call void @__clang_call_terminate(ptr %i.ws) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit466, %bb.hh, %bb.hi
  %i.wt = load ptr, ptr %31, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i470 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i470, label %_ZN4cvc58internal6StringD2Ev.exit471, label %bb.hk

bb.hk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469
  %i.wu = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.wt to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wx) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit471

_ZN4cvc58internal6StringD2Ev.exit471:             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit469, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.hq

bb.hl:                                            ; preds = %bb.gz
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit473

bb.hm:                                            ; preds = %bb.ha
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hg, %bb.hf
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #21
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.pn199 = phi { ptr, i32 } [ %i.xa, %bb.hn ], [ %i.wz, %bb.hm ] ; 2 uses
  %i.xb = load ptr, ptr %31, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i472 = icmp eq ptr %i.xb, null
  br i1 %.not.i.i.i.i472, label %_ZN4cvc58internal6StringD2Ev.exit473, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.xc = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = ptrtoint ptr %i.xb to i64
  %i.xf = sub i64 %i.xd, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %i.xb, i64 noundef %i.xf) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit473

_ZN4cvc58internal6StringD2Ev.exit473:             ; preds = %bb.hp, %bb.ho, %bb.hl
  %.pn199.pn = phi { ptr, i32 } [ %i.wy, %bb.hl ], [ %.pn199, %bb.ho ], [ %.pn199, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.hz

bb.hq:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit, %_ZN4cvc58internal6StringD2Ev.exit471, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit452
  %i.xg = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -8 ; 2 uses
  store ptr %i.xh, ptr %i.f, align 8, !tbaa !33
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !21 ; 3 uses
  %i.xj = load i64, ptr %i.xi, align 8            ; 3 uses
  %i.xk = and i64 %i.xj, 1152920405095219200
  %.not.i.i.i474 = icmp eq i64 %i.xk, 1152920405095219200
  br i1 %.not.i.i.i474, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475, label %bb.hr, !prof !22

bb.hr:                                            ; preds = %bb.hq
  %i.xl = add i64 %i.xj, 1152920405095219200
  %i.xm = and i64 %i.xl, 1152920405095219200      ; 2 uses
  %i.xn = and i64 %i.xj, -1152920405095219201
  %i.xo = or disjoint i64 %i.xm, %i.xn
  store i64 %i.xo, ptr %i.xi, align 8
  %i.xp = icmp eq i64 %i.xm, 0
  br i1 %i.xp, label %bb.hs, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475, !prof !22

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xi)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.xq = landingpad { ptr, i32 }
          catch ptr null
  %i.xr = extractvalue { ptr, i32 } %i.xq, 0
  call void @__clang_call_terminate(ptr %i.xr) #23
  unreachable

bb.hu:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 0, ptr %i.c, align 1, !tbaa !38
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.hv unwind label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475

bb.hw:                                            ; preds = %bb.hu
  %i.xs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.hz

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475: ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.hv
  %i.xt = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i479 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i.i479, label %_ZN4cvc58internal6StringD2Ev.exit480, label %bb.hx

bb.hx:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475
  %i.xu = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xt to i64
  %i.xx = sub i64 %i.xv, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.xx) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit480

_ZN4cvc58internal6StringD2Ev.exit480:             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit475, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.xy = load ptr, ptr %25, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i481 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i481, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.hy

bb.hy:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit480
  %i.xz = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = ptrtoint ptr %i.xy to i64
  %i.yc = sub i64 %i.ya, %i.yb
  call void @_ZdlPvm(ptr noundef nonnull %i.xy, i64 noundef %i.yc) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4cvc58internal6StringD2Ev.exit480, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br i1 %i.th, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447, label %bb.pr

bb.hz:                                            ; preds = %bb.hw, %_ZN4cvc58internal6StringD2Ev.exit473, %_ZN4cvc58internal6StringD2Ev.exit461, %bb.gt
  %.pn202.pn.pn = phi { ptr, i32 } [ %.pn202.pn, %_ZN4cvc58internal6StringD2Ev.exit461 ], [ %.pn199.pn, %_ZN4cvc58internal6StringD2Ev.exit473 ], [ %i.xs, %bb.hw ], [ %i.vj, %bb.gt ] ; 2 uses
  %i.yd = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i482 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i.i.i482, label %_ZN4cvc58internal6StringD2Ev.exit483, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ye = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.yf = ptrtoint ptr %i.ye to i64
  %i.yg = ptrtoint ptr %i.yd to i64
  %i.yh = sub i64 %i.yf, %i.yg
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yh) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit483

_ZN4cvc58internal6StringD2Ev.exit483:             ; preds = %bb.ia, %bb.hz, %bb.gs
  %.pn202.pn.pn.pn = phi { ptr, i32 } [ %i.vi, %bb.gs ], [ %.pn202.pn.pn, %bb.hz ], [ %.pn202.pn.pn, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp, %_ZN4cvc58internal6StringD2Ev.exit483
  %.pn202.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn, %_ZN4cvc58internal6StringD2Ev.exit483 ], [ %lpad.loopexit.split-lp1513, %.loopexit.split-lp1207.loopexit.split-lp.loopexit.split-lp ]
  %i.yi = load ptr, ptr %25, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i484 = icmp eq ptr %i.yi, null
  br i1 %.not.i.i.i484, label %_ZNSt6vectorIjSaIjEED2Ev.exit485, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.yj = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = ptrtoint ptr %i.yi to i64
  %i.ym = sub i64 %i.yk, %i.yl
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.ym) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit485

_ZNSt6vectorIjSaIjEED2Ev.exit485:                 ; preds = %bb.ib, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.pt

bb.id:                                            ; preds = %bb.fm, %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  %i.yn = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.yo = icmp eq i8 %i.yn, 0
  br i1 %i.yo, label %bb.ie, label %bb.ii, !prof !16

bb.ie:                                            ; preds = %bb.id
  %i.yp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i486 = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i486, label %bb.ii, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.yq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.ig unwind label %bb.ih     ; 3 uses

bb.ig:                                            ; preds = %bb.if
  store i64 1152920405095219200, ptr %i.yq, align 8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yr, i8 0, i64 16, i1 false)
  store ptr %i.yq, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %.body487

bb.ii:                                            ; preds = %bb.ig, %bb.ie, %bb.id
  %i.yt = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !19
  store ptr %i.yt, ptr %32, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  invoke void @_ZN4cvc58internal6StringC2EPKcb(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull @.str.17, i1 noundef zeroext false)
          to label %bb.ij unwind label %bb.io

bb.ij:                                            ; preds = %bb.ii
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_6StringEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %33, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.ik unwind label %bb.ip

bb.ik:                                            ; preds = %bb.ij
  %i.yu = load ptr, ptr %34, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i490 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i.i.i490, label %_ZN4cvc58internal6StringD2Ev.exit491, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.yv = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.yw = ptrtoint ptr %i.yv to i64
  %i.yx = ptrtoint ptr %i.yu to i64
  %i.yy = sub i64 %i.yw, %i.yx
  call void @_ZdlPvm(ptr noundef nonnull %i.yu, i64 noundef %i.yy) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit491

_ZN4cvc58internal6StringD2Ev.exit491:             ; preds = %bb.ik, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.im

bb.im:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567, %_ZN4cvc58internal6StringD2Ev.exit491
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567 ], [ 0, %_ZN4cvc58internal6StringD2Ev.exit491 ] ; 3 uses
  %.0162 = phi i1 [ %.21641162, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567 ], [ true, %_ZN4cvc58internal6StringD2Ev.exit491 ] ; 8 uses
  %i.yz = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 3 uses
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = trunc i64 %i.zb to i32
  %i.zd = and i32 %i.zc, 1023                     ; 2 uses
  %i.ze = icmp eq i32 %i.zd, 1023
  %i.zf = select i1 %i.ze, i32 -1, i32 %i.zd
  %i.zg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.zf)
          to label %bb.in unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.in:                                            ; preds = %bb.im
  %i.zh = icmp eq i32 %i.zg, 2
  %i.zi = load i64, ptr %i.za, align 8
  %i.zj = lshr i64 %i.zi, 32
  %i.zk = and i64 %i.zj, 67108863
  %i.zl = sext i1 %i.zh to i64
  %i.zm = add nsw i64 %i.zk, %i.zl
  %i.zn = and i64 %i.zm, 4294967295
  %.not194 = icmp samesign ugt i64 %i.zn, %indvars.iv
  br i1 %.not194, label %bb.ir, label %.thread1165

bb.io:                                            ; preds = %bb.ii
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit494

bb.ip:                                            ; preds = %bb.ij
  %i.zp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zq = load ptr, ptr %34, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i493 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i.i493, label %_ZN4cvc58internal6StringD2Ev.exit494, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.zr = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %i.zq to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %i.zq, i64 noundef %i.zu) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit494

_ZN4cvc58internal6StringD2Ev.exit494:             ; preds = %bb.iq, %bb.ip, %bb.io
  %.pn188 = phi { ptr, i32 } [ %i.zo, %bb.io ], [ %i.zp, %bb.ip ], [ %i.zp, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.ls

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.im, %bb.lk, %bb.ll
  %lpad.loopexit.split-lp1498 = landingpad { ptr, i32 }
          cleanup
  br label %.body569

bb.ir:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit499 unwind label %bb.jg

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit499: ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.zv = load i64, ptr %i.za, align 8, !noalias !192
  %i.zw = trunc i64 %i.zv to i32
  %i.zx = and i32 %i.zw, 1023                     ; 2 uses
  %i.zy = icmp eq i32 %i.zx, 1023
  %i.zz = select i1 %i.zy, i32 -1, i32 %i.zx
  %i.aaa = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.zz)
          to label %.noexc500 unwind label %bb.jg

.noexc500:                                        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit499
  %i.aab = icmp eq i32 %i.aaa, 2
  %i.aac = zext i1 %i.aab to i64
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i:bb.a

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i563: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i561
  %.pr.i564 = load ptr, ptr %35, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i565

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i565: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i563, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit556
  %i.afl = phi ptr [ %.pr.i564, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i563 ], [ %i.aey, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit556 ] ; 3 uses
  %.not.i.i1.i566 = icmp eq ptr %i.afl, null
  br i1 %.not.i.i1.i566, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567, label %bb.kp

bb.kp:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i565
  %i.afm = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = ptrtoint ptr %i.afl to i64
  %i.afp = sub i64 %i.afn, %i.afo
  call void @_ZdlPvm(ptr noundef nonnull %i.afl, i64 noundef %i.afp) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i565, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cond51164, label %bb.im, label %.loopexit1182, !llvm.loop !181

.body510:                                         ; preds = %bb.jd, %bb.ju, %bb.ji
  %.pn190 = phi { ptr, i32 } [ %i.acw, %bb.ju ], [ %i.abj, %bb.jd ], [ %i.abt, %bb.ji ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  br label %bb.kq

bb.kq:                                            ; preds = %.body510, %bb.jh, %bb.jg
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %.body510 ], [ %i.abr, %bb.jg ], [ %i.abs, %bb.jh ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %.body569

.thread1165:                                      ; preds = %bb.in
  br i1 %.0162, label %bb.kr, label %.loopexit1182

bb.kr:                                            ; preds = %.thread1165
  %i.afq = load ptr, ptr %32, align 8, !tbaa !21
  %i.afr = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afs = icmp eq i8 %i.afr, 0
  br i1 %i.afs, label %bb.ks, label %bb.kw, !prof !16

bb.ks:                                            ; preds = %bb.kr
  %i.aft = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i568 = icmp eq i32 %i.aft, 0
  br i1 %.not.i.i568, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.afu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.ku unwind label %bb.kv     ; 3 uses

bb.ku:                                            ; preds = %bb.kt
  store i64 1152920405095219200, ptr %i.afu, align 8
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afv, i8 0, i64 16, i1 false)
  store ptr %i.afu, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kt
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %.body569

bb.kw:                                            ; preds = %bb.ku, %bb.ks, %bb.kr
  %i.afx = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !19
  %i.afy = icmp eq ptr %i.afq, %i.afx
  br i1 %i.afy, label %bb.kx, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit589

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i8 0, ptr %i.d, align 1, !tbaa !38
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.ky unwind label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit1182

bb.kz:                                            ; preds = %bb.kx
  %i.afz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.body569

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit589: ; preds = %bb.kw
  %i.aga = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.agb = getelementptr inbounds i8, ptr %i.aga, i64 -8 ; 2 uses
  store ptr %i.agb, ptr %i.f, align 8, !tbaa !33
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !21 ; 3 uses
  %i.agd = load i64, ptr %i.agc, align 8          ; 3 uses
  %i.age = and i64 %i.agd, 1152920405095219200
  %.not.i.i.i590 = icmp eq i64 %i.age, 1152920405095219200
  br i1 %.not.i.i.i590, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591, label %bb.la, !prof !22

bb.la:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit589
  %i.agf = add i64 %i.agd, 1152920405095219200
  %i.agg = and i64 %i.agf, 1152920405095219200    ; 2 uses
  %i.agh = and i64 %i.agd, -1152920405095219201
  %i.agi = or disjoint i64 %i.agg, %i.agh
  store i64 %i.agi, ptr %i.agc, align 8
  %i.agj = icmp eq i64 %i.agg, 0
  br i1 %i.agj, label %bb.lb, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591, !prof !22

bb.lb:                                            ; preds = %bb.la
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agc)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591 unwind label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.agk = landingpad { ptr, i32 }
          catch ptr null
  %i.agl = extractvalue { ptr, i32 } %i.agk, 0
  call void @__clang_call_terminate(ptr %i.agl) #23
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit589, %bb.la, %bb.lb
  %i.agm = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 -8 ; 2 uses
  store ptr %i.agn, ptr %i.g, align 8, !tbaa !33
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !21 ; 3 uses
  %i.agp = load i64, ptr %i.ago, align 8          ; 3 uses
  %i.agq = and i64 %i.agp, 1152920405095219200
  %.not.i.i.i592 = icmp eq i64 %i.agq, 1152920405095219200
  br i1 %.not.i.i.i592, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593, label %bb.ld, !prof !22

bb.ld:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591
  %i.agr = add i64 %i.agp, 1152920405095219200
  %i.ags = and i64 %i.agr, 1152920405095219200    ; 2 uses
  %i.agt = and i64 %i.agp, -1152920405095219201
  %i.agu = or disjoint i64 %i.ags, %i.agt
  store i64 %i.agu, ptr %i.ago, align 8
  %i.agv = icmp eq i64 %i.ags, 0
  br i1 %i.agv, label %bb.le, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593, !prof !22

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ago)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593 unwind label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.agw = landingpad { ptr, i32 }
          catch ptr null
  %i.agx = extractvalue { ptr, i32 } %i.agw, 0
  call void @__clang_call_terminate(ptr %i.agx) #23
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit591, %bb.ld, %bb.le
  %i.agy = load ptr, ptr %32, align 8, !tbaa !21  ; 6 uses
  %i.agz = load ptr, ptr %33, align 8, !tbaa !21
  %.not1181 = icmp eq ptr %i.agy, %i.agz
  br i1 %.not1181, label %.loopexit1182, label %bb.lg

bb.lg:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593
  %i.aha = load ptr, ptr %i.g, align 8, !tbaa !33 ; 3 uses
  %i.ahb = load ptr, ptr %i.w, align 8, !tbaa !40
  %.not.i594 = icmp eq ptr %i.aha, %i.ahb
  br i1 %.not.i594, label %bb.ll, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  store ptr %i.agy, ptr %i.aha, align 8, !tbaa !21
  %i.ahc = load i64, ptr %i.agy, align 8          ; 3 uses
  %i.ahd = lshr i64 %i.ahc, 40
  %i.ahe = trunc nuw nsw i64 %i.ahd to i32
  %i.ahf = and i32 %i.ahe, 1048575                ; 3 uses
  %i.ahg = icmp samesign ult i32 %i.ahf, 1048574
  br i1 %i.ahg, label %bb.li, label %bb.lj, !prof !23

bb.li:                                            ; preds = %bb.lh
  %i.ahh = add nuw nsw i32 %i.ahf, 1
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = shl nuw nsw i64 %i.ahi, 40
  %i.ahk = and i64 %i.ahc, -1152920405095219201
  %i.ahl = or i64 %i.ahj, %i.ahk
  store i64 %i.ahl, ptr %i.agy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595

bb.lj:                                            ; preds = %bb.lh
  %i.ahm = icmp eq i32 %i.ahf, 1048574
  br i1 %i.ahm, label %bb.lk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595, !prof !22

bb.lk:                                            ; preds = %bb.lj
  %i.ahn = or i64 %i.ahc, 1152920405095219200
  store i64 %i.ahn, ptr %i.agy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595: ; preds = %bb.lk, %bb.lj, %bb.li
  %i.aho = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  store ptr %i.ahp, ptr %i.g, align 8, !tbaa !33
  br label %.loopexit1182

bb.ll:                                            ; preds = %bb.lg
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aha, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %.loopexit1182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit1182:                                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593, %bb.ll, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595, %.thread1165, %bb.ky
  %.3 = phi i1 [ true, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593 ], [ false, %bb.ky ], [ false, %.thread1165 ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595 ], [ true, %bb.ll ], [ false, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567 ] ; 2 uses
  %cond4 = phi i1 [ true, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit593 ], [ false, %bb.ky ], [ true, %.thread1165 ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i595 ], [ true, %bb.ll ], [ false, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit567 ]
  %i.ahq = load ptr, ptr %33, align 8, !tbaa !21  ; 3 uses
  %i.ahr = load i64, ptr %i.ahq, align 8          ; 3 uses
  %i.ahs = and i64 %i.ahr, 1152920405095219200
  %.not.i.i599 = icmp eq i64 %i.ahs, 1152920405095219200
  br i1 %.not.i.i599, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601, label %bb.lm, !prof !22

bb.lm:                                            ; preds = %.loopexit1182
  %i.aht = add i64 %i.ahr, 1152920405095219200
  %i.ahu = and i64 %i.aht, 1152920405095219200    ; 2 uses
  %i.ahv = and i64 %i.ahr, -1152920405095219201
  %i.ahw = or disjoint i64 %i.ahu, %i.ahv
  store i64 %i.ahw, ptr %i.ahq, align 8
  %i.ahx = icmp eq i64 %i.ahu, 0
  br i1 %i.ahx, label %bb.ln, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601, !prof !22

bb.ln:                                            ; preds = %bb.lm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601 unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.ahy = landingpad { ptr, i32 }
          catch ptr null
  %i.ahz = extractvalue { ptr, i32 } %i.ahy, 0
  call void @__clang_call_terminate(ptr %i.ahz) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601: ; preds = %.loopexit1182, %bb.lm, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.aia = load ptr, ptr %32, align 8, !tbaa !21  ; 3 uses
  %i.aib = load i64, ptr %i.aia, align 8          ; 3 uses
  %i.aic = and i64 %i.aib, 1152920405095219200
  %.not.i.i602 = icmp eq i64 %i.aic, 1152920405095219200
  br i1 %.not.i.i602, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, label %bb.lp, !prof !22

bb.lp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601
  %i.aid = add i64 %i.aib, 1152920405095219200
  %i.aie = and i64 %i.aid, 1152920405095219200    ; 2 uses
  %i.aif = and i64 %i.aib, -1152920405095219201
  %i.aig = or disjoint i64 %i.aie, %i.aif
  store i64 %i.aig, ptr %i.aia, align 8
  %i.aih = icmp eq i64 %i.aie, 0
  br i1 %i.aih, label %bb.lq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, !prof !22

bb.lq:                                            ; preds = %bb.lp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aia)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.aii = landingpad { ptr, i32 }
          catch ptr null
  %i.aij = extractvalue { ptr, i32 } %i.aii, 0
  call void @__clang_call_terminate(ptr %i.aij) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit601, %bb.lp, %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br i1 %cond4, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447, label %bb.pr

.body569:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kv, %bb.kq, %bb.kz
  %.pn195 = phi { ptr, i32 } [ %i.afz, %bb.kz ], [ %i.afw, %bb.kv ], [ %.pn190.pn, %bb.kq ], [ %lpad.loopexit.split-lp1498, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  br label %bb.ls

bb.ls:                                            ; preds = %.body569, %_ZN4cvc58internal6StringD2Ev.exit494
  %.pn195.pn = phi { ptr, i32 } [ %.pn195, %.body569 ], [ %.pn188, %_ZN4cvc58internal6StringD2Ev.exit494 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #21
  br label %.body487

.body487:                                         ; preds = %bb.ih, %bb.ls
  %.pn195.pn.pn = phi { ptr, i32 } [ %.pn195.pn, %bb.ls ], [ %i.ys, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.pt

bb.lt:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.aik = load ptr, ptr %2, align 8, !tbaa !31
  %i.ail = load ptr, ptr %i.g, align 8, !tbaa !31
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr null, ptr %i.aik, ptr %i.ail)
          to label %bb.lu unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp

bb.lu:                                            ; preds = %bb.lt
  br i1 %.not1293, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.aim = load ptr, ptr %38, align 8, !tbaa !31  ; 3 uses
  %i.ain = load ptr, ptr %i.j, align 8, !tbaa !31 ; 2 uses
  %i.aio = icmp ne ptr %i.aim, %i.ain
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ain, i64 -8 ; 2 uses
  %i.aip = icmp ult ptr %i.aim, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.aio, i1 %i.aip, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %bb.lv, %.noexc606
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.noexc606 ], [ %.sroa.0.08.i.i, %bb.lv ] ; 2 uses
  %.sroa.05.09.i.i = phi ptr [ %i.aiq, %.noexc606 ], [ %i.aim, %bb.lv ] ; 2 uses
  invoke void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.010.i.i)
          to label %.noexc606 unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp

.noexc606:                                        ; preds = %.lr.ph.i.i
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.air = icmp ult ptr %i.aiq, %.sroa.0.0.i.i
  br i1 %i.air, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !182

.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.lt
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc606, %bb.lv, %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ais = load i64, ptr %i.bv, align 8, !noalias !193
  %i.ait = trunc i64 %i.ais to i32
  %i.aiu = and i32 %i.ait, 1023                   ; 2 uses
  %i.aiv = icmp eq i32 %i.aiu, 1023
  %i.aiw = select i1 %i.aiv, i32 -1, i32 %i.aiu
  %i.aix = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.aiw)
          to label %.noexc608 unwind label %bb.mm

.noexc608:                                        ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.aiy = icmp eq i32 %i.aix, 2
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.aja = zext i1 %i.aiy to i64
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %i.aja
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !19, !noalias !193 ; 5 uses
  store ptr %i.ajc, ptr %40, align 8, !tbaa !21, !alias.scope !193
  %i.ajd = load i64, ptr %i.ajc, align 8, !noalias !193 ; 3 uses
  %i.aje = lshr i64 %i.ajd, 40
  %i.ajf = trunc nuw nsw i64 %i.aje to i32
  %i.ajg = and i32 %i.ajf, 1048575                ; 3 uses
  %i.ajh = icmp samesign ult i32 %i.ajg, 1048574
  br i1 %i.ajh, label %bb.lw, label %bb.lx, !prof !23

bb.lw:                                            ; preds = %.noexc608
  %i.aji = add nuw nsw i32 %i.ajg, 1
  %i.ajj = zext nneg i32 %i.aji to i64
  %i.ajk = shl nuw nsw i64 %i.ajj, 40
  %i.ajl = and i64 %i.ajd, -1152920405095219201
  %i.ajm = or i64 %i.ajk, %i.ajl
  store i64 %i.ajm, ptr %i.ajc, align 8, !noalias !193
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit610

bb.lx:                                            ; preds = %.noexc608
  %i.ajn = icmp eq i32 %i.ajg, 1048574
  br i1 %i.ajn, label %bb.ly, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit610, !prof !22

bb.ly:                                            ; preds = %bb.lx
  %i.ajo = or i64 %i.ajd, 1152920405095219200
  store i64 %i.ajo, ptr %i.ajc, align 8, !noalias !193
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajc)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit610 unwind label %bb.mm

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit610: ; preds = %bb.lx, %bb.lw, %bb.ly
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.lz unwind label %bb.mn

bb.lz:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit610
  %i.ajp = load ptr, ptr %40, align 8, !tbaa !21  ; 3 uses
  %i.ajq = load i64, ptr %i.ajp, align 8          ; 3 uses
  %i.ajr = and i64 %i.ajq, 1152920405095219200
  %.not.i.i611 = icmp eq i64 %i.ajr, 1152920405095219200
  br i1 %.not.i.i611, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit613, label %bb.ma, !prof !22

bb.ma:                                            ; preds = %bb.lz
  %i.ajs = add i64 %i.ajq, 1152920405095219200
  %i.ajt = and i64 %i.ajs, 1152920405095219200    ; 2 uses
  %i.aju = and i64 %i.ajq, -1152920405095219201
  %i.ajv = or disjoint i64 %i.ajt, %i.aju
  store i64 %i.ajv, ptr %i.ajp, align 8
  %i.ajw = icmp eq i64 %i.ajt, 0
  br i1 %i.ajw, label %bb.mb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit613, !prof !22

bb.mb:                                            ; preds = %bb.ma
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit613 unwind label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ajx = landingpad { ptr, i32 }
          catch ptr null
  %i.ajy = extractvalue { ptr, i32 } %i.ajx, 0
  call void @__clang_call_terminate(ptr %i.ajy) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit613: ; preds = %bb.lz, %bb.ma, %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %41, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %39, i32 noundef %storemerge1291)
          to label %bb.md unwind label %bb.mo

bb.md:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit613
  %i.ajz = load ptr, ptr %41, align 8, !tbaa !21
  %i.aka = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.akb = icmp eq i8 %i.aka, 0
  br i1 %i.akb, label %bb.me, label %bb.mi, !prof !16

bb.me:                                            ; preds = %bb.md
end_hunk_3
begin_hunk_4_@_ZN4cvc58internal6theory7strings12RegExpEntail19simpleRegexpConsumeEPNS0_11NodeManagerERSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EESB_i:bb.a
_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit728, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.apy = phi ptr [ %i.apl, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit728 ], [ %.pre, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.apz = load ptr, ptr %38, align 8, !tbaa !31
  %i.aqa = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.aqb = ptrtoint ptr %i.apl to i64
  %i.aqc = ptrtoint ptr %i.apy to i64
  %i.aqd = sub i64 %i.aqb, %i.aqc
  %i.aqe = getelementptr inbounds i8, ptr %i.apy, i64 %i.aqd
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aqe, ptr %i.apz, ptr %i.aqa)
          to label %bb.of unwind label %.loopexit.split-lp1184.loopexit.split-lp.loopexit.split-lp

bb.of:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.aqf = load ptr, ptr %45, align 8, !tbaa !42  ; 5 uses
  store ptr %i.aqf, ptr %49, align 8, !tbaa !42
  %i.aqg = load i64, ptr %i.aqf, align 8          ; 3 uses
  %i.aqh = lshr i64 %i.aqg, 40
  %i.aqi = trunc nuw nsw i64 %i.aqh to i32
  %i.aqj = and i32 %i.aqi, 1048575                ; 3 uses
  %i.aqk = icmp samesign ult i32 %i.aqj, 1048574
  br i1 %i.aqk, label %bb.og, label %bb.oh, !prof !23

bb.og:                                            ; preds = %bb.of
  %i.aql = add nuw nsw i32 %i.aqj, 1
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = shl nuw nsw i64 %i.aqm, 40
  %i.aqo = and i64 %i.aqg, -1152920405095219201
  %i.aqp = or i64 %i.aqn, %i.aqo
  store i64 %i.aqp, ptr %i.aqf, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734

bb.oh:                                            ; preds = %bb.of
  %i.aqq = icmp eq i32 %i.aqj, 1048574
  br i1 %i.aqq, label %bb.oi, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734, !prof !22

bb.oi:                                            ; preds = %bb.oh
  %i.aqr = or i64 %i.aqg, 1152920405095219200
  store i64 %i.aqr, ptr %i.aqf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqf)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734 unwind label %bb.ox

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734:       ; preds = %bb.oh, %bb.og, %bb.oi
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %49)
          to label %bb.oj unwind label %bb.oy

bb.oj:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734
  %i.aqs = load ptr, ptr %49, align 8, !tbaa !42  ; 3 uses
  %i.aqt = load i64, ptr %i.aqs, align 8          ; 3 uses
  %i.aqu = and i64 %i.aqt, 1152920405095219200
  %.not.i.i735 = icmp eq i64 %i.aqu, 1152920405095219200
  br i1 %.not.i.i735, label %bb.on, label %bb.ok, !prof !22

bb.ok:                                            ; preds = %bb.oj
  %i.aqv = add i64 %i.aqt, 1152920405095219200
  %i.aqw = and i64 %i.aqv, 1152920405095219200    ; 2 uses
  %i.aqx = and i64 %i.aqt, -1152920405095219201
  %i.aqy = or disjoint i64 %i.aqw, %i.aqx
  store i64 %i.aqy, ptr %i.aqs, align 8
  %i.aqz = icmp eq i64 %i.aqw, 0
  br i1 %i.aqz, label %bb.ol, label %bb.on, !prof !22

bb.ol:                                            ; preds = %bb.ok
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqs)
          to label %bb.on unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.ara = landingpad { ptr, i32 }
          catch ptr null
  %i.arb = extractvalue { ptr, i32 } %i.ara, 0
  call void @__clang_call_terminate(ptr %i.arb) #23
  unreachable

bb.on:                                            ; preds = %bb.oj, %bb.ok, %bb.ol
  %i.arc = load ptr, ptr %46, align 8, !tbaa !21
  %i.ard = load ptr, ptr %48, align 8, !tbaa !21  ; 4 uses
  %i.are = icmp ne ptr %i.arc, %i.ard
  %i.arf = load i64, ptr %i.ard, align 8          ; 3 uses
  %i.arg = and i64 %i.arf, 1152920405095219200
  %.not.i.i741 = icmp eq i64 %i.arg, 1152920405095219200
  br i1 %.not.i.i741, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743, label %bb.oo, !prof !22

bb.oo:                                            ; preds = %bb.on
  %i.arh = add i64 %i.arf, 1152920405095219200
  %i.ari = and i64 %i.arh, 1152920405095219200    ; 2 uses
  %i.arj = and i64 %i.arf, -1152920405095219201
  %i.ark = or disjoint i64 %i.ari, %i.arj
  store i64 %i.ark, ptr %i.ard, align 8
  %i.arl = icmp eq i64 %i.ari, 0
  br i1 %i.arl, label %bb.op, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743, !prof !22

bb.op:                                            ; preds = %bb.oo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ard)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743 unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.arm = landingpad { ptr, i32 }
          catch ptr null
  %i.arn = extractvalue { ptr, i32 } %i.arm, 0
  call void @__clang_call_terminate(ptr %i.arn) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743: ; preds = %bb.on, %bb.oo, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.aro = load ptr, ptr %46, align 8, !tbaa !21  ; 3 uses
  %i.arp = load i64, ptr %i.aro, align 8          ; 3 uses
  %i.arq = and i64 %i.arp, 1152920405095219200
  %.not.i.i744 = icmp eq i64 %i.arq, 1152920405095219200
  br i1 %.not.i.i744, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746, label %bb.or, !prof !22

bb.or:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743
  %i.arr = add i64 %i.arp, 1152920405095219200
  %i.ars = and i64 %i.arr, 1152920405095219200    ; 2 uses
  %i.art = and i64 %i.arp, -1152920405095219201
  %i.aru = or disjoint i64 %i.ars, %i.art
  store i64 %i.aru, ptr %i.aro, align 8
  %i.arv = icmp eq i64 %i.ars, 0
  br i1 %i.arv, label %bb.os, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746, !prof !22

bb.os:                                            ; preds = %bb.or
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aro)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746 unwind label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.arw = landingpad { ptr, i32 }
          catch ptr null
  %i.arx = extractvalue { ptr, i32 } %i.arw, 0
  call void @__clang_call_terminate(ptr %i.arx) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit743, %bb.or, %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.ary = load ptr, ptr %45, align 8, !tbaa !42  ; 3 uses
  %i.arz = load i64, ptr %i.ary, align 8          ; 3 uses
  %i.asa = and i64 %i.arz, 1152920405095219200
  %.not.i.i747 = icmp eq i64 %i.asa, 1152920405095219200
  br i1 %.not.i.i747, label %_ZN4cvc58internal8TypeNodeD2Ev.exit749, label %bb.ou, !prof !22

bb.ou:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746
  %i.asb = add i64 %i.arz, 1152920405095219200
  %i.asc = and i64 %i.asb, 1152920405095219200    ; 2 uses
  %i.asd = and i64 %i.arz, -1152920405095219201
  %i.ase = or disjoint i64 %i.asc, %i.asd
  store i64 %i.ase, ptr %i.ary, align 8
  %i.asf = icmp eq i64 %i.asc, 0
  br i1 %i.asf, label %bb.ov, label %_ZN4cvc58internal8TypeNodeD2Ev.exit749, !prof !22

bb.ov:                                            ; preds = %bb.ou
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ary)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit749 unwind label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.asg = landingpad { ptr, i32 }
          catch ptr null
  %i.ash = extractvalue { ptr, i32 } %i.asg, 0
  call void @__clang_call_terminate(ptr %i.ash) #23
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit749:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit746, %bb.ou, %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.critedge234

.loopexit.split-lp1184.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i723, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5clearEv.exit
  %lpad.loopexit.split-lp1500 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.ox:                                            ; preds = %bb.oi
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %bb.oz

bb.oy:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit734
  %i.asj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #21
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %.pn177 = phi { ptr, i32 } [ %i.asi, %bb.ox ], [ %i.asj, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  br label %bb.pa

bb.pa:                                            ; preds = %.loopexit.split-lp1184.loopexit.split-lp.loopexit.split-lp, %bb.oz
  %.pn177.pn = phi { ptr, i32 } [ %.pn177, %bb.oz ], [ %lpad.loopexit.split-lp1500, %.loopexit.split-lp1184.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #21
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.ob, %bb.oa
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %bb.pa ], [ %i.apk, %bb.ob ], [ %i.apj, %bb.oa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #21
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.nz
  %.pn177.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn, %bb.pb ], [ %i.api, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.body622

.critedge234:                                     ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit653, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit712, %bb.mq, %_ZN4cvc58internal8TypeNodeD2Ev.exit749, %bb.mp
  %.4.a = phi i1 [ false, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit712 ], [ %i.are, %_ZN4cvc58internal8TypeNodeD2Ev.exit749 ], [ false, %bb.mq ], [ false, %bb.mp ], [ %i.akw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit653 ]
  %i.ask = load ptr, ptr %41, align 8, !tbaa !21  ; 3 uses
  %i.asl = load i64, ptr %i.ask, align 8          ; 3 uses
  %i.asm = and i64 %i.asl, 1152920405095219200
  %.not.i.i777 = icmp eq i64 %i.asm, 1152920405095219200
  br i1 %.not.i.i777, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779, label %bb.pd, !prof !22

bb.pd:                                            ; preds = %.critedge234
  %i.asn = add i64 %i.asl, 1152920405095219200
  %i.aso = and i64 %i.asn, 1152920405095219200    ; 2 uses
  %i.asp = and i64 %i.asl, -1152920405095219201
  %i.asq = or disjoint i64 %i.aso, %i.asp
  store i64 %i.asq, ptr %i.ask, align 8
  %i.asr = icmp eq i64 %i.aso, 0
  br i1 %i.asr, label %bb.pe, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779, !prof !22

bb.pe:                                            ; preds = %bb.pd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ask)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779 unwind label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.ass = landingpad { ptr, i32 }
          catch ptr null
  %i.ast = extractvalue { ptr, i32 } %i.ass, 0
  call void @__clang_call_terminate(ptr %i.ast) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779: ; preds = %.critedge234, %bb.pd, %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.asu = load ptr, ptr %39, align 8, !tbaa !34  ; 3 uses
  %i.asv = load ptr, ptr %i.k, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i780 = icmp eq ptr %i.asu, %i.asv
  br i1 %.not4.i.i.i780, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i788, label %.lr.ph.i.i.i781

.lr.ph.i.i.i781:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784
  %.05.i.i.i782 = phi ptr [ %i.atg, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784 ], [ %i.asu, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779 ] ; 2 uses
  %i.asw = load ptr, ptr %.05.i.i.i782, align 8, !tbaa !21 ; 3 uses
  %i.asx = load i64, ptr %i.asw, align 8          ; 3 uses
  %i.asy = and i64 %i.asx, 1152920405095219200
  %.not.i.i.i.i.i.i783 = icmp eq i64 %i.asy, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i783, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784, label %bb.pg, !prof !22

bb.pg:                                            ; preds = %.lr.ph.i.i.i781
  %i.asz = add i64 %i.asx, 1152920405095219200
  %i.ata = and i64 %i.asz, 1152920405095219200    ; 2 uses
  %i.atb = and i64 %i.asx, -1152920405095219201
  %i.atc = or disjoint i64 %i.ata, %i.atb
  store i64 %i.atc, ptr %i.asw, align 8
  %i.atd = icmp eq i64 %i.ata, 0
  br i1 %i.atd, label %bb.ph, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784, !prof !22

bb.ph:                                            ; preds = %bb.pg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.asw)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784 unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.ate = landingpad { ptr, i32 }
          catch ptr null
  %i.atf = extractvalue { ptr, i32 } %i.ate, 0
  call void @__clang_call_terminate(ptr %i.atf) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784: ; preds = %bb.ph, %bb.pg, %.lr.ph.i.i.i781
  %i.atg = getelementptr inbounds nuw i8, ptr %.05.i.i.i782, i64 8 ; 2 uses
  %.not.i.i.i785 = icmp eq ptr %i.atg, %i.asv
  br i1 %.not.i.i.i785, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i786, label %.lr.ph.i.i.i781, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i786: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i784
  %.pr.i787 = load ptr, ptr %39, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i788

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i788: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i786, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779
  %i.ath = phi ptr [ %.pr.i787, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i786 ], [ %i.asu, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit779 ] ; 3 uses
  %.not.i.i1.i789 = icmp eq ptr %i.ath, null
  br i1 %.not.i.i1.i789, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790, label %bb.pj

bb.pj:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i788
  %i.ati = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.atj = ptrtoint ptr %i.ati to i64
  %i.atk = ptrtoint ptr %i.ath to i64
  %i.atl = sub i64 %i.atj, %i.atk
  call void @_ZdlPvm(ptr noundef nonnull %i.ath, i64 noundef %i.atl) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i788, %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.atm = load ptr, ptr %38, align 8, !tbaa !34  ; 3 uses
  %i.atn = load ptr, ptr %i.j, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i791 = icmp eq ptr %i.atm, %i.atn
  br i1 %.not4.i.i.i791, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i799, label %.lr.ph.i.i.i792

.lr.ph.i.i.i792:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795
  %.05.i.i.i793 = phi ptr [ %i.aty, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795 ], [ %i.atm, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790 ] ; 2 uses
  %i.ato = load ptr, ptr %.05.i.i.i793, align 8, !tbaa !21 ; 3 uses
  %i.atp = load i64, ptr %i.ato, align 8          ; 3 uses
  %i.atq = and i64 %i.atp, 1152920405095219200
  %.not.i.i.i.i.i.i794 = icmp eq i64 %i.atq, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i794, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795, label %bb.pk, !prof !22

bb.pk:                                            ; preds = %.lr.ph.i.i.i792
  %i.atr = add i64 %i.atp, 1152920405095219200
  %i.ats = and i64 %i.atr, 1152920405095219200    ; 2 uses
  %i.att = and i64 %i.atp, -1152920405095219201
  %i.atu = or disjoint i64 %i.ats, %i.att
  store i64 %i.atu, ptr %i.ato, align 8
  %i.atv = icmp eq i64 %i.ats, 0
  br i1 %i.atv, label %bb.pl, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795, !prof !22

bb.pl:                                            ; preds = %bb.pk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ato)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795 unwind label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.atw = landingpad { ptr, i32 }
          catch ptr null
  %i.atx = extractvalue { ptr, i32 } %i.atw, 0
  call void @__clang_call_terminate(ptr %i.atx) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795: ; preds = %bb.pl, %bb.pk, %.lr.ph.i.i.i792
  %i.aty = getelementptr inbounds nuw i8, ptr %.05.i.i.i793, i64 8 ; 2 uses
  %.not.i.i.i796 = icmp eq ptr %i.aty, %i.atn
  br i1 %.not.i.i.i796, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i797, label %.lr.ph.i.i.i792, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i797: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i795
  %.pr.i798 = load ptr, ptr %38, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i799

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i799: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i797, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790
  %i.atz = phi ptr [ %.pr.i798, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i797 ], [ %i.atm, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit790 ] ; 3 uses
  %.not.i.i1.i800 = icmp eq ptr %i.atz, null
  br i1 %.not.i.i1.i800, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit801, label %bb.pn

bb.pn:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i799
  %i.aua = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.aub = ptrtoint ptr %i.aua to i64
  %i.auc = ptrtoint ptr %i.atz to i64
  %i.aud = sub i64 %i.aub, %i.auc
  call void @_ZdlPvm(ptr noundef nonnull %i.atz, i64 noundef %i.aud) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit801

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit801: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i799, %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447

.body622:                                         ; preds = %bb.mh, %bb.no, %bb.pc
  %.pn182.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.no ], [ %i.akf, %bb.mh ], [ %.pn177.pn.pn.pn, %bb.pc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #21
  br label %bb.po

bb.po:                                            ; preds = %.body622, %bb.mo
  %.pn182.pn.pn = phi { ptr, i32 } [ %.pn182.pn, %.body622 ], [ %i.akz, %bb.mo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.mn, %bb.mm
  %.pn182.pn.pn.pn = phi { ptr, i32 } [ %.pn182.pn.pn, %bb.po ], [ %i.aky, %bb.mn ], [ %i.akx, %bb.mm ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.pq

bb.pq:                                            ; preds = %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp, %bb.pp
  %.pn182.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn182.pn.pn.pn, %bb.pp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.pt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447: ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fm, %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit801, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604
  %.5 = phi i1 [ %.4.a, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit801 ], [ false, %bb.fm ], [ true, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.3, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 ], [ true, %bb.fi ], [ true, %bb.fj ], [ true, %bb.fk ]
  br label %bb.pr

bb.pr:                                            ; preds = %bb.fo, %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447
  %.61309 = phi i1 [ %.5, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447 ], [ false, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ false, %bb.fo ], [ %.3, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 ]
  %cond2 = phi i32 [ 0, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit447 ], [ 1, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ 6, %bb.fo ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 ]
  %i.aue = load ptr, ptr %22, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i.i802 = icmp eq ptr %i.aue, null
  br i1 %.not.i.i.i.i802, label %_ZN4cvc58internal6StringD2Ev.exit803, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.auf = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.aug = ptrtoint ptr %i.auf to i64
  %i.auh = ptrtoint ptr %i.aue to i64
  %i.aui = sub i64 %i.aug, %i.auh
  call void @_ZdlPvm(ptr noundef nonnull %i.aue, i64 noundef %i.aui) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit803

_ZN4cvc58internal6StringD2Ev.exit803:             ; preds = %bb.pr, %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832

bb.pt:                                            ; preds = %bb.pq, %.body487, %_ZNSt6vectorIjSaIjEED2Ev.exit485, %bb.fp
  %.pn208 = phi { ptr, i32 } [ %.pn182.pn.pn.pn.pn, %bb.pq ], [ %.pn202.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit485 ], [ %i.sh, %bb.fp ], [ %.pn195.pn.pn, %.body487 ] ; 2 uses
  %i.auj = load ptr, ptr %22, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i.i804 = icmp eq ptr %i.auj, null
  br i1 %.not.i.i.i.i804, label %_ZN4cvc58internal6StringD2Ev.exit805, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.auk = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.aul = ptrtoint ptr %i.auk to i64
  %i.aum = ptrtoint ptr %i.auj to i64
  %i.aun = sub i64 %i.aul, %i.aum
  call void @_ZdlPvm(ptr noundef nonnull %i.auj, i64 noundef %i.aun) #25
  br label %_ZN4cvc58internal6StringD2Ev.exit805

_ZN4cvc58internal6StringD2Ev.exit805:             ; preds = %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pu, %bb.pt
  %.pn208.pn = phi { ptr, i32 } [ %.pn208, %bb.pu ], [ %.pn208, %bb.pt ], [ %lpad.loopexit.split-lp1510, %.loopexit.split-lp1202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.qk

.critedge232:                                     ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.auo = load ptr, ptr %12, align 8, !tbaa !21  ; 3 uses
  %i.aup = load i64, ptr %i.auo, align 8          ; 3 uses
  %i.auq = and i64 %i.aup, 1152920405095219200
  %.not.i.i833 = icmp eq i64 %i.auq, 1152920405095219200
  br i1 %.not.i.i833, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835, label %bb.pv, !prof !22

bb.pv:                                            ; preds = %.critedge232
  %i.aur = add i64 %i.aup, 1152920405095219200
  %i.aus = and i64 %i.aur, 1152920405095219200    ; 2 uses
  %i.aut = and i64 %i.aup, -1152920405095219201
  %i.auu = or disjoint i64 %i.aus, %i.aut
  store i64 %i.auu, ptr %i.auo, align 8
  %i.auv = icmp eq i64 %i.aus, 0
  br i1 %i.auv, label %bb.pw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835, !prof !22

bb.pw:                                            ; preds = %bb.pv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835 unwind label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.auw = landingpad { ptr, i32 }
          catch ptr null
  %i.aux = extractvalue { ptr, i32 } %i.auw, 0
  call void @__clang_call_terminate(ptr %i.aux) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835: ; preds = %.critedge232, %bb.pv, %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.auy = load ptr, ptr %11, align 8, !tbaa !21  ; 3 uses
  %i.auz = load i64, ptr %i.auy, align 8          ; 3 uses
  %i.ava = and i64 %i.auz, 1152920405095219200
  %.not.i.i836 = icmp eq i64 %i.ava, 1152920405095219200
  br i1 %.not.i.i836, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, label %bb.py, !prof !22

bb.py:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835
  %i.avb = add i64 %i.auz, 1152920405095219200
  %i.avc = and i64 %i.avb, 1152920405095219200    ; 2 uses
  %i.avd = and i64 %i.auz, -1152920405095219201
  %i.ave = or disjoint i64 %i.avc, %i.avd
  store i64 %i.ave, ptr %i.auy, align 8
  %i.avf = icmp eq i64 %i.avc, 0
  br i1 %i.avf, label %bb.pz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, !prof !22

bb.pz:                                            ; preds = %bb.py
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838 unwind label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.avg = landingpad { ptr, i32 }
          catch ptr null
  %i.avh = extractvalue { ptr, i32 } %i.avg, 0
  call void @__clang_call_terminate(ptr %i.avh) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit835, %bb.py, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.avi = load ptr, ptr %9, align 8, !tbaa !34   ; 3 uses
  %i.avj = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i839 = icmp eq ptr %i.avi, %i.avj
  br i1 %.not4.i.i.i839, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847, label %.lr.ph.i.i.i840

.lr.ph.i.i.i840:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843
  %.05.i.i.i841 = phi ptr [ %i.avu, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843 ], [ %i.avi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838 ] ; 2 uses
  %i.avk = load ptr, ptr %.05.i.i.i841, align 8, !tbaa !21 ; 3 uses
  %i.avl = load i64, ptr %i.avk, align 8          ; 3 uses
  %i.avm = and i64 %i.avl, 1152920405095219200
  %.not.i.i.i.i.i.i842 = icmp eq i64 %i.avm, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i842, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843, label %bb.qb, !prof !22

bb.qb:                                            ; preds = %.lr.ph.i.i.i840
  %i.avn = add i64 %i.avl, 1152920405095219200
  %i.avo = and i64 %i.avn, 1152920405095219200    ; 2 uses
  %i.avp = and i64 %i.avl, -1152920405095219201
  %i.avq = or disjoint i64 %i.avo, %i.avp
  store i64 %i.avq, ptr %i.avk, align 8
  %i.avr = icmp eq i64 %i.avo, 0
  br i1 %i.avr, label %bb.qc, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843, !prof !22

bb.qc:                                            ; preds = %bb.qb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avk)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843 unwind label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.avs = landingpad { ptr, i32 }
          catch ptr null
  %i.avt = extractvalue { ptr, i32 } %i.avs, 0
  call void @__clang_call_terminate(ptr %i.avt) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843: ; preds = %bb.qc, %bb.qb, %.lr.ph.i.i.i840
  %i.avu = getelementptr inbounds nuw i8, ptr %.05.i.i.i841, i64 8 ; 2 uses
  %.not.i.i.i844 = icmp eq ptr %i.avu, %i.avj
  br i1 %.not.i.i.i844, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i845, label %.lr.ph.i.i.i840, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i845: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i843
  %.pr.i846 = load ptr, ptr %9, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i845, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838
  %i.avv = phi ptr [ %.pr.i846, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i845 ], [ %i.avi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit838 ] ; 2 uses
  %.not.i.i1.i848 = icmp eq ptr %i.avv, null
  br i1 %.not.i.i1.i848, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %.sink1466 = phi ptr [ %i.qs, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i ], [ %i.avv, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847 ] ; 2 uses
  %.8.ph.ph = phi i1 [ %.11448, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i ], [ false, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847 ]
  %.7.ph.ph = phi i32 [ 0, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i ], [ 1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847 ]
  %i.avw = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.avx = ptrtoint ptr %i.avw to i64
  %i.avy = ptrtoint ptr %.sink1466 to i64
  %i.avz = sub i64 %i.avx, %i.avy
  call void @_ZdlPvm(ptr noundef nonnull %.sink1466, i64 noundef %i.avz) #25
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %.8.ph = phi i1 [ false, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847 ], [ %.11448, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i ], [ %.8.ph.ph, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split ]
  %.7.ph = phi i32 [ 1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i847 ], [ 0, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i ], [ %.7.ph.ph, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832: ; preds = %_ZN4cvc58internal6StringD2Ev.exit803, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split, %bb.fa
  %.8 = phi i1 [ %.8.ph, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split ], [ false, %bb.fa ], [ %.61309, %_ZN4cvc58internal6StringD2Ev.exit803 ]
  %.7 = phi i32 [ %.7.ph, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832.sink.split ], [ 0, %bb.fa ], [ %cond2, %_ZN4cvc58internal6StringD2Ev.exit803 ]
  %i.awa = load ptr, ptr %8, align 8, !tbaa !21   ; 3 uses
  %i.awb = load i64, ptr %i.awa, align 8          ; 3 uses
  %i.awc = and i64 %i.awb, 1152920405095219200
  %.not.i.i850 = icmp eq i64 %i.awc, 1152920405095219200
  br i1 %.not.i.i850, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, label %bb.qe, !prof !22

bb.qe:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832
  %i.awd = add i64 %i.awb, 1152920405095219200
  %i.awe = and i64 %i.awd, 1152920405095219200    ; 2 uses
  %i.awf = and i64 %i.awb, -1152920405095219201
  %i.awg = or disjoint i64 %i.awe, %i.awf
  store i64 %i.awg, ptr %i.awa, align 8
  %i.awh = icmp eq i64 %i.awe, 0
  br i1 %i.awh, label %bb.qf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, !prof !22

bb.qf:                                            ; preds = %bb.qe
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852 unwind label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.awi = landingpad { ptr, i32 }
          catch ptr null
  %i.awj = extractvalue { ptr, i32 } %i.awi, 0
  call void @__clang_call_terminate(ptr %i.awj) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit832, %bb.qe, %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.awk = load ptr, ptr %7, align 8, !tbaa !21   ; 3 uses
  %i.awl = load i64, ptr %i.awk, align 8          ; 3 uses
  %i.awm = and i64 %i.awl, 1152920405095219200
  %.not.i.i853 = icmp eq i64 %i.awm, 1152920405095219200
  br i1 %.not.i.i853, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855, label %bb.qh, !prof !22

bb.qh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852
  %i.awn = add i64 %i.awl, 1152920405095219200
  %i.awo = and i64 %i.awn, 1152920405095219200    ; 2 uses
  %i.awp = and i64 %i.awl, -1152920405095219201
  %i.awq = or disjoint i64 %i.awo, %i.awp
  store i64 %i.awq, ptr %i.awk, align 8
  %i.awr = icmp eq i64 %i.awo, 0
  br i1 %i.awr, label %bb.qi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855, !prof !22

bb.qi:                                            ; preds = %bb.qh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855 unwind label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.aws = landingpad { ptr, i32 }
          catch ptr null
  %i.awt = extractvalue { ptr, i32 } %i.aws, 0
  call void @__clang_call_terminate(ptr %i.awt) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit852, %bb.qh, %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  switch i32 %.7, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit873 [
    i32 0, label %.preheader
    i32 6, label %.thread1175
  ], !llvm.loop !185

bb.qk:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit805, %bb.ey, %bb.af
  %.pn226 = phi { ptr, i32 } [ %i.ey, %bb.af ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %.pn208.pn, %_ZN4cvc58internal6StringD2Ev.exit805 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.ae
  %.pn226.pn = phi { ptr, i32 } [ %.pn226, %bb.qk ], [ %i.ex, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn226.pn

.thread1175:                                      ; preds = %bb.c, %.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855, %bb.b
  br i1 %.not229, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869, label %bb.qm

bb.qm:                                            ; preds = %.thread1175
  %i.awu = load ptr, ptr %3, align 8, !tbaa !31   ; 3 uses
  %i.awv = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.aww = icmp ne ptr %i.awu, %i.awv
  %.sroa.0.08.i.i856 = getelementptr inbounds i8, ptr %i.awv, i64 -8 ; 2 uses
  %i.awx = icmp ult ptr %i.awu, %.sroa.0.08.i.i856
  %or.cond.i.i857 = select i1 %i.aww, i1 %i.awx, i1 false
  br i1 %or.cond.i.i857, label %.lr.ph.i.i858, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862

.lr.ph.i.i858:                                    ; preds = %bb.qm, %.lr.ph.i.i858
  %.sroa.0.010.i.i859 = phi ptr [ %.sroa.0.0.i.i861, %.lr.ph.i.i858 ], [ %.sroa.0.08.i.i856, %bb.qm ] ; 2 uses
  %.sroa.05.09.i.i860 = phi ptr [ %i.awy, %.lr.ph.i.i858 ], [ %i.awu, %bb.qm ] ; 2 uses
  call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.09.i.i860, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.010.i.i859)
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i860, i64 8 ; 2 uses
  %.sroa.0.0.i.i861 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i859, i64 -8 ; 2 uses
  %i.awz = icmp ult ptr %i.awy, %.sroa.0.0.i.i861
  br i1 %i.awz, label %.lr.ph.i.i858, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862, !llvm.loop !182

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862: ; preds = %.lr.ph.i.i858, %bb.qm
  %i.axa = load ptr, ptr %2, align 8, !tbaa !31   ; 3 uses
  %i.axb = load ptr, ptr %i.g, align 8, !tbaa !31 ; 2 uses
  %i.axc = icmp ne ptr %i.axa, %i.axb
  %.sroa.0.08.i.i863 = getelementptr inbounds i8, ptr %i.axb, i64 -8 ; 2 uses
  %i.axd = icmp ult ptr %i.axa, %.sroa.0.08.i.i863
  %or.cond.i.i864 = select i1 %i.axc, i1 %i.axd, i1 false
  br i1 %or.cond.i.i864, label %.lr.ph.i.i865, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869

.lr.ph.i.i865:                                    ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862, %.lr.ph.i.i865
  %.sroa.0.010.i.i866 = phi ptr [ %.sroa.0.0.i.i868, %.lr.ph.i.i865 ], [ %.sroa.0.08.i.i863, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862 ] ; 2 uses
  %.sroa.05.09.i.i867 = phi ptr [ %i.axe, %.lr.ph.i.i865 ], [ %i.axa, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862 ] ; 2 uses
  call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.09.i.i867, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.010.i.i866)
  %i.axe = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i867, i64 8 ; 2 uses
  %.sroa.0.0.i.i868 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i866, i64 -8 ; 2 uses
  %i.axf = icmp ult ptr %i.axe, %.sroa.0.0.i.i868
  br i1 %i.axf, label %.lr.ph.i.i865, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869, !llvm.loop !182

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869: ; preds = %.lr.ph.i.i865, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit862, %.thread1175
  br i1 %.not1293, label %bb.b, label %.thread1178, !llvm.loop !186

.thread1178:                                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit869
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.axg = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !21, !noalias !194 ; 5 uses
  store ptr %i.axg, ptr %0, align 8, !tbaa !21, !alias.scope !194
  %i.axh = load i64, ptr %i.axg, align 8, !noalias !194 ; 3 uses
  %i.axi = lshr i64 %i.axh, 40
  %i.axj = trunc nuw nsw i64 %i.axi to i32
  %i.axk = and i32 %i.axj, 1048575                ; 3 uses
  %i.axl = icmp samesign ult i32 %i.axk, 1048574
  br i1 %i.axl, label %bb.qn, label %bb.qo, !prof !23

bb.qn:                                            ; preds = %.thread1178
  %i.axm = add nuw nsw i32 %i.axk, 1
  %i.axn = zext nneg i32 %i.axm to i64
  %i.axo = shl nuw nsw i64 %i.axn, 40
  %i.axp = and i64 %i.axh, -1152920405095219201
  %i.axq = or i64 %i.axo, %i.axp
  store i64 %i.axq, ptr %i.axg, align 8, !noalias !194
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit873

bb.qo:                                            ; preds = %.thread1178
  %i.axr = icmp eq i32 %i.axk, 1048574
  br i1 %i.axr, label %bb.qp, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit873, !prof !22

bb.qp:                                            ; preds = %bb.qo
  %i.axs = or i64 %i.axh, 1152920405095219200
  store i64 %i.axs, ptr %i.axg, align 8, !noalias !194
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.axg), !noalias !194
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit873

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit873: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit855, %bb.qp, %bb.qo, %bb.qn
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

declare void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb1EEixEi(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %i.j = zext i1 %i.i to i32
end_hunk_4
