inline.NumInlined: 720
inline.NumDeleted: 346
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.11, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.n)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.12, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.q
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit unwind label %bb.u

_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.af)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.r
  %i.ai = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cm unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %bb.q, %bb.p, %bb.s, %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn43 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %i.al, %bb.v ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.w ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

bb.y:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 292
  %i.an = load i32, ptr %i.am, align 4, !tbaa !146
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !147
  %.not38 = icmp eq i32 %i.an, %i.ap
  br i1 %.not38, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 296
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !148
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 324
  %i.at = load i32, ptr %i.as, align 4, !tbaa !149
  %.not39 = icmp eq i32 %i.ar, %i.at
  br i1 %.not39, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  invoke void @_Z13iex_debugTrapv()
          to label %bb.ab unwind label %.loopexit.split-lp121

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.14, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %bb.ac
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ah     ; 2 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.12, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.ad
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 368
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !96
  %i.bd = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bc)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit61 unwind label %bb.ah

_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit61: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.bd)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit61
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.15, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.ae
  %i.bg = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cm unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.ad, %bb.ac, %bb.af, %_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile8fileNameEv.exit61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bg) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn40 = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %i.bj, %bb.ai ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.aj ], [ %i.bh, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

bb.al:                                            ; preds = %bb.z, %bb.k
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0102.0) #28
  br label %.preheader119, !llvm.loop !150

bb.am:                                            ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !151 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull @.str.16)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.cm unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

bb.aq:                                            ; preds = %bb.an
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #23
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

bb.ar:                                            ; preds = %bb.am
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 328
  store ptr %i.bm, ptr %i.bs, align 8, !tbaa !152
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 336
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !131
  %i.bw = trunc <2 x i64> %i.bv to <2 x i32>
  store <2 x i32> %i.bw, ptr %i.bu, align 8, !tbaa !3
  %i.bx = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.preheader unwind label %.thread

.preheader:                                       ; preds = %bb.ar, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 25 uses
  %i.by = phi ptr [ %i.ez, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 11 uses
  %i.bz = phi ptr [ %i.fa, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ar ] ; 6 uses
  %.sroa.090.0 = phi ptr [ %i.fb, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ %i.bx, %bb.ar ] ; 5 uses
  %i.ca = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %.preheader
  %.not113 = icmp eq ptr %.sroa.090.0, %i.ca
  br i1 %.not113, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(104) %i.cc, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit unwind label %bb.cg ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit: ; preds = %bb.at
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.ce, ptr noundef nonnull align 8 dereferenceable(50) %i.cf, i64 50, i1 false), !tbaa.struct !153
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !92  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 264
  %.val52152 = load ptr, ptr %i.ch, align 8, !tbaa !65 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 272
  %.val53153 = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.cj = ptrtoint ptr %.val52152 to i64
  %.not162 = icmp eq ptr %.val53153, %.val52152
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.ar
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

bb.au:                                            ; preds = %.preheader
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.av:                                            ; preds = %bb.as
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.090.0, i64 32
  %i.cn = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.cm)
          to label %bb.aw unwind label %bb.bf     ; 6 uses

bb.aw:                                            ; preds = %bb.av
  %i.co = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.cq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.az unwind label %.loopexit114 ; 6 uses

bb.az:                                            ; preds = %bb.ay
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.090.0, i64 288
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !143
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.090.0, i64 292
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !158
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cw = load <2 x i32>, ptr %i.ct, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i8 0, i64 32, i1 false)
  store <2 x i32> %i.cw, ptr %i.cv, align 8, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i8 1, ptr %i.cx, align 8, !tbaa !160
  %.not.i.i63 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i63, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.cq, ptr %i.by, align 8, !tbaa !89
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bb:                                            ; preds = %bb.az
  %i.cz = ptrtoint ptr %i.by to i64
  %i.da = ptrtoint ptr %.sroa.0.0 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.bc, label %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #27
          to label %.noexc unwind label %.loopexit.split-lp115

.noexc:                                           ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bb
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %i.de = icmp eq ptr %i.by, %.sroa.0.0
  %.sroa.speculated.i.i.i.i = select i1 %i.de, i64 1, i64 %i.dd
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dd ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #24
          to label %.noexc64 unwind label %.loopexit114 ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.db ; 2 uses
  store ptr %i.cq, ptr %i.dl, align 8, !tbaa !89
  %i.dm = icmp sgt i64 %i.db, 0
  br i1 %i.dm, label %bb.bd, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

