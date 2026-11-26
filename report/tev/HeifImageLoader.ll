Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/HeifImageLoader?download=true
inline.NumInlined: 28462
inline.NumDeleted: 5429
loop-unroll.NumCompletelyUnrolled: 394
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 432
begin_hunk_0_@"_ZZNK3tev15HeifImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEjNS1_12basic_stringIcS4_S6_EE":.from.
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 5 uses
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #39
          to label %bb.s unwind label %.body236.from. ; 6 uses

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cm, i8 0, i64 %i.cl, i1 false), !tbaa !86
  %i.co = load ptr, ptr %.reload.addr1517.a, align 8, !tbaa !1606
  %i.cp = invoke i32 @heif_image_handle_get_list_of_auxiliary_image_IDs(ptr noundef %i.co, i32 noundef 2, ptr noundef nonnull %i.cm, i32 noundef %i.ci)
          to label %.from..lr.ph unwind label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.1109 ; 0 uses

.from..lr.ph:                                     ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.from._ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cl) #41
  br label %bb.ac

.from.1431:                                       ; preds = %.from.1090, %.from.1088, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1085, %.split
  %.pn189.pn = phi { ptr, i32 } [ %.pn189658, %.from.1088 ], [ %i.ao, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1085 ], [ %i.aj, %.from.1090 ], [ %i.ar, %.split ]
  %.1 = extractvalue { ptr, i32 } %.pn189.pn, 0
  br label %.from.1433

.body233.from.:                                   ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body233

.body233.from.1099:                               ; preds = %"_ZNSt3__14bindB8ne180100IRKZNK3tev15HeifImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS5_EERKNS1_19ImageLoaderSettingsEiE3$_1JRP17heif_image_handlebRNS_12basic_stringIcS5_S7_EESS_EEENS_6__bindIT_JDpT0_EEEOSU_DpOSV_.exit"
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call fastcc void @"_ZNSt3__16__bindIRKZNK3tev15HeifImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS5_EERKNS1_19ImageLoaderSettingsEiE3$_1JRP17heif_image_handlebRNS_12basic_stringIcS5_S7_EESS_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #37
  br label %.from..body233

.from..body233:                                   ; preds = %.body233.from.1099, %.body233.from.1094, %.body233.from., %bb.m
  %.pn = phi { ptr, i32 } [ %i.cs, %.body233.from.1099 ], [ %i.cr, %.body233.from. ], [ %i.bk, %.body233.from.1094 ], [ %i.bk, %bb.m ]
  %.2 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.from.1433

.body236.from.:                                   ; preds = %"_ZNSt3__16__bindIRKZNK3tev15HeifImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS5_EERKNS1_19ImageLoaderSettingsEiE3$_1JRP17heif_image_handlebRNS_12basic_stringIcS5_S7_EESS_EED2Ev.exit", %bb.r
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body236

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.1109: ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body236.from._ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244

