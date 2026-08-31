Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTiledOutputFile?download=true
inline.NumInlined: 847
inline.NumDeleted: 418
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_415TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  invoke void @_Z13iex_debugTrapv()
          to label %bb.ab unwind label %.loopexit.split-lp147

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.15, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.ac
  %i.ap = call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #29
          to label %bb.br unwind label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac, %bb.ad
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ap) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn26 = phi { ptr, i32 } [ %i.ar, %bb.af ], [ %i.as, %bb.ag ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ah ], [ %i.aq, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit63

bb.aj:                                            ; preds = %bb.z, %bb.k
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0131.0) #28
  br label %.preheader145, !llvm.loop !170

.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit
  %i.au = phi ptr [ %i.dj, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 12 uses
  %i.av = phi ptr [ %i.dk, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 20 uses
  %i.aw = phi ptr [ %i.dl, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.e ] ; 25 uses
  %.sroa.0121.0 = phi ptr [ %i.dm, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit ], [ %i.i, %bb.e ] ; 4 uses
  %i.ax = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %.preheader
  %.not139 = icmp eq ptr %.sroa.0121.0, %i.ax
  br i1 %.not139, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN7Imf_3_411FrameBufferaSERKS0_.exit unwind label %bb.bo ; 0 uses

.thread:                                          ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit63

bb.am:                                            ; preds = %.preheader
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.an:                                            ; preds = %bb.ak
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0121.0, i64 32
  %i.be = invoke ptr @_ZNK7Imf_3_411FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bd)
          to label %bb.ao unwind label %bb.av     ; 7 uses

bb.ao:                                            ; preds = %bb.an
  %i.bf = invoke ptr @_ZNK7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0121.0, i64 288
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !162 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i41, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.bi, ptr %i.av, align 8, !tbaa !171
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.998.0..sroa_idx, align 8, !tbaa !172
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  store i32 0, ptr %.sroa.10103.0..sroa_idx, align 4, !tbaa !125
  %.sroa.11106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 0, ptr %.sroa.11106.0..sroa_idx, align 8, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.as:                                            ; preds = %bb.aq
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = ptrtoint ptr %i.aw to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775776
  br i1 %i.bn, label %bb.at, label %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc unwind label %.loopexit.split-lp141

.noexc:                                           ; preds = %bb.at
  unreachable

_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.bo = sdiv exact i64 %i.bm, 48                ; 3 uses
  %i.bp = icmp eq ptr %i.au, %i.aw                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.bp, i64 1, i64 %i.bo
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 192153584101141162)
  %i.bt = select i1 %i.br, i64 192153584101141162, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 48
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #25
          to label %.noexc42 unwind label %.loopexit140 ; 5 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm ; 5 uses
  store i32 %i.bi, ptr %i.bw, align 8, !tbaa !171
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.998.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx90, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.998.0..sroa_idx99, align 8, !tbaa !172
  %.sroa.10103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 0, ptr %.sroa.10103.0..sroa_idx104, align 4, !tbaa !125
  %.sroa.11106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 0, ptr %.sroa.11106.0..sroa_idx107, align 8, !tbaa !125
  br i1 %i.bp, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc42, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %.noexc42 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %.noexc42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !173, !alias.scope !176
  %i.bx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.au
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !180

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc42 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i27.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.av:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aw:                                            ; preds = %bb.ao
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit140:                                     ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp141:                            ; preds = %bb.at
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ax:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !165 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 296
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !181 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 304
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !182 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !183 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 336
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !184, !range !157, !noundef !158
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 337
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !185, !range !157, !noundef !158
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i43, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.ce, ptr %i.av, align 8, !tbaa !171
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.cg, ptr %.sroa.667.0..sroa_idx, align 8, !tbaa !174
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ci, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !175
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %i.ck, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !175
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !172
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  store i32 %i.cn, ptr %.sroa.1077.0..sroa_idx, align 4, !tbaa !125
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 %i.cq, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !125
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.az:                                            ; preds = %bb.ax
  %i.cs = ptrtoint ptr %i.au to i64
  %i.ct = ptrtoint ptr %i.aw to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775776
  br i1 %i.cv, label %bb.ba, label %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.az
  %i.cw = sdiv exact i64 %i.cu, 48                ; 3 uses
  %i.cx = icmp eq ptr %i.au, %i.aw                ; 2 uses
  %.sroa.speculated.i.i.i.i46 = select i1 %i.cx, i64 1, i64 %i.cw
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.cw ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cw
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 192153584101141162)
  %i.db = select i1 %i.cz, i64 192153584101141162, i64 %i.da ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.dc = mul nuw nsw i64 %i.db, 48
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #25
          to label %.noexc57 unwind label %.loopexit ; 5 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cu ; 7 uses
  store i32 %i.ce, ptr %i.de, align 8, !tbaa !171
  %.sroa.667.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.cg, ptr %.sroa.667.0..sroa_idx68, align 8, !tbaa !174
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %i.ci, ptr %.sroa.7.0..sroa_idx70, align 8, !tbaa !175
  %.sroa.8.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %i.ck, ptr %.sroa.8.0..sroa_idx72, align 8, !tbaa !175
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i8 0, ptr %.sroa.9.0..sroa_idx74, align 8, !tbaa !172
  %.sroa.1077.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  store i32 %i.cn, ptr %.sroa.1077.0..sroa_idx78, align 4, !tbaa !125
  %.sroa.11.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 %i.cq, ptr %.sroa.11.0..sroa_idx80, align 8, !tbaa !125
  br i1 %i.cx, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52, label %.lr.ph.i.i.i.i.i.i48

