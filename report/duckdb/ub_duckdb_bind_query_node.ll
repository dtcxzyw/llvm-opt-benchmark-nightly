inline.NumInlined: 7150
inline.NumDeleted: 3639
begin_hunk_0_@_ZN6duckdb6Binder8BindNodeERNS_16SetOperationNodeE:bb.a
  %.not.i131 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i131, label %bb.ce, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.cf

._crit_edge.i:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  store ptr %i.ls, ptr %i.ks, align 8
  store ptr %i.lq, ptr %i.kt, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i, %bb.cd
  %.lcssa.i = phi ptr [ %i.lr, %._crit_edge.i ], [ null, %bb.cd ]
  store ptr %.lcssa.i, ptr %4, align 8
  %i.ku = load i8, ptr %i.e, align 8, !tbaa !927
  invoke void @_ZN6duckdb18SetOpAliasGatherer18GatherSetOpAliasesENS_16SetOperationTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERNS2_INS_14BoundStatementELb1ESaISD_EEERKNS2_ImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef zeroext %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cl unwind label %bb.cn

bb.cf:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, %.lr.ph.i
  %.pre4045.i = phi ptr [ %i.kr, %.lr.ph.i ], [ %.pre4046.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 2 uses
  %.pre42.i = phi ptr [ %i.kq, %.lr.ph.i ], [ %.pre43.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 2 uses
  %i.kv = phi ptr [ %i.kr, %.lr.ph.i ], [ %i.lo, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ]
  %i.kw = phi ptr [ %i.kq, %.lr.ph.i ], [ %i.lp, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ]
  %i.kx = phi ptr [ null, %.lr.ph.i ], [ %i.lq, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 5 uses
  %i.ky = phi ptr [ null, %.lr.ph.i ], [ %i.ls, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 5 uses
  %storemerge18.i = phi i64 [ 0, %.lr.ph.i ], [ %i.lt, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 3 uses
  %i.kz = phi ptr [ null, %.lr.ph.i ], [ %i.lr, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 9 uses
  %.not.i.i132 = icmp eq ptr %i.ky, %i.kx
  br i1 %.not.i.i132, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 %storemerge18.i, ptr %i.ky, align 8, !tbaa !112
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775800
  br i1 %i.ld, label %bb.ci, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.ky, ptr %i.ks, align 8
  store ptr %i.kx, ptr %i.kt, align 8
  store ptr %i.kz, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.ci
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
  %i.le = ashr exact i64 %i.lc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 1152921504606846975)
  %i.li = select i1 %i.lg, i64 1152921504606846975, i64 %i.lh ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #26
          to label %.noexc8.i unwind label %.loopexit.i ; 4 uses

.noexc8.i:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i64 %storemerge18.i, ptr %i.ll, align 8, !tbaa !112
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.cj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.cj:                                            ; preds = %.noexc8.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lk, ptr align 8 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cj, %.noexc8.i
  %.not.i17.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kz) #25
  %.pre.pre.i = load ptr, ptr %i.kp, align 8, !tbaa !172
  %.pre40.pre.i = load ptr, ptr %i.ko, align 8, !tbaa !175
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ck, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %.pre40.i = phi ptr [ %.pre40.pre.i, %bb.ck ], [ %.pre4045.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.ck ], [ %.pre42.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.li
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.cg
  %.pre4046.i = phi ptr [ %.pre40.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre4045.i, %bb.cg ]
  %.pre43.i = phi ptr [ %.pre.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre42.i, %bb.cg ]
  %i.lo = phi ptr [ %.pre40.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kv, %bb.cg ] ; 2 uses
  %i.lp = phi ptr [ %.pre.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kw, %bb.cg ] ; 2 uses
  %i.lq = phi ptr [ %i.ln, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kx, %bb.cg ] ; 2 uses
  %.pn27.i = phi ptr [ %i.ll, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ky, %bb.cg ]
  %i.lr = phi ptr [ %i.lk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kz, %bb.cg ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 8 ; 2 uses
  %i.lt = add nuw i64 %storemerge18.i, 1          ; 2 uses
  %i.lu = ptrtoint ptr %i.lp to i64
  %i.lv = ptrtoint ptr %i.lo to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = ashr exact i64 %i.lw, 5
  %i.ly = icmp ult i64 %i.lt, %i.lx
  br i1 %i.ly, label %bb.cf, label %._crit_edge.i, !llvm.loop !950

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ky, ptr %i.ks, align 8
  store ptr %i.kx, ptr %i.kt, align 8
  store ptr %i.kz, ptr %4, align 8
  br label %bb.co

.loopexit.split-lp.i:                             ; preds = %bb.ci
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.ce
  %i.lz = load ptr, ptr %4, align 8, !tbaa !738   ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i9.i, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef nonnull %i.lz) #25
  br label %bb.cq

bb.cn:                                            ; preds = %bb.ce
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %.pre41.i = load ptr, ptr %4, align 8, !tbaa !738
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit.split-lp.i, %.loopexit.i
  %i.mb = phi ptr [ %.pre41.i, %bb.cn ], [ %i.kz, %.loopexit.i ], [ %i.kz, %.loopexit.split-lp.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.ma, %bb.cn ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i10.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i10.i, label %_ZNSt6vectorImSaImEED2Ev.exit11.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit11.i

_ZNSt6vectorImSaImEED2Ev.exit11.i:                ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body134

bb.cq:                                            ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !198 ; 3 uses
  %i.me = load ptr, ptr %20, align 8, !tbaa !201  ; 7 uses
  %i.mf = ptrtoint ptr %i.md to i64               ; 2 uses
  %i.mg = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.md, %i.me
  br i1 %.not.i.i.i.i.i, label %.noexc138.thread, label %bb.cr

.noexc138.thread:                                 ; preds = %bb.cq
  %i.mi = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr null, i64 %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !492
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.ml = icmp ugt i64 %i.mh, 9223372036854775800
  br i1 %i.ml, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !120

.noexc.i.i.i:                                     ; preds = %bb.cr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc137 unwind label %bb.cy

.noexc137:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.cr
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #26
          to label %.noexc138 unwind label %bb.cy ; 7 uses

.noexc138:                                        ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.mm, ptr %22, align 8, !tbaa !201
  %i.mn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !198
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mh
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !492
  %i.mq = sub i64 %i.mf, %i.mg
  %i.mr = add i64 %i.mq, -8                       ; 2 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mr, 56
  %i.mu = ptrtoaddr ptr %i.mm to i64
  %i.mv = sub i64 %i.mu, %i.mg
  %diff.check = icmp ult i64 %i.mv, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc138
  %n.vec = and i64 %i.mt, 4611686018427387900     ; 3 uses
  %i.mw = shl i64 %n.vec, 3                       ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mm, i64 %i.mw  ; 2 uses
  %i.my = getelementptr i8, ptr %i.me, i64 %i.mw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mm, i64 %i.mz ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.me, i64 %i.mz ; 2 uses
  %i.na = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep307, align 8
  %wide.load308 = load <2 x i64>, ptr %i.na, align 8
  %i.nb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load308, ptr %i.nb, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mt, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc138, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.mm, %.noexc138 ], [ %i.mx, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.me, %.noexc138 ], [ %i.my, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.nd = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.nd, ptr %.09.i.i.i.i.i.i, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i136 = icmp eq ptr %i.ne, %i.md
  br i1 %.not.i.i.i.i.i.i136, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !952

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc138.thread
  %i.ng = phi ptr [ %i.mi, %.noexc138.thread ], [ %i.mn, %middle.block ], [ %i.mn, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc138.thread ], [ %i.mx, %middle.block ], [ %i.nf, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ng, align 8, !tbaa !198
  invoke void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull %22, ptr noundef nonnull align 8 dereferenceable(328) %19)
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %.loopexit
  %i.nh = load ptr, ptr %22, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef nonnull %i.nh) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit: ; preds = %bb.cs, %bb.ct
  invoke void @_ZN6duckdb6Binder16PrepareModifiersERNS_11OrderBinderERNS_9QueryNodeERNS_14BoundQueryNodeE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !103 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.nj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nm = load ptr, ptr %21, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i140, label %_ZN6duckdb11OrderBinderD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.nm) #25
  br label %_ZN6duckdb11OrderBinderD2Ev.exit

_ZN6duckdb11OrderBinderD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.not.i.i.i141 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142, label %bb.cw

bb.cw:                                            ; preds = %_ZN6duckdb11OrderBinderD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.me) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142: ; preds = %_ZN6duckdb11OrderBinderD2Ev.exit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dd

bb.cx:                                            ; preds = %bb.cc
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.cy:                                            ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

bb.cz:                                            ; preds = %.loopexit
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = load ptr, ptr %22, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef nonnull %i.nq) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

bb.db:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11OrderBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #23
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144: ; preds = %bb.da, %bb.cz, %bb.db, %bb.cy
  %.pn75 = phi { ptr, i32 } [ %i.nr, %bb.db ], [ %i.no, %bb.cy ], [ %i.np, %bb.cz ], [ %i.np, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body134

.body134:                                         ; preds = %bb.cx, %_ZNSt6vectorImSaImEED2Ev.exit11.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144 ], [ %i.nn, %bb.cx ], [ %.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit11.i ]
  %i.ns = load ptr, ptr %20, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146, label %bb.dc

bb.dc:                                            ; preds = %.body134
  call void @_ZdlPv(ptr noundef nonnull %i.ns) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146: ; preds = %.body134, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.ds

bb.dd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142, %bb.cb
  %i.nt = load i64, ptr %i.m, align 8, !tbaa !931
  %i.nu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  invoke void @_ZN6duckdb6Binder13BindModifiersERNS_14BoundQueryNodeEmRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKNS3_INS_11LogicalTypeELb1ESaISE_EEERKNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef %i.nt, ptr noundef nonnull align 8 dereferenceable(24) %i.nu, ptr noundef nonnull align 8 dereferenceable(24) %i.nv, ptr noundef nonnull align 8 dereferenceable(328) %19)
          to label %bb.de unwind label %bb.do

bb.de:                                            ; preds = %bb.dd
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nw, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 57, i1 false)
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ny = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.nx, ptr noundef nonnull align 8 dereferenceable(24) %i.nv)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.dp ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.de
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, ptr noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149 unwind label %bb.dp ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN6duckdb6Binder10CreatePlanERNS_21BoundSetOperationNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.635") align 8 %23, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.df unwind label %bb.dq

