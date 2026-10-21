Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/vector_selection_internal?download=true
inline.NumInlined: 7390
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.kn = and i8 %i.ki, %i.km
  store i8 %i.kn, ptr %i.kh, align 1, !tbaa !96, !noalias !902
  %i.ko = load <2 x i64>, ptr %i.ke, align 8, !tbaa !151, !noalias !902
  %i.kp = add nsw <2 x i64> %i.ko, splat (i64 1)
  store <2 x i64> %i.kp, ptr %i.ke, align 8, !tbaa !151, !noalias !902
  %i.kq = load ptr, ptr %i.cf, align 8, !tbaa !320, !noalias !902, !nonnull !118, !align !181 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !tbaa !309, !noalias !902 ; 4 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !321, !noalias !902
  %.val1.val.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i, align 8, !tbaa !151, !noalias !902
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 144
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !179, !noalias !903
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 160 ; 3 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !210, !noalias !903
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %i.kv
  store i64 %.val1.val.i.i.i.i.i.i, ptr %i.kw, align 1, !noalias !903
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !210, !noalias !903
  %i.ky = add nsw i64 %i.kx, 8
  store i64 %i.ky, ptr %i.ku, align 8, !tbaa !210, !noalias !903
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 200
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !179, !noalias !903
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 216 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !210, !noalias !903
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %i.lc
  store i64 0, ptr %i.ld, align 1, !noalias !903
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !210, !noalias !903
  %i.lf = add nsw i64 %i.le, 8
  store i64 %i.lf, ptr %i.lb, align 8, !tbaa !210, !noalias !903
  store ptr null, ptr %16, align 8, !tbaa !106, !alias.scope !898, !noalias !893
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %bb.aj
  %i.lg = add nsw i64 %.8242.i.i.i.i.i, 1         ; 2 uses
  %i.lh = add nuw nsw i64 %.096243.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !884

.critedge144.i.loopexit1.i.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !106, !alias.scope !898, !noalias !893
  br label %.critedge144.i.i.i.i.i

.critedge144.i.i.i.i.i:                           ; preds = %bb.ak, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, %.critedge144.i.loopexit1.i.i.i.i, %.preheader231.i.i.i.i.i, %.preheader234.i.i.i.i.i, %.preheader226.i.i.i.i.i, %.preheader228.i.i.i.i.i, %.noexc12.i, %.preheader.i.i.i.i.i, %bb.ab
  %.11.i.i.i.i.i = phi i64 [ %i.ev, %bb.ab ], [ %i.gd, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ %i.ii, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ %i.iu, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %i.jl, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %i.gh, %.critedge144.i.loopexit1.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ], [ %i.lg, %bb.ak ] ; 2 uses
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !310, !noalias !897, !nonnull !118, !align !181
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !125, !noalias !897
  %i.ll = icmp slt i64 %.11.i.i.i.i.i, %i.lk
  br i1 %i.ll, label %bb.r, label %.critedge158.i.i.i.i.i, !llvm.loop !885