.lr.ph.i.i.i.i.i.i48:                             ; preds = %.noexc57, %.lr.ph.i.i.i.i.i.i48
  %.03.i.i.i.i.i.i49 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i48 ], [ %i.dd, %.noexc57 ] ; 2 uses
  %.092.i.i.i.i.i.i50 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i48 ], [ %i.aw, %.noexc57 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i49, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i50, i64 48, i1 false), !tbaa.struct !173, !alias.scope !186
  %i.df = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i50, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i49, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.df, %i.au
  br i1 %.not.i.i.i.i.i.i51, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52, label %.lr.ph.i.i.i.i.i.i48, !llvm.loop !180

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52: ; preds = %.lr.ph.i.i.i.i.i.i48, %.noexc57
  %.0.lcssa.i.i.i.i.i.i53 = phi ptr [ %i.dd, %.noexc57 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i48 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i53, i64 48
  %.not.i27.i.i.i54 = icmp eq ptr %i.aw, null
  br i1 %.not.i27.i.i.i54, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55: ; preds = %bb.bb, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.db
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ay, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, %bb.ar, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dj = phi ptr [ %i.au, %bb.ay ], [ %i.di, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.au, %bb.ar ], [ %i.ca, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dk = phi ptr [ %i.cr, %bb.ay ], [ %i.dh, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.bj, %bb.ar ], [ %i.bz, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dl = phi ptr [ %i.aw, %bb.ay ], [ %i.dd, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.aw, %bb.ar ], [ %i.bv, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dm = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0121.0) #28
  br label %.preheader, !llvm.loop !190

_ZN7Imf_3_411FrameBufferaSERKS0_.exit:            ; preds = %bb.al
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !108 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 232 ; 6 uses
  %i.dp = ptrtoint ptr %i.av to i64
  %i.dq = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %reass.sub.fr.i = freeze i64 %i.dr              ; 12 uses
  %.val34.i = load ptr, ptr %i.do, align 8, !tbaa !191 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 248 ; 3 uses
  %.val35.i = load ptr, ptr %i.ds, align 8, !tbaa !192
  %i.dt = ptrtoint ptr %.val35.i to i64
  %i.du = ptrtoint ptr %.val34.i to i64           ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ugt i64 %reass.sub.fr.i, %i.dv
  br i1 %i.dw, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %i.dx = sdiv exact i64 %reass.sub.fr.i, 48
  %i.dy = icmp ugt i64 %i.dx, 192153584101141162
  br i1 %i.dy, label %bb.bd, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, !prof !193

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc60 unwind label %bb.bo

.noexc60:                                         ; preds = %bb.bd
  unreachable

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bc
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #25
          to label %.noexc61 unwind label %bb.bo  ; 3 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc61
  %i.ea = add i64 %reass.sub.fr.i, -48
  %i.eb = urem i64 %i.ea, 48
  %i.ec = sub i64 %reass.sub.fr.i, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr readonly align 8 %i.aw, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc61
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !191 ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i59, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  %i.ee = load ptr, ptr %i.ds, align 8, !tbaa !192
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eh) #26
  br label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !191
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 %reass.sub.fr.i
  store ptr %i.ei, ptr %i.ds, align 8, !tbaa !192
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bf:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 240 ; 2 uses
  %.val30.i = load ptr, ptr %i.ej, align 8, !tbaa !194
  %i.ek = ptrtoint ptr %.val30.i to i64
  %i.el = sub i64 %i.ek, %i.du                    ; 4 uses
  %.not24.i = icmp ult i64 %i.el, %reass.sub.fr.i
  br i1 %.not24.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.em = icmp sgt i64 %reass.sub.fr.i, 48
  br i1 %i.em, label %bb.bh, label %bb.bi, !prof !195

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.aw, i64 %reass.sub.fr.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.en = icmp eq i64 %reass.sub.fr.i, 48
  br i1 %i.en, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread: ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(44) %i.aw, i64 44, i1 false), !tbaa.struct !173
  %i.eo = load ptr, ptr %i.do, align 8, !tbaa !191
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %reass.sub.fr.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !194
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bf
  %i.er = icmp sgt i64 %i.el, 48
  br i1 %i.er, label %bb.bk, label %bb.bl, !prof !195

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.aw, i64 %i.el, i1 false)
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.es = icmp eq i64 %i.el, 48
  br i1 %i.es, label %bb.bm, label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(44) %i.aw, i64 44, i1 false), !tbaa.struct !173
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.val25.i = load ptr, ptr %i.do, align 8, !tbaa !191
  %.val26.i = load ptr, ptr %i.ej, align 8, !tbaa !194 ; 2 uses
  %i.et = ptrtoint ptr %.val26.i to i64
  %i.eu = ptrtoint ptr %.val25.i to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ev ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ew, %i.av
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %.val26.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %i.ew, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.0810.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !173
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.ex, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !196

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i, %bb.bi, %bb.bh, %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.ez = load ptr, ptr %i.do, align 8, !tbaa !191
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %reass.sub.fr.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !194
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.fc = ptrtoint ptr %i.au to i64
  %i.fd = sub i64 %i.fc, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.fd) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bn
  %i.fe = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 0 uses
  ret void

