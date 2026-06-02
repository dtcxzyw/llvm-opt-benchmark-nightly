inline.NumInlined: 605
inline.NumDeleted: 305
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  %i.p = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.al, label %bb.m

.loopexit148:                                     ; preds = %bb.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

.loopexit.split-lp149:                            ; preds = %bb.n, %bb.aa
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0130.0, i64 288
  %i.t = load i32, ptr %i.s, align 4, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !126
  %.not = icmp eq i32 %i.t, %i.v
  br i1 %.not, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_Z13iex_debugTrapv()
          to label %bb.o unwind label %.loopexit.split-lp149

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.11, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.n)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.12, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.q
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 312
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit unwind label %bb.u

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.af)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.r
  %i.ai = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bt unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %bb.q, %bb.p, %bb.s, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn29 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %i.al, %bb.v ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.w ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.y:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0130.0, i64 292
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !130
  %.not24 = icmp eq i32 %i.an, %i.ap
  br i1 %.not24, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0130.0, i64 296
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 324
  %i.at = load i32, ptr %i.as, align 4, !tbaa !132
  %.not25 = icmp eq i32 %i.ar, %i.at
  br i1 %.not25, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  invoke void @_Z13iex_debugTrapv()
          to label %bb.ab unwind label %.loopexit.split-lp149

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.14, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.ac
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.n)
          to label %bb.ad unwind label %bb.ah     ; 2 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.12, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %bb.ad
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  %i.bd = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bc)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit42 unwind label %bb.ah

_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.bd)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit42
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.15, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.ae
  %i.bg = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bt unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.ad, %bb.ac, %bb.af, %_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile8fileNameEv.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bg) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn26 = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %i.bj, %bb.ai ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.aj ], [ %i.bh, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.al:                                            ; preds = %bb.z, %bb.k
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0130.0) #28
  br label %.preheader147, !llvm.loop !133

.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 25 uses
  %i.bl = phi ptr [ %i.eb, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 12 uses
  %i.bm = phi ptr [ %i.ec, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 20 uses
  %.sroa.0118.0 = phi ptr [ %i.ed, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ %i.j, %bb.e ] ; 6 uses
  %i.bn = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.preheader
  %.not141 = icmp eq ptr %.sroa.0118.0, %i.bn
  br i1 %.not141, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferaSERKS0_.exit unwind label %bb.bq ; 0 uses

.thread:                                          ; preds = %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.ao:                                            ; preds = %.preheader
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ap:                                            ; preds = %bb.am
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 32
  %i.bu = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bt)
          to label %bb.aq unwind label %bb.ax     ; 7 uses

bb.aq:                                            ; preds = %bb.ap
  %i.bv = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 288
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !123 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 292
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !129 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 296
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !131 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i44, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !134
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx, i8 0, i64 24, i1 false)
  store i32 %i.ca, ptr %.sroa.998.0..sroa_idx, align 8, !tbaa !3
  %.sroa.10101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.cc, ptr %.sroa.10101.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 1, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !135
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.au:                                            ; preds = %bb.as
  %i.ce = ptrtoint ptr %i.bl to i64
  %i.cf = ptrtoint ptr %.sroa.0.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775776
  br i1 %i.ch, label %bb.av, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc unwind label %.loopexit.split-lp143