.critedge158.i.i.i.i.i:                           ; preds = %.critedge144.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, %.noexc9.i
  %i.lm = phi ptr [ %i.jj, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i ], [ %i.jz, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i ], [ %i.gf, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i ], [ null, %.noexc9.i ], [ %i.is, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i ], [ null, %.critedge144.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !897
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.p, %bb.o, %.body.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !897
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %.critedge158.i.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.ln = phi ptr [ %.pre.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i ], [ %i.lm, %.critedge158.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !897
  store ptr %i.ln, ptr %21, align 8, !tbaa !106, !alias.scope !892, !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !893
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZN5arrow6StatusD2Ev.exit8.i.i.i, label %bb.al

_ZN5arrow6StatusD2Ev.exit8.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  store ptr null, ptr %21, align 8, !tbaa !106, !alias.scope !904, !noalias !891
  br label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit8.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !893
  store ptr null, ptr %0, align 8, !tbaa !106, !alias.scope !891
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.am

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %bb.al
  %i.lp = load ptr, ptr %0, align 8, !tbaa !106, !alias.scope !891
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN5arrow6StatusD2Ev.exit38.i.i, label %.critedge.i.i

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %bb.al
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit38.i.i:                  ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !891
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %_ZN5arrow6StatusD2Ev.exit40.i.i unwind label %bb.an

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.ls = load ptr, ptr %22, align 8, !tbaa !106, !noalias !891 ; 2 uses
  store ptr %i.ls, ptr %0, align 8, !tbaa !106, !alias.scope !891
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !891
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %_ZN5arrow6StatusD2Ev.exit44.i.i, label %.critedge.i.i

bb.an:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !891
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit44.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i
  %i.lv = load ptr, ptr %23, align 8, !tbaa !77, !noalias !891
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.critedge.i.i unwind label %bb.am

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.ly = load ptr, ptr %21, align 8, !tbaa !106, !noalias !891 ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i45.i.i, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ao, !prof !107

bb.ao:                                            ; preds = %.critedge.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !116, !range !117, !noundef !118
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit46.i.i

_ZN5arrow6StatusD2Ev.exit46.i.i:                  ; preds = %bb.ap, %bb.ao, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !891
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.pn22.i.i = phi { ptr, i32 } [ %i.lr, %bb.am ], [ %i.lu, %bb.an ]
  %i.mc = load ptr, ptr %21, align 8, !tbaa !106, !noalias !891 ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i47.i.i, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.ar, !prof !107

bb.ar:                                            ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !116, !range !117, !noundef !118
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit48.i.i

_ZN5arrow6StatusD2Ev.exit48.i.i:                  ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !891
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %.noexc10.i, %bb.r, %.noexc8.i, %bb.q, %_ZN5arrow6StatusD2Ev.exit32.i.i, %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5arrow6StatusD2Ev.exit48.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn22.i.i, %_ZN5arrow6StatusD2Ev.exit48.i.i ], [ %.pn137.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !888
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %bb.d, %.noexc7.i, %_ZN5arrow6StatusD2Ev.exit46.i.i
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !888
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::internal::OptionalBitIndexer", align 8 ; 6 uses
  %6 = alloca %class.anon.248, align 8            ; 7 uses
  %7 = alloca %class.anon.249, align 8            ; 8 uses
  %8 = alloca %class.anon.250, align 8            ; 11 uses
  %9 = alloca %"class.std::function.63", align 8  ; 12 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %12 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 10 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::FixedSizeListArray", align 8 ; 11 uses
  %18 = alloca %"class.std::shared_ptr.113", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %20 = alloca %class.anon.246, align 8           ; 8 uses
  %21 = alloca %class.anon.247, align 8           ; 6 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 22 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %26 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::FSLSelectionImpl", align 8 ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN5arrow4util16IsFixedWidthLikeERKNS_9ArraySpanEbb(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.g = tail call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.f)
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  br label %bb.cc

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !947
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161, !noalias !947
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !166, !noalias !947
  %i.o = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.j, i32 noundef %i.n), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25, !noalias !947
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !947
  call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImplC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE(ptr noundef nonnull align 8 dereferenceable(336) %26, ptr noundef %1, ptr %.val.i, i64 noundef %i.o, ptr noundef readonly %3), !noalias !947
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.p = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !323, !noalias !949
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !177, !noalias !950 ; 2 uses
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = shl nsw i64 %i.t, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !178, !noalias !951 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !951
  %i.y = ashr i64 %.sroa.speculated.i.i.i.i, 3
  %i.z = and i64 %.sroa.speculated.i.i.i.i, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i64
  %i.ac = add nsw i64 %i.y, %i.ab
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %22, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 noundef %i.ac, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.cb, !noalias !947

.noexc.i:                                         ; preds = %.critedge
  %i.ad = load ptr, ptr %22, align 8, !tbaa !106, !noalias !951 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !951
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i, label %bb.e

_ZN5arrow6StatusD2Ev.exit17.i.i.i.i:              ; preds = %.noexc.i
  %i.af = load i64, ptr %i.w, align 8, !tbaa !178, !noalias !951 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, %i.x
  br i1 %i.ag, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !179, !noalias !951
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.x
  %i.ak = sub nsw i64 %i.af, %i.x
  call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ak, i1 false), !noalias !951
  br label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.e:                                             ; preds = %.noexc.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !106, !alias.scope !949
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_16FSLSelectionImplEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow6StatusD2Ev.exit32.i.i:                  ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !949
  %i.al = load ptr, ptr %26, align 8, !tbaa !77, !noalias !949
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !949
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(120) %26)
          to label %.noexc7.i unwind label %bb.cb, !noalias !947, !inline_history !913