bb.df:                                            ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149
  %i.ob = load ptr, ptr %23, align 8, !tbaa !360
  %i.oc = load ptr, ptr %0, align 8, !tbaa !360   ; 3 uses
  store ptr %i.ob, ptr %0, align 8, !tbaa !360
  %.not.i.i.i.i.i150 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i150, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.df
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !10
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.oc) #23, !inline_history !658
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.og = load i8, ptr %i.h, align 8, !tbaa !919
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.og, ptr %i.oh, align 8, !tbaa !812
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !663 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !664 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.on = load <2 x ptr>, ptr %i.g, align 8, !tbaa !387
  store <2 x ptr> %i.on, ptr %i.oi, align 8, !tbaa !387
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !388
  store ptr %i.op, ptr %i.om, align 8, !tbaa !388
  %.not4.i.i.i.i.i = icmp eq ptr %i.oj, %i.ol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14BoundStatementES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder8BindNodeERNS_9QueryNodeE:bb.a
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %bb.bd
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #23
  br label %.body

.body:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.br
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.br ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bu

bb.bs:                                            ; preds = %bb.av
  %i.ib = load ptr, ptr %4, align 8, !tbaa !967   ; 3 uses
  %i.ic = load ptr, ptr %i.cv, align 8, !tbaa !958 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i ], [ %i.ib, %bb.bs ] ; 2 uses
  call void @_ZN6duckdb12BoundCTEDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i.i) #23
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.id, %i.ic
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !972