bb.bd:                                            ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.sroa.0.0, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i: ; preds = %bb.bd, %.noexc64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.db) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.be, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bf:                                            ; preds = %bb.av
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bg:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit114:                                     ; preds = %bb.ay, %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp115:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bh:                                            ; preds = %bb.ax
  %i.dr = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.bi unwind label %.loopexit ; 8 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 288
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !145
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 296
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !151
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cn, i64 340
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !161
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 304
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 320
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !158
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %i.eb, align 8, !tbaa !163
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %i.dy, ptr %i.ec, align 8, !tbaa !164
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ee = load <2 x i64>, ptr %i.dz, align 8, !tbaa !131
  store <2 x i64> %i.ee, ptr %i.ed, align 8, !tbaa !131
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.eg = load <2 x i32>, ptr %i.ea, align 8, !tbaa !3
  store <2 x i32> %i.eg, ptr %i.ef, align 8, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  store i8 0, ptr %i.eh, align 8, !tbaa !160
  %.not.i.i65 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i65, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.dr, ptr %i.by, align 8, !tbaa !89
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ej = ptrtoint ptr %i.by to i64
  %i.ek = ptrtoint ptr %.sroa.0.0 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 6 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.bl, label %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i67

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #27
          to label %.noexc73 unwind label %.loopexit.split-lp

.noexc73:                                         ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i67: ; preds = %bb.bk
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %i.eo = icmp eq ptr %i.by, %.sroa.0.0
  %.sroa.speculated.i.i.i.i68 = select i1 %i.eo, i64 1, i64 %i.en
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i68, %i.en ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.en
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 3 uses
  %.not.i.i.i.i69 = icmp ne i64 %i.es, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i69)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #24
          to label %.noexc74 unwind label %.loopexit ; 4 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i67
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.el ; 2 uses
  store ptr %i.dr, ptr %i.ev, align 8, !tbaa !89
  %i.ew = icmp sgt i64 %i.el, 0
  br i1 %i.ew, label %bb.bm, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70

bb.bm:                                            ; preds = %.noexc74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr align 8 %.sroa.0.0, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70: ; preds = %bb.bm, %.noexc74
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.not.i21.i.i.i71 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i71, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.el) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72: ; preds = %bb.bn, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i70
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %bb.bh, %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i67
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.bj, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72, %bb.ba, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.dk, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ba ], [ %i.eu, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %.sroa.0.0, %bb.bj ]
  %i.ez = phi ptr [ %i.dn, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.cy, %bb.ba ], [ %i.ex, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %i.ei, %bb.bj ]
  %i.fa = phi ptr [ %i.do, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.bz, %bb.ba ], [ %i.ey, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i72 ], [ %i.bz, %bb.bj ]
  %i.fb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.0) #28
  br label %.preheader, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.ci, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit
  %.lcssa151 = phi ptr [ %i.cg, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.gi, %bb.ci ] ; 3 uses
  %.val52.lcssa = phi ptr [ %.val52152, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %.val52, %bb.ci ] ; 6 uses
  %.val53.lcssa = phi ptr [ %.val53153, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %.val53, %bb.ci ] ; 2 uses
  %.lcssa125 = phi i64 [ %i.cj, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.gn, %bb.ci ]
  %.lcssa = phi i64 [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.go, %bb.ci ] ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.lcssa151, i64 264 ; 4 uses
  %i.fd = getelementptr i8, ptr %.lcssa151, i64 272 ; 3 uses
  %i.fe = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 13 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.lcssa151, i64 280 ; 2 uses
  %.val35.i = load ptr, ptr %i.fh, align 8, !tbaa !166
  %i.fi = ptrtoint ptr %.val35.i to i64
  %i.fj = sub i64 %i.fi, %.lcssa125               ; 2 uses
  %i.fk = icmp ugt i64 %i.fg, %i.fj
  br i1 %i.fk, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %._crit_edge
  %i.fl = icmp ugt i64 %i.fg, 9223372036854775800
  br i1 %i.fl, label %bb.bp, label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i, !prof !167

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc77 unwind label %bb.cg

.noexc77:                                         ; preds = %bb.bp
  unreachable

_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bo
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #24
          to label %.noexc78 unwind label %bb.cg  ; 4 uses

.noexc78:                                         ; preds = %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i
  %i.fn = icmp samesign ugt i64 %i.fg, 8
  br i1 %i.fn, label %bb.bq, label %bb.br, !prof !168

bb.bq:                                            ; preds = %.noexc78
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 8 %.sroa.0.0, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

bb.br:                                            ; preds = %.noexc78
  %i.fo = icmp eq i64 %i.fg, 8
  br i1 %i.fo, label %bb.bs, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