.noexc7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit32.i.i
  %i.ao = load ptr, ptr %23, align 8, !tbaa !106, !noalias !949 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !106, !alias.scope !949
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !949
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.f, label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_16FSLSelectionImplEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.f:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25, !noalias !949
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !953
  %i.aq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !324, !noalias !953, !nonnull !118, !align !181
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.ar)
          to label %.noexc8.i unwind label %bb.cb, !noalias !947

.noexc8.i:                                        ; preds = %bb.f
  invoke void @_ZN5arrow18FixedSizeListArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.g unwind label %bb.p, !noalias !953

bb.g:                                             ; preds = %.noexc8.i
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80, !noalias !953 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !949 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.au, align 8, !tbaa !74, !noalias !949
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !75, !noalias !949
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !77, !noalias !949
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !949
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !949, !inline_history !916
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !77, !noalias !949
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !949
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !949, !inline_history !916
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !953
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !51, !noalias !949
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !949
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.k ], [ %i.bh, %bb.l ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !97

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !949
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !953
  %i.bj = invoke noundef ptr @_ZNK5arrow18FixedSizeListArray9list_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %bb.n unwind label %bb.q, !noalias !949

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !328, !noalias !949 ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !51, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !953
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !270, !noalias !953
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !344, !noalias !949
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !151, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !953
  %i.bq = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.br = load i64, ptr %i.q, align 8, !tbaa !323, !noalias !953
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 232
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !227, !noalias !954 ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !77, !noalias !954
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !955
  %i.bx = invoke noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(144) %i.bq)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !949, !inline_history !7

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.by = sext i32 %i.bl to i64
  %i.bz = mul nsw i64 %i.br, %i.by
  %i.ca = add nsw i64 %i.bx, %i.bz                ; 2 uses
  %.not.i.i.i.i = icmp sgt i64 %i.ca, %i.bt
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %.noexc.i.i.i
  store ptr null, ptr %24, align 8, !tbaa !106, !alias.scope !952, !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !953
  br label %_ZN5arrow6StatusD2Ev.exit20.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.cb = shl nsw i64 %i.bt, 1
  %.sroa.speculated.i.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.ca, i64 %i.cb)
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !77, !noalias !954
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !955
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !101, !noalias !958 ; 2 uses
  %.not.i159.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i159.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = invoke noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body.i.i.i.i.i unwind label %bb.aa, !noalias !949 ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #28, !noalias !949
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.z, %bb.y, %bb.t
  %.pn137.i.i.i.i.i = phi { ptr, i32 } [ %i.dl, %bb.t ], [ %i.dr, %bb.z ], [ %i.dr, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !958
  %i.dw = load ptr, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949 ; 2 uses
  %.not.i161.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i161.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ab, !prof !107

bb.ab:                                            ; preds = %.body.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !116, !range !117, !noalias !949, !noundef !118
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #25, !noalias !949
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

bb.ad:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit20.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !148, !noalias !959 ; 6 uses
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !148, !noalias !959 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !145, !noalias !959 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !958
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !125, !noalias !959
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.da, i64 noundef %i.dc, i64 noundef %i.eh)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc23.i.i.i:                                   ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !958
  %i.ei = load ptr, ptr %i.cm, align 8, !tbaa !350, !noalias !958, !nonnull !118, !align !181
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !125, !noalias !959
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.ed, i64 noundef %i.ef, i64 noundef %i.ek)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc24.i.i.i:                                   ; preds = %.noexc23.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !958
  %i.el = load ptr, ptr %i.cm, align 8, !tbaa !350, !noalias !958, !nonnull !118, !align !181
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !125, !noalias !959 ; 2 uses
  %.not.i.i162.i.i.i.i.i = icmp eq ptr %i.ec, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i = select i1 %.not.i.i162.i.i.i.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ec, !prof !97
  %i.eo = sdiv i64 %i.ef, 8
  %i.ep = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i, i64 %i.eo
  store ptr %i.ep, ptr %12, align 8, !tbaa !205, !noalias !958
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.en, ptr %i.eq, align 8, !tbaa !206, !noalias !958
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.es = srem i64 %i.ef, 8
  store i64 %i.es, ptr %i.er, align 8, !tbaa !207, !noalias !958
  %i.et = icmp sgt i64 %i.en, 0
  br i1 %i.et, label %.lr.ph269.i.i.i.i.i, label %.critedge158.sink.split.i.i.i.i.i

