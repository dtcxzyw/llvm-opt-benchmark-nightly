Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_Z7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %.body62 unwind label %bb.ab   ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #40
  unreachable

bb.ac:                                            ; preds = %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalIPKNS2_13RGBColorSpaceEE5EntryEEESaIS9_EEC2EmRKSA_.exit.thread.i.i
  %i.dt = ptrtoint ptr %i.dk to i64
  %i.du = ptrtoint ptr %i.dl to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 5
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %10, ptr %i.dn, align 16, !tbaa !220
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %12, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !222
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %13, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !224
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %14, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !226
  store ptr %i.dn, ptr %15, align 8, !tbaa !98
  store ptr @"_ZNSt17_Function_handlerIFvlEZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E9_M_invokeERKSt9_Any_dataOl", ptr %i.dx, align 8, !tbaa !228
  store ptr @"_ZNSt17_Function_handlerIFvlEZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.dm, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ea, align 8
  %i.eb = ptrtoint ptr %15 to i64
  store i64 %i.eb, ptr %3, align 8, !tbaa !230
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.dz, align 8, !tbaa !100
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.dy, align 8, !tbaa !71
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.dw, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !71 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i64, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.aj unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #40
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !71 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.eh, null
  br i1 %.not.i3.i, label %.body66, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body66 unwind label %bb.ai   ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #40
  unreachable

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.el = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 2 uses
  %.not.i68 = icmp eq ptr %i.el, null
  br i1 %.not.i68, label %_ZNSt14_Function_baseD2Ev.exit69, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = invoke noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit69 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit69:                 ; preds = %bb.aj, %bb.ak
  %i.ep = load atomic i8, ptr %14 seq_cst, align 1, !range !161, !noundef !162
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.bx, label %bb.aq

bb.am:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.noexc.i49, %bb.y
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.an:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i54, %.noexc.i58, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS2_5ImageEE5EntryEEESaIS7_EEC2EmRKS8_.exit.thread.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.body66:                                          ; preds = %bb.ag, %bb.ah
  %i.et = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 2 uses
  %.not.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i70, label %.body62, label %bb.ao

bb.ao:                                            ; preds = %.body66
  %i.eu = invoke noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %.body62 unwind label %bb.ap   ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #40
  unreachable

bb.aq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ex = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  store i32 0, ptr %16, align 8, !tbaa !150
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 4 uses
  store i32 0, ptr %i.ey, align 4, !tbaa !151
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.ez, align 8, !tbaa !152
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fb = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %i.fc = ptrtoint ptr %i.fb to i64
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !153
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ff = ptrtoint ptr %i.ex to i64               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i8 0, i64 32, i1 false)
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !153
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 88
  store i64 %i.ff, ptr %i.fh, align 8, !tbaa !153
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 120
  store i64 %i.ff, ptr %i.fj, align 8, !tbaa !153
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  %i.fl = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(112) %12) #37
  %i.fm = icmp eq i32 %i.fl, 35
  br i1 %i.fm, label %bb.ar, label %_ZNSt12shared_mutex4lockEv.exit.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #39
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ar
  unreachable

_ZNSt12shared_mutex4lockEv.exit.i:                ; preds = %bb.aq
  %i.fn = load ptr, ptr %i.ck, align 8, !tbaa !625 ; 2 uses
  %i.fo = load ptr, ptr %i.cs, align 8, !tbaa !625 ; 2 uses
  %.not4.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not4.i, label %.loopexit130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12shared_mutex4lockEv.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 48
  br label %bb.as

bb.as:                                            ; preds = %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i", %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.ln, %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i" ] ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 160
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !232, !range !161, !noundef !162
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_5ImageEE5EntryEEptEv.exit.i, label %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i"

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_5ImageEE5EntryEEptEv.exit.i: ; preds = %bb.as
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.fw, align 4 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store i32 0, ptr %2, align 8, !tbaa !151
  store i32 0, ptr %i.fp, align 4, !tbaa !152
  %.sroa.017.0.copyload.i.i = load i64, ptr %2, align 8
  %.not.i.i73 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.017.0.copyload.i.i
  br i1 %.not.i.i73, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_5ImageEE5EntryEEptEv.exit.i
  invoke void @_ZN4pbrt8LogFatalIJRA16_KcRA14_S1_S3_RNS_6Point2IiEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef 901, ptr noundef nonnull @.str.311, ptr noundef nonnull align 1 dereferenceable(16) @.str.312, ptr noundef nonnull align 1 dereferenceable(14) @.str.313, ptr noundef nonnull align 1 dereferenceable(16) @.str.312, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(14) @.str.313, ptr noundef nonnull align 4 dereferenceable(8) %2) #39
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_5ImageEE5EntryEEptEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %.sroa.0.0.copyload.i24.i.i = load i64, ptr %i.ey, align 4 ; 3 uses
  %i.fx = icmp eq i64 %.sroa.0.0.copyload.i24.i.i, 0
  br i1 %i.fx, label %bb.av, label %.preheader128.i.i