bb.bo:                                            ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, %bb.bd, %bb.al
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

end_hunk_0
begin_hunk_1_@_ZN7Imf_3_415TiledOutputFile10writeTilesEiiiiii:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.ot = icmp eq i32 %5, %i.or
  br i1 %i.ot, label %bb.dx, label %.sink.split.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 36
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !207 ; 2 uses
  %i.ow = icmp slt i32 %.064266, %i.ov
  br i1 %i.ow, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ox = icmp eq i32 %.064266, %i.ov
  br i1 %i.ox, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i: ; preds = %bb.dy
  %i.oy = load i32, ptr %i.ol, align 4, !tbaa !208
  %i.oz = icmp slt i32 %.066260, %i.oy
  br i1 %i.oz, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, label %.sink.split.i.i.i

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.dx, %bb.dv, %bb.dt
  %i.pa = getelementptr i8, ptr %.08.lcssa.i.i.i18.i.i, i64 24
  %.val.i.i10.i.i = load ptr, ptr %i.pa, align 8, !tbaa !216
  %i.pb = icmp eq ptr %.val.i.i10.i.i, null       ; 2 uses
  %spec.select49.i.i.i.i = select i1 %i.pb, ptr null, ptr %i.ok
  %spec.select50.i.i.i.i = select i1 %i.pb, ptr %.08.lcssa.i.i.i18.i.i, ptr %i.ok
  br label %.thread.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.i.i.i.i, %bb.dy, %bb.dw, %bb.du, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i.i, %bb.do, %bb.dm, %bb.dk, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i, %bb.dc, %bb.da, %bb.cy, %bb.cw
  %.02530.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !209 ; 2 uses
  %.not31.i.i.i = icmp eq ptr %.02530.i.i.i, null
  br i1 %.not31.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.sink.split.i.i.i, %.lr.ph.i.i.i.backedge
  %.02532.i.i.i = phi ptr [ %.02532.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ %.02530.i.i.i, %.sink.split.i.i.i ] ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 44
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !205 ; 3 uses
  %i.pf = icmp slt i32 %6, %i.pe
  br i1 %i.pf, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i
  %i.pg = icmp eq i32 %6, %i.pe
  br i1 %i.pg, label %bb.ea, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.ph = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 40
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !206 ; 2 uses
  %i.pj = icmp slt i32 %5, %i.pi
  br i1 %i.pj, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pk = icmp eq i32 %5, %i.pi
  br i1 %i.pk, label %bb.ec, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.pl = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 36
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !207 ; 2 uses
  %i.pn = icmp slt i32 %.064266, %i.pm
  br i1 %i.pn, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.po = icmp eq i32 %.064266, %i.pm
  br i1 %i.po, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i: ; preds = %bb.ed
  %i.pp = load i32, ptr %i.pc, align 4, !tbaa !208
  %i.pq = icmp slt i32 %.066260, %i.pp
  br i1 %i.pq, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, %bb.ec, %bb.ea, %.lr.ph.i.i.i
  %i.pr = getelementptr i8, ptr %.02532.i.i.i, i64 16
  %.025.i.i.i = load ptr, ptr %i.pr, align 8, !tbaa !209 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %.025.i.i.i, null
  br i1 %.not.i11.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i: ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i128.i, %bb.ed, %bb.eb, %bb.dz
  %i.ps = getelementptr i8, ptr %.02532.i.i.i, i64 24
  %.025.i23.i.i = load ptr, ptr %i.ps, align 8, !tbaa !209 ; 2 uses
  %.not.i1124.i.i = icmp eq ptr %.025.i23.i.i, null
  br i1 %.not.i1124.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i
  %.02532.i.i.i.be = phi ptr [ %.025.i23.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ], [ %.025.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !217

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i, %.sink.split.i.i.i
  %.024.lcssa48.i.i.i = phi ptr [ %i.ec, %.sink.split.i.i.i ], [ %.02532.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.i.i ] ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.dd, i64 328
  %.val7.i.i.i = load ptr, ptr %i.pt, align 8, !tbaa !61
  %i.pu = icmp eq ptr %.024.lcssa48.i.i.i, %.val7.i.i.i
  br i1 %i.pu, label %.thread.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.pv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.024.lcssa48.i.i.i) #28 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 44
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !205
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i, %bb.ee
  %i.pw = phi i32 [ %.pre.i.i, %bb.ee ], [ %i.pe, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %.024.lcssa47.i.i.i = phi ptr [ %.024.lcssa48.i.i.i, %bb.ee ], [ %.02532.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 4 uses
  %.sroa.015.0.i.i.i = phi ptr [ %i.pv, %bb.ee ], [ %.02532.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 7 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 32
  %i.py = icmp slt i32 %i.pw, %6
  br i1 %i.py, label %.thread.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge.i.thread.i.i
  %i.pz = icmp eq i32 %i.pw, %6
  br i1 %i.pz, label %bb.eg, label %.thread10.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 40
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !206 ; 2 uses
  %i.qc = icmp slt i32 %i.qb, %5
  br i1 %i.qc, label %.thread.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qd = icmp eq i32 %i.qb, %5
  br i1 %i.qd, label %bb.ei, label %.thread10.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 36
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !207 ; 2 uses
  %i.qg = icmp slt i32 %i.qf, %.064266
  br i1 %i.qg, label %.thread.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qh = icmp eq i32 %i.qf, %.064266
  br i1 %i.qh, label %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, label %.thread10.i.i.i

_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i: ; preds = %bb.ej
  %i.qi = load i32, ptr %i.px, align 4, !tbaa !208
  %i.qj = icmp slt i32 %i.qi, %.066260
  br i1 %i.qj, label %.thread.i.i.i, label %.thread10.i.i.i

_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i: ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.nc, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %i.nc, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit13.thread.i.i.i.i ], [ %i.oi, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.thread.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.2.i.i.i.i, null
  br i1 %.not.i.i.i, label %.thread10.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.ei, %bb.eg, %._crit_edge.i.thread.i.i, %._crit_edge.thread.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i, %bb.db, %bb.cz, %bb.cx
  %.sroa.12.2.i8.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %i.lw, %bb.cx ], [ %i.lw, %bb.cz ], [ %i.lw, %bb.db ], [ %spec.select48.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select50.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ %i.lw, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i ], [ %.024.lcssa47.i.i.i, %bb.ei ], [ %.024.lcssa47.i.i.i, %._crit_edge.i.thread.i.i ], [ %.024.lcssa47.i.i.i, %bb.eg ], [ %.024.lcssa47.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ %.024.lcssa48.i.i.i, %._crit_edge.thread.i.i.i ] ; 6 uses
  %.sroa.037.2.i7.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ null, %bb.cx ], [ null, %bb.cz ], [ null, %bb.db ], [ %spec.select.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.thread.i.i.i.i ], [ %spec.select49.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit16.thread.i.i.i.i ], [ null, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i.i130.i ], [ null, %bb.ei ], [ null, %._crit_edge.i.thread.i.i ], [ null, %bb.eg ], [ null, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ], [ null, %._crit_edge.thread.i.i.i ]
  %.not.i.i.i9.i.i = icmp ne ptr %.sroa.037.2.i7.i.i.i, null
  %i.qk = icmp eq ptr %.sroa.12.2.i8.i.i.i, %i.ec
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i9.i.i, i1 true, i1 %i.qk
  br i1 %or.cond.i.i.i.i.i, label %bb.er, label %bb.ek

bb.ek:                                            ; preds = %.thread.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 44
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !205 ; 2 uses
  %i.qo = icmp slt i32 %6, %i.qn
  br i1 %i.qo, label %bb.er, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qp = icmp eq i32 %6, %i.qn
  br i1 %i.qp, label %bb.em, label %bb.er

bb.em:                                            ; preds = %bb.el
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 40
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !206 ; 2 uses
  %i.qs = icmp slt i32 %5, %i.qr
  br i1 %i.qs, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qt = icmp eq i32 %5, %i.qr
  br i1 %i.qt, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 36
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !207 ; 2 uses
  %i.qw = icmp slt i32 %.064266, %i.qv
  br i1 %i.qw, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.qx = icmp eq i32 %.064266, %i.qv
  br i1 %i.qx, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qy = load i32, ptr %i.ql, align 4, !tbaa !208
  %i.qz = icmp slt i32 %.066260, %i.qy
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %.thread.i.i.i
  %i.ra = phi i1 [ false, %bb.el ], [ true, %.thread.i.i.i ], [ true, %bb.em ], [ true, %bb.ek ], [ false, %bb.en ], [ %i.qz, %bb.eq ], [ true, %bb.eo ], [ false, %bb.ep ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ra, ptr noundef nonnull %i.lr, ptr noundef nonnull %.sroa.12.2.i8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ec) #24
  %i.rb = getelementptr inbounds nuw i8, ptr %i.dd, i64 344 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !63
  %i.rd = add i64 %i.rc, 1
  store i64 %i.rd, ptr %i.rb, align 8, !tbaa !63
  br label %_ZNSt3mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

.thread10.i.i.i:                                  ; preds = %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i, %bb.ej, %bb.eh, %bb.ef, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i, %bb.ds, %bb.dq
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.037.2.i.i.i.i, %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE24_M_get_insert_unique_posERS4_.exit.i.i ], [ %.08.lcssa.i.i.i18.i.i, %bb.ds ], [ %.08.lcssa.i.i.i18.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit15.i.i.i.i ], [ %.08.lcssa.i.i.i18.i.i, %bb.dq ], [ %.sroa.015.0.i.i.i, %bb.ef ], [ %.sroa.015.0.i.i.i, %bb.eh ], [ %.sroa.015.0.i.i.i, %bb.ej ], [ %.sroa.015.0.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit14.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef 56) #26
  br label %_ZNSt3mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i

