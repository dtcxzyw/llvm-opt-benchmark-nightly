inline.NumInlined: 1001
inline.NumDeleted: 476
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile14setFrameBufferERKNS_15DeepFrameBufferE:bb.a
          cleanup
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0101.0, i64 288
  %i.t = load i32, ptr %i.s, align 4, !tbaa !172
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !174
  %.not = icmp eq i32 %i.t, %i.v
  br i1 %.not, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_Z13iex_debugTrapv()
          to label %bb.o unwind label %.loopexit.split-lp117

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.n)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.13, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.q
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125
  %i.af = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile8fileNameEv.exit unwind label %bb.u

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.af)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile8fileNameEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.14, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.r
  %i.ai = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.ck unwind label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %bb.q, %bb.p, %bb.s, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile8fileNameEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn46 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %i.al, %bb.v ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.w ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.y:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.an = load i32, ptr %i.am, align 8, !tbaa !175
  %.not41 = icmp eq i32 %i.an, 1
  br i1 %.not41, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 324
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !176
  %.not42 = icmp eq i32 %i.ap, 1
  br i1 %.not42, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  invoke void @_Z13iex_debugTrapv()
          to label %bb.ab unwind label %.loopexit.split-lp117

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.15, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %bb.ac
  %i.as = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.ck unwind label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac, %bb.ad
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn43 = phi { ptr, i32 } [ %i.au, %bb.af ], [ %i.av, %bb.ag ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ah ], [ %i.at, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.aj:                                            ; preds = %bb.z, %bb.k
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0101.0) #28
  br label %.preheader115, !llvm.loop !177

bb.ak:                                            ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !178 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull @.str.16)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %bb.ck unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.ao:                                            ; preds = %bb.al
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ba) #24
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.ap:                                            ; preds = %bb.ak
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 416
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !118
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 424
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !tbaa !179
  %i.bi = trunc <2 x i64> %i.bh to <2 x i32>
  store <2 x i32> %i.bi, ptr %i.bg, align 8, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !180, !range !170, !noundef !171
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 432
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !181
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !182, !range !170, !noundef !171
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 436
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !183
  %i.br = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.preheader unwind label %.thread

.preheader:                                       ; preds = %bb.ap, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 25 uses
  %i.bs = phi ptr [ %i.ew, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 11 uses
  %.val58130 = phi ptr [ %.val58131, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.ap ] ; 6 uses
  %.sroa.091.0 = phi ptr [ %i.ex, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit ], [ %i.br, %bb.ap ] ; 4 uses
  %i.bt = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %.preheader
  %.not109 = icmp eq ptr %.sroa.091.0, %i.bt
  br i1 %.not109, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit unwind label %bb.ce ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit: ; preds = %bb.ar
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.bx, ptr noundef nonnull align 8 dereferenceable(50) %i.by, i64 50, i1 false), !tbaa.struct !184
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !121 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 288
  %.val55150 = load ptr, ptr %i.ca, align 8, !tbaa !99 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 296
  %.val56151 = load ptr, ptr %i.cb, align 8, !tbaa !100 ; 2 uses
  %i.cc = ptrtoint ptr %.val55150 to i64
  %.not160 = icmp eq ptr %.val56151, %.val55150
  br i1 %.not160, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

bb.as:                                            ; preds = %.preheader
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.at:                                            ; preds = %bb.aq
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 32
  %i.cg = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.cf)
          to label %bb.au unwind label %bb.bd     ; 7 uses

bb.au:                                            ; preds = %bb.at
  %i.ch = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.av unwind label %bb.be

bb.av:                                            ; preds = %bb.au
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.cj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %bb.ax unwind label %.loopexit110 ; 7 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 288
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !172
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !189
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cn, align 8, !tbaa !191
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 0, ptr %i.co, align 4, !tbaa !192
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store i32 0, ptr %i.cp, align 8, !tbaa !193
  %.not.i.i64 = icmp eq ptr %i.bs, %.val58130
  br i1 %.not.i.i64, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.cj, ptr %i.bs, align 8, !tbaa !115
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.az:                                            ; preds = %bb.ax
  %i.cr = ptrtoint ptr %i.bs to i64
  %i.cs = ptrtoint ptr %.sroa.0.0 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.ba, label %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc unwind label %.loopexit.split-lp111