.preheader128.i.i:                                ; preds = %bb.au
  %.sroa.3.0.extract.shift136.i.i = lshr i64 %.sroa.0.0.copyload.i24.i.i, 32
  %.sroa.3.0.extract.trunc137.i.i = trunc nuw i64 %.sroa.3.0.extract.shift136.i.i to i32
  %i.fy = icmp sgt i32 %.sroa.3.0.extract.trunc137.i.i, 0
  br i1 %i.fy, label %.preheader127.lr.ph.i.i, label %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i"

.preheader127.lr.ph.i.i:                          ; preds = %.preheader128.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 136
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 104
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 56
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 72
  br label %.preheader127.i.i

bb.av:                                            ; preds = %bb.au
  %i.ge = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt5ImageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %16, ptr noundef nonnull align 8 dereferenceable(152) %i.fv)
          to label %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader127.i.i:                                ; preds = %._crit_edge134.i.i, %.preheader127.lr.ph.i.i
  %.sroa.0.0.copyload.i28.pre.i8.i = phi i64 [ %.sroa.0.0.copyload.i24.i.i, %.preheader127.lr.ph.i.i ], [ %.sroa.0.0.copyload.i28.pre.i9.i, %._crit_edge134.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i28155.i.i = phi i64 [ 0, %.preheader127.lr.ph.i.i ], [ %indvars.iv.next144.i.i, %._crit_edge134.i.i ] ; 5 uses
  %.sroa.0.0.extract.trunc132.i.i = trunc i64 %.sroa.0.0.copyload.i28.pre.i8.i to i32
  %19 = icmp sgt i32 %.sroa.0.0.extract.trunc132.i.i, 0
  %20 = lshr i64 %.sroa.0.0.copyload.i28.pre.i8.i, 32
  %21 = trunc nuw i64 %20 to i32                  ; 2 uses
  br i1 %19, label %.preheader.lr.ph.i.i, label %._crit_edge134.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader127.i.i
  %.sroa.286.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.0.copyload.i28155.i.i, 32
  %i.gf = trunc nuw nsw i64 %.sroa.0.0.copyload.i28155.i.i to i32 ; 4 uses
  %.pre.i = load i64, ptr %i.fq, align 8, !tbaa !138
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i74, %.preheader.lr.ph.i.i
  %.sroa.0.0.copyload.i28.pre.i10.i = phi i64 [ %.sroa.0.0.copyload.i28.pre.i8.i, %.preheader.lr.ph.i.i ], [ %.sroa.0.0.copyload.i28.pre.i.i, %._crit_edge.i.i74 ]
  %.sroa.3.0.extract.trunc.i10.i = phi i32 [ %21, %.preheader.lr.ph.i.i ], [ %.sroa.3.0.extract.trunc.i9.i, %._crit_edge.i.i74 ]
  %.sroa.0.0.copyload.i29.i6.i = phi i64 [ %.sroa.0.0.copyload.i28.pre.i8.i, %.preheader.lr.ph.i.i ], [ %.sroa.0.0.copyload.i29.i.i, %._crit_edge.i.i74 ]
  %i.gg = phi i64 [ %.pre.i, %.preheader.lr.ph.i.i ], [ %i.gl, %._crit_edge.i.i74 ] ; 2 uses
  %indvars.iv140.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next141.i.i, %._crit_edge.i.i74 ] ; 5 uses
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.preheader.preheader.i.lr.ph.i.i, label %._crit_edge.i.i74

