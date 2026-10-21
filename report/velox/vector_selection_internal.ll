Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/vector_selection_internal?download=true
inline.NumInlined: 6676
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !1075
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %_ZN5arrow6StatusD2Ev.exit27.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !1075
  %i.lk = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %.noexc.i.i unwind label %bb.ar, !noalias !1071 ; 7 uses

.noexc.i.i:                                       ; preds = %bb.ak
  %i.ll = load ptr, ptr %21, align 8, !tbaa !92, !noalias !1071 ; 5 uses
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !219, !noalias !1071
  store i8 %i.lm, ptr %i.lk, align 8, !tbaa !219, !noalias !1071
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 3 uses
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !220, !noalias !1071
  %i.lq = load ptr, ptr %i.lo, align 8, !tbaa !221, !noalias !1071 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !222, !noalias !1071 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1071
  store i64 %i.ls, ptr %i.a, align 8, !tbaa !129, !noalias !1071
  %i.lt = icmp ugt i64 %i.ls, 15
  br i1 %i.lt, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i
  %i.lu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ln, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.aq, !noalias !1071 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  store ptr %i.lu, ptr %i.ln, align 8, !tbaa !221, !noalias !1071
  %i.lv = load i64, ptr %i.a, align 8, !tbaa !129, !noalias !1071
  store i64 %i.lv, ptr %i.lp, align 8, !tbaa !81, !noalias !1071
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i, %.noexc.i.i
  %i.lw = phi ptr [ %i.lu, %.noexc.i.i.i ], [ %i.lp, %.noexc.i.i ] ; 2 uses
  switch i64 %i.ls, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.lx = load i8, ptr %i.lq, align 1, !tbaa !81, !noalias !1071
  store i8 %i.lx, ptr %i.lw, align 1, !tbaa !81, !noalias !1071
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr align 1 %i.lq, i64 %i.ls, i1 false), !noalias !1071
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i.i.i.i
  %i.ly = load i64, ptr %i.a, align 8, !tbaa !129, !noalias !1071 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !222, !noalias !1071
  %i.ma = load ptr, ptr %i.ln, align 8, !tbaa !221, !noalias !1071
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ly
  store i8 0, ptr %i.mb, align 1, !tbaa !81, !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1071
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.md = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !65, !noalias !1071 ; 2 uses
  %i.mg = load <2 x ptr>, ptr %i.md, align 8, !tbaa !86, !noalias !1071
  store <2 x ptr> %i.mg, ptr %i.mc, align 8, !tbaa !86, !noalias !1071
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread37.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 3 uses
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81, !noalias !1071
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mj = load i32, ptr %i.mh, align 4, !tbaa !82, !noalias !1071
  %i.mk = add nsw i32 %i.mj, 1
  store i32 %i.mk, ptr %i.mh, align 4, !tbaa !82, !noalias !1071
  br label %.thread37.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ml = atomicrmw volatile add ptr %i.mh, i32 1 acq_rel, align 4, !noalias !1071 ; 0 uses
  br label %.thread37.i.i

bb.aq:                                            ; preds = %.noexc.i.i.i.i.i
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef 56) #26, !noalias !1071
  br label %.body.i.i

.thread37.i.i:                                    ; preds = %bb.ap, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  store ptr %i.lk, ptr %0, align 8, !tbaa !92, !alias.scope !1071
  br label %.critedge.i.i

bb.ar:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit31.i.i, %bb.ak
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_ZN5arrow6StatusD2Ev.exit27.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  store ptr null, ptr %21, align 8, !tbaa !92, !alias.scope !1104, !noalias !1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !1075
  store ptr null, ptr %0, align 8, !tbaa !92, !alias.scope !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !1071
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %_ZN5arrow6StatusD2Ev.exit29.i.i unwind label %bb.as, !noalias !1071

_ZN5arrow6StatusD2Ev.exit29.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit27.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.mo = load ptr, ptr %22, align 8, !tbaa !92, !noalias !1106 ; 2 uses
  store ptr %i.mo, ptr %0, align 8, !tbaa !92, !alias.scope !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !1071
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %_ZN5arrow6StatusD2Ev.exit31.i.i, label %.critedge.i.i

bb.as:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit27.i.i
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !1071
  br label %.body.i.i