bb.bs:                                            ; preds = %bb.br
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !89
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.fm, align 8, !tbaa !89
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %.not.i.i76 = icmp eq ptr %.val52.lcssa, null
  br i1 %.not.i.i76, label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val52.lcssa, i64 noundef %i.fj) #26
  br label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.bt, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i
  store ptr %i.fm, ptr %i.fc, align 8, !tbaa !65
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fg
  store ptr %i.fp, ptr %i.fh, align 8, !tbaa !166
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.bu:                                            ; preds = %._crit_edge
  %.not24.i = icmp ult i64 %.lcssa, %i.fg
  br i1 %.not24.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fq = icmp sgt i64 %i.fg, 8
  br i1 %i.fq, label %bb.bw, label %bb.bx, !prof !168

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val52.lcssa, ptr align 8 %.sroa.0.0, i64 %i.fg, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.fr = icmp eq i64 %i.fg, 8
  br i1 %i.fr, label %bb.by, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.by:                                            ; preds = %bb.bx
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !89
  store ptr %.val.i.i.i.i.i.i, ptr %.val52.lcssa, align 8, !tbaa !89
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread

bb.bz:                                            ; preds = %bb.bu
  %i.fs = icmp sgt i64 %.lcssa, 8
  br i1 %i.fs, label %bb.ca, label %bb.cb, !prof !168

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val52.lcssa, ptr align 8 %.sroa.0.0, i64 %.lcssa, i1 false)
  %.val.pre.i = load ptr, ptr %i.fc, align 8, !tbaa !65
  %.val25.pre.i = load ptr, ptr %i.fd, align 8, !tbaa !66 ; 2 uses
  %.pre44.i = ptrtoint ptr %.val25.pre.i to i64
  %.pre45.i = ptrtoint ptr %.val.pre.i to i64
  %.pre47.i = sub i64 %.pre44.i, %.pre45.i
  br label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.ft = icmp eq i64 %.lcssa, 8
  br i1 %i.ft, label %bb.cc, label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i

bb.cc:                                            ; preds = %bb.cb
  %.val.i.i.i.i.i40.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !89
  store ptr %.val.i.i.i.i.i40.i, ptr %.val52.lcssa, align 8, !tbaa !89
  br label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i

_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %.pre-phi48.i = phi i64 [ %.pre47.i, %bb.ca ], [ %.lcssa, %bb.cb ], [ 8, %bb.cc ]
  %.val25.i = phi ptr [ %.val25.pre.i, %bb.ca ], [ %.val53.lcssa, %bb.cb ], [ %.val53.lcssa, %bb.cc ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.pre-phi48.i ; 3 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fe, %i.fv                    ; 3 uses
  %i.fx = icmp sgt i64 %i.fw, 8
  br i1 %i.fx, label %bb.cd, label %bb.ce, !prof !168

bb.cd:                                            ; preds = %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val25.i, ptr align 8 %i.fu, i64 %i.fw, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.ce:                                            ; preds = %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES4_ET0_T_S6_S5_.exit.i
  %i.fy = icmp eq i64 %i.fw, 8
  br i1 %i.fy, label %bb.cf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fu, align 8, !tbaa !89
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %.val25.i, align 8, !tbaa !89
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread: ; preds = %bb.cf, %bb.by
  %i.fz = load ptr, ptr %i.fc, align 8, !tbaa !65
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fg
  store ptr %i.ga, ptr %i.fd, align 8, !tbaa !66
  br label %bb.cj

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i: ; preds = %bb.ce, %bb.cd, %bb.bx, %bb.bw, %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.gb = load ptr, ptr %i.fc, align 8, !tbaa !65
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fg
  store ptr %i.gc, ptr %i.fd, align 8, !tbaa !66
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit, label %bb.cj

bb.cg:                                            ; preds = %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i, %bb.bp, %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.lr.ph:                                           ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit, %bb.ci
  %i.ge = phi ptr [ %i.gi, %bb.ci ], [ %i.cg, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ]
  %.val52155 = phi ptr [ %.val52, %bb.ci ], [ %.val52152, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ]
  %.0154 = phi i64 [ %i.gj, %bb.ci ], [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.val52155, i64 %.0154
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !89 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 56) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !92
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph, %bb.ch
  %i.gi = phi ptr [ %i.ge, %.lr.ph ], [ %.pre, %bb.ch ] ; 4 uses
  %i.gj = add nuw i64 %.0154, 1                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 264
  %.val52 = load ptr, ptr %i.gk, align 8, !tbaa !65 ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gi, i64 272
  %.val53 = load ptr, ptr %i.gl, align 8, !tbaa !66 ; 2 uses
  %i.gm = ptrtoint ptr %.val53 to i64
  %i.gn = ptrtoint ptr %.val52 to i64             ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = ashr exact i64 %i.go, 3
  %i.gq = icmp ult i64 %i.gj, %i.gp
  br i1 %i.gq, label %.lr.ph, label %._crit_edge, !llvm.loop !169

bb.cj:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i
  %i.gr = ptrtoint ptr %i.bz to i64
  %i.gs = sub i64 %i.gr, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gs) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i, %bb.cj
  %i.gt = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret void

