inline.NumInlined: 426
inline.NumDeleted: 235
begin_hunk_0_@_ZN8facebook5velox17SelectivityVectorD2Ev
define linkonce_odr void @_ZN8facebook5velox17SelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(38) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox17SelectivityVector5emptyEi(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::SelectivityVector") align 8 initializes((0, 36), (37, 38)) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr null, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 %1, ptr %i.o, align 8, !tbaa !18
  store i32 0, ptr %i.n, align 4, !tbaa !26
  store i32 0, ptr %i.m, align 8, !tbaa !27
  store i16 256, ptr %i.p, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox17SelectivityVector8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(38) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.a = tail call noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %1) ; 2 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !29
  store i32 %2, ptr %3, align 16, !tbaa !32, !noalias !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.c, align 16, !tbaa !32, !noalias !29
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !29
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 16 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.a)
          to label %bb.f unwind label %bb.ai      ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.n)
          to label %bb.g unwind label %bb.ai      ; 2 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.5, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.r)
          to label %bb.h unwind label %bb.ai      ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.v)
          to label %bb.i unwind label %bb.ai      ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.x = icmp sgt i32 %i.a, 0
  %i.y = icmp ne i32 %2, 0
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.j, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13, !range !37, !noundef !38
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.0.in.pre.i.i = load i8, ptr %i.aa, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !27  ; 6 uses
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !18
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ak = and i32 %i.ag, 2147483584               ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %.not37.i.i.not.i.i125.not = icmp eq i32 %i.ak, 0
  br i1 %.not37.i.i.not.i.i125.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i126, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.am = lshr exact i64 %indvars.iv.i.i126, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !40

.critedge.i.i.i.i:                                ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i = icmp eq i32 %i.ag, %i.ak
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i
  %i.aq = lshr i32 %i.ag, 6
  %i.ar = and i32 %i.ag, 63
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.as
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %.demorgan.i.i = or i64 %i.av, %notmask.i40.i.i.i.i
  %i.aw = icmp eq i64 %.demorgan.i.i, -1
  %i.ax = zext i1 %i.aw to i16
  %i.ay = or disjoint i16 %i.ax, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.p, %.critedge.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i ], [ %i.ay, %bb.p ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.aa, align 4
  %i.az = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.az, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !26  ; 3 uses
  %i.bb = load i32, ptr %i.u, align 8, !tbaa !27
  %.not.i = icmp slt i32 %i.ba, %i.bb
  br i1 %.not.i, label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel", label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel": ; preds = %bb.q
  %i.bc = add nsw i32 %2, -1                      ; 2 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.ba)
          to label %.noexc13.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

.noexc13.peel:                                    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.peel"
  %exitcond74.peel.not = icmp eq i32 %i.bc, 0
  br i1 %exitcond74.peel.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.r

bb.r:                                             ; preds = %.noexc13.peel
  %i.be = add nsw i32 %i.ba, 1                    ; 2 uses
  %i.bf = load i32, ptr %i.u, align 8, !tbaa !27
  %.not18.i.peel = icmp slt i32 %i.be, %i.bf
  br i1 %.not18.i.peel, label %.lr.ph.i.peel.next, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.s:                                             ; preds = %.noexc13
  %i.bg = add nuw nsw i32 %.8, 1
  %i.bh = add nsw i32 %.0516.i, 1                 ; 2 uses
  %i.bi = load i32, ptr %i.u, align 8, !tbaa !27
  %.not18.i = icmp slt i32 %i.bh, %i.bi
  br i1 %.not18.i, label %.lr.ph.i.peel.next, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", !llvm.loop !42

.lr.ph.i.peel.next:                               ; preds = %bb.r, %bb.s
  %.8 = phi i32 [ %i.bg, %bb.s ], [ 1, %bb.r ]    ; 2 uses
  %.0516.i = phi i32 [ %i.bh, %bb.s ], [ %i.be, %bb.r ] ; 2 uses
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i" unwind label %.loopexit.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i": ; preds = %.lr.ph.i.peel.next
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %.0516.i)
          to label %.noexc13 unwind label %.loopexit.loopexit ; 0 uses

.noexc13:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i"
  %exitcond74.not = icmp eq i32 %.8, %i.bc
  br i1 %exitcond74.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.s

bb.t:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bl = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.bm = load i32, ptr %i.q, align 4, !tbaa !26  ; 6 uses
  %i.bn = load i32, ptr %i.u, align 8, !tbaa !27  ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bm, %i.bn
  br i1 %.not.i.i.i.i, label %bb.u, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.bo = add i32 %i.bm, 63                       ; 2 uses
  %i.bp = srem i32 %i.bo, 64
  %i.bq = sub nsw i32 %i.bo, %i.bp                ; 6 uses
  %i.br = and i32 %i.bn, -64                      ; 7 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bt = ashr i32 %i.bn, 6
  %i.bu = and i32 %i.bn, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bv
  %i.bw = xor i64 %notmask.i.i.i.i.i, -1
  %i.bx = sub nsw i32 %i.bq, %i.bm                ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = and i64 %i.cc, %i.bw
  %i.ce = sext i32 %i.bt to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.ch = and i64 %i.cd, %i.cg                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel"

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel": ; preds = %bb.v
  %i.ci = add nsw i32 %2, -1                      ; 2 uses
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ch, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %i.br, %i.ck
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.cl)
          to label %.noexc15.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp ; 0 uses