_ZN5arrow6StatusD2Ev.exit31.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit29.i.i
  %i.mr = load ptr, ptr %23, align 8, !tbaa !62, !noalias !1071
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !1071
  invoke void %i.mt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.critedge.i.i unwind label %bb.ar

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit31.i.i, %_ZN5arrow6StatusD2Ev.exit29.i.i, %.thread37.i.i
  %i.mu = load ptr, ptr %21, align 8, !tbaa !92, !noalias !1071
  %.not.i32.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i32.i.i, label %_ZN5arrow6StatusD2Ev.exit33.i.i, label %bb.at, !prof !93

bb.at:                                            ; preds = %.critedge.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN5arrow6StatusD2Ev.exit33.i.i

_ZN5arrow6StatusD2Ev.exit33.i.i:                  ; preds = %bb.at, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !1071
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

.body.i.i:                                        ; preds = %bb.as, %bb.ar, %bb.aq
  %.pn.i.i = phi { ptr, i32 } [ %i.mq, %bb.as ], [ %i.mn, %bb.ar ], [ %i.mm, %bb.aq ]
  %i.mv = load ptr, ptr %21, align 8, !tbaa !92, !noalias !1071
  %.not.i34.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i34.i.i, label %_ZN5arrow6StatusD2Ev.exit35.i.i, label %bb.au, !prof !93

bb.au:                                            ; preds = %.body.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
  br label %_ZN5arrow6StatusD2Ev.exit35.i.i

_ZN5arrow6StatusD2Ev.exit35.i.i:                  ; preds = %bb.au, %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !1071
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.noexc10.i, %bb.q, %.noexc8.i, %bb.p, %_ZN5arrow6StatusD2Ev.exit23.i.i, %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5arrow6StatusD2Ev.exit35.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %_ZN5arrow6StatusD2Ev.exit35.i.i ], [ %.pn.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !1066
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %bb.d, %.noexc7.i, %_ZN5arrow6StatusD2Ev.exit33.i.i
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !1066
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::internal::OptionalBitIndexer", align 8 ; 6 uses
  %6 = alloca %class.anon.230, align 8            ; 7 uses
  %7 = alloca %class.anon.231, align 8            ; 8 uses
  %8 = alloca %class.anon.232, align 8            ; 11 uses
  %9 = alloca %"class.std::function.53", align 8  ; 12 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %12 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 10 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::FixedSizeListArray", align 8 ; 11 uses
  %18 = alloca %"class.std::shared_ptr.104", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %20 = alloca %class.anon.228, align 8           ; 9 uses
  %21 = alloca %class.anon.229, align 8           ; 6 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 23 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %26 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::FSLSelectionImpl", align 8 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZN5arrow4util16IsFixedWidthLikeERKNS_9ArraySpanEbb(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.h = tail call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  br label %bb.ce

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !135, !noalias !1177
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139, !noalias !1177
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !144, !noalias !1177
  %i.p = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.k, i32 noundef %i.o), !noalias !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24, !noalias !1177
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !135, !noalias !1177
  call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImplC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE(ptr noundef nonnull align 8 dereferenceable(336) %26, ptr noundef %1, ptr %.val.i, i64 noundef %i.p, ptr noundef readonly %3), !noalias !1177
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !313, !noalias !1179
  %i.t = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !155, !noalias !1180 ; 2 uses
  %i.v = add nsw i64 %i.u, %i.s
  %i.w = shl nsw i64 %i.u, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.v, i64 %i.w) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !156, !noalias !1181 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !1181
  %i.z = ashr i64 %.sroa.speculated.i.i.i.i, 3
  %i.aa = and i64 %.sroa.speculated.i.i.i.i, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add nsw i64 %i.z, %i.ac
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %22, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.ad, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.cd, !noalias !1177

.noexc.i:                                         ; preds = %.critedge
  %i.ae = load ptr, ptr %22, align 8, !tbaa !92, !noalias !1182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !1181
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i, label %bb.e

_ZN5arrow6StatusD2Ev.exit13.i.i.i.i:              ; preds = %.noexc.i
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !156, !noalias !1181 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, %i.y
  br i1 %i.ah, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit23.i.i

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157, !noalias !1181
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.y
  %i.al = sub nsw i64 %i.ag, %i.y
  call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.al, i1 false), !noalias !1181
  br label %_ZN5arrow6StatusD2Ev.exit23.i.i

bb.e:                                             ; preds = %.noexc.i
  store ptr %i.ae, ptr %0, align 8, !tbaa !92, !alias.scope !1183
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_16FSLSelectionImplEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow6StatusD2Ev.exit23.i.i:                  ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24, !noalias !1179
  %i.am = load ptr, ptr %26, align 8, !tbaa !62, !noalias !1179
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1179
  invoke void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(120) %26)
          to label %.noexc7.i unwind label %bb.cd, !noalias !1177, !inline_history !1119