.noexc:                                           ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %i.cw = icmp eq ptr %i.bs, %.sroa.0.0
  %.sroa.speculated.i.i.i.i = select i1 %i.cw, i64 1, i64 %i.cv
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cv
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #25
          to label %.noexc65 unwind label %.loopexit110 ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.ct ; 2 uses
  store ptr %i.cj, ptr %i.dd, align 8, !tbaa !115
  %i.de = icmp sgt i64 %i.ct, 0
  br i1 %i.de, label %bb.bb, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

bb.bb:                                            ; preds = %.noexc65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %.sroa.0.0, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i: ; preds = %bb.bb, %.noexc65
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ct) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit

bb.bd:                                            ; preds = %bb.at
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.be:                                            ; preds = %bb.au
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit110:                                     ; preds = %bb.aw, %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp111:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bf:                                            ; preds = %bb.av
  %i.dj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %bb.bg unwind label %.loopexit ; 8 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 288
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !174
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 340
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 304
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 336
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !180, !range !170, !noundef !171
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 337
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !182, !range !170, !noundef !171
  %i.dv = zext nneg i8 %i.du to i32
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !189
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.do, ptr %i.dw, align 8, !tbaa !196
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dy = load <2 x i64>, ptr %i.dp, align 8, !tbaa !179
  store <2 x i64> %i.dy, ptr %i.dx, align 8, !tbaa !179
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i8 0, ptr %i.dz, align 8, !tbaa !191
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  store i32 %i.ds, ptr %i.ea, align 4, !tbaa !192
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i32 %i.dv, ptr %i.eb, align 8, !tbaa !193
  %.not.i.i66 = icmp eq ptr %i.bs, %.val58130
  br i1 %.not.i.i66, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.dj, ptr %i.bs, align 8, !tbaa !115
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76

bb.bi:                                            ; preds = %bb.bg
  %i.ec = ptrtoint ptr %i.bs to i64
  %i.ed = ptrtoint ptr %.sroa.0.0 to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775800
  br i1 %i.ef, label %bb.bj, label %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i68

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i68: ; preds = %bb.bi
  %i.eg = ashr exact i64 %i.ee, 3                 ; 3 uses
  %i.eh = icmp eq ptr %i.bs, %.sroa.0.0
  %.sroa.speculated.i.i.i.i69 = select i1 %i.eh, i64 1, i64 %i.eg
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i69, %i.eg ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eg
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i.i70 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i70)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #25
          to label %.noexc75 unwind label %.loopexit ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i68
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ee ; 2 uses
  store ptr %i.dj, ptr %i.eo, align 8, !tbaa !115
  %i.ep = icmp sgt i64 %i.ee, 0
  br i1 %i.ep, label %bb.bk, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i71