.lr.ph269.i.i.i.i.i:                              ; preds = %.noexc24.i.i.i
  %i.eu = icmp eq i32 %i.cx, 0                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %26, i64 72
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge144.i.i.i.i.i, %.lr.ph269.i.i.i.i.i
  %.0107268.i.i.i.i.i = phi i64 [ 0, %.lr.ph269.i.i.i.i.i ], [ %.11.i.i.i.i.i, %.critedge144.i.i.i.i.i ] ; 13 uses
  %i.ew = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949 ; 2 uses

.noexc25.i.i.i:                                   ; preds = %bb.ae
  %.sroa.0218.0.extract.trunc.i.i.i.i.i = trunc i32 %i.ew to i16
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i32 %i.ew, 16
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i.i to i16
  %i.ex = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949 ; 2 uses

.noexc26.i.i.i:                                   ; preds = %.noexc25.i.i.i
  %.sroa.0215.0.extract.trunc.i.i.i.i.i = trunc i32 %i.ex to i16
  %.sroa.7.0.extract.shift.i.i.i.i.i = lshr i32 %i.ex, 16
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i.i to i16
  %i.ey = load i64, ptr %i.eq, align 8, !tbaa !206, !noalias !958 ; 4 uses
  %.not.i163.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i163.i.i.i.i.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.noexc26.i.i.i
  %i.ez = load i64, ptr %i.er, align 8, !tbaa !207, !noalias !958 ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fb = icmp slt i64 %i.ey, 64
  br i1 %i.fb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fc = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 64) #25, !noalias !959 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %i.fc, 16
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.fd = load ptr, ptr %12, align 8, !tbaa !205, !noalias !958 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 1, !noalias !959
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.ff = sub nsw i64 128, %i.ez
  %i.fg = icmp slt i64 %i.ey, %i.ff
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fh = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 64) #25, !noalias !959 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i.i.i = lshr i32 %i.fh, 16
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %12, align 8, !tbaa !205, !noalias !958 ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 1, !noalias !959
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 1, !noalias !959
  %.0.i.i.i.i21.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.fl, i64 %i.fj, i64 %i.ez)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.0.i.sink.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i21.i.i.i, %bb.al ], [ %i.fe, %bb.ai ]
  %i.fm = phi ptr [ %i.fi, %bb.al ], [ %i.fd, %bb.ai ]
  %i.fn = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i.i.i)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fo, ptr %12, align 8, !tbaa !205, !noalias !958
  %i.fp = add nsw i64 %i.ey, -64
  store i64 %i.fp, ptr %i.eq, align 8, !tbaa !206, !noalias !958
  %i.fq = trunc nuw nsw i64 %i.fn to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ah
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %i.fc, %bb.ah ], [ 64, %bb.am ], [ %i.fh, %bb.ak ]
  %.sroa.5.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i.i.i, %bb.ah ], [ %i.fq, %bb.am ], [ %.sroa.5.0.extract.shift2.i.i.i.i.i.i, %bb.ak ]
  %i.fr = shl nuw i32 %.sroa.5.0.i.i.i.i.i.i, 16
  %i.fs = and i32 %.sroa.0.0.i.i.i.i.i.i, 65535
  %i.ft = or disjoint i32 %i.fr, %i.fs
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i: ; preds = %bb.an, %.noexc26.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = phi i32 [ %i.ft, %bb.an ], [ 0, %.noexc26.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i to i16 ; 8 uses
  %.sroa.14.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 16 ; 2 uses
  %.sroa.14.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.14.0.extract.shift.i.i.i.i.i to i16
  %i.fu = icmp eq i32 %.sroa.14.0.extract.shift.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.fu, i1 %i.eu, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.fv = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64
  %i.fw = add nsw i64 %.0107268.i.i.i.i.i, %i.fv
  br label %.critedge144.i.i.i.i.i

bb.ap:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.fx = icmp eq i16 %.sroa.0218.0.extract.trunc.i.i.i.i.i, %.sroa.6.0.extract.trunc.i.i.i.i.i
  br i1 %i.fx, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.fy = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, %.sroa.14.0.extract.trunc.i.i.i.i.i
  %i.fz = icmp eq i16 %.sroa.0215.0.extract.trunc.i.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.ga = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 6 uses
  br i1 %i.fy, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fz, label %bb.as, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ar
  %.not133259.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not133259.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, label %.critedge144.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.gb = load ptr, ptr %i.ev, align 8, !tbaa !179, !noalias !958
  %i.gc = load i64, ptr %i.s, align 8, !tbaa !177, !noalias !958
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.gb, i64 noundef %i.gc, i64 noundef %i.ga, i1 noundef zeroext true)
          to label %.noexc27.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc27.i.i.i:                                   ; preds = %bb.as
  %i.gd = load i64, ptr %i.s, align 8, !tbaa !177, !noalias !958
  %i.ge = add nsw i64 %i.gd, %i.ga
  store i64 %i.ge, ptr %i.s, align 8, !tbaa !177, !noalias !958
  %.not136263.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not136263.i.i.i.i.i, label %.lr.ph266.preheader.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph266.preheader.i.i.i.i.i:                    ; preds = %.noexc27.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !357, !noalias !961
  %.pre288.i.i.i.i.i = load i32, ptr %.pre.i.i.i.i.i, align 4, !tbaa !51, !noalias !962
  store ptr null, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949
  br label %.lr.ph266.i.i.i.i.i