.noexc7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit23.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.ap = load ptr, ptr %23, align 8, !tbaa !92, !noalias !1185 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !92, !alias.scope !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !1179
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.f, label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_16FSLSelectionImplEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.f:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24, !noalias !1179
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !1187
  %i.ar = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !314, !noalias !1187, !nonnull !159, !align !160
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.104") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.as)
          to label %.noexc8.i unwind label %bb.cd, !noalias !1177

.noexc8.i:                                        ; preds = %bb.f
  invoke void @_ZN5arrow18FixedSizeListArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.g unwind label %bb.p, !noalias !1187

bb.g:                                             ; preds = %.noexc8.i
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65, !noalias !1187 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8, !noalias !1179 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.av, align 8, !tbaa !59, !noalias !1179
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !60, !noalias !1179
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !62, !noalias !1179
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1179
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !noalias !1179, !inline_history !1124
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !62, !noalias !1179
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1179
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !noalias !1179, !inline_history !1124
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81, !noalias !1187
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !82, !noalias !1179
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4, !noalias !1179
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.bi, %bb.l ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !noalias !1179
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !1187
  %i.bk = invoke noundef ptr @_ZNK5arrow18FixedSizeListArray9list_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %17)
          to label %bb.n unwind label %bb.q, !noalias !1179

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !318, !noalias !1179 ; 2 uses
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !82, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !1187
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !260, !noalias !1187
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !334, !noalias !1179
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !129, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !1187
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !313, !noalias !1187
  %i.bt = getelementptr inbounds nuw i8, ptr %26, i64 232
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !206, !noalias !1188 ; 2 uses
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !62, !noalias !1188
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !1189
  %i.by = invoke noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(144) %i.br)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !1179, !inline_history !7

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.bz = sext i32 %i.bm to i64
  %i.ca = mul nsw i64 %i.bs, %i.bz
  %i.cb = add nsw i64 %i.by, %i.ca                ; 2 uses
  %.not.i.i.i.i = icmp sgt i64 %i.cb, %i.bu
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %.noexc.i.i.i
  store ptr null, ptr %24, align 8, !tbaa !92, !alias.scope !1190, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !1187
  br label %_ZN5arrow6StatusD2Ev.exit15.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.cc = shl nsw i64 %i.bu, 1
  %.sroa.speculated.i.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !62, !noalias !1188
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.not.i148.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i148.i.i.i.i.i, label %.body.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body.i.i.i.i.i unwind label %bb.aa, !noalias !1179 ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #27, !noalias !1179
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.z, %bb.y, %bb.t
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.t ], [ %i.ds, %bb.z ], [ %i.ds, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1196
  %i.dx = load ptr, ptr %24, align 8, !tbaa !92, !alias.scope !1198, !noalias !1179
  %.not.i150.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i150.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ab, !prof !93

bb.ab:                                            ; preds = %.body.i.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %24), !noalias !1179
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.ab, %.body.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1196
  br label %.body.i.i.i

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit15.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !125, !noalias !1197 ; 6 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !125, !noalias !1197 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !121, !noalias !1197 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !1196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !101, !noalias !1197
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.db, i64 noundef %i.dd, i64 noundef %i.ef)
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc18.i.i.i:                                   ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !1196
  %i.eg = load ptr, ptr %i.cn, align 8, !tbaa !340, !noalias !1196, !nonnull !159, !align !160
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !101, !noalias !1197
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.eb, i64 noundef %i.ed, i64 noundef %i.ei)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc19.i.i.i:                                   ; preds = %.noexc18.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !1196
  %i.ej = load ptr, ptr %i.cn, align 8, !tbaa !340, !noalias !1196, !nonnull !159, !align !160
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !101, !noalias !1197 ; 2 uses
  %.not.i.i151.i.i.i.i.i = icmp eq ptr %i.ea, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i = select i1 %.not.i.i151.i.i.i.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ea, !prof !83
  %i.em = sdiv i64 %i.ed, 8
  %i.en = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i, i64 %i.em
  store ptr %i.en, ptr %12, align 8, !tbaa !184, !noalias !1196
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !185, !noalias !1196
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.eq = srem i64 %i.ed, 8
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !186, !noalias !1196
  %i.er = icmp sgt i64 %i.el, 0
  br i1 %i.er, label %.lr.ph245.i.i.i.i.i, label %.critedge147.sink.split.i.i.i.i.i