_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !967
  br label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bs
  %i.ie = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ib, %bb.bs ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ie) #25
  br label %_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bq, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.at, %bb.ao, %bb.ak, %bb.ag, %bb.ac
  %.pn32.pn = phi { ptr, i32 } [ %.pn3260, %bb.at ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.co, %bb.ao ], [ %i.cf, %bb.ac ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ak ], [ %.pn, %.body ], [ %i.hz, %bb.bq ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.x, %bb.y, %bb.bu
  %.pn37.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bu ], [ %i.cc, %bb.y ], [ %.pn35, %bb.x ]
  call void @_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn37.pn

bb.bw:                                            ; preds = %bb.ar
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !973    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18GatherSetOpBindersERNS_6vectorINS_14BoundStatementELb1ESaIS1_EEERNS0_INS_10shared_ptrINS_6BinderELb1EEELb1ESaIS7_EEERNS0_ISt17reference_wrapperIS6_ELb1ESaISC_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not21 = icmp eq ptr %i.a, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387  ; 2 uses
  %.not2023 = icmp eq ptr %i.f, %i.h
  br i1 %.not2023, label %._crit_edge27, label %.lr.ph26

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit
  %.sroa.017.022 = phi ptr [ %i.a, %.lr.ph ], [ %i.au, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.022) ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !198  ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !492
  %.not.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.i to i64
  store i64 %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.d, align 8, !tbaa !198
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !201    ; 7 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %i.i to i64
  store i64 %i.ab, ptr %i.aa, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = sub i64 %i.p, %i.q
  %i.ae = add i64 %i.ad, -8                       ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  %i.ah = sub i64 %i.ac, %i.q
  %diff.check = icmp ult i64 %i.ah, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.o, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.am = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !978, !noalias !975
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !978, !noalias !975
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !975, !noalias !978
  store <2 x i64> %wide.load36, ptr %i.an, align 8, !alias.scope !975, !noalias !978
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.preheader38:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !978, !noalias !975
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !975, !noalias !978
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !981

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.z, ptr %2, align 8, !tbaa !201
  store ptr %i.as, ptr %i.d, align 8, !tbaa !198
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.e, align 8, !tbaa !492
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge27:                                    ; preds = %.lr.ph26, %._crit_edge
  ret void