.noexc:                                           ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.ci = sdiv exact i64 %i.cg, 48                ; 3 uses
  %i.cj = icmp eq ptr %i.bl, %.sroa.0.0           ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.cj, i64 1, i64 %i.ci
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ci
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 192153584101141162)
  %i.cn = select i1 %i.cl, i64 192153584101141162, i64 %i.cm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.co = mul nuw nsw i64 %i.cn, 48
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #24
          to label %.noexc45 unwind label %.loopexit142 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cg ; 5 uses
  store i32 %i.by, ptr %i.cq, align 8, !tbaa !134
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.998.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx90, i8 0, i64 24, i1 false)
  store i32 %i.ca, ptr %.sroa.998.0..sroa_idx99, align 8, !tbaa !3
  %.sroa.10101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  store i32 %i.cc, ptr %.sroa.10101.0..sroa_idx102, align 4, !tbaa !3
  %.sroa.11104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store i8 1, ptr %.sroa.11104.0..sroa_idx105, align 8, !tbaa !135
  br i1 %i.cj, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %.noexc45 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !136, !alias.scope !138
  %i.cr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cp, %.noexc45 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.cg) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.cp, i64 %i.cn
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.ax:                                            ; preds = %bb.ap
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ay:                                            ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit142:                                     ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp143:                            ; preds = %bb.av
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.az:                                            ; preds = %bb.ar
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !126 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 296
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !143 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 304
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !144 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 312
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !145 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !130 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bu, i64 324
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !132 ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i46, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.cy, ptr %i.bm, align 8, !tbaa !134
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.da, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !137
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.dc, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.de, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !111
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %i.dg, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.di, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !135
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.bb:                                            ; preds = %bb.az
  %i.dk = ptrtoint ptr %i.bl to i64
  %i.dl = ptrtoint ptr %.sroa.0.0 to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 4 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775776
  br i1 %i.dn, label %bb.bc, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48: ; preds = %bb.bb
  %i.do = sdiv exact i64 %i.dm, 48                ; 3 uses
  %i.dp = icmp eq ptr %i.bl, %.sroa.0.0           ; 2 uses
  %.sroa.speculated.i.i.i.i49 = select i1 %i.dp, i64 1, i64 %i.do
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i49, %i.do ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 192153584101141162)
  %i.dt = select i1 %i.dr, i64 192153584101141162, i64 %i.ds ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.du = mul nuw nsw i64 %i.dt, 48
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #24
          to label %.noexc60 unwind label %.loopexit ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dm ; 7 uses
  store i32 %i.cy, ptr %i.dw, align 8, !tbaa !134
  %.sroa.670.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.da, ptr %.sroa.670.0..sroa_idx71, align 8, !tbaa !137
  %.sroa.7.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.dc, ptr %.sroa.7.0..sroa_idx73, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 %i.de, ptr %.sroa.8.0..sroa_idx75, align 8, !tbaa !111
  %.sroa.9.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.dg, ptr %.sroa.9.0..sroa_idx77, align 8, !tbaa !3
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  store i32 %i.di, ptr %.sroa.10.0..sroa_idx79, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx81, align 8, !tbaa !135
  br i1 %i.dp, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.noexc60, %.lr.ph.i.i.i.i.i.i51
  %.03.i.i.i.i.i.i52 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i51 ], [ %i.dv, %.noexc60 ] ; 2 uses
  %.092.i.i.i.i.i.i53 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i51 ], [ %.sroa.0.0, %.noexc60 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i52, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i53, i64 48, i1 false), !tbaa.struct !136, !alias.scope !146
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i53, i64 48 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i52, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i54 = icmp eq ptr %i.dx, %i.bl
  br i1 %.not.i.i.i.i.i.i54, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, !llvm.loop !142

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i51, %.noexc60
  %.0.lcssa.i.i.i.i.i.i56 = phi ptr [ %i.dv, %.noexc60 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i51 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i56, i64 48
  %.not.i27.i.i.i57 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i27.i.i.i57, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.dm) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58: ; preds = %bb.bd, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ba, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, %bb.at, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.cp, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.at ], [ %i.dv, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %.sroa.0.0, %bb.ba ]
  %i.eb = phi ptr [ %i.cu, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bl, %bb.at ], [ %i.ea, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.bl, %bb.ba ]
  %i.ec = phi ptr [ %i.ct, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cd, %bb.at ], [ %i.dz, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.dj, %bb.ba ]
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0118.0) #28
  br label %.preheader, !llvm.loop !150

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferaSERKS0_.exit: ; preds = %bb.an
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !77  ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 232 ; 5 uses
  %i.eg = ptrtoint ptr %i.bm to i64
  %i.eh = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh
  %reass.sub.fr.i = freeze i64 %i.ei              ; 12 uses
  %.val34.i = load ptr, ptr %i.ef, align 8, !tbaa !151 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 248 ; 2 uses
  %.val35.i = load ptr, ptr %i.ej, align 8, !tbaa !152
  %i.ek = ptrtoint ptr %.val35.i to i64
  %i.el = ptrtoint ptr %.val34.i to i64           ; 2 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  %i.en = icmp ugt i64 %reass.sub.fr.i, %i.em
  br i1 %i.en, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferaSERKS0_.exit
  %i.eo = sdiv exact i64 %reass.sub.fr.i, 48
  %i.ep = icmp ugt i64 %i.eo, 192153584101141162
  br i1 %i.ep, label %bb.bf, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, !prof !153

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc63 unwind label %bb.bq

.noexc63:                                         ; preds = %bb.bf
  unreachable