.lr.ph245.i.i.i.i.i:                              ; preds = %.noexc19.i.i.i
  %i.es = icmp eq i32 %i.cy, 0                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 72
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge133.i.i.i.i.i, %.lr.ph245.i.i.i.i.i
  %.0107244.i.i.i.i.i = phi i64 [ 0, %.lr.ph245.i.i.i.i.i ], [ %.11.i.i.i.i.i, %.critedge133.i.i.i.i.i ] ; 13 uses
  %i.eu = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %bb.ad
  %.sroa.0193.0.extract.trunc.i.i.i.i.i = trunc i32 %i.eu to i16
  %.sroa.5.0.extract.shift.i.i.i.i.i = lshr i32 %i.eu, 16
  %.sroa.5.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i.i.i to i16
  %i.ev = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179 ; 2 uses

.noexc21.i.i.i:                                   ; preds = %.noexc20.i.i.i
  %.sroa.0190.0.extract.trunc.i.i.i.i.i = trunc i32 %i.ev to i16
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i32 %i.ev, 16
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i.i to i16
  %i.ew = load i64, ptr %i.eo, align 8, !tbaa !185, !noalias !1196 ; 4 uses
  %.not.i152.i.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i152.i.i.i.i.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc21.i.i.i
  %i.ex = load i64, ptr %i.ep, align 8, !tbaa !186, !noalias !1196 ; 3 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ez = icmp slt i64 %i.ew, 64
  br i1 %i.ez, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fa = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 64) #24, !noalias !1197 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %i.fa, 16
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %12, align 8, !tbaa !184, !noalias !1196 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !noalias !1197
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.fc = sub nsw i64 128, %i.ex
  %i.fd = icmp slt i64 %i.ew, %i.fc
  br i1 %i.fd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fe = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 64) #24, !noalias !1197 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i.i.i = lshr i32 %i.fe, 16
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ff = load ptr, ptr %12, align 8, !tbaa !184, !noalias !1196 ; 3 uses
  %.0.copyload.i.i6.i.i.i.i.i.i = load i64, ptr %i.ff, align 1, !noalias !1197
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.0.copyload.i.i7.i.i.i.i.i.i = load i64, ptr %i.fg, align 1, !noalias !1197
  %.0.i.i.i.i16.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i7.i.i.i.i.i.i, i64 %.0.copyload.i.i6.i.i.i.i.i.i, i64 %i.ex)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.0.i.sink.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i16.i.i.i, %bb.ak ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.ah ]
  %i.fh = phi ptr [ %i.ff, %bb.ak ], [ %i.fb, %bb.ah ]
  %i.fi = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i.i.i)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fj, ptr %12, align 8, !tbaa !184, !noalias !1196
  %i.fk = add nsw i64 %i.ew, -64
  store i64 %i.fk, ptr %i.eo, align 8, !tbaa !185, !noalias !1196
  %i.fl = trunc nuw nsw i64 %i.fi to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ag
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %i.fa, %bb.ag ], [ 64, %bb.al ], [ %i.fe, %bb.aj ]
  %.sroa.5.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i.i.i, %bb.ag ], [ %i.fl, %bb.al ], [ %.sroa.5.0.extract.shift2.i.i.i.i.i.i, %bb.aj ]
  %i.fm = shl nuw i32 %.sroa.5.0.i.i.i.i.i.i, 16
  %i.fn = and i32 %.sroa.0.0.i.i.i.i.i.i, 65535
  %i.fo = or disjoint i32 %i.fm, %i.fn
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i: ; preds = %bb.am, %.noexc21.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.am ], [ 0, %.noexc21.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i to i16 ; 8 uses
  %.sroa.13.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 16 ; 2 uses
  %.sroa.13.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.13.0.extract.shift.i.i.i.i.i to i16
  %i.fp = icmp eq i32 %.sroa.13.0.extract.shift.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.fp, i1 %i.es, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.fq = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64
  %i.fr = add nsw i64 %.0107244.i.i.i.i.i, %i.fq
  br label %.critedge133.i.i.i.i.i

bb.ao:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.fs = icmp eq i16 %.sroa.0193.0.extract.trunc.i.i.i.i.i, %.sroa.5.0.extract.trunc.i.i.i.i.i
  br i1 %i.fs, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.ft = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, %.sroa.13.0.extract.trunc.i.i.i.i.i
  %i.fu = icmp eq i16 %.sroa.0190.0.extract.trunc.i.i.i.i.i, %.sroa.6.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.fv = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 6 uses
  br i1 %i.ft, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fu, label %bb.ar, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.aq
  %.not126235.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not126235.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit158.i.i.i.i.i, label %.critedge133.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fw = load ptr, ptr %i.et, align 8, !tbaa !157, !noalias !1196
  %i.fx = load i64, ptr %i.t, align 8, !tbaa !155, !noalias !1196
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.fw, i64 noundef %i.fx, i64 noundef %i.fv, i1 noundef zeroext true)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc22.i.i.i:                                   ; preds = %bb.ar
  %i.fy = load i64, ptr %i.t, align 8, !tbaa !155, !noalias !1196
  %i.fz = add nsw i64 %i.fy, %i.fv
  store i64 %i.fz, ptr %i.t, align 8, !tbaa !155, !noalias !1196
  %.not127239.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not127239.i.i.i.i.i, label %.lr.ph242.preheader.i.i.i.i.i, label %.critedge133.i.i.i.i.i