.lr.ph26:                                         ; preds = %._crit_edge, %.lr.ph26
  %.sroa.011.024 = phi ptr [ %i.ax, %.lr.ph26 ], [ %i.f, %._crit_edge ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 64
  tail call fastcc void @_ZN6duckdbL18GatherSetOpBindersERNS_6vectorINS_14BoundStatementELb1ESaIS1_EEERNS0_INS_10shared_ptrINS_6BinderELb1EEELb1ESaIS7_EEERNS0_ISt17reference_wrapperIS6_ELb1ESaISC_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 136 ; 2 uses
  %.not20 = icmp eq ptr %i.ax, %i.h
  br i1 %.not20, label %._crit_edge27, label %.lr.ph26
}

declare void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder10CreatePlanERNS_21BoundSetOperationNodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.635") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.818", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %6 = alloca %"class.duckdb::vector.818", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 5 uses
  %8 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !927
  %switch.tableidx = add i8 %i.b, -1              ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 4
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ac unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.027, label %bb.f, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.027, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3575 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #23
  br label %bb.ab

switch.lookup:                                    ; preds = %bb.a
  %i.j = shl nuw nsw i8 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i8 %i.j to i32
  %switch.downshift = lshr i32 1263357003, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !664
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !663
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49, %switch.lookup
  %i.t = phi ptr [ null, %switch.lookup ], [ %i.dc, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ]
  %i.u = phi ptr [ null, %switch.lookup ], [ %i.dd, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !300
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !112, !noalias !982
  %i.ah = load ptr, ptr %6, align 8, !tbaa !898, !noalias !982
  store ptr %i.ah, ptr %3, align 8, !tbaa !898, !noalias !982
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.ai, align 8, !tbaa !896, !noalias !982
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.aj, align 8, !tbaa !897, !noalias !982
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !982
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !985, !range !111, !noalias !982, !noundef !88
  %i.al = trunc nuw i8 %i.ak to i1
  invoke void @_ZN6duckdb19LogicalSetOperationC1EmmNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEENS_19LogicalOperatorTypeEbb(ptr noundef nonnull align 8 dereferenceable(122) %i.z, i64 noundef %i.ag, i64 noundef %i.ae, ptr noundef nonnull %3, i8 noundef zeroext %switch.masked, i1 noundef zeroext %i.al, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.i, !noalias !982
end_hunk_1
begin_hunk_2_@_ZN6duckdb12CTEBindState4BindERNS_10CTEBindingE:bb.a
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !114  ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !99
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !117
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !1168
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !1168
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, !prof !120

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !117
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23, !inline_history !118
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23, !inline_history !118
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i25 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, !prof !120

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.an = call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @_ZN6duckdb6Binder18SetCanContainNullsEb(ptr noundef nonnull align 8 dereferenceable(472) %i.an, i1 noundef zeroext true)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !1192, !nonnull !88, !align !89
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6Binder16GetActiveBindersEv(ptr noundef nonnull align 8 dereferenceable(472) %i.ao) ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1190 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1186 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %i.ar, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit
  %.pre = load i64, ptr %i.aq, align 8, !tbaa !1190
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %i.ba = phi i64 [ %i.ar, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.066.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.sroa.066.1, %._crit_edge.loopexit ] ; 10 uses
  %i.bb = phi ptr [ %i.at, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.cn, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa82 = phi ptr [ %i.au, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.co, %._crit_edge.loopexit ]
  %.lcssa79 = phi i64 [ %i.av, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.cp, %._crit_edge.loopexit ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %.lcssa82, i64 %i.ba ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %.lcssa79
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bb, %i.bf
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  store ptr %i.bf, ptr %i.as, align 8, !tbaa !1186
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

.lr.ph:                                           ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit
  %.021100 = phi i64 [ %i.cm, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ %i.ar, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  %.sroa.066.099 = phi ptr [ %.sroa.066.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 10 uses
  %.sroa.9.098 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 6 uses
  %.sroa.14.097 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %.021100)
          to label %bb.n unwind label %.loopexit73 ; 2 uses

bb.n:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.9.098, %.sroa.14.097
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %.sroa.9.098, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = ptrtoint ptr %.sroa.9.098 to i64        ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.066.099 to i64      ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.q, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc unwind label %.loopexit.split-lp74

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i27)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #26
          to label %.noexc28 unwind label %.loopexit73 ; 8 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = load i64, ptr %i.bg, align 8
  store i64 %i.bu, ptr %i.bt, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.066.099, %.sroa.9.098
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc28
  %i.bv = ptrtoaddr ptr %i.bs to i64
  %i.bw = sub i64 %i.bi, %i.bj
  %i.bx = add i64 %i.bw, -8                       ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 24
  %i.ca = sub i64 %i.bv, %i.bj
  %diff.check = icmp ult i64 %i.ca, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.066.099, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.ce ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.sroa.066.099, i64 %i.ce ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.cf = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep158, align 8, !alias.scope !1196, !noalias !1193
  %wide.load159 = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !1196, !noalias !1193
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1193, !noalias !1196
  store <2 x i64> %wide.load159, ptr %i.cg, align 8, !alias.scope !1193, !noalias !1196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader181

.lr.ph.i.i.i.i.i.i.preheader181:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.066.099, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader181, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !1196, !noalias !1193
  store i64 %i.ci, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !1193, !noalias !1196
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cj, %.sroa.9.098
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1199

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc28 ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.066.099, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.099) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.o
  %.sroa.14.1 = phi ptr [ %i.cl, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.097, %bb.o ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.9.098, %bb.o ]
  %.sroa.066.1 = phi ptr [ %i.bs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.066.099, %bb.o ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.cm = add nuw i64 %.021100, 1                 ; 2 uses
  %i.cn = load ptr, ptr %i.as, align 8, !tbaa !1186 ; 2 uses
  %i.co = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  %i.ct = icmp ult i64 %i.cm, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1200

.loopexit73:                                      ; preds = %.lr.ph, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp74:                             ; preds = %bb.q
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, %._crit_edge
  %i.cu = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = invoke noundef i64 @_ZN6duckdb7Binding8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cx = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb7Binding15GetBindingAliasEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb12BindingAliasC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.cx)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11BindContext13AddCTEBindingEmNS_12BindingAliasERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERKNS2_INS_11LogicalTypeELb1ESaISD_EEENS_7CTETypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.cv, i64 noundef %i.cw, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %5, align 8, !tbaa !303   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !300 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %i.cy, %bb.w ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #23
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !660

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !303
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.dc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cy, %bb.w ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dd = load ptr, ptr %4, align 8, !tbaa !175   ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.dd, %i.df
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i32 = phi ptr [ %i.dj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dd, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.dg = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !103 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 16
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  call void @_ZdlPv(ptr noundef %i.dg) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.dj, %i.df
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !655

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i34 = load ptr, ptr %4, align 8, !tbaa !175
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.dk = phi ptr [ %.pr.i34, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dd, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i35 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !103 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.dq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.dt = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.dt) #25
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1201, !nonnull !88, !align !89
  invoke void @_ZN6duckdb6Binder4BindERNS_9QueryNodeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundStatement") align 8 %6, ptr noundef nonnull align 8 dereferenceable(472) %i.dw, ptr noundef nonnull align 8 dereferenceable(120) %i.dy)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ea = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb14BoundStatementaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 8 dereferenceable(136) %6) #23 ; 0 uses
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not105 = icmp eq ptr %.sroa.066.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not105, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.pre119 = load ptr, ptr %i.as, align 8, !tbaa !1186
  br label %bb.ae

._crit_edge109:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52, %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %._crit_edge109, %.critedge, %bb.u, %bb.t, %bb.s, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %bb.v
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  br label %bb.aq

bb.ad:                                            ; preds = %bb.z, %_ZN6duckdb12BindingAliasD2Ev.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aq

bb.ae:                                            ; preds = %.lr.ph108, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52
  %i.ei = phi ptr [ %.pre119, %.lr.ph108 ], [ %i.ft, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52 ] ; 5 uses
  %.sroa.058.0106 = phi ptr [ %.sroa.066.0.lcssa, %.lr.ph108 ], [ %i.fu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52 ] ; 3 uses
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !1202
  %.not.i37 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i37, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i64, ptr %.sroa.058.0106, align 8
  store i64 %i.ek, ptr %i.ei, align 8
  %i.el = load ptr, ptr %i.as, align 8, !tbaa !1186
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.as, align 8, !tbaa !1186
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52

bb.ag:                                            ; preds = %bb.ae
  %i.en = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 7 uses
  %i.eo = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.ah, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.ag
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i39, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i.i40)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #26
          to label %.noexc51 unwind label %.loopexit ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  %i.fa = load i64, ptr %.sroa.058.0106, align 8
  store i64 %i.fa, ptr %i.ez, align 8
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.en, %i.ei
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i42.preheader:                   ; preds = %.noexc51
  %i.fb = ptrtoaddr ptr %i.ey to i64
  %i.fc = sub i64 %i.eo, %i.ep
  %i.fd = add i64 %i.fc, -8                       ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.fd, 24
  %i.fg = sub i64 %i.fb, %i.ep
  %diff.check162 = icmp ult i64 %i.fg, 32
  %or.cond179 = or i1 %min.iters.check164, %diff.check162
  br i1 %or.cond179, label %.lr.ph.i.i.i.i.i.i42.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i.i.i.i.i.i42.preheader
  %n.vec167 = and i64 %i.ff, 4611686018427387900  ; 3 uses
  %i.fh = shl i64 %n.vec167, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %i.en, i64 %i.fh
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.fk = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.ey, i64 %i.fk ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.en, i64 %i.fk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.fl = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !alias.scope !1206, !noalias !1203
  %wide.load173 = load <2 x i64>, ptr %i.fl, align 8, !alias.scope !1206, !noalias !1203
  %i.fm = getelementptr i8, ptr %next.gep170, i64 16
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !alias.scope !1203, !noalias !1206
  store <2 x i64> %wide.load173, ptr %i.fm, align 8, !alias.scope !1203, !noalias !1206
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.fn, label %middle.block175, label %vector.body168, !llvm.loop !1208

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.ff, %n.vec167
  br i1 %cmp.n176, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader180

.lr.ph.i.i.i.i.i.i42.preheader180:                ; preds = %.lr.ph.i.i.i.i.i.i42.preheader, %middle.block175
  %.012.i.i.i.i.i.i43.ph = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.fi, %middle.block175 ]
  %.0911.i.i.i.i.i.i44.ph = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.fj, %middle.block175 ]
  br label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.lr.ph.i.i.i.i.i.i42.preheader180, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i42.preheader180 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i42.preheader180 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.fo = load i64, ptr %.0911.i.i.i.i.i.i44, align 8, !alias.scope !1206, !noalias !1203
  store i64 %i.fo, ptr %.012.i.i.i.i.i.i43, align 8, !alias.scope !1203, !noalias !1206
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.fp, %i.ei
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !1209

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %middle.block175, %.noexc51
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.ey, %.noexc51 ], [ %i.fi, %middle.block175 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i42 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i23.i.i48 = icmp eq ptr %i.en, null
  br i1 %.not.i23.i.i48, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46
  call void @_ZdlPv(ptr noundef nonnull %i.en) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49: ; preds = %bb.ai, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46
  store ptr %i.ey, ptr %i.ap, align 8, !tbaa !1189
  store ptr %i.fr, ptr %i.as, align 8, !tbaa !1186
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fs, ptr %i.eb, align 8, !tbaa !1202
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49, %bb.af
  %i.ft = phi ptr [ %i.fr, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49 ], [ %i.em, %bb.af ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.058.0106, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fu, %.sroa.9.0.lcssa
  br i1 %.not, label %._crit_edge109, label %bb.ae

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %._crit_edge109
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.fx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader unwind label %bb.ab ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1210, !nonnull !88, !align !89 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !172
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !175
  %.not112 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not112, label %.critedge, label %.lr.ph111

.lr.ph111:                                        ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ge = phi ptr [ %i.fz, %.lr.ph111 ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.0110 = phi i64 [ 0, %.lr.ph111 ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !172
  %i.gg = load ptr, ptr %i.fw, align 8, !tbaa !175
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 5
  %i.gl = icmp ult i64 %.0110, %i.gk
  br i1 %i.gl, label %bb.ak, label %.critedge

.critedge:                                        ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader
  invoke void @_ZN6duckdb11QueryResult18DeduplicateColumnsERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %bb.ao unwind label %bb.ab

bb.ak:                                            ; preds = %bb.aj
  %i.gm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 noundef %.0110)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i64 noundef %.0110)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.am
  %i.go = add nuw i64 %.0110, 1                   ; 2 uses
  %i.gp = load ptr, ptr %i.fy, align 8, !tbaa !1210, !nonnull !88, !align !89 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !172
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !175
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 5
  %i.gx = icmp ult i64 %i.go, %i.gw
  br i1 %i.gx, label %bb.aj, label %.critedge, !llvm.loop !1211

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %.critedge
  %.not.i.i.i55 = icmp eq ptr %.sroa.066.0.lcssa, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.0.lcssa) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit: ; preds = %bb.ao, %bb.ap
  ret void

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit73, %.loopexit.split-lp74, %bb.an, %bb.ad, %bb.ac, %bb.ab
  %.sroa.066.093 = phi ptr [ %.sroa.066.0.lcssa, %bb.ac ], [ %.sroa.066.099, %.loopexit.split-lp74 ], [ %.sroa.066.0.lcssa, %bb.an ], [ %.sroa.066.0.lcssa, %bb.ab ], [ %.sroa.066.0.lcssa, %bb.ad ], [ %.sroa.066.099, %.loopexit73 ], [ %.sroa.066.0.lcssa, %.loopexit.split-lp ], [ %.sroa.066.0.lcssa, %.loopexit ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.ac ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp74 ], [ %i.gy, %bb.an ], [ %i.ef, %bb.ab ], [ %i.eh, %bb.ad ], [ %lpad.loopexit75, %.loopexit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i56 = icmp eq ptr %.sroa.066.093, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.093) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57: ; preds = %bb.aq, %bb.ar
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb6Binder18SetCanContainNullsEb(ptr noundef nonnull align 8 dereferenceable(472), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1186
  %i.e = load ptr, ptr %0, align 8, !tbaa !1189   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !112
  store i64 %i.i, ptr %i.b, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !298

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
end_hunk_2