.lr.ph266.i.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i, %.lr.ph266.preheader.i.i.i.i.i
  %i.gf = phi i32 [ %i.hq, %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i ], [ %.pre288.i.i.i.i.i, %.lr.ph266.preheader.i.i.i.i.i ] ; 3 uses
  %.0106265.i.i.i.i.i = phi i64 [ %i.hr, %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i ], [ 0, %.lr.ph266.preheader.i.i.i.i.i ]
  %.1264.i.i.i.i.i = phi i64 [ %i.gg, %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.lr.ph266.preheader.i.i.i.i.i ] ; 2 uses
  %i.gg = add nsw i64 %.1264.i.i.i.i.i, 1         ; 2 uses
  %27 = load ptr, ptr %20, align 8, !tbaa !358, !noalias !961, !nonnull !118, !align !181
  %i.gh = load i64, ptr %27, align 8, !tbaa !151, !noalias !962
  %i.gi = add nsw i64 %i.gh, %.1264.i.i.i.i.i
  %i.gj = sext i32 %i.gf to i64
  %i.gk = mul nsw i64 %i.gi, %i.gj                ; 2 uses
  %i.gl = icmp sgt i32 %i.gf, 0
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph266.i.i.i.i.i
  %i.gm = load ptr, ptr %i.ck, align 8, !tbaa !347, !noalias !961 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 168
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 200 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 224 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 304
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 320 ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i ], [ %i.hk, %bb.at ] ; 2 uses
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !179, !noalias !962
  %i.gt = load i64, ptr %i.go, align 8, !tbaa !177, !noalias !962 ; 2 uses
  %i.gu = sdiv i64 %i.gt, 8
  %i.gv = getelementptr inbounds i8, ptr %i.gs, i64 %i.gu ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !96, !noalias !962
  %i.gx = srem i64 %i.gt, 8
  %i.gy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !96, !noalias !961
  %i.ha = or i8 %i.gz, %i.gw
  store i8 %i.ha, ptr %i.gv, align 1, !tbaa !96, !noalias !962
  %i.hb = load i64, ptr %i.go, align 8, !tbaa !177, !noalias !962
  %i.hc = add nsw i64 %i.hb, 1
  store i64 %i.hc, ptr %i.go, align 8, !tbaa !177, !noalias !962
  %i.hd = load i64, ptr %i.gp, align 8, !tbaa !151, !noalias !962
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr %i.gp, align 8, !tbaa !151, !noalias !962
  %i.hf = load ptr, ptr %i.gq, align 8, !tbaa !179, !noalias !962
  %i.hg = load i64, ptr %i.gr, align 8, !tbaa !210, !noalias !962
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 %i.hg
  store i64 %.06.i.i.i.i.i.i, ptr %i.hh, align 1, !noalias !962
  %i.hi = load i64, ptr %i.gr, align 8, !tbaa !210, !noalias !962
  %i.hj = add nsw i64 %i.hi, 8
  store i64 %i.hj, ptr %i.gr, align 8, !tbaa !210, !noalias !962
  %i.hk = add nsw i64 %.06.i.i.i.i.i.i, 1         ; 2 uses
  %i.hl = load ptr, ptr %i.cj, align 8, !tbaa !357, !noalias !961, !nonnull !118, !align !209
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !51, !noalias !962 ; 2 uses
  %i.hn = sext i32 %i.hm to i64
  %i.ho = add nsw i64 %i.gk, %i.hn
  %i.hp = icmp slt i64 %i.hk, %i.ho
  br i1 %i.hp, label %bb.at, label %_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i, !llvm.loop !8