.preheader.preheader.i.lr.ph.i.i:                 ; preds = %.preheader.i.i
  %.sroa.085.0.insert.insert.i.i = add nuw nsw i64 %indvars.iv140.i.i, %.sroa.286.0.insert.shift.i.i
  %i.gj = trunc nuw nsw i64 %indvars.iv140.i.i to i32 ; 4 uses
  br label %.preheader.preheader.i.i.i

._crit_edge134.i.i:                               ; preds = %._crit_edge.i.i74, %.preheader127.i.i
  %.sroa.0.0.copyload.i28.pre.i9.i = phi i64 [ %.sroa.0.0.copyload.i28.pre.i8.i, %.preheader127.i.i ], [ %.sroa.0.0.copyload.i28.pre.i.i, %._crit_edge.i.i74 ]
  %.sroa.3.0.extract.trunc.i.i = phi i32 [ %21, %.preheader127.i.i ], [ %.sroa.3.0.extract.trunc.i9.i, %._crit_edge.i.i74 ]
  %indvars.iv.next144.i.i = add nuw nsw i64 %.sroa.0.0.copyload.i28155.i.i, 1 ; 2 uses
  %22 = sext i32 %.sroa.3.0.extract.trunc.i.i to i64
  %i.gk = icmp slt i64 %indvars.iv.next144.i.i, %22
  br i1 %i.gk, label %.preheader127.i.i, label %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i", !llvm.loop !621

._crit_edge.i.loopexit.i:                         ; preds = %.noexc84
  %.sroa.0.0.copyload.i29.i.pre.i = load i64, ptr %i.ey, align 4 ; 3 uses
  %23 = lshr i64 %.sroa.0.0.copyload.i29.i.pre.i, 32
  %24 = trunc nuw i64 %23 to i32
  br label %._crit_edge.i.i74

._crit_edge.i.i74:                                ; preds = %._crit_edge.i.loopexit.i, %.preheader.i.i
  %.sroa.0.0.copyload.i28.pre.i.i = phi i64 [ %.sroa.0.0.copyload.i29.i.pre.i, %._crit_edge.i.loopexit.i ], [ %.sroa.0.0.copyload.i28.pre.i10.i, %.preheader.i.i ] ; 2 uses
  %.sroa.3.0.extract.trunc.i9.i = phi i32 [ %24, %._crit_edge.i.loopexit.i ], [ %.sroa.3.0.extract.trunc.i10.i, %.preheader.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i29.i.i = phi i64 [ %.sroa.0.0.copyload.i29.i.pre.i, %._crit_edge.i.loopexit.i ], [ %.sroa.0.0.copyload.i29.i6.i, %.preheader.i.i ] ; 2 uses
  %i.gl = phi i64 [ %i.lj, %._crit_edge.i.loopexit.i ], [ %i.gg, %.preheader.i.i ]
  %indvars.iv.next141.i.i = add nuw nsw i64 %indvars.iv140.i.i, 1 ; 2 uses
  %i.gm = shl i64 %.sroa.0.0.copyload.i29.i.i, 32
  %i.gn = ashr exact i64 %i.gm, 32
  %i.go = icmp slt i64 %indvars.iv.next141.i.i, %i.gn
  br i1 %i.go, label %.preheader.i.i, label %._crit_edge134.i.i, !llvm.loop !622

.preheader.preheader.i.i.i:                       ; preds = %.noexc84, %.preheader.preheader.i.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc84 ] ; 8 uses
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.fw, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i52.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i, 32
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.9.0.extract.shift.i.i.i to i32
  %sext.i.i = shl i64 %.sroa.04.0.copyload.i.i.i, 32
  %i.gp = ashr exact i64 %sext.i.i, 32
  %i.gq = icmp slt i64 %indvars.iv140.i.i, %i.gp
  %i.gr = add nsw i32 %.sroa.0.0.extract.trunc.i52.i.i, -1
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.gj, i32 %i.gr)
  %.sroa.090.0.i.i = select i1 %i.gq, i32 %i.gj, i32 %..i.i.i.i ; 3 uses
  %i.gs = ashr i64 %.sroa.04.0.copyload.i.i.i, 32
  %i.gt = icmp slt i64 %.sroa.0.0.copyload.i28155.i.i, %i.gs
  %i.gu = add nsw i32 %.sroa.9.0.extract.trunc.i.i.i, -1
  %..i.1.i.i.i = call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gu)
  %.sroa.14.2.i.i = select i1 %i.gt, i32 %i.gf, i32 %..i.1.i.i.i ; 3 uses
  %i.gv = load i32, ptr %i.fv, align 8, !tbaa !150
  switch i32 %i.gv, label %.invoke216 [
    i32 0, label %bb.aw
    i32 1, label %bb.az
    i32 2, label %bb.bd
  ]