.from._ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit: ; preds = %_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit, %.from..lr.ph
  %.sroa.0580.0802 = phi ptr [ %i.cm, %.from..lr.ph ], [ %i.do, %_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.cv = load i32, ptr %.sroa.0580.0802, align 4, !tbaa !86 ; 2 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.cw = load ptr, ptr %.reload.addr1517.a, align 8, !tbaa !1606
  %i.cx = invoke { i64, ptr } @heif_image_handle_get_auxiliary_image_handle(ptr noundef %i.cw, i32 noundef %i.cv, ptr noundef nonnull %i.b)
          to label %bb.t unwind label %.from.1104

bb.t:                                             ; preds = %.from._ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !1606
  store ptr %i.db, ptr %7, align 8, !tbaa !1609
  store ptr @heif_image_handle_release, ptr %i.cq, align 8, !tbaa !1611
  invoke fastcc void @"_ZNSt3__16vectorIZZNK3tev15HeifImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS5_EERKNS1_19ImageLoaderSettingsEiENK3$_3clEjNS_12basic_stringIcS5_S7_EEE7AuxInfoNS6_ISN_EEE12emplace_backIJRKjNS_10unique_ptrI17heif_image_handlePFvPKSU_EEEEEERSN_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1503.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %7, align 8, !tbaa !1606  ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i238, label %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !125
  invoke void %i.dd(ptr noundef nonnull %i.dc)
          to label %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #42
  unreachable

_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit

bb.y:                                             ; preds = %bb.u
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = load ptr, ptr %7, align 8, !tbaa !1606  ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i239, label %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit240, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !125
  invoke void %i.di(ptr noundef nonnull %i.dh)
          to label %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit240 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #42
  unreachable

.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit240: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.

bb.ab:                                            ; preds = %bb.t
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc241 unwind label %.from.1104

.noexc241:                                        ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !129
  invoke void @_ZN4tlog6Logger3logIJRKjEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, i32 noundef 8, ptr nonnull @.str.135, i64 47, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit unwind label %.from.1104

.from.1104:                                       ; preds = %.from._ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit, %bb.ab, %.noexc241
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.

_ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit: ; preds = %.noexc241, %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0580.0802, i64 4 ; 2 uses
  %.not702 = icmp eq ptr %i.do, %i.cn
  br i1 %.not702, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit, label %.from._ZN4tlog7warningIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.: ; preds = %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit240, %.from.1104
  %.pn188 = phi { ptr, i32 } [ %i.dg, %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit240 ], [ %i.dn, %.from.1104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.body236.from._ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244

.body236.from._ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.1109, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.
  %.pn188.pn = phi { ptr, i32 } [ %.pn188, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from. ], [ %i.cu, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244.from.1109 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cl) #41
  br label %.from..body236

bb.ac:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit, %bb.q
  store ptr null, ptr %.reload.addr1516.a, align 8, !tbaa !1606
  %i.dp = load ptr, ptr %.reload.addr1517.a, align 8, !tbaa !1606
  %i.dq = invoke { i64, ptr } @heif_image_handle_get_gain_map_image_handle(ptr noundef %i.dp, ptr noundef nonnull %.reload.addr1516.a)
          to label %bb.ad unwind label %.from.1421

bb.ad:                                            ; preds = %bb.ac
  %i.dr = extractvalue { i64, ptr } %i.dq, 0
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.du = load ptr, ptr %.reload.addr1516.a, align 8, !tbaa !1606
  %i.dv = invoke i32 @heif_image_handle_get_item_id(ptr noundef %i.du)
          to label %bb.af unwind label %.from.1112

bb.af:                                            ; preds = %bb.ae
  store i32 %i.dv, ptr %i.c, align 4, !tbaa !86
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc245 unwind label %.from.1112

.noexc245:                                        ; preds = %bb.af
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !129
  invoke void @_ZN4tlog6Logger3logIJRKjEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.dx, i32 noundef 4, ptr nonnull @.str.136, i64 96, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4tlog5debugIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit unwind label %.from.1112

_ZN4tlog5debugIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit: ; preds = %.noexc245
  %.val204 = load ptr, ptr %.reload.addr1503.a, align 8, !tbaa !1616 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %.val205 = load ptr, ptr %i.dy, align 8, !tbaa !1617 ; 3 uses
  %.val206 = load i32, ptr %i.c, align 4          ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val204, %.val205
  br i1 %.not2.i.i.i, label %.loopexit750, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4tlog5debugIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %.0.val.i.i.i1623 = load i32, ptr %.val204, align 8, !tbaa !1621
  %i.dz = icmp eq i32 %.0.val.i.i.i1623, %.val206
  br i1 %i.dz, label %.loopexit750, label %.lr.ph.i.i.i.from.

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.from.
  %.0.val.i.i.i = load i32, ptr %i.eb, align 8, !tbaa !1621
  %i.ea = icmp eq i32 %.0.val.i.i.i, %.val206
  br i1 %i.ea, label %.loopexit750, label %.lr.ph.i.i.i.from., !llvm.loop !11649

.lr.ph.i.i.i.from.:                               ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.03.i.i.i1624 = phi ptr [ %i.eb, %.lr.ph.i.i.i ], [ %.val204, %.lr.ph.i.i.i.preheader ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.03.i.i.i1624, i64 24 ; 4 uses
  %.not.i.i.i247 = icmp eq ptr %i.eb, %.val205
  br i1 %.not.i.i.i247, label %.loopexit750.thread, label %.lr.ph.i.i.i, !llvm.loop !11649

.loopexit750:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %_ZN4tlog5debugIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %.val204, %_ZN4tlog5debugIJRKjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit ], [ %.val204, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ed = ptrtoint ptr %.val204 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %.val204, i64 %i.ee
  %i.eg = icmp eq ptr %.0.lcssa.i.i.i, %.val205
  br i1 %i.eg, label %.loopexit750.thread, label %bb.am

.loopexit750.thread:                              ; preds = %.lr.ph.i.i.i.from., %.loopexit750
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.eh = load ptr, ptr %.reload.addr1516.a, align 8, !tbaa !1606
  store ptr %i.eh, ptr %8, align 8, !tbaa !1609
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr @heif_image_handle_release, ptr %i.ei, align 8, !tbaa !1611
  invoke fastcc void @"_ZNSt3__16vectorIZZNK3tev15HeifImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS5_EERKNS1_19ImageLoaderSettingsEiENK3$_3clEjNS_12basic_stringIcS5_S7_EEE7AuxInfoNS6_ISN_EEE12emplace_backIJRKjNS_10unique_ptrI17heif_image_handlePFvPKSU_EEEEEERSN_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1503.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.loopexit750.thread
  %i.ej = load ptr, ptr %8, align 8, !tbaa !1606  ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i248, label %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit249, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !125
  invoke void %i.ek(ptr noundef nonnull %i.ej)
          to label %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit249 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #42
  unreachable

_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit249: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ao

.from..body236:                                   ; preds = %.body236.from., %.body236.from._ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244
  %.pn188.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %.body236.from. ], [ %.pn188.pn, %.body236.from._ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit244 ]
  %.6 = extractvalue { ptr, i32 } %.pn188.pn.pn.pn, 0
  br label %.from.1426

.from.1421:                                       ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  br label %.from.1426

.from.1112:                                       ; preds = %bb.am, %.noexc245, %bb.af, %bb.ae
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1419

bb.aj:                                            ; preds = %.loopexit750.thread
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = load ptr, ptr %8, align 8, !tbaa !1606  ; 2 uses
  %.not.i.i250 = icmp eq ptr %i.er, null
  br i1 %.not.i.i250, label %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit251, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !125
  invoke void %i.es(ptr noundef nonnull %i.er)
          to label %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit251 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #42
  unreachable

.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit251: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.from.1419

bb.am:                                            ; preds = %.loopexit750
  %i.ev = load ptr, ptr %.reload.addr1516.a, align 8, !tbaa !1606
  invoke void @heif_image_handle_release(ptr noundef %i.ev)
          to label %bb.an unwind label %.from.1112

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1606
  store ptr %i.ex, ptr %.reload.addr1516.a, align 8, !tbaa !1606
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.ap

.from.1419:                                       ; preds = %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit251, %.from.1112
  %.pn152.pn = phi { ptr, i32 } [ %i.ep, %.from.1112 ], [ %i.eq, %.from._ZNSt3__110unique_ptrI17heif_image_handlePFvPKS1_EED2B8ne180100Ev.exit251 ]
  %.8 = extractvalue { ptr, i32 } %.pn152.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %.from.1426

bb.ap:                                            ; preds = %bb.ao, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %.val199 = load ptr, ptr %.reload.addr1503.a, align 8, !tbaa !1616 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 712 ; 2 uses
  %.val200 = load ptr, ptr %i.ey, align 8, !tbaa !1617 ; 3 uses
  %i.ez = ptrtoint ptr %.val200 to i64
  %i.fa = ptrtoint ptr %.val199 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = sdiv exact i64 %i.fb, 24
  store i64 %i.fc, ptr %i.d, align 8, !tbaa !85
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc252 unwind label %.from.1416

.noexc252:                                        ; preds = %bb.ap
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !129
  invoke void @_ZN4tlog6Logger3logIJmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.fe, i32 noundef 4, ptr nonnull @.str.137, i64 49, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit unwind label %.from.1416

_ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit: ; preds = %.noexc252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1501.a, i8 0, i64 24, i1 false)
  %.not703812 = icmp eq ptr %.val199, %.val200
  br i1 %.not703812, label %._crit_edge, label %.from..lr.ph815

.from..lr.ph815:                                  ; preds = %_ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 6 uses
  %.sroa.14.0..sroa_idx607 = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.17.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 672 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 360 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 376 ; 3 uses
  br label %".from._ZZZNK3tev15HeifImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEjNS1_12basic_stringIcS4_S6_EEENUlvE_D2Ev.exit"

._crit_edge:                                      ; preds = %"_ZZZNK3tev15HeifImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEjNS1_12basic_stringIcS4_S6_EEENUlvE_D2Ev.exit", %_ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit
  %.lcssa.i.i.i.i804.lcssa = phi ptr [ null, %_ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %.lcssa.i.i.i.i803, %"_ZZZNK3tev15HeifImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEjNS1_12basic_stringIcS4_S6_EEENUlvE_D2Ev.exit" ]
  store ptr %.lcssa.i.i.i.i804.lcssa, ptr %.reload.addr1501.a, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 608 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load atomic i32, ptr %i.fr acquire, align 4
  %i.ft = icmp slt i32 %i.fs, 2
  br i1 %i.ft, label %bb.aq, label %AfterCoroSave

bb.aq:                                            ; preds = %._crit_edge
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !97
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = atomicrmw add ptr %i.fv, i32 -1 acq_rel, align 4
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %bb.ar, label %.thread.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !129 ; 7 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !158
  %i.gb = and i32 %i.ga, 8
  %.not.i.i.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %.thread.sink.split

bb.as:                                            ; preds = %.noexc.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !159 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !160 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.gd, %i.gf
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.as
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 33
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.gd, %.from..lr.ph.i.i.i.i.i ], [ %i.gv, %.noexc2.i.i ] ; 2 uses
  %i.gk = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.gl = load i8, ptr %i.gg, align 8             ; 2 uses
  %i.gm = trunc i8 %i.gl to i1                    ; 2 uses
  %i.gn = load ptr, ptr %i.gh, align 8
  %i.go = select i1 %i.gm, ptr %i.gn, ptr %i.gi
  %i.gp = load i64, ptr %i.gj, align 8
  %i.gq = lshr i8 %i.gl, 1
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = select i1 %i.gm, i64 %i.gp, i64 %i.gr
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !88
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr %i.go, i64 %i.gs, i32 noundef 8, ptr nonnull @.str.114, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, %i.gf
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.ar
  %lpad.loopexit.split-lp2028 = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2028, 0
  call void @__clang_call_terminate(ptr %i.gw) #42
  unreachable

.from.1416:                                       ; preds = %bb.ap, %.noexc252
end_hunk_0