_ZN5arrow6StatusD2Ev.exit169.i.i.i.i.i:           ; preds = %bb.at, %.lr.ph266.i.i.i.i.i
  %i.hq = phi i32 [ %i.gf, %.lr.ph266.i.i.i.i.i ], [ %i.hm, %bb.at ]
  %i.hr = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond287.not.i.i.i.i.i = icmp eq i64 %i.hr, %i.ga
  br i1 %exitcond287.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph266.i.i.i.i.i, !llvm.loop !925

_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.hv, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.3260.i.i.i.i.i = phi i64 [ %i.hu, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !958
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.3260.i.i.i.i.i)
          to label %.noexc28.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc28.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i
  %i.hs = load ptr, ptr %13, align 8, !tbaa !106, !noalias !958 ; 2 uses
  store ptr %i.hs, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !958
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i:           ; preds = %.noexc28.i.i.i
  %i.hu = add nsw i64 %.3260.i.i.i.i.i, 1         ; 2 uses
  %i.hv = add nuw nsw i64 %.0104261.i.i.i.i.i, 1  ; 2 uses
  %exitcond286.not.i.i.i.i.i = icmp eq i64 %i.hv, %i.ga
  br i1 %exitcond286.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, !llvm.loop !926

bb.au:                                            ; preds = %bb.aq
  %.not132254.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.fz, label %.preheader225.i.i.i.i.i, label %.preheader227.i.i.i.i.i