bb.aw:                                            ; preds = %.preheader.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.gw = load i64, ptr %i.fz, align 8, !tbaa !138
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = mul nsw i32 %.sroa.14.2.i.i, %.sroa.0.0.extract.trunc.i52.i.i
  %i.gz = add nsw i32 %i.gy, %.sroa.090.0.i.i
  %i.ha = mul nsw i32 %i.gz, %i.gx
  %i.hb = sext i32 %i.ha to i64
  %i.hc = load ptr, ptr %i.gd, align 8, !tbaa !133
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.hd, i64 %indvars.iv.i.i ; 3 uses
  %i.hf = load i64, ptr %i.gc, align 8, !tbaa !75 ; 2 uses
  %i.hg = and i64 %i.hf, 144115188075855871
  %i.hh = inttoptr i64 %i.hg to ptr               ; 2 uses
  %i.hi = lshr i64 %i.hf, 57
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  switch i32 %i.hj, label %bb.ay [
    i32 1, label %.lr.ph.i.i.i.i.i.i.i.i
    i32 2, label %bb.ax
  ]

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.aw
  %i.hk = load i8, ptr %i.he, align 1, !tbaa !46
  %i.hl = uitofp i8 %i.hk to float
  %i.hm = fdiv float %i.hl, 2.550000e+02
  store float %i.hm, ptr %i.c, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.hh, ptr %i.he, i64 1, ptr nonnull %i.c, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.hh, ptr %i.he, i64 1, ptr nonnull %i.c, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i: ; preds = %bb.ay, %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hn = load float, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i

bb.az:                                            ; preds = %.preheader.preheader.i.i.i
  %i.ho = load i64, ptr %i.fz, align 8, !tbaa !138
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = mul nsw i32 %.sroa.14.2.i.i, %.sroa.0.0.extract.trunc.i52.i.i
  %i.hr = add nsw i32 %i.hq, %.sroa.090.0.i.i
  %i.hs = mul nsw i32 %i.hr, %i.hp
  %i.ht = sext i32 %i.hs to i64
  %i.hu = load ptr, ptr %i.gb, align 8, !tbaa !127
  %i.hv = getelementptr [2 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = getelementptr [2 x i8], ptr %i.hv, i64 %indvars.iv.i.i
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !173 ; 2 uses
  %i.hy = zext i16 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.hy, 13               ; 4 uses
  %i.ia = and i32 %i.hz, 260046848                ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 260046848
  br i1 %i.ib, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ic = or i32 %i.hz, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.id = and i32 %i.hz, 268427264
  %i.ie = add nuw nsw i32 %i.id, 939524096
  %i.if = icmp eq i32 %i.ia, 0
  br i1 %i.if, label %bb.bc, label %_ZNK4pbrt4HalfcvfEv.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ig = or i32 %i.hz, 947912704
  %i.ih = bitcast i32 %i.ig to float
  %i.ii = fadd float %i.ih, f0xB8800000
  %i.ij = bitcast float %i.ii to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i.i.i

_ZNK4pbrt4HalfcvfEv.exit.i.i.i:                   ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.ic, %bb.ba ], [ %i.ij, %bb.bc ], [ %i.ie, %bb.bb ]
  %.signext.i.i.i.i = sext i16 %i.hx to i32
  %i.ik = and i32 %.signext.i.i.i.i, -2147483648
  %i.il = or i32 %.sroa.0.0.i.i.i.i, %i.ik
  %i.im = bitcast i32 %i.il to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i