_ZNSt3mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i: ; preds = %.thread10.i.i.i, %bb.er, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i, %bb.cv, %bb.ct, %bb.cr
  %.sroa.016.0.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread10.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i ], [ %i.lr, %bb.er ], [ %.19.i.i.i.i.i, %bb.cr ], [ %.19.i.i.i.i.i, %bb.cv ], [ %.19.i.i.i.i.i, %bb.ct ]
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 48
  store ptr %i.ke, ptr %i.re, align 8, !tbaa !218
  br label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit

bb.es:                                            ; preds = %.noexc152
  %i.rf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 16) #26
  br label %.body154

bb.et:                                            ; preds = %bb.be, %bb.ai
  unreachable

_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit: ; preds = %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i124.i, %bb.ci, %bb.cg, %bb.ce, %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i121.i, %.noexc151, %_ZNSt3mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit.i, %_ZNKSt4lessIN7Imf_3_412_GLOBAL__N_19TileCoordEEclERKS2_S5_.exit.i.i107.i, %bb.bu, %bb.bs, %bb.bq, %_ZNSt8_Rb_treeIN7Imf_3_412_GLOBAL__N_19TileCoordESt4pairIKS2_PNS1_12BufferedTileEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i104.i, %.noexc149, %bb.an
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit unwind label %.loopexit.split-lp.loopexit