.preheader227.i.i.i.i.i:                          ; preds = %bb.au
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader225.i.i.i.i.i:                          ; preds = %bb.au
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph257.i.i.i.i.i:                              ; preds = %.preheader225.i.i.i.i.i, %bb.ax
  %.0102256.i.i.i.i.i = phi i64 [ %i.ki, %bb.ax ], [ 0, %.preheader225.i.i.i.i.i ]
  %.5255.i.i.i.i.i = phi i64 [ %i.kh, %bb.ax ], [ %.0107268.i.i.i.i.i, %.preheader225.i.i.i.i.i ] ; 3 uses
  %i.hw = add nsw i64 %.5255.i.i.i.i.i, %i.ef     ; 2 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !96, !noalias !959
  %i.ia = trunc i64 %i.hw to i8
  %i.ib = and i8 %i.ia, 7
  %i.ic = lshr i8 %i.hz, %i.ib
  %i.id = trunc i8 %i.ic to i1
  br i1 %i.id, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.lr.ph257.i.i.i.i.i
  %i.ie = load ptr, ptr %6, align 8, !tbaa !354, !noalias !963 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !179, !noalias !964
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 104 ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !177, !noalias !964 ; 2 uses
  %i.ij = sdiv i64 %i.ii, 8
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !96, !noalias !964
  %i.im = srem i64 %i.ii, 8
  %i.in = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !96, !noalias !963
  %i.ip = or i8 %i.io, %i.il
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !96, !noalias !964
  %i.iq = load i64, ptr %i.ih, align 8, !tbaa !177, !noalias !964
  %i.ir = add nsw i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ih, align 8, !tbaa !177, !noalias !964
  %i.is = load ptr, ptr %i.de, align 8, !tbaa !359, !noalias !963, !nonnull !118, !align !181 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !358, !noalias !965, !nonnull !118, !align !181
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !151, !noalias !965
  %i.iv = add nsw i64 %i.iu, %.5255.i.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !357, !noalias !965, !nonnull !118, !align !209
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !51, !noalias !965 ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i64 %i.iv, %i.iz                ; 2 uses
  %i.jb = icmp sgt i32 %i.iy, 0
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.av
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !347, !noalias !965 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 168
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 200 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 224 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 304
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 320 ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kb, %bb.aw ] ; 2 uses
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !179, !noalias !965
  %i.jk = load i64, ptr %i.jf, align 8, !tbaa !177, !noalias !965 ; 2 uses
  %i.jl = sdiv i64 %i.jk, 8
  %i.jm = getelementptr inbounds i8, ptr %i.jj, i64 %i.jl ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !96, !noalias !965
  %i.jo = srem i64 %i.jk, 8
  %i.jp = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !96, !noalias !966
  %i.jr = or i8 %i.jq, %i.jn
  store i8 %i.jr, ptr %i.jm, align 1, !tbaa !96, !noalias !965
  %i.js = load i64, ptr %i.jf, align 8, !tbaa !177, !noalias !965
  %i.jt = add nsw i64 %i.js, 1
  store i64 %i.jt, ptr %i.jf, align 8, !tbaa !177, !noalias !965
  %i.ju = load i64, ptr %i.jg, align 8, !tbaa !151, !noalias !965
  %i.jv = add nsw i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jg, align 8, !tbaa !151, !noalias !965
  %i.jw = load ptr, ptr %i.jh, align 8, !tbaa !179, !noalias !965
  %i.jx = load i64, ptr %i.ji, align 8, !tbaa !210, !noalias !965
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  store i64 %.06.i.i.i.i.i.i.i, ptr %i.jy, align 1, !noalias !965
  %i.jz = load i64, ptr %i.ji, align 8, !tbaa !210, !noalias !965
  %i.ka = add nsw i64 %i.jz, 8
  store i64 %i.ka, ptr %i.ji, align 8, !tbaa !210, !noalias !965
  %i.kb = add nsw i64 %.06.i.i.i.i.i.i.i, 1       ; 2 uses
  %i.kc = load ptr, ptr %i.iw, align 8, !tbaa !357, !noalias !965, !nonnull !118, !align !209
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !51, !noalias !965
  %i.ke = sext i32 %i.kd to i64
  %i.kf = add nsw i64 %i.ja, %i.ke
  %i.kg = icmp slt i64 %i.kb, %i.kf
  br i1 %i.kg, label %bb.aw, label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i, !llvm.loop !8