.noexc15.peel:                                    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i.peel"
  %exitcond68.peel.not = icmp eq i32 %i.ci, 0
  br i1 %exitcond68.peel.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.w

bb.w:                                             ; preds = %.noexc15.peel
  %i.cn = add nuw i64 %i.ch, 9223372036854775807
  %i.co = and i64 %i.cn, %i.ch                    ; 2 uses
  %.not12.i.i.i.i.i.peel = icmp eq i64 %i.co, 0
  br i1 %.not12.i.i.i.i.i.peel, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i.i.i.i.i.peel.next

.preheader.i.i.i.i.i.peel.next:                   ; preds = %bb.w, %bb.x
  %.7 = phi i32 [ %i.cu, %bb.x ], [ 1, %bb.w ]    ; 2 uses
  %.013.i.i.i.i.i = phi i64 [ %i.cw, %bb.x ], [ %i.co, %bb.w ] ; 3 uses
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.loopexit ; 0 uses

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i": ; preds = %.preheader.i.i.i.i.i.peel.next
  %i.cq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i.i.i.i.i, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = or disjoint i32 %i.br, %i.cr
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.cs)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.loopexit ; 0 uses

.noexc15:                                         ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i.i.i.i.i"
  %exitcond68.not = icmp eq i32 %.7, %i.ci
  br i1 %exitcond68.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.x

bb.x:                                             ; preds = %.noexc15
  %i.cu = add nuw nsw i32 %.7, 1
  %i.cv = add nsw i64 %.013.i.i.i.i.i, -2
  %i.cw = and i64 %i.cv, %.013.i.i.i.i.i          ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not12.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %.preheader.i.i.i.i.i.peel.next, !llvm.loop !44

bb.y:                                             ; preds = %bb.u
  %.not36.i.i.i.i = icmp eq i32 %i.bm, %i.bq
  br i1 %.not36.i.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = sdiv i32 %i.bm, 64                      ; 2 uses
  %i.cy = sub nsw i32 %i.bq, %i.bm                ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %notmask.i.i39.i.i.i.i = shl nsw i64 -1, %i.cz
  %i.da = xor i64 %notmask.i.i39.i.i.i.i, -1
  %i.db = sub nsw i32 64, %i.cy
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl i64 %i.da, %i.dc
  %i.de = sext i32 %i.cx to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !16
  %i.dh = and i64 %i.dg, %i.dd                    ; 4 uses
  %.not.i40.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i40.i.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i", label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i.peel"

"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i.peel": ; preds = %bb.z
  %i.di = shl nsw i32 %i.cx, 6                    ; 2 uses
  %i.dj = add nsw i32 %2, -1                      ; 2 uses
  %i.dk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dh, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.dm)
          to label %.noexc17.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc17.peel:                                    ; preds = %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i.peel"
  %exitcond.peel.not = icmp eq i32 %i.dj, 0
  br i1 %exitcond.peel.not, label %"_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS1_8toStringB5cxx11EiE3$_0EEbT_.exit", label %bb.aa

bb.aa:                                            ; preds = %.noexc17.peel
  %i.do = add i64 %i.dh, -1
  %i.dp = and i64 %i.do, %i.dh                    ; 2 uses
  %.not12.i47.i.i.i.i.peel = icmp eq i64 %i.dp, 0
  br i1 %.not12.i47.i.i.i.i.peel, label %"_ZZN8facebook5velox4bits8testBitsIZNKS0_17SelectivityVector8toStringB5cxx11EiE3$_0EEbPKmiibT_ENKUlimE_clEim.exit48.thread.i.i.i.i", label %.peel.next