bb.bk:                                            ; preds = %.noexc75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %.sroa.0.0, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i71

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i71: ; preds = %bb.bk, %.noexc75
  %.not.i21.i.i.i72 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i21.i.i.i72, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i71
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ee) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73: ; preds = %bb.bl, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i71
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76: ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73, %bb.bh
  %i.er = phi ptr [ %i.en, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %.sroa.0.0, %bb.bh ]
  %.sroa.0.1 = phi ptr [ %i.eo, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %i.bs, %bb.bh ] ; 2 uses
  %i.es = phi ptr [ %i.eq, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i73 ], [ %.val58130, %bb.bh ]
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %4 = load ptr, ptr %.sroa.0.1, align 8, !tbaa !115
  %i.et = getelementptr inbounds nuw i8, ptr %i.cg, i64 296
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !178
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !197
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %bb.bf, %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i68
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ay, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76
  %.sroa.0.2 = phi ptr [ %i.dc, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ay ], [ %i.er, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %i.ew = phi ptr [ %i.df, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.cq, %bb.ay ], [ %.sroa.11.1, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %.val58131 = phi ptr [ %i.dg, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.val58130, %bb.ay ], [ %i.es, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE9push_backEOS3_.exit76 ]
  %i.ex = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.0) #28
  br label %.preheader, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.cg, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit
  %.lcssa149 = phi ptr [ %i.bz, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.ge, %bb.cg ] ; 3 uses
  %.val55.lcssa = phi ptr [ %.val55150, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %.val55, %bb.cg ] ; 6 uses
  %.val56.lcssa = phi ptr [ %.val56151, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %.val56, %bb.cg ] ; 2 uses
  %.lcssa121 = phi i64 [ %i.cc, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.gj, %bb.cg ]
  %.lcssa = phi i64 [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ], [ %i.gk, %bb.cg ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa149, i64 288 ; 4 uses
  %i.ez = getelementptr i8, ptr %.lcssa149, i64 296 ; 3 uses
  %i.fa = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.fb = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.fc = sub i64 %i.fa, %i.fb                    ; 13 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.lcssa149, i64 304 ; 2 uses
  %.val35.i = load ptr, ptr %i.fd, align 8, !tbaa !199
  %i.fe = ptrtoint ptr %.val35.i to i64
  %i.ff = sub i64 %i.fe, %.lcssa121               ; 2 uses
  %i.fg = icmp ugt i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %._crit_edge
  %i.fh = icmp ugt i64 %i.fc, 9223372036854775800
  br i1 %i.fh, label %bb.bn, label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i, !prof !200

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc78 unwind label %bb.ce

.noexc78:                                         ; preds = %bb.bn
  unreachable

_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bm
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #25
          to label %.noexc79 unwind label %bb.ce  ; 4 uses

.noexc79:                                         ; preds = %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i
  %i.fj = icmp samesign ugt i64 %i.fc, 8
  br i1 %i.fj, label %bb.bo, label %bb.bp, !prof !201

bb.bo:                                            ; preds = %.noexc79
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr align 8 %.sroa.0.0, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

bb.bp:                                            ; preds = %.noexc79
  %i.fk = icmp eq i64 %i.fc, 8
  br i1 %i.fk, label %bb.bq, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !115
  store ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.fi, align 8, !tbaa !115
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %.not.i.i77 = icmp eq ptr %.val55.lcssa, null
  br i1 %.not.i.i77, label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val55.lcssa, i64 noundef %i.ff) #26
  br label %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.br, %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.i
  store ptr %i.fi, ptr %i.ey, align 8, !tbaa !99
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fc
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !199
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.bs:                                            ; preds = %._crit_edge
  %.not24.i = icmp ult i64 %.lcssa, %i.fc
  br i1 %.not24.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fm = icmp sgt i64 %i.fc, 8
  br i1 %i.fm, label %bb.bu, label %bb.bv, !prof !201

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val55.lcssa, ptr align 8 %.sroa.0.0, i64 %i.fc, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.fn = icmp eq i64 %i.fc, 8
  br i1 %i.fn, label %bb.bw, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !115
  store ptr %.val.i.i.i.i.i.i, ptr %.val55.lcssa, align 8, !tbaa !115
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread

bb.bx:                                            ; preds = %bb.bs
  %i.fo = icmp sgt i64 %.lcssa, 8
  br i1 %i.fo, label %bb.by, label %bb.bz, !prof !201

bb.by:                                            ; preds = %bb.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val55.lcssa, ptr align 8 %.sroa.0.0, i64 %.lcssa, i1 false)
  %.val.pre.i = load ptr, ptr %i.ey, align 8, !tbaa !99
  %.val25.pre.i = load ptr, ptr %i.ez, align 8, !tbaa !100 ; 2 uses
  %.pre44.i = ptrtoint ptr %.val25.pre.i to i64
  %.pre45.i = ptrtoint ptr %.val.pre.i to i64
  %.pre47.i = sub i64 %.pre44.i, %.pre45.i
  br label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.fp = icmp eq i64 %.lcssa, 8
  br i1 %i.fp, label %bb.ca, label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i