.lr.ph242.preheader.i.i.i.i.i:                    ; preds = %.noexc22.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !347, !noalias !1199
  %.pre264.i.i.i.i.i = load i32, ptr %.pre.i.i.i.i.i, align 4, !tbaa !82, !noalias !1200
  store ptr null, ptr %24, align 8, !tbaa !92, !alias.scope !1201, !noalias !1179
  %.pre82.i.i.i = load ptr, ptr %20, align 8, !tbaa !348, !noalias !1199
  br label %.lr.ph242.i.i.i.i.i

.lr.ph242.i.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i, %.lr.ph242.preheader.i.i.i.i.i
  %27 = phi ptr [ %28, %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i ], [ %.pre82.i.i.i, %.lr.ph242.preheader.i.i.i.i.i ] ; 2 uses
  %i.ga = phi i32 [ %i.hl, %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i ], [ %.pre264.i.i.i.i.i, %.lr.ph242.preheader.i.i.i.i.i ] ; 3 uses
  %.0106241.i.i.i.i.i = phi i64 [ %i.hm, %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i ], [ 0, %.lr.ph242.preheader.i.i.i.i.i ]
  %.1240.i.i.i.i.i = phi i64 [ %i.gb, %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i ], [ %.0107244.i.i.i.i.i, %.lr.ph242.preheader.i.i.i.i.i ] ; 2 uses
  %i.gb = add nsw i64 %.1240.i.i.i.i.i, 1         ; 2 uses
  %i.gc = load i64, ptr %27, align 8, !tbaa !129, !noalias !1200
  %i.gd = add nsw i64 %i.gc, %.1240.i.i.i.i.i
  %i.ge = sext i32 %i.ga to i64
  %i.gf = mul nsw i64 %i.gd, %i.ge                ; 2 uses
  %i.gg = icmp sgt i32 %i.ga, 0
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph242.i.i.i.i.i
  %i.gh = load ptr, ptr %i.cl, align 8, !tbaa !337, !noalias !1199 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 168
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 200 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 224 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 304
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 320 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %i.hf, %bb.as ] ; 2 uses
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !157, !noalias !1200
  %i.go = load i64, ptr %i.gj, align 8, !tbaa !155, !noalias !1200 ; 2 uses
  %i.gp = sdiv i64 %i.go, 8
  %i.gq = getelementptr inbounds i8, ptr %i.gn, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !81, !noalias !1200
  %i.gs = srem i64 %i.go, 8
  %i.gt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !81, !noalias !1199
  %i.gv = or i8 %i.gu, %i.gr
  store i8 %i.gv, ptr %i.gq, align 1, !tbaa !81, !noalias !1200
  %i.gw = load i64, ptr %i.gj, align 8, !tbaa !155, !noalias !1200
  %i.gx = add nsw i64 %i.gw, 1
  store i64 %i.gx, ptr %i.gj, align 8, !tbaa !155, !noalias !1200
  %i.gy = load i64, ptr %i.gk, align 8, !tbaa !129, !noalias !1200
  %i.gz = add nsw i64 %i.gy, 1
  store i64 %i.gz, ptr %i.gk, align 8, !tbaa !129, !noalias !1200
  %i.ha = load ptr, ptr %i.gl, align 8, !tbaa !157, !noalias !1200
  %i.hb = load i64, ptr %i.gm, align 8, !tbaa !189, !noalias !1200
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 %i.hb
  store i64 %.06.i.i.i.i.i.i, ptr %i.hc, align 1, !noalias !1200
  %i.hd = load i64, ptr %i.gm, align 8, !tbaa !189, !noalias !1200
  %i.he = add nsw i64 %i.hd, 8
  store i64 %i.he, ptr %i.gm, align 8, !tbaa !189, !noalias !1200
  %i.hf = add nsw i64 %.06.i.i.i.i.i.i, 1         ; 2 uses
  %i.hg = load ptr, ptr %i.ck, align 8, !tbaa !347, !noalias !1199, !nonnull !159, !align !188
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !82, !noalias !1200 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = add nsw i64 %i.gf, %i.hi
  %i.hk = icmp slt i64 %i.hf, %i.hj
  br i1 %i.hk, label %bb.as, label %_ZN5arrow6StatusD2Ev.exit156.i.i.loopexit.i.i.i, !llvm.loop !8