.peel.next:                                       ; preds = %bb.aa, %bb.ab
  %.0 = phi i32 [ %i.dv, %bb.ab ], [ 1, %bb.aa ]  ; 2 uses
  %.013.i44.i.i.i.i = phi i64 [ %i.dx, %bb.ab ], [ %i.dp, %bb.aa ] ; 3 uses
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %"_ZZNK8facebook5velox17SelectivityVector8toStringB5cxx11EiENK3$_0clIiEEDaT_.exit.i45.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector13countSelectedEv:bb.a
  %i.eo = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.ep = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.eq = load i64, ptr %i.dm, align 8, !tbaa !16
  %i.er = load i64, ptr %i.dp, align 8, !tbaa !16
  %i.es = insertelement <4 x i64> poison, i64 %i.eo, i64 0
  %i.et = insertelement <4 x i64> %i.es, i64 %i.ep, i64 1
  %i.eu = insertelement <4 x i64> %i.et, i64 %i.eq, i64 2
  %i.ev = insertelement <4 x i64> %i.eu, i64 %i.er, i64 3
  %i.ew = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dx)
  %i.ex = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ef)
  %i.ey = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.en)
  %i.ez = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ev)
  %i.fa = trunc nuw nsw <4 x i64> %i.ew to <4 x i32>
  %i.fb = trunc nuw nsw <4 x i64> %i.ex to <4 x i32>
  %i.fc = trunc nuw nsw <4 x i64> %i.ey to <4 x i32>
  %i.fd = trunc nuw nsw <4 x i64> %i.ez to <4 x i32>
  %i.fe = add <4 x i32> %vec.phi, %i.fa           ; 2 uses
  %i.ff = add <4 x i32> %vec.phi10, %i.fb         ; 2 uses
  %i.fg = add <4 x i32> %vec.phi11, %i.fc         ; 2 uses
  %i.fh = add <4 x i32> %vec.phi12, %i.fd         ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fi = icmp eq i32 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ff, %i.fe
  %bin.rdx13 = add <4 x i32> %i.fg, %bin.rdx
  %bin.rdx14 = add <4 x i32> %i.fh, %bin.rdx13
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx14) ; 3 uses
  %cmp.n = icmp eq i32 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.fj, %vec.epilog.iter.check ], [ %.0.i, %vector.main.loop.iter.check ]
  %n.vec17 = and i32 %i.bc, 134217724             ; 3 uses
  %i.fk = shl i32 %n.vec17, 6                     ; 2 uses
  %i.fl = add i32 %i.au, %i.fk
  %i.fm = add i32 %i.p, %i.fk
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi19 = phi <4 x i32> [ %i.fn, %vec.epilog.ph ], [ %i.gp, %vec.epilog.vector.body ]
  %i.fo = shl i32 %index18, 6
  %i.fp = add i32 %i.p, %i.fo                     ; 4 uses
  %i.fq = add i32 %i.fp, 64
  %i.fr = add i32 %i.fp, 128
  %i.fs = add i32 %i.fp, 192
  %i.ft = sdiv i32 %i.fp, 64
  %i.fu = sdiv i32 %i.fq, 64
  %i.fv = sdiv i32 %i.fr, 64
  %i.fw = sdiv i32 %i.fs, 64
  %i.fx = sext i32 %i.ft to i64
  %i.fy = sext i32 %i.fu to i64
  %i.fz = sext i32 %i.fv to i64
  %i.ga = sext i32 %i.fw to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fx
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fy
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fz
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ga
  %i.gf = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.gh = load i64, ptr %i.gd, align 8, !tbaa !16
  %i.gi = load i64, ptr %i.ge, align 8, !tbaa !16
  %i.gj = insertelement <4 x i64> poison, i64 %i.gf, i64 0
  %i.gk = insertelement <4 x i64> %i.gj, i64 %i.gg, i64 1
  %i.gl = insertelement <4 x i64> %i.gk, i64 %i.gh, i64 2
  %i.gm = insertelement <4 x i64> %i.gl, i64 %i.gi, i64 3
  %i.gn = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.gm)
  %i.go = trunc nuw nsw <4 x i64> %i.gn to <4 x i32>
  %i.gp = add <4 x i32> %vec.phi19, %i.go         ; 2 uses
  %index.next20 = add nuw i32 %index18, 4         ; 2 uses
  %i.gq = icmp eq i32 %index.next20, %n.vec17
  br i1 %i.gq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gp) ; 2 uses
  %cmp.n21 = icmp eq i32 %i.bc, %n.vec17
  br i1 %cmp.n21, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %.0.i, %iter.check ], [ %i.fj, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  %.ph25 = phi i32 [ %i.au, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  %.043.i.i.ph = phi i32 [ %i.p, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.1.i = phi i32 [ %.0.i, %bb.h ], [ %i.gr, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %i.ha, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.m, %i.q
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.gs = phi i32 [ %i.ha, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.gt = phi i32 [ %i.hb, %.lr.ph.i.i ], [ %.ph25, %.lr.ph.i.i.preheader ] ; 2 uses
  %.043.i.i = phi i32 [ %i.gt, %.lr.ph.i.i ], [ %.043.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.gu = sdiv i32 %.043.i.i, 64
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gy = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gx)
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = add nsw i32 %i.gs, %i.gz                ; 2 uses
  %i.hb = add nsw i32 %i.gt, 64                   ; 2 uses
  %.not33.i.i = icmp sgt i32 %i.hb, %i.q
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !72

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.hc = ashr i32 %i.m, 6
  %i.hd = and i32 %i.m, 63
  %i.he = zext nneg i32 %i.hd to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.he
  %i.hf = xor i64 %notmask.i36.i.i, -1
  %i.hg = sext i32 %i.hc to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !16
  %i.hj = and i64 %i.hi, %i.hf
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.e
  %.2.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.i ]
  %.sink50.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.hj, %bb.i ]
  %i.hk = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %.sink50.i.i)
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = add nsw i32 %.2.i, %i.hl
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.hm, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !18
  %i.hp = icmp eq i32 %.3.i, %i.ho
  %.sroa.0.0.insert.ext = zext i1 %i.hp to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %.3.i, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox17SelectivityVector9copyNullsEPmPKm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i26.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i26.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i27, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i27, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !40

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %2, i64 noundef 0, ptr noundef %1, i64 noundef 0, i64 noundef %i.af)
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27 ; 7 uses
  %.not.i = icmp slt i32 %i.ai, %i.ak
  br i1 %.not.i, label %bb.j, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %i.ai, 63                       ; 2 uses
  %i.am = srem i32 %i.al, 64
  %i.an = sub nsw i32 %i.al, %i.am                ; 6 uses
  %i.ao = and i32 %i.ak, -64                      ; 4 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = ashr i32 %i.ak, 6
  %i.ar = and i32 %i.ak, 63
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i, -1
  %i.au = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i.i, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = and i64 %i.az, %i.at                    ; 3 uses
  %i.bb = sext i32 %i.aq to i64                   ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16 ; 2 uses
  %i.be = xor i64 %i.ba, -1                       ; 2 uses
  %i.bf = and i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = xor i64 %i.bh, -1
  %i.bj = and i64 %i.bd, %i.bi                    ; 2 uses
  %i.bk = and i64 %i.bj, %i.ba
  %i.bl = or disjoint i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !16
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bp = or i64 %i.bo, %i.be
  %i.bq = and i64 %i.bp, %i.bn
  %i.br = or i64 %i.bq, %i.bj
  %i.bs = and i64 %i.br, %i.ba
  %i.bt = or disjoint i64 %i.bs, %i.bf
  store i64 %i.bt, ptr %i.bc, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

bb.l:                                             ; preds = %bb.j
  %.not32.i = icmp eq i32 %i.ai, %i.an
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = sdiv i32 %i.ai, 64
  %i.bv = sub nsw i32 %i.an, %i.ai                ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.i35.i, -1
  %i.by = sub nsw i32 64, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = sext i32 %i.bu to i64                   ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = xor i64 %i.ca, -1                       ; 2 uses
  %i.cf = and i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cb ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.ci = xor i64 %i.ch, -1
  %i.cj = and i64 %i.cd, %i.ci                    ; 2 uses
  %i.ck = and i64 %i.cj, %i.ca
  %i.cl = or disjoint i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !16
  %i.cm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cb
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cp = or i64 %i.co, %i.ce
  %i.cq = and i64 %i.cp, %i.cn
  %i.cr = or i64 %i.cq, %i.cj
  %i.cs = and i64 %i.cr, %i.ca
  %i.ct = or disjoint i64 %i.cs, %i.cf
  store i64 %i.ct, ptr %i.cc, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = add nsw i32 %i.an, 64                   ; 2 uses
  %.not3337.i = icmp sgt i32 %i.cu, %i.ao
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.not34.i = icmp eq i32 %i.ak, %i.ao
  br i1 %.not34.i, label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit", label %bb.o

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.cv = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.cu, %bb.n ] ; 2 uses
  %.038.i = phi i32 [ %i.cv, %.lr.ph.i ], [ %i.an, %bb.n ]
  %i.cw = sdiv i32 %.038.i, 64
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cx ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dc = xor i64 %i.db, -1
  %i.dd = and i64 %i.cz, %i.dc                    ; 2 uses
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !16
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx
  %i.df = load i64, ptr %i.de, align 8, !tbaa !16
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dh = and i64 %i.dg, %i.df
  %i.di = or i64 %i.dh, %i.dd
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !16
  %i.dj = add nsw i32 %i.cv, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.dj, %i.ao
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