_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit
  %i.rg = icmp samesign ult i64 %indvars.iv305, %i.bu
  br i1 %i.rg, label %bb.eu, label %bb.ez

bb.eu:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit
  %i.rh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit ; 7 uses

bb.ev:                                            ; preds = %bb.eu
  %i.ri = load ptr, ptr %i.d, align 8, !tbaa !108 ; 3 uses
  invoke void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(32) %i.rh, ptr noundef nonnull %10)
          to label %.noexc162 unwind label %bb.ey

.noexc162:                                        ; preds = %bb.ev
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7Imf_3_412_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %i.rh, align 8, !tbaa !102
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !197
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 24 ; 2 uses
  %i.rl = getelementptr i8, ptr %i.ri, i64 264
  %.val.i157 = load ptr, ptr %i.rl, align 8, !tbaa !68 ; 2 uses
  %i.rm = getelementptr i8, ptr %i.ri, i64 272
  %.val9.i158 = load ptr, ptr %i.rm, align 8, !tbaa !69
  %i.rn = ptrtoint ptr %.val9.i158 to i64
  %i.ro = ptrtoint ptr %.val.i157 to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = ashr exact i64 %i.rp, 3
  %i.rr = urem i64 %indvars.iv305, %i.rq
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.val.i157, i64 %i.rr
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !66 ; 2 uses
  store ptr %i.rt, ptr %i.rk, align 8, !tbaa !201
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  invoke void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ru)
          to label %bb.ex unwind label %bb.ew