bb.bd:                                            ; preds = %.preheader.preheader.i.i.i
  %i.in = load i64, ptr %i.fz, align 8, !tbaa !138
  %i.io = trunc i64 %i.in to i32
  %i.ip = mul nsw i32 %.sroa.14.2.i.i, %.sroa.0.0.extract.trunc.i52.i.i
  %i.iq = add nsw i32 %i.ip, %.sroa.090.0.i.i
  %i.ir = mul nsw i32 %i.iq, %i.io
  %i.is = sext i32 %i.ir to i64
  %i.it = load ptr, ptr %i.ga, align 8, !tbaa !118
  %i.iu = getelementptr [4 x i8], ptr %i.it, i64 %i.is
  %i.iv = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.i.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i: ; preds = %bb.bd, %_ZNK4pbrt4HalfcvfEv.exit.i.i.i, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i
  %.0.i.i.i = phi float [ %i.hn, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i.i.i ], [ %i.im, %_ZNK4pbrt4HalfcvfEv.exit.i.i.i ], [ %i.iw, %bb.bd ] ; 2 uses
  %i.ix = call float @llvm.fabs.f32(float %.0.i.i.i)
  %i.iy = fcmp oeq float %i.ix, +inf
  br i1 %i.iy, label %.noexc84, label %.preheader.preheader.i60.i.i

.preheader.preheader.i60.i.i:                     ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i
  %.sroa.04.0.copyload.i32.i.i = load i64, ptr %i.ey, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i54.i.i = trunc i64 %.sroa.04.0.copyload.i32.i.i to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i55.i.i = lshr i64 %.sroa.04.0.copyload.i32.i.i, 32
  %.sroa.9.0.extract.trunc.i56.i.i = trunc nuw i64 %.sroa.9.0.extract.shift.i55.i.i to i32
  %sext159.i.i = shl i64 %.sroa.04.0.copyload.i32.i.i, 32
  %i.iz = ashr exact i64 %sext159.i.i, 32
  %i.ja = icmp slt i64 %indvars.iv140.i.i, %i.iz
  %i.jb = add nsw i32 %.sroa.0.0.extract.trunc.i54.i.i, -1
  %..i.i63.i.i = call i32 @llvm.smin.i32(i32 %i.gj, i32 %i.jb)
  %.sroa.0108.0.i.i = select i1 %i.ja, i32 %i.gj, i32 %..i.i63.i.i ; 3 uses
  %i.jc = ashr i64 %.sroa.04.0.copyload.i32.i.i, 32
  %i.jd = icmp slt i64 %.sroa.0.0.copyload.i28155.i.i, %i.jc
  %i.je = add nsw i32 %.sroa.9.0.extract.trunc.i56.i.i, -1
  %..i.1.i69.i.i = call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.je)
  %.sroa.14116.2.i.i = select i1 %i.jd, i32 %i.gf, i32 %..i.1.i69.i.i ; 3 uses
  %i.jf = load i32, ptr %16, align 8, !tbaa !150
  switch i32 %i.jf, label %.invoke216 [
    i32 0, label %bb.be
    i32 1, label %bb.bh
    i32 2, label %bb.bl
  ]

bb.be:                                            ; preds = %.preheader.preheader.i60.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.jg = load i64, ptr %i.fq, align 8, !tbaa !138
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = mul nsw i32 %.sroa.14116.2.i.i, %.sroa.0.0.extract.trunc.i54.i.i
  %i.jj = add nsw i32 %i.ji, %.sroa.0108.0.i.i
  %i.jk = mul nsw i32 %i.jj, %i.jh
  %i.jl = sext i32 %i.jk to i64
  %i.jm = load ptr, ptr %i.fg, align 8, !tbaa !133
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.jl
  %i.jo = getelementptr i8, ptr %i.jn, i64 %indvars.iv.i.i ; 3 uses
  %i.jp = load i64, ptr %i.fr, align 8, !tbaa !75 ; 2 uses
  %i.jq = and i64 %i.jp, 144115188075855871
  %i.jr = inttoptr i64 %i.jq to ptr               ; 2 uses
  %i.js = lshr i64 %i.jp, 57
  %i.jt = trunc nuw nsw i64 %i.js to i32
  switch i32 %i.jt, label %bb.bg [
    i32 1, label %.lr.ph.i.i.i.i.i.i50.i.i
    i32 2, label %bb.bf
  ]

.lr.ph.i.i.i.i.i.i50.i.i:                         ; preds = %bb.be
  %i.ju = load i8, ptr %i.jo, align 1, !tbaa !46
  %i.jv = uitofp i8 %i.ju to float
  %i.jw = fdiv float %i.jv, 2.550000e+02
  store float %i.jw, ptr %i.b, align 4, !tbaa !66
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.jr, ptr %i.jo, i64 1, ptr nonnull %i.b, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.jr, ptr %i.jo, i64 1, ptr nonnull %i.b, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i: ; preds = %bb.bg, %bb.bf, %.lr.ph.i.i.i.i.i.i50.i.i
  %i.jx = load float, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit51.i.i