bb.o:                                             ; preds = %._crit_edge.i
  %i.dk = ashr i32 %i.ak, 6
  %i.dl = and i32 %i.ak, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i36.i = shl nsw i64 -1, %i.dm          ; 3 uses
  %i.dn = xor i64 %notmask.i36.i, -1              ; 2 uses
  %i.do = sext i32 %i.dk to i64                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.do ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !16 ; 2 uses
  %i.dr = and i64 %i.dq, %notmask.i36.i           ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.do ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.du = xor i64 %i.dt, -1
  %i.dv = and i64 %i.dq, %i.du                    ; 2 uses
  %i.dw = and i64 %i.dv, %i.dn
  %i.dx = or disjoint i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !16
  %i.dy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.eb = or i64 %i.ea, %notmask.i36.i
  %i.ec = and i64 %i.eb, %i.dz
  %i.ed = or i64 %i.ec, %i.dv
  %i.ee = and i64 %i.ed, %i.dn
  %i.ef = or disjoint i64 %i.ee, %i.dr
  store i64 %i.ef, ptr %i.dp, align 8, !tbaa !16
  br label %"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit"

"_ZN8facebook5velox4bits11forEachWordIZNKS0_17SelectivityVector9copyNullsEPmPKmE3$_0ZNKS3_9copyNullsES4_S6_E3$_1EEviiT_T0_.exit": ; preds = %bb.o, %._crit_edge.i, %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat {
bb.a:
  %.not64 = icmp ult i64 %4, 64
  br i1 %.not64, label %._crit_edge, label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits8copyBitsEPKmmPmmm:bb.a
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %i.cj, %_ZN8facebook5velox4bits6detail8loadBitsIjEET_PKmmh.exit ], [ %i.cj, %bb.d ] ; 4 uses
  %i.dy = add nuw i64 %.1, 16                     ; 3 uses
  %.not48 = icmp ugt i64 %i.dy, %4
  br i1 %.not48, label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit
  %i.dz = add i64 %.1, %1                         ; 2 uses
  %i.ea = ptrtoint ptr %0 to i64
  %i.eb = lshr i64 %i.dz, 3
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !75 ; 2 uses
  %i.ef = and i64 %i.dz, 7                        ; 2 uses
  %.not.i52 = icmp eq i64 %i.ef, 0
  br i1 %.not.i52, label %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !32
  %i.ei = trunc nuw nsw i64 %i.ef to i16
  %i.ej = zext i8 %i.eh to i16
  %i.ek = tail call i16 @llvm.fshr.i16(i16 %i.ej, i16 %i.ee, i16 %i.ei)
  br label %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit: ; preds = %bb.e, %bb.f
  %.0.i53 = phi i16 [ %i.ee, %bb.e ], [ %i.ek, %bb.f ]
  %i.el = add i64 %.1, %3                         ; 2 uses
  %i.em = zext i16 %.0.i53 to i64                 ; 2 uses
  %i.en = ptrtoint ptr %2 to i64
  %i.eo = lshr i64 %i.el, 3
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %i.er = and i64 %i.el, 7                        ; 5 uses
  %i.es = shl nuw nsw i64 65535, %i.er
  %i.et = load i16, ptr %i.eq, align 2, !tbaa !75
  %i.eu = zext i16 %i.et to i64
  %i.ev = xor i64 %i.es, -1
  %i.ew = and i64 %i.eu, %i.ev
  %i.ex = shl nuw nsw i64 %i.em, %i.er
  %i.ey = or i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i16
  store i16 %i.ez, ptr %i.eq, align 2, !tbaa !75
  %.not63 = icmp eq i64 %i.er, 0
  br i1 %.not63, label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.fb = trunc nuw nsw i64 %i.er to i32
  %notmask23.i54 = shl nsw i32 -1, %i.fb
  %i.fc = load i8, ptr %i.fa, align 2, !tbaa !32
  %i.fd = zext i8 %i.fc to i64
  %i.fe = xor i32 %notmask23.i54, 255
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = xor i64 %i.ff, -1
  %i.fh = and i64 %i.fd, %i.fg
  %i.fi = sub nuw nsw i64 16, %i.er
  %i.fj = lshr i64 %i.em, %i.fi
  %i.fk = and i64 %i.fj, %i.ff
  %i.fl = or i64 %i.fh, %i.fk
  %i.fm = trunc nuw i64 %i.fl to i8
  store i8 %i.fm, ptr %i.fa, align 2, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit: ; preds = %bb.g, %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit, %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit
  %.2 = phi i64 [ %.1, %_ZN8facebook5velox4bits6detail9storeBitsIjEEvPmmmh.exit ], [ %i.dy, %_ZN8facebook5velox4bits6detail8loadBitsItEET_PKmmh.exit ], [ %i.dy, %bb.g ] ; 4 uses
  %i.fn = icmp ult i64 %.2, %4
  br i1 %i.fn, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit
  %i.fo = ptrtoint ptr %0 to i64
  %i.fp = ptrtoint ptr %2 to i64
  %i.fq = add i64 %.2, %1
  %i.fr = and i64 %i.fq, 7                        ; 3 uses
  %i.fs = add i64 %.2, %3
  %i.ft = and i64 %i.fs, 7                        ; 4 uses
  %.not.i55 = icmp eq i64 %i.fr, 0
  %invariant.op = sub nuw nsw i64 9, %i.fr
  %i.fu = trunc nuw nsw i64 %i.fr to i8
  %i.fv = sub nuw nsw i64 8, %i.ft
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph74, %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit
  %.373 = phi i64 [ %.2, %.lr.ph74 ], [ %i.hn, %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit ] ; 4 uses
  %i.fw = sub nuw i64 %4, %.373
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 8) ; 3 uses
  %i.fx = add i64 %.373, %1                       ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add i64 %i.fy, %i.fo
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !32  ; 3 uses
  br i1 %.not.i55, label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gc = icmp samesign ult i64 %.sroa.speculated, %invariant.op
  br i1 %i.gc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gd = lshr i8 %i.gb, %i.fu
  br label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit

bb.k:                                             ; preds = %bb.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !32
  %i.gg = trunc i64 %i.fx to i8
  %i.gh = tail call i8 @llvm.fshr.i8(i8 %i.gf, i8 %i.gb, i8 %i.gg)
  br label %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i56 = phi i8 [ %i.gd, %bb.j ], [ %i.gh, %bb.k ], [ %i.gb, %bb.h ]
  %i.gi = add i64 %.373, %3
  %i.gj = zext i8 %.0.i56 to i64                  ; 2 uses
  %i.gk = lshr i64 %i.gi, 3
  %i.gl = add i64 %i.gk, %i.fp
  %i.gm = inttoptr i64 %i.gl to ptr               ; 3 uses
  %notmask.i = shl nsw i64 -1, %.sroa.speculated
  %i.gn = xor i64 %notmask.i, -1                  ; 2 uses
  %i.go = shl nuw nsw i64 %i.gn, %i.ft
  %i.gp = load i8, ptr %i.gm, align 1, !tbaa !32
  %i.gq = zext i8 %i.gp to i64
  %i.gr = xor i64 %i.go, -1
  %i.gs = and i64 %i.gq, %i.gr
  %i.gt = and i64 %i.gj, %i.gn
  %i.gu = shl nuw nsw i64 %i.gt, %i.ft
  %i.gv = or i64 %i.gs, %i.gu
  %i.gw = trunc i64 %i.gv to i8
  store i8 %i.gw, ptr %i.gm, align 1, !tbaa !32
  %i.gx = add nuw nsw i64 %i.ft, %.sroa.speculated ; 2 uses
  %i.gy = icmp samesign ugt i64 %i.gx, 8
  br i1 %i.gy, label %bb.l, label %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit

bb.l:                                             ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %i.ha = trunc nuw nsw i64 %i.gx to i32
  %i.hb = add nuw nsw i32 %i.ha, 248
  %i.hc = and i32 %i.hb, 255
  %notmask23.i57 = shl nsw i32 -1, %i.hc
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !32
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i32 %notmask23.i57, 255
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = xor i64 %i.hg, -1
  %i.hi = and i64 %i.he, %i.hh
  %i.hj = lshr i64 %i.gj, %i.fv
  %i.hk = and i64 %i.hj, %i.hg
  %i.hl = or i64 %i.hi, %i.hk
  %i.hm = trunc nuw i64 %i.hl to i8
  store i8 %i.hm, ptr %i.gz, align 1, !tbaa !32
  br label %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit

_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit: ; preds = %_ZN8facebook5velox4bits6detail8loadBitsIhEET_PKmmh.exit, %bb.l
  %i.hn = add i64 %.373, 8                        ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %4
  br i1 %i.ho, label %bb.h, label %._crit_edge75, !llvm.loop !77

._crit_edge75:                                    ; preds = %_ZN8facebook5velox4bits6detail9storeBitsIhEEvPmmmh.exit, %_ZN8facebook5velox4bits6detail9storeBitsItEEvPmmmh.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.anon.14, align 8             ; 6 uses
  %5 = alloca %class.anon.15, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.b, align 4, !tbaa !39, !range !37
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.j, 2147483584                 ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %.not37.i.i.not.i.i63.not = icmp eq i32 %i.o, 0
  br i1 %.not37.i.i.not.i.i63.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i64, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.p
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i64 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.q = lshr exact i64 %indvars.iv.i.i64, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !40

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.j, %i.o
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.u = lshr i32 %i.j, 6
  %i.v = and i32 %i.j, 63
  %i.w = zext nneg i32 %i.v to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.w
  %i.x = zext nneg i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %.demorgan.i.i = or i64 %i.z, %notmask.i40.i.i.i.i
  %i.aa = icmp eq i64 %.demorgan.i.i, -1
  %i.ab = zext i1 %i.aa to i16
  %i.ac = or disjoint i16 %i.ab, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ac, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.b, align 4
  %i.ad = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ad, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 4 uses
  %i.ak = sext i32 %i.ah to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.af to i64      ; 4 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader", label %.lr.ph.i.split

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader": ; preds = %.lr.ph.i
  %i.al = sub nsw i64 %wide.trip.count.i, %i.ak
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader"
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !8
  %i.ap = sext i32 %i.an to i64
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = trunc i32 %i.an to i8
  %i.au = and i8 %i.at, 7
  %i.av = shl nuw i8 1, %i.au
  %i.aw = or i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.ar, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %indvars.iv.next.i.us.prol = add nsw i64 %i.ak, 1
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader"
  %indvars.iv.i.us.unr = phi i64 [ %i.ak, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.preheader" ], [ %indvars.iv.next.i.us.prol, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol" ]
  %i.ax = add nsw i64 %wide.trip.count.i, -1
  %i.ay = icmp eq i64 %i.ax, %i.ak
  br i1 %i.ay, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us"
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us" ], [ %indvars.iv.i.us.unr, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit" ] ; 3 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !8
  %i.bc = sext i32 %i.ba to i64
  %i.bd = lshr i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = trunc i32 %i.ba to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bi, %i.bf
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %i.bk = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i.us
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !8
  %i.bo = sext i32 %i.bm to i64
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.bs = trunc i32 %i.bm to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = shl nuw i8 1, %i.bt
  %i.bv = or i8 %i.bu, %i.br
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  %indvars.iv.next.i.us.1 = add nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i.us.1, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us", !llvm.loop !78

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i"
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i" ], [ %i.ak, %.lr.ph.i ] ; 4 uses
  %i.bw = lshr i64 %indvars.iv.i, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = and i64 %indvars.iv.i, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb
  %.not.i.i4.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i4.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.split
  %i.cd = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3  ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !8
  %i.cg = sext i32 %i.ce to i64
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32
  %i.ck = trunc i32 %i.ce to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = shl nuw i8 1, %i.cl
  %i.cn = or i8 %i.cm, %i.cj
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !32
  store i8 0, ptr %i.aj, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i": ; preds = %bb.i, %.lr.ph.i.split
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.lr.ph.i.split, !llvm.loop !78

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.co = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !26 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !27 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.cq, %i.cs
  br i1 %.not.i.i.i.i, label %bb.k, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"