_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i:           ; preds = %bb.aw, %bb.av
  store ptr null, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i, %.lr.ph257.i.i.i.i.i
  %i.kh = add nsw i64 %.5255.i.i.i.i.i, 1         ; 2 uses
  %i.ki = add nuw nsw i64 %.0102256.i.i.i.i.i, 1  ; 2 uses
  %exitcond285.not.i.i.i.i.i = icmp eq i64 %i.ki, %i.ga
  br i1 %exitcond285.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, !llvm.loop !931

.lr.ph252.i.i.i.i.i:                              ; preds = %.preheader227.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i
  %.0100251.i.i.i.i.i = phi i64 [ %i.ku, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ 0, %.preheader227.i.i.i.i.i ]
  %.6250.i.i.i.i.i = phi i64 [ %i.kt, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader227.i.i.i.i.i ] ; 3 uses
  %i.kj = add nsw i64 %.6250.i.i.i.i.i, %i.ef     ; 2 uses
  %i.kk = lshr i64 %i.kj, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !96, !noalias !959
  %i.kn = trunc i64 %i.kj to i8
  %i.ko = and i8 %i.kn, 7
  %i.kp = lshr i8 %i.km, %i.ko
  %i.kq = trunc i8 %i.kp to i1
  br i1 %i.kq, label %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i:           ; preds = %.lr.ph252.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !958
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.6250.i.i.i.i.i)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc29.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i
  %i.kr = load ptr, ptr %14, align 8, !tbaa !106, !noalias !958 ; 2 uses
  store ptr %i.kr, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !958
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i:           ; preds = %.noexc29.i.i.i, %.lr.ph252.i.i.i.i.i
  %i.kt = add nsw i64 %.6250.i.i.i.i.i, 1         ; 2 uses
  %i.ku = add nuw nsw i64 %.0100251.i.i.i.i.i, 1  ; 2 uses
  %exitcond284.not.i.i.i.i.i = icmp eq i64 %i.ku, %i.ga
  br i1 %exitcond284.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, !llvm.loop !932

bb.ay:                                            ; preds = %bb.ap
  %i.kv = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 2 uses
  %.not130244.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.eu, label %.preheader230.i.i.i.i.i, label %.preheader233.i.i.i.i.i

.preheader233.i.i.i.i.i:                          ; preds = %bb.ay
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader230.i.i.i.i.i:                          ; preds = %bb.ay
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph247.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph247.i.i.i.i.i:                              ; preds = %.preheader230.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i
  %.098246.i.i.i.i.i = phi i64 [ %i.ll, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ 0, %.preheader230.i.i.i.i.i ]
  %.7245.i.i.i.i.i = phi i64 [ %i.lk, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %.0107268.i.i.i.i.i, %.preheader230.i.i.i.i.i ] ; 3 uses
  %i.kw = add nsw i64 %.7245.i.i.i.i.i, %i.ef     ; 2 uses
  %i.kx = lshr i64 %i.kw, 3                       ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !96, !noalias !959
  %i.la = trunc i64 %i.kw to i8
  %i.lb = and i8 %i.la, 7                         ; 2 uses
  %i.lc = lshr i8 %i.kz, %i.lb
  %i.ld = trunc i8 %i.lc to i1
  br i1 %i.ld, label %bb.az, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

bb.az:                                            ; preds = %.lr.ph247.i.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.kx
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !96, !noalias !959
  %i.lg = lshr i8 %i.lf, %i.lb
  %i.lh = trunc i8 %i.lg to i1
  br i1 %i.lh, label %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i:           ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !958
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.7245.i.i.i.i.i)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !949

.noexc30.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i
  %i.li = load ptr, ptr %15, align 8, !tbaa !106, !noalias !958 ; 2 uses
  store ptr %i.li, ptr %24, align 8, !tbaa !106, !alias.scope !960, !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !958
end_hunk_1