_ZN5arrow6StatusD2Ev.exit156.i.i.loopexit.i.i.i:  ; preds = %bb.as
  %.pre.i.i.i = load ptr, ptr %20, align 8, !tbaa !348, !noalias !1199
  br label %_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit156.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit156.i.i.loopexit.i.i.i, %.lr.ph242.i.i.i.i.i
  %28 = phi ptr [ %27, %.lr.ph242.i.i.i.i.i ], [ %.pre.i.i.i, %_ZN5arrow6StatusD2Ev.exit156.i.i.loopexit.i.i.i ]
  %i.hl = phi i32 [ %i.ga, %.lr.ph242.i.i.i.i.i ], [ %i.hh, %_ZN5arrow6StatusD2Ev.exit156.i.i.loopexit.i.i.i ]
  %i.hm = add nuw nsw i64 %.0106241.i.i.i.i.i, 1  ; 2 uses
  %exitcond263.not.i.i.i.i.i = icmp eq i64 %i.hm, %i.fv
  br i1 %exitcond263.not.i.i.i.i.i, label %.critedge133.i.i.i.i.i, label %.lr.ph242.i.i.i.i.i, !llvm.loop !1139

_ZN5arrow6StatusD2Ev.exit158.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit160.i.i.i.i.i
  %.0104237.i.i.i.i.i = phi i64 [ %i.hq, %_ZN5arrow6StatusD2Ev.exit160.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.3236.i.i.i.i.i = phi i64 [ %i.hp, %_ZN5arrow6StatusD2Ev.exit160.i.i.i.i.i ], [ %.0107244.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !1196
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.3236.i.i.i.i.i)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc23.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit158.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.hn = load ptr, ptr %13, align 8, !tbaa !92, !noalias !1203 ; 2 uses
  store ptr %i.hn, ptr %24, align 8, !tbaa !92, !alias.scope !1204, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !1196
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZN5arrow6StatusD2Ev.exit160.i.i.i.i.i, label %.critedge147.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit160.i.i.i.i.i:           ; preds = %.noexc23.i.i.i
  %i.hp = add nsw i64 %.3236.i.i.i.i.i, 1         ; 2 uses
  %i.hq = add nuw nsw i64 %.0104237.i.i.i.i.i, 1  ; 2 uses
  %exitcond262.not.i.i.i.i.i = icmp eq i64 %i.hq, %i.fv
  br i1 %exitcond262.not.i.i.i.i.i, label %.critedge133.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit158.i.i.i.i.i, !llvm.loop !1142

bb.at:                                            ; preds = %bb.ap
  %.not125230.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.fu, label %.preheader201.i.i.i.i.i, label %.preheader203.i.i.i.i.i

.preheader203.i.i.i.i.i:                          ; preds = %bb.at
  br i1 %.not125230.i.i.i.i.i, label %.lr.ph228.i.i.i.i.i, label %.critedge133.i.i.i.i.i

.preheader201.i.i.i.i.i:                          ; preds = %bb.at
  br i1 %.not125230.i.i.i.i.i, label %.lr.ph233.i.i.i.i.i, label %.critedge133.i.i.i.i.i

.lr.ph233.i.i.i.i.i:                              ; preds = %.preheader201.i.i.i.i.i, %bb.aw
  %.0102232.i.i.i.i.i = phi i64 [ %i.kd, %bb.aw ], [ 0, %.preheader201.i.i.i.i.i ]
  %.5231.i.i.i.i.i = phi i64 [ %i.kc, %bb.aw ], [ %.0107244.i.i.i.i.i, %.preheader201.i.i.i.i.i ] ; 3 uses
  %i.hr = add nsw i64 %.5231.i.i.i.i.i, %i.ed     ; 2 uses
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !81, !noalias !1197
  %i.hv = trunc i64 %i.hr to i8
  %i.hw = and i8 %i.hv, 7
  %i.hx = lshr i8 %i.hu, %i.hw
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph233.i.i.i.i.i
  %i.hz = load ptr, ptr %6, align 8, !tbaa !344, !noalias !1205 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 72
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !157, !noalias !1206
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 104 ; 3 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !155, !noalias !1206 ; 2 uses
  %i.ie = sdiv i64 %i.id, 8
  %i.if = getelementptr inbounds i8, ptr %i.ib, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !81, !noalias !1206
  %i.ih = srem i64 %i.id, 8
  %i.ii = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !81, !noalias !1205
  %i.ik = or i8 %i.ij, %i.ig
  store i8 %i.ik, ptr %i.if, align 1, !tbaa !81, !noalias !1206
  %i.il = load i64, ptr %i.ic, align 8, !tbaa !155, !noalias !1206
  %i.im = add nsw i64 %i.il, 1
  store i64 %i.im, ptr %i.ic, align 8, !tbaa !155, !noalias !1206
  %i.in = load ptr, ptr %i.df, align 8, !tbaa !349, !noalias !1205, !nonnull !159, !align !160 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !348, !noalias !1207, !nonnull !159, !align !160
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !129, !noalias !1207
  %i.iq = add nsw i64 %i.ip, %.5231.i.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !347, !noalias !1207, !nonnull !159, !align !188
  %i.it = load i32, ptr %i.is, align 4, !tbaa !82, !noalias !1207 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul nsw i64 %i.iq, %i.iu                ; 2 uses
  %i.iw = icmp sgt i32 %i.it, 0
  br i1 %i.iw, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit164.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.au
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !337, !noalias !1207 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 168
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 200 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 224 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 304
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 320 ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.iv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.jw, %bb.av ] ; 2 uses
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !157, !noalias !1207
  %i.jf = load i64, ptr %i.ja, align 8, !tbaa !155, !noalias !1207 ; 2 uses
  %i.jg = sdiv i64 %i.jf, 8
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %i.jg ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !81, !noalias !1207
  %i.jj = srem i64 %i.jf, 8
  %i.jk = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !81, !noalias !1208
  %i.jm = or i8 %i.jl, %i.ji
  store i8 %i.jm, ptr %i.jh, align 1, !tbaa !81, !noalias !1207
  %i.jn = load i64, ptr %i.ja, align 8, !tbaa !155, !noalias !1207
  %i.jo = add nsw i64 %i.jn, 1
  store i64 %i.jo, ptr %i.ja, align 8, !tbaa !155, !noalias !1207
  %i.jp = load i64, ptr %i.jb, align 8, !tbaa !129, !noalias !1207
  %i.jq = add nsw i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jb, align 8, !tbaa !129, !noalias !1207
  %i.jr = load ptr, ptr %i.jc, align 8, !tbaa !157, !noalias !1207
  %i.js = load i64, ptr %i.jd, align 8, !tbaa !189, !noalias !1207
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %i.js
  store i64 %.06.i.i.i.i.i.i.i, ptr %i.jt, align 1, !noalias !1207
  %i.ju = load i64, ptr %i.jd, align 8, !tbaa !189, !noalias !1207
  %i.jv = add nsw i64 %i.ju, 8
  store i64 %i.jv, ptr %i.jd, align 8, !tbaa !189, !noalias !1207
  %i.jw = add nsw i64 %.06.i.i.i.i.i.i.i, 1       ; 2 uses
  %i.jx = load ptr, ptr %i.ir, align 8, !tbaa !347, !noalias !1207, !nonnull !159, !align !188
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !82, !noalias !1207
  %i.jz = sext i32 %i.jy to i64
  %i.ka = add nsw i64 %i.iv, %i.jz
  %i.kb = icmp slt i64 %i.jw, %i.ka
  br i1 %i.kb, label %bb.av, label %_ZN5arrow6StatusD2Ev.exit164.i.i.i.i.i, !llvm.loop !8