_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.be
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #24
          to label %.noexc64 unwind label %bb.bq  ; 3 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %i.bm
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc64
  %i.er = add i64 %reass.sub.fr.i, -48
  %i.es = urem i64 %i.er, 48
  %i.et = sub i64 %reass.sub.fr.i, %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr readonly align 8 %.sroa.0.0, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc64
  %.not.i.i62 = icmp eq ptr %.val34.i, null
  br i1 %.not.i.i62, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val34.i, i64 noundef %i.em) #26
  br label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.eq, ptr %i.ef, align 8, !tbaa !151
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %reass.sub.fr.i
  store ptr %i.eu, ptr %i.ej, align 8, !tbaa !152
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bh:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferaSERKS0_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ee, i64 240 ; 2 uses
  %.val30.i = load ptr, ptr %i.ev, align 8, !tbaa !154
  %i.ew = ptrtoint ptr %.val30.i to i64
  %i.ex = sub i64 %i.ew, %i.el                    ; 4 uses
  %.not24.i = icmp ult i64 %i.ex, %reass.sub.fr.i
  br i1 %.not24.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ey = icmp sgt i64 %reass.sub.fr.i, 48
  br i1 %i.ey, label %bb.bj, label %bb.bk, !prof !155

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %.sroa.0.0, i64 %reass.sub.fr.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.ez = icmp eq i64 %reass.sub.fr.i, 48
  br i1 %i.ez, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread: ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %.sroa.0.0, i64 41, i1 false), !tbaa.struct !136
  %i.fa = load ptr, ptr %i.ef, align 8, !tbaa !151
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %reass.sub.fr.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !154
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bh
  %i.fd = icmp sgt i64 %i.ex, 48
  br i1 %i.fd, label %bb.bm, label %bb.bn, !prof !155

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %.sroa.0.0, i64 %i.ex, i1 false)
  br label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.fe = icmp eq i64 %i.ex, 48
  br i1 %i.fe, label %bb.bo, label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %.sroa.0.0, i64 41, i1 false), !tbaa.struct !136
  br label %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.val25.i = load ptr, ptr %i.ef, align 8, !tbaa !151
  %.val26.i = load ptr, ptr %i.ev, align 8, !tbaa !154 ; 2 uses
  %i.ff = ptrtoint ptr %.val26.i to i64
  %i.fg = ptrtoint ptr %.val25.i to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.fh ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fi, %i.bm
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %.val26.i, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i ], [ %i.fi, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.0810.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !156

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %bb.bk, %bb.bj, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.fl = load ptr, ptr %i.ef, align 8, !tbaa !151
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %reass.sub.fr.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !154
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.fo = ptrtoint ptr %i.bl to i64
  %i.fp = sub i64 %i.fo, %i.eh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.fp) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bp
  %i.fq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret void

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, %bb.bf, %bb.an
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.ao, %bb.ay, %bb.ax, %bb.bq, %.loopexit.split-lp143, %.loopexit142, %.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cv, %bb.ax ], [ %i.cw, %bb.ay ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp143 ], [ %i.fr, %bb.bq ], [ %i.bs, %bb.ao ], [ %lpad.loopexit144, %.loopexit142 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fs = ptrtoint ptr %i.bl to i64
  %i.ft = ptrtoint ptr %.sroa.0.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.fu) #26
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66: ; preds = %bb.bs, %bb.br, %.thread, %.loopexit148, %.loopexit.split-lp149, %bb.g, %bb.h, %bb.ak, %bb.x, %bb.l, %bb.f
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %.pn29.pn, %bb.x ], [ %i.r, %bb.l ], [ %.pn26.pn, %bb.ak ], [ %lpad.loopexit150, %.loopexit148 ], [ %i.br, %.thread ], [ %.pn.pn.pn.ph, %bb.br ], [ %.pn.pn.pn.ph, %bb.bs ]
  %i.fv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn

bb.bt:                                            ; preds = %bb.af, %bb.s
  unreachable
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

declare void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_510OutputFile11frameBufferEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510OutputFile11writePixelsEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::TaskGroup", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %.val130 = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.h = getelementptr i8, ptr %i.f, i64 240
  %.val131 = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.i = icmp eq ptr %.val131, %.val130
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.16)
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
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !157
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99
  %i.u = sdiv i32 %i.r, %i.t                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !77   ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load i32, ptr %i.w, align 8, !tbaa !97
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !91  ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !99 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %1, -1
  %i.ae = add i32 %i.ad, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !157
  %i.ah = sub i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ac                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %.val127 = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.ak = getelementptr i8, ptr %i.v, i64 272
  %.val128 = load ptr, ptr %i.ak, align 8, !tbaa !57
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
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !77  ; 3 uses
  %i.ax = add nsw i64 %indvars.iv269, %i.ar       ; 2 uses
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull %2)
          to label %.noexc135 unwind label %bb.t

.noexc135:                                        ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114LineBufferTaskE, i64 16), ptr %i.av, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 264
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 272
  %.val6.i = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bc = ptrtoint ptr %.val6.i to i64
  %i.bd = ptrtoint ptr %.val.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = urem i64 %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 2 uses
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i unwind label %bb.p

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110LineBuffer4waitEv.exit.i: ; preds = %.noexc135
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !162 ; 9 uses
end_hunk_0