bb.ew:                                            ; preds = %.noexc162
  %i.rv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  call void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.rh) #24
  br label %.body163

bb.ex:                                            ; preds = %.noexc162
  %i.rw = load ptr, ptr %i.rk, align 8, !tbaa !201 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  store i32 %.273257, ptr %i.rx, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.rw, i64 44
  store i32 %.2258, ptr %.sroa.4.0..sroa_idx.i159, align 4, !tbaa !125
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.rw, i64 48
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i160, align 8, !tbaa !125
  %.sroa.6.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.rw, i64 52
  store i32 %6, ptr %.sroa.6.0..sroa_idx.i161, align 4, !tbaa !125
  invoke void @_ZN13IlmThread_3_410ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.rh)
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.by
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  br label %.body154

.loopexit.split-lp.loopexit:                      ; preds = %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_17OutputStreamMutexEPNS_15TiledOutputFile4DataEiiiiPKci.exit, %.critedge.i.i, %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i, %.noexc148, %bb.bk, %bb.an, %_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4waitEv.exit, %.lr.ph268, %bb.ex, %bb.eu
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  br label %.body154

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc146, %_ZNSt3mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS1_12BufferedTileESt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.i, %.noexc143, %bb.ad
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  br label %.body154

bb.ey:                                            ; preds = %bb.ev
  %i.ry = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  br label %.body163

.body163:                                         ; preds = %bb.ew, %bb.ey
  %eh.lpad-body164 = phi { ptr, i32 } [ %i.ry, %bb.ey ], [ %i.rv, %bb.ew ]
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef 32) #26
  br label %.body154

bb.ez:                                            ; preds = %bb.ex, %_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.rz = add nuw nsw i32 %.066260, 1
  %.not = icmp slt i32 %.066260, %spec.select     ; 2 uses
  %.167 = select i1 %.not, i32 %i.rz, i32 %spec.select212
  %i.sa = select i1 %.not, i32 0, i32 %spec.select119
  %.165 = add nsw i32 %i.sa, %.064266
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1
  %i.sb = add nuw nsw i32 %.273257, 1
  %.not106 = icmp slt i32 %.273257, %spec.select  ; 2 uses
  %.374 = select i1 %.not106, i32 %i.sb, i32 %spec.select212
  %i.sc = select i1 %.not106, i32 0, i32 %spec.select119
  %.3 = add nsw i32 %i.sc, %.2258
  %exitcond311.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge, label %.lr.ph268, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.ez, %.preheader
  call void @_ZN13IlmThread_3_49TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.sd = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 264
  %.val = load ptr, ptr %i.se, align 8, !tbaa !68 ; 5 uses
  %i.sf = getelementptr i8, ptr %i.sd, i64 272
  %.val121 = load ptr, ptr %i.sf, align 8, !tbaa !69 ; 2 uses
  %.not276 = icmp eq ptr %.val121, %.val
  br i1 %.not276, label %._crit_edge273.thread, label %.lr.ph272.preheader