bb.ca:                                            ; preds = %bb.bz
  %.val.i.i.i.i.i40.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !115
  store ptr %.val.i.i.i.i.i40.i, ptr %.val55.lcssa, align 8, !tbaa !115
  br label %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i

_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i: ; preds = %bb.ca, %bb.bz, %bb.by
  %.pre-phi48.i = phi i64 [ %.pre47.i, %bb.by ], [ %.lcssa, %bb.bz ], [ 8, %bb.ca ]
  %.val25.i = phi ptr [ %.val25.pre.i, %bb.by ], [ %.val56.lcssa, %bb.bz ], [ %.val56.lcssa, %bb.ca ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.pre-phi48.i ; 3 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fa, %i.fr                    ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, 8
  br i1 %i.ft, label %bb.cb, label %bb.cc, !prof !201

bb.cb:                                            ; preds = %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val25.i, ptr align 8 %i.fq, i64 %i.fs, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.cc:                                            ; preds = %_ZSt4copyIPPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoES4_ET0_T_S6_S5_.exit.i
  %i.fu = icmp eq i64 %i.fs, 8
  br i1 %i.fu, label %bb.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i

bb.cd:                                            ; preds = %bb.cc
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fq, align 8, !tbaa !115
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %.val25.i, align 8, !tbaa !115
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread: ; preds = %bb.cd, %bb.bw
  %i.fv = load ptr, ptr %i.ey, align 8, !tbaa !99
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fc
  store ptr %i.fw, ptr %i.ez, align 8, !tbaa !100
  br label %bb.ch

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i: ; preds = %bb.cc, %bb.cb, %bb.bv, %bb.bu, %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.fx = load ptr, ptr %i.ey, align 8, !tbaa !99
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fc
  store ptr %i.fy, ptr %i.ez, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit, label %bb.ch

bb.ce:                                            ; preds = %_ZNSt12_Vector_baseIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EE11_M_allocateEm.exit.i.i, %bb.bn, %bb.ar
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.lr.ph:                                           ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit, %bb.cg
  %i.ga = phi ptr [ %i.ge, %bb.cg ], [ %i.bz, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ]
  %.val55153 = phi ptr [ %.val55, %bb.cg ], [ %.val55150, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ]
  %.0152 = phi i64 [ %i.gf, %bb.cg ], [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferaSERKS0_.exit ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.val55153, i64 %.0152
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !115 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 56) #26
  %.pre185 = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph, %bb.cf
  %i.ge = phi ptr [ %i.ga, %.lr.ph ], [ %.pre185, %bb.cf ] ; 4 uses
  %i.gf = add nuw i64 %.0152, 1                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 288
  %.val55 = load ptr, ptr %i.gg, align 8, !tbaa !99 ; 3 uses
  %i.gh = getelementptr i8, ptr %i.ge, i64 296
  %.val56 = load ptr, ptr %i.gh, align 8, !tbaa !100 ; 2 uses
  %i.gi = ptrtoint ptr %.val56 to i64
  %i.gj = ptrtoint ptr %.val55 to i64             ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = icmp ult i64 %i.gf, %i.gl
  br i1 %i.gm, label %.lr.ph, label %._crit_edge, !llvm.loop !202

bb.ch:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i
  %i.gn = ptrtoint ptr %.val58130 to i64
  %i.go = sub i64 %i.gn, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.i, %bb.ch
  %i.gp = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  ret void

bb.ci:                                            ; preds = %bb.as, %bb.be, %bb.bd, %bb.ce, %.loopexit.split-lp111, %.loopexit110, %.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dh, %bb.bd ], [ %i.di, %bb.be ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp111 ], [ %i.fz, %bb.ce ], [ %i.ce, %bb.as ], [ %lpad.loopexit112, %.loopexit110 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gq = ptrtoint ptr %.val58130 to i64
  %i.gr = ptrtoint ptr %.sroa.0.0 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gs) #26
  br label %_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81

_ZNSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113TOutSliceInfoESaIS3_EED2Ev.exit81: ; preds = %bb.cj, %bb.ci, %.thread, %.loopexit116, %.loopexit.split-lp117, %bb.g, %bb.h, %bb.ai, %bb.x, %bb.l, %bb.an, %bb.ao, %bb.f
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %i.k, %bb.f ], [ %i.bb, %bb.an ], [ %i.bc, %bb.ao ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %.pn46.pn, %bb.x ], [ %i.r, %bb.l ], [ %.pn43.pn, %bb.ai ], [ %lpad.loopexit118, %.loopexit116 ], [ %i.cd, %.thread ], [ %.pn.pn.pn.ph, %bb.ci ], [ %.pn.pn.pn.ph, %bb.cj ]
  %i.gt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn

bb.ck:                                            ; preds = %bb.am, %bb.ad, %bb.s
  unreachable
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(50) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer19getSampleCountSliceEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11frameBufferEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile10writeTilesEiiiiii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %10 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::TaskGroup", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !121  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %.val128 = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr i8, ptr %i.f, i64 296
  %.val129 = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.i = icmp eq ptr %.val129, %.val128
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.17)
          to label %.invoke unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.fe

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #24
  br label %bb.fd

bb.f:                                             ; preds = %.invoke, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit.thread
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  br label %bb.fd

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  %i.o = load i32, ptr %i.n, align 4, !tbaa !156
  %i.p = icmp slt i32 %5, %i.o
  %i.q = icmp sgt i32 %5, -1
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.h, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.s = load i32, ptr %i.r, align 8, !tbaa !157
  %i.t = icmp slt i32 %6, %i.s
  %i.u = icmp sgt i32 %6, -1
  %or.cond3.i = and i1 %i.u, %i.t
  br i1 %or.cond3.i, label %bb.i, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.x = zext nneg i32 %5 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 2 uses
  %i.aa = icmp slt i32 %1, %i.z
  %i.ab = icmp sgt i32 %1, -1
  %or.cond5.i = and i1 %i.ab, %i.aa
  br i1 %or.cond5.i, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91
  %i.ae = zext nneg i32 %6 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %i.ah = icmp slt i32 %3, %i.ag
  %i.ai = icmp sgt i32 %3, -1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.j, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

bb.j:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit
  %i.ak = icmp slt i32 %2, %i.z
  %i.al = icmp sgt i32 %2, -1
  %or.cond5.i134 = and i1 %i.al, %i.ak
  br i1 %or.cond5.i134, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit135, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit135: ; preds = %bb.j
  %i.am = icmp slt i32 %4, %i.ag
  %i.an = icmp sgt i32 %4, -1
  %i.ao = and i1 %i.an, %i.am
  br i1 %i.ao, label %bb.l, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread: ; preds = %bb.j, %bb.h, %bb.g, %bb.i, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit135, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.k

.invoke:                                          ; preds = %bb.c, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread
  %i.aq = phi ptr [ %i.ap, %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread ], [ %i.j, %bb.c ]
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #29
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_37BaseExcE
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #24
  br label %bb.fd

bb.l:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile11isValidTileEiiii.exit135
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !155
  %i.au = icmp ne i32 %i.at, 1
  %.not.i = icmp eq i32 %5, %6
  %or.cond.i136.not217.not219 = or i1 %.not.i, %i.au
  br i1 %or.cond.i136.not217.not219, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit.thread

_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit.thread: ; preds = %bb.l
  invoke void @_Z13iex_debugTrapv()
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_519DeepTiledOutputFile12isValidLevelEii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.19, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %5)
          to label %bb.o unwind label %bb.s       ; 2 uses

end_hunk_0