bb.bh:                                            ; preds = %.preheader.preheader.i60.i.i
  %i.jy = load i64, ptr %i.fq, align 8, !tbaa !138
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = mul nsw i32 %.sroa.14116.2.i.i, %.sroa.0.0.extract.trunc.i54.i.i
  %i.kb = add nsw i32 %i.ka, %.sroa.0108.0.i.i
  %i.kc = mul nsw i32 %i.kb, %i.jz
  %i.kd = sext i32 %i.kc to i64
  %i.ke = load ptr, ptr %i.fi, align 8, !tbaa !127
  %i.kf = getelementptr [2 x i8], ptr %i.ke, i64 %i.kd
  %i.kg = getelementptr [2 x i8], ptr %i.kf, i64 %indvars.iv.i.i
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !173 ; 2 uses
  %i.ki = zext i16 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 13               ; 4 uses
  %i.kk = and i32 %i.kj, 260046848                ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 260046848
  br i1 %i.kl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.km = or i32 %i.kj, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i42.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.kn = and i32 %i.kj, 268427264
  %i.ko = add nuw nsw i32 %i.kn, 939524096
  %i.kp = icmp eq i32 %i.kk, 0
  br i1 %i.kp, label %bb.bk, label %_ZNK4pbrt4HalfcvfEv.exit.i42.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.kq = or i32 %i.kj, 947912704
  %i.kr = bitcast i32 %i.kq to float
  %i.ks = fadd float %i.kr, f0xB8800000
  %i.kt = bitcast float %i.ks to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i42.i.i

_ZNK4pbrt4HalfcvfEv.exit.i42.i.i:                 ; preds = %bb.bk, %bb.bj, %bb.bi
  %.sroa.0.0.i.i43.i.i = phi i32 [ %i.km, %bb.bi ], [ %i.kt, %bb.bk ], [ %i.ko, %bb.bj ]
  %.signext.i.i44.i.i = sext i16 %i.kh to i32
  %i.ku = and i32 %.signext.i.i44.i.i, -2147483648
  %i.kv = or i32 %.sroa.0.0.i.i43.i.i, %i.ku
  %i.kw = bitcast i32 %i.kv to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit51.i.i

bb.bl:                                            ; preds = %.preheader.preheader.i60.i.i
  %i.kx = load i64, ptr %i.fq, align 8, !tbaa !138
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = mul nsw i32 %.sroa.14116.2.i.i, %.sroa.0.0.extract.trunc.i54.i.i
  %i.la = add nsw i32 %i.kz, %.sroa.0108.0.i.i
  %i.lb = mul nsw i32 %i.la, %i.ky
  %i.lc = sext i32 %i.lb to i64
  %i.ld = load ptr, ptr %i.fk, align 8, !tbaa !118
  %i.le = getelementptr [4 x i8], ptr %i.ld, i64 %i.lc
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %indvars.iv.i.i
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit51.i.i

.invoke216:                                       ; preds = %.preheader.preheader.i60.i.i, %.preheader.preheader.i.i.i
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.250, i32 noundef 273, ptr noundef nonnull @.str.255) #39
          to label %.cont217 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont217:                                         ; preds = %.invoke216
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit51.i.i: ; preds = %bb.bl, %_ZNK4pbrt4HalfcvfEv.exit.i42.i.i, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i
  %.0.i33.i.i = phi float [ %i.jx, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i49.i.i ], [ %i.kw, %_ZNK4pbrt4HalfcvfEv.exit.i42.i.i ], [ %i.lg, %bb.bl ]
  %i.lh = fadd float %.0.i.i.i, %.0.i33.i.i
  %i.li = trunc nuw nsw i64 %indvars.iv.i.i to i32
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %16, i64 %.sroa.085.0.insert.insert.i.i, i32 noundef %i.li, float noundef %i.lh)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit51.i.i, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.lj = load i64, ptr %i.fq, align 8, !tbaa !138 ; 2 uses
  %i.lk = shl i64 %i.lj, 32
  %i.ll = ashr exact i64 %i.lk, 32
  %i.lm = icmp slt i64 %indvars.iv.next.i.i, %i.ll
  br i1 %i.lm, label %.preheader.preheader.i.i.i, label %._crit_edge.i.loopexit.i, !llvm.loop !623