_ZN5arrow6StatusD2Ev.exit164.i.i.i.i.i:           ; preds = %bb.av, %bb.au
  store ptr null, ptr %24, align 8, !tbaa !92, !alias.scope !1209, !noalias !1179
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit164.i.i.i.i.i, %.lr.ph233.i.i.i.i.i
  %i.kc = add nsw i64 %.5231.i.i.i.i.i, 1         ; 2 uses
  %i.kd = add nuw nsw i64 %.0102232.i.i.i.i.i, 1  ; 2 uses
  %exitcond261.not.i.i.i.i.i = icmp eq i64 %i.kd, %i.fv
  br i1 %exitcond261.not.i.i.i.i.i, label %.critedge133.i.i.i.i.i, label %.lr.ph233.i.i.i.i.i, !llvm.loop !1149

.lr.ph228.i.i.i.i.i:                              ; preds = %.preheader203.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i
  %.0100227.i.i.i.i.i = phi i64 [ %i.kp, %_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i ], [ 0, %.preheader203.i.i.i.i.i ]
  %.6226.i.i.i.i.i = phi i64 [ %i.ko, %_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i ], [ %.0107244.i.i.i.i.i, %.preheader203.i.i.i.i.i ] ; 3 uses
  %i.ke = add nsw i64 %.6226.i.i.i.i.i, %i.ed     ; 2 uses
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81, !noalias !1197
  %i.ki = trunc i64 %i.ke to i8
  %i.kj = and i8 %i.ki, 7
  %i.kk = lshr i8 %i.kh, %i.kj
  %i.kl = trunc i8 %i.kk to i1
  br i1 %i.kl, label %_ZN5arrow6StatusD2Ev.exit166.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit166.i.i.i.i.i:           ; preds = %.lr.ph228.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !1196
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.6226.i.i.i.i.i)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc24.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit166.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.km = load ptr, ptr %14, align 8, !tbaa !92, !noalias !1211 ; 2 uses
  store ptr %i.km, ptr %24, align 8, !tbaa !92, !alias.scope !1212, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !1196
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i, label %.critedge147.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit168.i.i.i.i.i:           ; preds = %.noexc24.i.i.i, %.lr.ph228.i.i.i.i.i
  %i.ko = add nsw i64 %.6226.i.i.i.i.i, 1         ; 2 uses
  %i.kp = add nuw nsw i64 %.0100227.i.i.i.i.i, 1  ; 2 uses
  %exitcond260.not.i.i.i.i.i = icmp eq i64 %i.kp, %i.fv
  br i1 %exitcond260.not.i.i.i.i.i, label %.critedge133.i.i.i.i.i, label %.lr.ph228.i.i.i.i.i, !llvm.loop !1152