.lr.ph272.preheader:                              ; preds = %._crit_edge
  %i.sg = ptrtoint ptr %.val121 to i64
  %i.sh = ptrtoint ptr %.val to i64
  %i.si = sub i64 %i.sg, %i.sh                    ; 3 uses
  %i.sj = ashr exact i64 %i.si, 3                 ; 2 uses
  %i.sk = icmp eq i64 %i.si, 8
  br i1 %i.sk, label %.lr.ph272.epil.preheader, label %.lr.ph272.preheader.new

.lr.ph272.preheader.new:                          ; preds = %.lr.ph272.preheader
  %unroll_iter = and i64 %i.sj, -2
  br label %.lr.ph272

._crit_edge273.unr-lcssa:                         ; preds = %.lr.ph272
  %i.sl = and i64 %i.si, 8
  %lcmp.mod.not = icmp eq i64 %i.sl, 0
  br i1 %lcmp.mod.not, label %._crit_edge273, label %.lr.ph272.epil.preheader

.lr.ph272.epil.preheader:                         ; preds = %._crit_edge273.unr-lcssa, %.lr.ph272.preheader
  %.0270.epil.init = phi i64 [ 0, %.lr.ph272.preheader ], [ %i.ti, %._crit_edge273.unr-lcssa ]
  %.063269.epil.init = phi ptr [ null, %.lr.ph272.preheader ], [ %spec.select120.1, %._crit_edge273.unr-lcssa ] ; 2 uses
  %lcmp.mod453 = trunc i64 %i.sj to i1
  call void @llvm.assume(i1 %lcmp.mod453)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.0270.epil.init
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !66 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 56 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 8, !tbaa !220, !range !157, !noundef !158
  %i.sq = trunc nuw i8 %i.sp to i1
  %i.sr = icmp eq ptr %.063269.epil.init, null
  %or.cond.not.epil = select i1 %i.sq, i1 %i.sr, i1 false
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 64
  %spec.select120.epil = select i1 %or.cond.not.epil, ptr %i.ss, ptr %.063269.epil.init
  store i8 0, ptr %i.so, align 8, !tbaa !220
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.unr-lcssa, %.lr.ph272.epil.preheader
  %spec.select120.lcssa = phi ptr [ %spec.select120.1, %._crit_edge273.unr-lcssa ], [ %spec.select120.epil, %.lr.ph272.epil.preheader ] ; 2 uses
  %.not100 = icmp eq ptr %spec.select120.lcssa, null
  br i1 %.not100, label %._crit_edge273.thread, label %bb.fb

.body154:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.es, %bb.bh, %bb.al, %.body163, %.body, %bb.ab
  %.pn107 = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body164, %.body163 ], [ %i.rf, %bb.es ], [ %.pn67.i, %bb.al ], [ %.pn.i, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit217, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13IlmThread_3_49TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.fa

bb.fa:                                            ; preds = %.body154, %bb.aa
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %.body154 ], [ %i.co, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ff

.lr.ph272:                                        ; preds = %.lr.ph272, %.lr.ph272.preheader.new
  %.0270 = phi i64 [ 0, %.lr.ph272.preheader.new ], [ %i.ti, %.lr.ph272 ] ; 3 uses
  %.063269 = phi ptr [ null, %.lr.ph272.preheader.new ], [ %spec.select120.1, %.lr.ph272 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph272.preheader.new ], [ %niter.next.1, %.lr.ph272 ]
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.0270
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !66 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 56 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 8, !tbaa !220, !range !157, !noundef !158
  %i.sx = trunc nuw i8 %i.sw to i1
  %i.sy = icmp eq ptr %.063269, null
  %or.cond.not = select i1 %i.sx, i1 %i.sy, i1 false
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 64
  %spec.select120 = select i1 %or.cond.not, ptr %i.sz, ptr %.063269 ; 2 uses
  store i8 0, ptr %i.sv, align 8, !tbaa !220
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.0270
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !66 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 56 ; 2 uses
  %i.te = load i8, ptr %i.td, align 8, !tbaa !220, !range !157, !noundef !158
  %i.tf = trunc nuw i8 %i.te to i1
  %i.tg = icmp eq ptr %spec.select120, null
  %or.cond.not.1 = select i1 %i.tf, i1 %i.tg, i1 false
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 64
end_hunk_1