bb.k:                                             ; preds = %bb.j
  %i.ct = add i32 %i.cq, 63                       ; 2 uses
  %i.cu = srem i32 %i.ct, 64
  %i.cv = sub nsw i32 %i.ct, %i.cu                ; 6 uses
  %i.cw = and i32 %i.cs, -64                      ; 6 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cy = ashr i32 %i.cs, 6
  %i.cz = and i32 %i.cs, 63
  %i.da = zext nneg i32 %i.cz to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.da
  %i.db = xor i64 %notmask.i.i.i.i.i, -1
  %i.dc = sub nsw i32 %i.cv, %i.cq                ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.df = sub nsw i32 64, %i.dc
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %i.de, %i.dg
  %i.di = and i64 %i.dh, %i.db
  %i.dj = sext i32 %i.cy to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.dm = and i64 %i.di, %i.dl                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i.i.i.i.i = icmp eq ptr %2, null
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.dm, %.preheader.i.i.i.i.i ], [ %i.el, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = or disjoint i32 %i.cw, %i.dp            ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !16
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_:bb.a
  %i.ga = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !16 ; 2 uses
  switch i64 %i.gd, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.v
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ge = shl nsw i32 %i.ga, 6
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gf = shl nsw i32 %i.ga, 6                    ; 2 uses
  %i.gg = add i32 %i.gf, 64
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.v
  %i.gi = sext i32 %i.gf to i64                   ; 2 uses
  br i1 %.not.i.i44.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", label %.lr.ph24.i.i.i.i.i.split

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us": ; preds = %.lr.ph24.i.i.i.i.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us"
  %.023.i.i.i.i.i.us = phi i64 [ %i.gv, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us" ], [ %i.gi, %.lr.ph24.i.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i.us = shl i64 %.023.i.i.i.i.i.us, 32
  %i.gj = ashr exact i64 %sext.i.i.i.i.i.us, 30
  %i.gk = getelementptr inbounds i8, ptr %1, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3  ; 2 uses
  %i.gm = load ptr, ptr %3, align 8, !tbaa !8
  %i.gn = sext i32 %i.gl to i64
  %i.go = lshr i64 %i.gn, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = trunc i32 %i.gl to i8
  %i.gs = and i8 %i.gr, 7
  %i.gt = shl nuw i8 1, %i.gs
  %i.gu = or i8 %i.gt, %i.gq
  store i8 %i.gu, ptr %i.gp, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  %i.gv = add nuw i64 %.023.i.i.i.i.i.us, 1       ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gh
  br i1 %i.gw, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !80

.lr.ph24.i.i.i.i.i.split:                         ; preds = %.lr.ph24.i.i.i.i.i, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i"
  %.023.i.i.i.i.i = phi i64 [ %i.hq, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i" ], [ %i.gi, %.lr.ph24.i.i.i.i.i ] ; 4 uses
  %i.gx = lshr i64 %.023.i.i.i.i.i, 6
  %i.gy = and i64 %i.gx, 67108863
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !16
  %i.hb = and i64 %.023.i.i.i.i.i, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = and i64 %i.ha, %i.hc
  %.not.i.i.i45.i.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i45.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph24.i.i.i.i.i.split
  %sext.i.i.i.i.i = shl i64 %.023.i.i.i.i.i, 32
  %i.he = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.hf = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3  ; 2 uses
  %i.hh = load ptr, ptr %3, align 8, !tbaa !8
  %i.hi = sext i32 %i.hg to i64
  %i.hj = lshr i64 %i.hi, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !32
  %i.hm = trunc i32 %i.hg to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = shl nuw i8 1, %i.hn
  %i.hp = or i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i": ; preds = %bb.w, %.lr.ph24.i.i.i.i.i.split
  %i.hq = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.gh
  br i1 %i.hr, label %.lr.ph24.i.i.i.i.i.split, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !80

bb.x:                                             ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i ], [ %i.ip, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.ge, %i.ht            ; 2 uses
  br i1 %.not.i.i44.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 6
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !16
  %i.hz = and i64 %i.hv, 63
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.hy, %i.ia
  %.not.i.i18.i.i.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i18.i.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3  ; 2 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !8
  %i.ig = sext i32 %i.ie to i64
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !32
  %i.ik = trunc i32 %i.ie to i8
  %i.il = and i8 %i.ik, 7
  %i.im = shl nuw i8 1, %i.il
  %i.in = or i8 %i.im, %i.ij
  store i8 %i.in, ptr %i.ii, align 1, !tbaa !32
  store i8 0, ptr %i.fy, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i": ; preds = %bb.z, %bb.y
  %i.io = add i64 %.01522.i.i.i.i.i, -1
  %i.ip = and i64 %i.io, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.x, !llvm.loop !81

"_ZZN8facebook5velox4bits10forEachBitIZNS0_20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS3_E3$_0EEvS9_iibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i46.i.i.i.i.us", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit19.i.i.i.i.i", %bb.v, %bb.u
  %i.iq = add nsw i32 %i.fz, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.iq, %i.cw
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.u, !llvm.loop !82

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ir = ashr i32 %i.cs, 6
  %i.is = and i32 %i.cs, 63
  %i.it = zext nneg i32 %i.is to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.it
  %i.iu = xor i64 %notmask.i48.i.i.i.i, -1
  %i.iv = sext i32 %i.ir to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !16
  %i.iy = and i64 %i.ix, %i.iu                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.aa
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 37
  %.not.i.i52.i.i.i.i = icmp eq ptr %2, null
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.iy, %.preheader.i50.i.i.i.i ], [ %i.jx, %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = or disjoint i32 %i.cw, %i.jb            ; 2 uses
  br i1 %.not.i.i52.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = lshr i64 %i.jd, 6
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !16
  %i.jh = and i64 %i.jd, 63
  %i.ji = shl nuw i64 1, %i.jh
  %i.jj = and i64 %i.jg, %i.ji
  %.not.i.i.i53.i.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i.i53.i.i.i.i, label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jk = sext i32 %i.jc to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3  ; 2 uses
  %i.jn = load ptr, ptr %3, align 8, !tbaa !8
  %i.jo = sext i32 %i.jm to i64
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !32
  %i.js = trunc i32 %i.jm to i8
  %i.jt = and i8 %i.js, 7
  %i.ju = shl nuw i8 1, %i.jt
  %i.jv = or i8 %i.ju, %i.jr
  store i8 %i.jv, ptr %i.jq, align 1, !tbaa !32
  store i8 0, ptr %i.iz, align 1, !tbaa !13
  br label %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i"

"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.jw = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.jx = and i64 %i.jw, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit", label %bb.ab, !llvm.loop !79

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit": ; preds = %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i54.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us.prol.loopexit", %"_ZZN8facebook5velox20translateToInnerRowsERKNS0_17SelectivityVectorEPKiPKmRS1_ENK3$_0clEi.exit.i.us", %bb.h, %bb.j, %bb.l, %._crit_edge.i.i.i.i, %bb.aa
  %i.jy = load ptr, ptr %3, align 8, !tbaa !8     ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !18 ; 6 uses
  %.not.i.i.i3 = icmp sgt i32 %i.ka, 0
  br i1 %.not.i.i.i3, label %bb.ae, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.ae:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.kb = and i32 %i.ka, 2147483584               ; 4 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %.not37.i.i.not.i65.not = icmp eq i32 %i.kb, 0
  br i1 %.not37.i.i.not.i65.not, label %.critedge.i.i.i, label %.lr.ph67

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph67
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i466, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i5, %i.kc
  br i1 %.not37.i.i.not.i, label %.lr.ph67, label %.critedge.i.i.i, !llvm.loop !83

.lr.ph67:                                         ; preds = %bb.ae, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i466 = phi i64 [ %indvars.iv.next.i5, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.ae ] ; 3 uses
  %i.kd = lshr exact i64 %indvars.iv.i466, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !16 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !83

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.ae
  %.not38.i.i.i = icmp eq i32 %i.ka, %i.kb
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i
  %i.kg = lshr i32 %i.ka, 6
  %i.kh = and i32 %i.ka, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.ki
  %i.kj = xor i64 %notmask.i43.i.i.i, -1
  %i.kk = zext nneg i32 %i.kg to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !16
  %i.kn = and i64 %i.km, %i.kj                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.af, %.critedge.i.i.i, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_20translateToInnerRowsERKS1_PKiPKmRS1_E3$_0EEvT_.exit"
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ko, align 4, !tbaa !26
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.kp, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i16 256, ptr %i.kq, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph67
  %i.kr = trunc nuw nsw i64 %indvars.iv.i466 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.af
  %.sink67.i.i.i = phi i64 [ %i.kn, %bb.af ], [ %i.kf, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.kb, %bb.af ], [ %i.kr, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = or disjoint i32 %.sink65.i.i.i, %i.kt   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.jy, ptr %4, align 8, !tbaa !84
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.kw, align 8, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.kx, align 8, !tbaa !88
  store ptr %i.jy, ptr %5, align 8, !tbaa !89
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.ky, align 8, !tbaa !87
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.kz, align 8, !tbaa !91
  %i.la = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ku, i32 noundef %i.ka, ptr noundef nonnull byval(%class.anon.14) align 8 %4, ptr noundef nonnull byval(%class.anon.15) align 8 %5) ; 0 uses
  %i.lb = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.lc = add nsw i32 %i.lb, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.le, align 1, !tbaa !13
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !16     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !93

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !16
  store i64 %i.s, ptr %i.d, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !92
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !93

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !16
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, 4611686018427387888  ; 4 uses
  %i.ah = shl i64 %n.vec158, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i64> %broadcast.splatinsert159, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 3
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 32
  %i.al = getelementptr i8, ptr %next.gep163, i64 64
  %i.am = getelementptr i8, ptr %next.gep163, i64 96
  store <4 x i64> %broadcast.splat160, ptr %next.gep163, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.ak, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.al, align 8, !tbaa !16
  store <4 x i64> %broadcast.splat160, ptr %i.am, align 8, !tbaa !16
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.an, label %middle.block165, label %vector.body161, !llvm.loop !94

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !70
end_hunk_3