bb.ck:                                            ; preds = %bb.au, %bb.bg, %bb.bf, %bb.cg, %.loopexit.split-lp115, %.loopexit114, %.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dp, %bb.bf ], [ %i.dq, %bb.bg ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp115 ], [ %i.gd, %bb.cg ], [ %i.cl, %bb.au ], [ %lpad.loopexit116, %.loopexit114 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gu = ptrtoint ptr %i.bz to i64
  %i.gv = ptrtoint ptr %.sroa.0.0 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gw) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS3_EED2Ev.exit80: ; preds = %bb.cl, %bb.ck, %.thread, %.loopexit120, %.loopexit.split-lp121, %bb.g, %bb.h, %bb.ak, %bb.x, %bb.l, %bb.ap, %bb.aq, %bb.f
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp123, %.loopexit.split-lp121 ], [ %i.k, %bb.f ], [ %i.bp, %bb.ap ], [ %i.bq, %bb.aq ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %.pn43.pn, %bb.x ], [ %i.r, %bb.l ], [ %.pn40.pn, %bb.ak ], [ %lpad.loopexit122, %.loopexit120 ], [ %i.ck, %.thread ], [ %.pn.pn.pn.ph, %bb.ck ], [ %.pn.pn.pn.ph, %bb.cl ]
  %i.gx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  resume { ptr, i32 } %.pn43.pn.pn.pn.pn

bb.cm:                                            ; preds = %bb.ao, %bb.af, %bb.s
  unreachable
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

declare void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(50) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile11frameBufferEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_522DeepScanLineOutputFile11writePixelsEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::TaskGroup", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !92   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %.val130 = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr i8, ptr %i.f, i64 272
  %.val131 = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.i = icmp eq ptr %.val131, %.val130
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.17)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bo unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.bb

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #23
  br label %bb.ba

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.ba

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.o = load i32, ptr %i.n, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %i.q = load i32, ptr %i.p, align 4, !tbaa !119
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.t = load i32, ptr %i.s, align 8, !tbaa !117
  %i.u = sdiv i32 %i.r, %i.t                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !92   ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.x = load i32, ptr %i.w, align 8, !tbaa !112
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !106 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !117 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %1, -1
  %i.ae = add i32 %i.ad, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 196
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !119
  %i.ah = sub i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ac                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 296
  %.val127 = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.ak = getelementptr i8, ptr %i.v, i64 304
  %.val128 = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.al = ptrtoint ptr %.val128 to i64
  %i.am = ptrtoint ptr %.val127 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr i64 %i.an, 3
  %i.ap = trunc i64 %i.ao to i32
  %reass.sub = sub i32 %i.ai, %i.u
  %i.aq = add i32 %reass.sub, 1
  %.sroa.speculated189 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ap)
  %.sroa.speculated185 = call i32 @llvm.smax.i32(i32 %.sroa.speculated189, i32 1) ; 2 uses
  %i.ar = sext i32 %i.u to i64
  %wide.trip.count273 = zext nneg i32 %.sroa.speculated185 to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.r
  %i.as = add nsw i32 %.sroa.speculated185, %i.u
  %i.at = add nsw i32 %i.ai, 1
  br label %bb.ae

bb.l:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.av

bb.m:                                             ; preds = %bb.j, %bb.r
  %indvars.iv269 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next270, %bb.r ] ; 2 uses
  %i.av = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %bb.n unwind label %bb.s       ; 7 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !92  ; 3 uses
  %i.ax = add nsw i64 %indvars.iv269, %i.ar       ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull %2)
          to label %.noexc135 unwind label %bb.t

.noexc135:                                        ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %i.av, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !170
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 296
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !62 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 304
  %.val6.i = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.bc = ptrtoint ptr %.val6.i to i64
  %i.bd = ptrtoint ptr %.val.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = urem i64 %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !174
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i unwind label %bb.p

end_hunk_0
