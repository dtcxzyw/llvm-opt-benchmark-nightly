Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfOutputFile?download=true
inline.NumInlined: 605
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_410OutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a

_ZNK7Imf_3_410OutputFile8fileNameEv.exit42:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.bd)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZNK7Imf_3_410OutputFile8fileNameEv.exit42
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.15, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.ae
  %i.bg = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
          to label %bb.bt unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.ad, %bb.ac, %bb.af, %_ZNK7Imf_3_410OutputFile8fileNameEv.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
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
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.al:                                            ; preds = %bb.z, %bb.k
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0130.0) #28
  br label %.preheader147, !llvm.loop !135

.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit
  %i.bl = phi ptr [ %i.ec, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 12 uses
  %i.bm = phi ptr [ %i.ed, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 20 uses
  %i.bn = phi ptr [ %i.ee, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 25 uses
  %.sroa.0118.0 = phi ptr [ %i.ef, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ %i.j, %bb.e ] ; 6 uses
  %i.bo = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.preheader
  %.not141 = icmp eq ptr %.sroa.0118.0, %i.bo
  br i1 %.not141, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN7Imf_3_411FrameBufferaSERKS0_.exit unwind label %bb.bq ; 0 uses

.thread:                                          ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit66

bb.ao:                                            ; preds = %.preheader
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ap:                                            ; preds = %bb.am
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 32
  %i.bv = invoke ptr @_ZNK7Imf_3_411FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bu)
          to label %bb.aq unwind label %bb.ax     ; 7 uses

bb.aq:                                            ; preds = %bb.ap
  %i.bw = invoke ptr @_ZNK7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 288
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !125 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 292
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !131 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 296
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !133 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i44, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.bz, ptr %i.bm, align 8, !tbaa !136
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx, i8 0, i64 24, i1 false)
  store i32 %i.cb, ptr %.sroa.998.0..sroa_idx, align 8, !tbaa !92
  %.sroa.10101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.cd, ptr %.sroa.10101.0..sroa_idx, align 4, !tbaa !92
  %.sroa.11104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 1, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !137
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.au:                                            ; preds = %bb.as
  %i.cf = ptrtoint ptr %i.bl to i64
  %i.cg = ptrtoint ptr %i.bn to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775776
  br i1 %i.ci, label %bb.av, label %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc unwind label %.loopexit.split-lp143

.noexc:                                           ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.cj = sdiv exact i64 %i.ch, 48                ; 3 uses
  %i.ck = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.ck, i64 1, i64 %i.cj
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 192153584101141162)
  %i.co = select i1 %i.cm, i64 192153584101141162, i64 %i.cn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cp = mul nuw nsw i64 %i.co, 48
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #24
          to label %.noexc45 unwind label %.loopexit142 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch ; 5 uses
  store i32 %i.bz, ptr %i.cr, align 8, !tbaa !136
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.998.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx90, i8 0, i64 24, i1 false)
  store i32 %i.cb, ptr %.sroa.998.0..sroa_idx99, align 8, !tbaa !92
  %.sroa.10101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  store i32 %i.cd, ptr %.sroa.10101.0..sroa_idx102, align 4, !tbaa !92
  %.sroa.11104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i8 1, ptr %.sroa.11104.0..sroa_idx105, align 8, !tbaa !137
  br i1 %i.ck, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %i.cq, %.noexc45 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !138, !alias.scope !140
  %i.cs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !144

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cq, %.noexc45 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i27.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.ch) #25
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cq, i64 %i.co
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.ax:                                            ; preds = %bb.ap
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ay:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit142:                                     ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp143:                            ; preds = %bb.av
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.az:                                            ; preds = %bb.ar
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !128 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 296
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !145
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 304
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !146 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 312
  %i.df = load i64, ptr %i.de, align 8, !tbaa !147 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 320
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !132 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 324
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !134 ; 2 uses
  %4 = ptrtoint ptr %i.db to i64                  ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i46, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.cz, ptr %i.bm, align 8, !tbaa !136
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %4, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !139
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.dd, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !113
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.df, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !113
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %i.dh, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !92
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.dj, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !92
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !137
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.bb:                                            ; preds = %bb.az
  %i.dl = ptrtoint ptr %i.bl to i64
  %i.dm = ptrtoint ptr %i.bn to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775776
  br i1 %i.do, label %bb.bc, label %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48: ; preds = %bb.bb
  %i.dp = sdiv exact i64 %i.dn, 48                ; 3 uses
  %i.dq = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %.sroa.speculated.i.i.i.i49 = select i1 %i.dq, i64 1, i64 %i.dp
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i.i49, %i.dp ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dp
  %i.dt = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 192153584101141162)
  %i.du = select i1 %i.ds, i64 192153584101141162, i64 %i.dt ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.du, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.dv = mul nuw nsw i64 %i.du, 48
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #24
          to label %.noexc60 unwind label %.loopexit ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dn ; 7 uses
  store i32 %i.cz, ptr %i.dx, align 8, !tbaa !136
  %.sroa.670.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %4, ptr %.sroa.670.0..sroa_idx71, align 8, !tbaa !139
  %.sroa.7.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %i.dd, ptr %.sroa.7.0..sroa_idx73, align 8, !tbaa !113
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %i.df, ptr %.sroa.8.0..sroa_idx75, align 8, !tbaa !113
  %.sroa.9.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i32 %i.dh, ptr %.sroa.9.0..sroa_idx77, align 8, !tbaa !92
  %.sroa.10.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  store i32 %i.dj, ptr %.sroa.10.0..sroa_idx79, align 4, !tbaa !92
  %.sroa.11.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx81, align 8, !tbaa !137
  br i1 %i.dq, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.noexc60, %.lr.ph.i.i.i.i.i.i51
  %.03.i.i.i.i.i.i52 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i51 ], [ %i.dw, %.noexc60 ] ; 2 uses
  %.092.i.i.i.i.i.i53 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i51 ], [ %i.bn, %.noexc60 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i52, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i53, i64 48, i1 false), !tbaa.struct !138, !alias.scope !148
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i53, i64 48 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i52, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i54 = icmp eq ptr %i.dy, %i.bl
  br i1 %.not.i.i.i.i.i.i54, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, !llvm.loop !144

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i51, %.noexc60
  %.0.lcssa.i.i.i.i.i.i56 = phi ptr [ %i.dw, %.noexc60 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i51 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i56, i64 48
  %.not.i27.i.i.i57 = icmp eq ptr %i.bn, null
  br i1 %.not.i27.i.i.i57, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58: ; preds = %bb.bd, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i55
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.dw, i64 %i.du
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ba, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58, %bb.at, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ec = phi ptr [ %i.bl, %bb.ba ], [ %i.eb, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.bl, %bb.at ], [ %i.cv, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ed = phi ptr [ %i.dk, %bb.ba ], [ %i.ea, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.ce, %bb.at ], [ %i.cu, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ee = phi ptr [ %i.bn, %bb.ba ], [ %i.dw, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i58 ], [ %i.bn, %bb.at ], [ %i.cq, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ef = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0118.0) #28
  br label %.preheader, !llvm.loop !152

_ZN7Imf_3_411FrameBufferaSERKS0_.exit:            ; preds = %bb.an
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !78  ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 232 ; 6 uses
  %i.ei = ptrtoint ptr %i.bm to i64
  %i.ej = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %reass.sub.fr.i = freeze i64 %i.ek              ; 12 uses
  %.val34.i = load ptr, ptr %i.eh, align 8, !tbaa !153 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 248 ; 3 uses
  %.val35.i = load ptr, ptr %i.el, align 8, !tbaa !154
  %i.em = ptrtoint ptr %.val35.i to i64
  %i.en = ptrtoint ptr %.val34.i to i64           ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ugt i64 %reass.sub.fr.i, %i.eo
  br i1 %i.ep, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %i.eq = sdiv exact i64 %reass.sub.fr.i, 48
  %i.er = icmp ugt i64 %i.eq, 192153584101141162
  br i1 %i.er, label %bb.bf, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, !prof !155

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc63 unwind label %bb.bq

.noexc63:                                         ; preds = %bb.bf
  unreachable

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.be
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #24
          to label %.noexc64 unwind label %bb.bq  ; 3 uses

.noexc64:                                         ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc64
  %i.et = add i64 %reass.sub.fr.i, -48
  %i.eu = urem i64 %i.et, 48
  %i.ev = sub i64 %reass.sub.fr.i, %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.es, ptr readonly align 8 %i.bn, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc64
  %i.ew = load ptr, ptr %i.eh, align 8, !tbaa !153 ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i62, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  %i.ex = load ptr, ptr %i.el, align 8, !tbaa !154
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #25
  br label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.es, ptr %i.eh, align 8, !tbaa !153
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %reass.sub.fr.i
  store ptr %i.fb, ptr %i.el, align 8, !tbaa !154
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bh:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 240 ; 2 uses
  %.val30.i = load ptr, ptr %i.fc, align 8, !tbaa !156
  %i.fd = ptrtoint ptr %.val30.i to i64
  %i.fe = sub i64 %i.fd, %i.en                    ; 4 uses
  %.not24.i = icmp ult i64 %i.fe, %reass.sub.fr.i
  br i1 %.not24.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ff = icmp sgt i64 %reass.sub.fr.i, 48
  br i1 %i.ff, label %bb.bj, label %bb.bk, !prof !157

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.bn, i64 %reass.sub.fr.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.fg = icmp eq i64 %reass.sub.fr.i, 48
  br i1 %i.fg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread: ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %i.bn, i64 41, i1 false), !tbaa.struct !138
  %i.fh = load ptr, ptr %i.eh, align 8, !tbaa !153
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %reass.sub.fr.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !156
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bh
  %i.fk = icmp sgt i64 %i.fe, 48
  br i1 %i.fk, label %bb.bm, label %bb.bn, !prof !157

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.bn, i64 %i.fe, i1 false)
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.fl = icmp eq i64 %i.fe, 48
  br i1 %i.fl, label %bb.bo, label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(41) %i.bn, i64 41, i1 false), !tbaa.struct !138
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.val25.i = load ptr, ptr %i.eh, align 8, !tbaa !153
  %.val26.i = load ptr, ptr %i.fc, align 8, !tbaa !156 ; 2 uses
  %i.fm = ptrtoint ptr %.val26.i to i64
  %i.fn = ptrtoint ptr %.val25.i to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.fo ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fp, %i.bm
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %.val26.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.fp, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.0810.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !138
  %i.fq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !158

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_112OutSliceInfoES3_ET0_T_S5_S4_.exit.i, %bb.bk, %bb.bj, %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.fs = load ptr, ptr %i.eh, align 8, !tbaa !153
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %reass.sub.fr.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !156
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.fv = ptrtoint ptr %i.bl to i64
  %i.fw = sub i64 %i.fv, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.fw) #25
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_112OutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bp
  %i.fx = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret void

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_112OutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, %bb.bf, %bb.an
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

end_hunk_0