"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i": ; preds = %._crit_edge134.i.i, %bb.av, %.preheader128.i.i, %bb.as
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 168 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ln, %i.fo
  br i1 %.not.i72, label %.loopexit130, label %bb.as

.loopexit130:                                     ; preds = %"_ZZ7averageSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_2clERKN4pbrt5ImageE.exit.i", %_ZNSt12shared_mutex4lockEv.exit.i
  %i.lo = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(112) %12) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i8 0, ptr %i.lp, align 4, !tbaa !103
  %i.lq = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 0, ptr %i.lq, align 8, !tbaa !105
  %i.lr = getelementptr inbounds nuw i8, ptr %17, i64 140
  store i8 0, ptr %i.lr, align 4, !tbaa !105
  %i.ls = getelementptr inbounds nuw i8, ptr %17, i64 160
  store i8 0, ptr %i.ls, align 8, !tbaa !107
  %i.lt = getelementptr inbounds nuw i8, ptr %17, i64 172
  store i8 0, ptr %i.lt, align 4, !tbaa !109
  %i.lu = getelementptr inbounds nuw i8, ptr %17, i64 180
  store i8 0, ptr %i.lu, align 4, !tbaa !111
  %i.lv = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i8 0, ptr %i.lv, align 4, !tbaa !103
  %i.lw = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  store i8 0, ptr %i.lw, align 8, !tbaa !113
  %i.lx = getelementptr inbounds nuw i8, ptr %17, i64 216 ; 3 uses
  store i32 0, ptr %i.lx, align 8, !tbaa !53
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 224 ; 2 uses
  store ptr null, ptr %i.ly, align 8, !tbaa !54
  %i.lz = getelementptr inbounds nuw i8, ptr %17, i64 232
  store ptr %i.lx, ptr %i.lz, align 8, !tbaa !55
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 240
  store ptr %i.lx, ptr %i.ma, align 8, !tbaa !56
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 248
  store i64 0, ptr %i.mb, align 8, !tbaa !57
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 264 ; 3 uses
  store i32 0, ptr %i.mc, align 8, !tbaa !53
  %i.md = getelementptr inbounds nuw i8, ptr %17, i64 272 ; 2 uses
  store ptr null, ptr %i.md, align 8, !tbaa !54
  %i.me = getelementptr inbounds nuw i8, ptr %17, i64 280
  store ptr %i.mc, ptr %i.me, align 8, !tbaa !55
  %i.mf = getelementptr inbounds nuw i8, ptr %17, i64 288
  store ptr %i.mc, ptr %i.mf, align 8, !tbaa !56
  %i.mg = getelementptr inbounds nuw i8, ptr %17, i64 296
  store i64 0, ptr %i.mg, align 8, !tbaa !57
  %i.mh = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(112) %13) #37
  %i.mi = icmp eq i32 %i.mh, 35
  br i1 %i.mi, label %bb.bm, label %_ZNSt12shared_mutex4lockEv.exit.i85

bb.bm:                                            ; preds = %.loopexit130
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #39
          to label %.noexc90 unwind label %bb.bv

.noexc90:                                         ; preds = %bb.bm
  unreachable

_ZNSt12shared_mutex4lockEv.exit.i85:              ; preds = %.loopexit130
  %i.mj = load ptr, ptr %i.cx, align 8, !tbaa !626 ; 2 uses
  %i.mk = load ptr, ptr %i.df, align 8, !tbaa !626 ; 2 uses
  %.not4.i86 = icmp eq ptr %i.mj, %i.mk
  br i1 %.not4.i86, label %.loopexit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZNSt12shared_mutex4lockEv.exit.i85
  %i.ml = getelementptr inbounds nuw i8, ptr %17, i64 192
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %.lr.ph.i87
  %.sroa.01.05.i88 = phi ptr [ %i.mj, %.lr.ph.i87 ], [ %i.mr, %bb.bo ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i88, i64 16
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !234, !range !161, !noundef !162
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalIPKNS1_13RGBColorSpaceEE5EntryEEptEv.exit.i, label %bb.bo

end_hunk_0