bb.ax:                                            ; preds = %bb.ao
  %i.kq = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 2 uses
  %.not123220.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.es, label %.preheader206.i.i.i.i.i, label %.preheader209.i.i.i.i.i

.preheader209.i.i.i.i.i:                          ; preds = %bb.ax
  br i1 %.not123220.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge133.i.i.i.i.i

.preheader206.i.i.i.i.i:                          ; preds = %bb.ax
  br i1 %.not123220.i.i.i.i.i, label %.lr.ph223.i.i.i.i.i, label %.critedge133.i.i.i.i.i

.lr.ph223.i.i.i.i.i:                              ; preds = %.preheader206.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i
  %.098222.i.i.i.i.i = phi i64 [ %i.lg, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ 0, %.preheader206.i.i.i.i.i ]
  %.7221.i.i.i.i.i = phi i64 [ %i.lf, %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i ], [ %.0107244.i.i.i.i.i, %.preheader206.i.i.i.i.i ] ; 3 uses
  %i.kr = add nsw i64 %.7221.i.i.i.i.i, %i.ed     ; 2 uses
  %i.ks = lshr i64 %i.kr, 3                       ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !81, !noalias !1197
  %i.kv = trunc i64 %i.kr to i8
  %i.kw = and i8 %i.kv, 7                         ; 2 uses
  %i.kx = lshr i8 %i.ku, %i.kw
  %i.ky = trunc i8 %i.kx to i1
  br i1 %i.ky, label %bb.ay, label %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph223.i.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ks
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !81, !noalias !1197
  %i.lb = lshr i8 %i.la, %i.kw
  %i.lc = trunc i8 %i.lb to i1
  br i1 %i.lc, label %_ZN5arrow6StatusD2Ev.exit170.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit172.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit170.i.i.i.i.i:           ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !1196
  invoke fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_16FSLSelectionImplENS_17FixedSizeListTypeEE11VisitFilterIZNS4_14GenerateOutputINS6_13FilterAdapterEEENS_6StatusEvEUllE_ZNS8_IS9_EESA_vEUlvE_EESA_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.7221.i.i.i.i.i)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1179

.noexc25.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit170.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
end_hunk_1
