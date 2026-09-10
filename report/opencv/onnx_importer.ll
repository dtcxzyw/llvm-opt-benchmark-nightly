Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer?download=true
inline.NumInlined: 9294
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter10parseSplitERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:._crit_edge.i.i
_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph459, %middle.block468, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.gi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.al unwind label %bb.an     ; 0 uses

bb.al:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.gj = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.eu
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.al
  %i.gl = load i64, ptr %i.eu, align 8, !tbaa !69
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.dw) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.am:                                            ; preds = %._crit_edge.i.i181
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body189

bb.an:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  br label %.body189

.body189:                                         ; preds = %bb.am, %bb.ak, %bb.an
  %.pn85 = phi { ptr, i32 } [ %i.go, %bb.an ], [ %i.gn, %bb.am ], [ %i.gd, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.gp = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.eu
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %.body189
  %i.gr = load i64, ptr %i.eu, align 8, !tbaa !69
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %.body189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body178

.body178:                                         ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175
  %.pn88 = phi { ptr, i32 } [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i175 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.dw) #29
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %._crit_edge.i.i274

.body:                                            ; preds = %bb.ag, %bb.af, %.body178, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.pn91.pn = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.dc, %bb.r ], [ %i.ez, %bb.af ], [ %i.fa, %bb.ag ], [ %.pn88, %.body178 ]
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.ao

bb.ao:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %.body ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bs

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !52
  %i.gv = icmp eq i32 %i.gu, 2
  br i1 %i.gv, label %bb.aq, label %._crit_edge.i.i264

bb.aq:                                            ; preds = %bb.ap
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !61 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq
  %i.gz = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !54 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !65 ; 4 uses
  %i.he = load ptr, ptr %i.hb, align 8            ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i200 = call i64 @llvm.umin.i64(i64 %i.hd, i64 %i.hg) ; 2 uses
  %i.hh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i200, 0
  br i1 %i.hh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i206, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i201

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i201: ; preds = %bb.ar
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !66
  %i.hk = call i32 @memcmp(ptr noundef %i.hj, ptr noundef %i.he, i64 noundef %.sroa.speculated.i.i.i.i.i.i200) #28 ; 2 uses
  %.not.i.i.i.i.i.i202 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i202, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i206, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i206: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i201, %bb.ar
  %i.hl = sub i64 %i.hg, %i.hd
  %spec.select7.i.i.i.i.i.i.i207 = call i64 @llvm.smax.i64(i64 %i.hl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i208 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i207, i64 2147483647)
  %.0.i6.i.i.i.i.i.i209 = trunc nsw i64 %.08.i.i.i.i.i.i.i208 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i206, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i201
  %.0.i.i.i.i.i.i204 = phi i32 [ %i.hk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i201 ], [ %.0.i6.i.i.i.i.i.i209, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i206 ]
  %i.hm = icmp slt i32 %.0.i.i.i.i.i.i204, 0      ; 2 uses
  %.19.i.i.i = select i1 %i.hm, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.hm, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i205, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ar, !llvm.loop !3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i203
  %i.hn = icmp eq ptr %.19.i.i.i, %i.gy
  br i1 %i.hn, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.as

bb.as:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !65 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hp, i64 %i.hd) ; 2 uses
  %i.hq = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.hq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.as
  %i.hr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ht = call i32 @memcmp(ptr noundef %i.he, ptr noundef %i.hs, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.as
  %i.hu = sub i64 %i.hd, %i.hp
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hu, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ht, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.hv = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.hv, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.ax

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.aq, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.167, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter10parseSplitERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 1432) #31
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.aw:                                            ; preds = %bb.at
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.aw
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !69
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.av
  %.pn70 = phi { ptr, i32 } [ %i.hw, %bb.av ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.hx, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.bs

bb.ax:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter10getIntBlobERKN11opencv_onnx9NodeProtoEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 1)
  %i.id = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ie = trunc i64 %i.id to i32                  ; 7 uses
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %._crit_edge.i.i213, label %_ZN2cv3Mat2atIiEERT_i.exit

._crit_edge.i.i213:                               ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ig, ptr %18, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ig, ptr noundef nonnull align 1 dereferenceable(9) @.str.192, i64 9, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 9, ptr %i.ih, align 8, !tbaa !65
  %i.ii = getelementptr inbounds nuw i8, ptr %18, i64 25
  store i8 0, ptr %i.ii, align 1, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 1, ptr %i.c, align 4, !tbaa !70
  %i.ij = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.az unwind label %bb.bb     ; 0 uses

bb.az:                                            ; preds = %._crit_edge.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ik = load ptr, ptr %18, align 8, !tbaa !66   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ig
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.az
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !69
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit258

bb.ba:                                            ; preds = %bb.ax
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

bb.bb:                                            ; preds = %._crit_edge.i.i213
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.iq = load ptr, ptr %18, align 8, !tbaa !66   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ig
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bb
  %i.is = load i64, ptr %i.ig, align 8, !tbaa !69
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %bb.ay
  %i.iu = add i32 %i.ie, -1                       ; 6 uses
  %i.iv = sext i32 %i.iu to i64                   ; 8 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !258
  %i.iz = icmp slt i32 %i.ie, 1
  br i1 %i.iz, label %bb.bc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.bc:                                            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.664) #31
          to label %.noexc231 unwind label %bb.bd

.noexc231:                                        ; preds = %bb.bc
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.ja = shl nuw nsw i64 %i.iv, 2                ; 3 uses
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #30
          to label %.noexc232 unwind label %bb.bd ; 22 uses

.noexc232:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  %i.jd = load i32, ptr %i.iy, align 4, !tbaa !70 ; 2 uses
  %i.je = add nsw i64 %i.ja, -4                   ; 2 uses
  %i.jf = lshr exact i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check473 = icmp ult i64 %i.je, 28
  br i1 %min.iters.check473, label %.lr.ph.i.i.i.i.i.i.i.i.i226.preheader, label %vector.ph474

vector.ph474:                                     ; preds = %.noexc232
  %n.vec475 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.jh = shl i64 %n.vec475, 2
  %i.ji = getelementptr i8, ptr %i.jb, i64 %i.jh
  %broadcast.splatinsert476 = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %broadcast.splat477 = shufflevector <4 x i32> %broadcast.splatinsert476, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph474
  %index479 = phi i64 [ 0, %vector.ph474 ], [ %index.next481, %vector.body478 ] ; 2 uses
  %i.jj = shl i64 %index479, 2
  %next.gep480 = getelementptr i8, ptr %i.jb, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep480, i64 16
  store <4 x i32> %broadcast.splat477, ptr %next.gep480, align 4, !tbaa !70
  store <4 x i32> %broadcast.splat477, ptr %i.jk, align 4, !tbaa !70
  %index.next481 = add nuw i64 %index479, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next481, %n.vec475
  br i1 %i.jl, label %middle.block482, label %vector.body478, !llvm.loop !652

middle.block482:                                  ; preds = %vector.body478
  %cmp.n483 = icmp eq i64 %i.jg, %n.vec475
  br i1 %cmp.n483, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit233, label %.lr.ph.i.i.i.i.i.i.i.i.i226.preheader

.lr.ph.i.i.i.i.i.i.i.i.i226.preheader:            ; preds = %.noexc232, %middle.block482
  %.06.i.i.i.i.i.i.i.i.i227.ph = phi ptr [ %i.jb, %.noexc232 ], [ %i.ji, %middle.block482 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i226

.lr.ph.i.i.i.i.i.i.i.i.i226:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i226.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i226
  %.06.i.i.i.i.i.i.i.i.i227 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i.i.i.i226 ], [ %.06.i.i.i.i.i.i.i.i.i227.ph, %.lr.ph.i.i.i.i.i.i.i.i.i226.preheader ] ; 2 uses
  store i32 %i.jd, ptr %.06.i.i.i.i.i.i.i.i.i227, align 4, !tbaa !70
  %i.jm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i227, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i228 = icmp eq ptr %i.jm, %i.jc
  br i1 %.not.i.i.i.i.i.i.i.i.i228, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit233, label %.lr.ph.i.i.i.i.i.i.i.i.i226, !llvm.loop !653

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit233:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i226, %middle.block482
  %i.jn = icmp samesign ugt i32 %i.ie, 2
  br i1 %i.jn, label %.lr.ph, label %._crit_edge.i.i234

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit233
  %i.jo = load i32, ptr %i.iw, align 4, !tbaa !257
  %i.jp = icmp slt i32 %i.jo, 2
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.jr = load i32, ptr %i.jq, align 8
  %i.js = icmp eq i32 %i.jr, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.ju = load i32, ptr %i.jt, align 4            ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8            ; 12 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.jy = load i64, ptr %i.jx, align 8            ; 2 uses
  br i1 %i.jp, label %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader, label %.lr.ph.split

_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader:       ; preds = %.lr.ph
  %wide.trip.count379 = zext nneg i32 %i.iu to i64
  %load_initial = load i32, ptr %i.jb, align 4    ; 2 uses
  %i.jz = add nsw i64 %wide.trip.count379, -1     ; 2 uses
  %xtraiter507 = and i64 %i.jz, 3                 ; 3 uses
  %i.ka = add nsw i32 %i.ie, -3
  %i.kb = icmp ult i32 %i.ka, 3
  br i1 %i.kb, label %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader, label %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new

_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new:   ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader
  %unroll_iter511 = and i64 %i.jz, -4
  br label %_ZN2cv3Mat2atIiEERT_i.exit240.us

_ZN2cv3Mat2atIiEERT_i.exit240.us:                 ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new ], [ %i.kr, %_ZN2cv3Mat2atIiEERT_i.exit240.us ]
  %indvars.iv376 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new ], [ %indvars.iv.next377.3, %_ZN2cv3Mat2atIiEERT_i.exit240.us ] ; 6 uses
  %niter512 = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader.new ], [ %niter512.next.3, %_ZN2cv3Mat2atIiEERT_i.exit240.us ]
  %i.kc = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv376
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv376
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !70
  %i.kf = add nsw i32 %i.ke, %store_forwarded     ; 2 uses
  store i32 %i.kf, ptr %i.kc, align 4, !tbaa !70
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next377
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next377
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !70
  %i.kj = add nsw i32 %i.ki, %i.kf                ; 2 uses
  store i32 %i.kj, ptr %i.kg, align 4, !tbaa !70
  %indvars.iv.next377.1 = add nuw nsw i64 %indvars.iv376, 2 ; 2 uses
  %i.kk = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next377.1
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next377.1
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !70
  %i.kn = add nsw i32 %i.km, %i.kj                ; 2 uses
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !70
  %indvars.iv.next377.2 = add nuw nsw i64 %indvars.iv376, 3 ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next377.2
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next377.2
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !70
  %i.kr = add nsw i32 %i.kq, %i.kn                ; 3 uses
  store i32 %i.kr, ptr %i.ko, align 4, !tbaa !70
  %indvars.iv.next377.3 = add nuw nsw i64 %indvars.iv376, 4 ; 2 uses
  %niter512.next.3 = add nuw i64 %niter512, 4     ; 2 uses
  %niter512.ncmp.3 = icmp eq i64 %niter512.next.3, %unroll_iter511
  br i1 %niter512.ncmp.3, label %._crit_edge.i.i234.loopexit.unr-lcssa, label %_ZN2cv3Mat2atIiEERT_i.exit240.us, !llvm.loop !654

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ks = load i32, ptr %17, align 8
  %i.kt = and i32 %i.ks, 16384
  %i.ku = icmp ne i32 %i.kt, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = icmp eq i32 %i.kw, 1
  %or.cond.i238 = select i1 %i.ku, i1 true, i1 %i.kx
  %wide.trip.count374 = zext i32 %i.iu to i64     ; 2 uses
  br i1 %or.cond.i238, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader, label %.lr.ph.split.split

_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader:    ; preds = %.lr.ph.split
  %load_initial499 = load i32, ptr %i.jb, align 4 ; 2 uses
  %i.ky = add nsw i64 %wide.trip.count374, -1     ; 2 uses
  %xtraiter = and i64 %i.ky, 3                    ; 3 uses
  %i.kz = add nsw i32 %i.ie, -3
  %i.la = icmp ult i32 %i.kz, 3
  br i1 %i.la, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new

_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new: ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader
  %unroll_iter = and i64 %i.ky, -4
  br label %_ZN2cv3Mat2atIiEERT_i.exit240.us364

_ZN2cv3Mat2atIiEERT_i.exit240.us364:              ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us364, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new
  %store_forwarded500 = phi i32 [ %load_initial499, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new ], [ %i.lq, %_ZN2cv3Mat2atIiEERT_i.exit240.us364 ]
  %indvars.iv371 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new ], [ %indvars.iv.next372.3, %_ZN2cv3Mat2atIiEERT_i.exit240.us364 ] ; 6 uses
  %niter = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader.new ], [ %niter.next.3, %_ZN2cv3Mat2atIiEERT_i.exit240.us364 ]
  %i.lb = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv371
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv371
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !70
  %i.le = add nsw i32 %i.ld, %store_forwarded500  ; 2 uses
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !70
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next372
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next372
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !70
  %i.li = add nsw i32 %i.lh, %i.le                ; 2 uses
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !70
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next372.1
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next372.1
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !70
  %i.lm = add nsw i32 %i.ll, %i.li                ; 2 uses
  store i32 %i.lm, ptr %i.lj, align 4, !tbaa !70
  %indvars.iv.next372.2 = add nuw nsw i64 %indvars.iv371, 3 ; 2 uses
  %i.ln = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv.next372.2
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.next372.2
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !70
  %i.lq = add nsw i32 %i.lp, %i.lm                ; 3 uses
  store i32 %i.lq, ptr %i.ln, align 4, !tbaa !70
  %indvars.iv.next372.3 = add nuw nsw i64 %indvars.iv371, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i234.loopexit502.unr-lcssa, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364, !llvm.loop !654

._crit_edge.i.i234.loopexit.unr-lcssa:            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us
  %lcmp.mod509.not = icmp eq i64 %xtraiter507, 0
  br i1 %lcmp.mod509.not, label %._crit_edge.i.i234, label %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader

_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader:  ; preds = %._crit_edge.i.i234.loopexit.unr-lcssa, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader ], [ %i.kr, %._crit_edge.i.i234.loopexit.unr-lcssa ]
  %indvars.iv376.epil.init = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit240.us.preheader ], [ %indvars.iv.next377.3, %._crit_edge.i.i234.loopexit.unr-lcssa ]
  %lcmp.mod510 = icmp ne i64 %xtraiter507, 0
  call void @llvm.assume(i1 %lcmp.mod510)
  br label %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil

_ZN2cv3Mat2atIiEERT_i.exit240.us.epil:            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader ], [ %i.lu, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil ]
  %indvars.iv376.epil = phi i64 [ %indvars.iv376.epil.init, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader ], [ %indvars.iv.next377.epil, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil ] ; 3 uses
  %epil.iter508 = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil.preheader ], [ %epil.iter508.next, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil ]
  %i.lr = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv376.epil
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv376.epil
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !70
  %i.lu = add nsw i32 %i.lt, %store_forwarded.epil ; 2 uses
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !70
  %indvars.iv.next377.epil = add nuw nsw i64 %indvars.iv376.epil, 1
  %epil.iter508.next = add i64 %epil.iter508, 1   ; 2 uses
  %epil.iter508.cmp.not = icmp eq i64 %epil.iter508.next, %xtraiter507
  br i1 %epil.iter508.cmp.not, label %._crit_edge.i.i234, label %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil, !llvm.loop !655

._crit_edge.i.i234.loopexit502.unr-lcssa:         ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us364
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i234, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader

_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader: ; preds = %._crit_edge.i.i234.loopexit502.unr-lcssa, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader
  %store_forwarded500.epil.init = phi i32 [ %load_initial499, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader ], [ %i.lq, %._crit_edge.i.i234.loopexit502.unr-lcssa ]
  %indvars.iv371.epil.init = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.preheader ], [ %indvars.iv.next372.3, %._crit_edge.i.i234.loopexit502.unr-lcssa ]
  %lcmp.mod506 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod506)
  br label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil

_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil:         ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader
  %store_forwarded500.epil = phi i32 [ %store_forwarded500.epil.init, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader ], [ %i.ly, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil ]
  %indvars.iv371.epil = phi i64 [ %indvars.iv371.epil.init, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader ], [ %indvars.iv.next372.epil, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil.preheader ], [ %epil.iter.next, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil ]
  %i.lv = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv371.epil
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv371.epil
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !70
  %i.ly = add nsw i32 %i.lx, %store_forwarded500.epil ; 2 uses
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !70
  %indvars.iv.next372.epil = add nuw nsw i64 %indvars.iv371.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i234, label %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil, !llvm.loop !656

._crit_edge.i.i234:                               ; preds = %_ZN2cv3Mat2atIiEERT_i.exit240, %._crit_edge.i.i234.loopexit502.unr-lcssa, %_ZN2cv3Mat2atIiEERT_i.exit240.us364.epil, %._crit_edge.i.i234.loopexit.unr-lcssa, %_ZN2cv3Mat2atIiEERT_i.exit240.us.epil, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.lz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.lz, ptr %19, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.lz, ptr noundef nonnull align 1 dereferenceable(11) @.str.194, i64 11, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 11, ptr %i.ma, align 8, !tbaa !65
  %i.mb = getelementptr inbounds nuw i8, ptr %19, i64 27
  store i8 0, ptr %i.mb, align 1, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.mc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc250 unwind label %bb.bj ; 6 uses

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.bc
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN2cv3Mat2atIiEERT_i.exit240
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIiEERT_i.exit240 ], [ 1, %.lr.ph.split ] ; 4 uses
  %i.me = getelementptr [4 x i8], ptr %i.jb, i64 %indvars.iv ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !70
  br i1 %i.js, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.split.split
  %i.mh = mul i64 %i.jy, %indvars.iv
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.mh
  br label %_ZN2cv3Mat2atIiEERT_i.exit240

bb.bf:                                            ; preds = %.lr.ph.split.split
  %i.mj = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.mk = sdiv i32 %i.mj, %i.ju                   ; 2 uses
  %i.ml = mul nsw i32 %i.mk, %i.ju                ; 0 uses
  %.recomposed = srem i32 %i.mj, %i.ju
  %i.mm = sext i32 %i.mk to i64
  %i.mn = mul i64 %i.jy, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.mn
  %i.mp = sext i32 %.recomposed to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.mp
  br label %_ZN2cv3Mat2atIiEERT_i.exit240

_ZN2cv3Mat2atIiEERT_i.exit240:                    ; preds = %bb.be, %bb.bf
  %.0.i239 = phi ptr [ %i.mq, %bb.bf ], [ %i.mi, %bb.be ]
  %i.mr = load i32, ptr %.0.i239, align 4, !tbaa !70
  %i.ms = add nsw i32 %i.mr, %i.mg
  store i32 %i.ms, ptr %i.me, align 4, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count374
  br i1 %exitcond.not, label %._crit_edge.i.i234, label %.lr.ph.split.split, !llvm.loop !654

.noexc250:                                        ; preds = %._crit_edge.i.i234
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  store ptr %i.mt, ptr %i.mc, align 8, !tbaa !231, !noalias !662
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %.not.i.i.i241 = icmp ugt i32 %i.iu, 1
  store i64 %i.iv, ptr %i.mu, align 8, !tbaa !232, !noalias !662
  br i1 %.not.i.i.i241, label %bb.bg, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i242

bb.bg:                                            ; preds = %.noexc250
  %24 = icmp slt i32 %i.iu, 0
  %i.mv = shl nuw nsw i64 %i.iv, 3
  %25 = select i1 %24, i64 -1, i64 %i.mv
  %i.mw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %25) #30
          to label %.noexc.i249 unwind label %bb.bh, !noalias !662 ; 2 uses

.noexc.i249:                                      ; preds = %bb.bg
  store ptr %i.mw, ptr %i.mc, align 8, !tbaa !231, !noalias !662
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i242

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i242:          ; preds = %.noexc.i249, %.noexc250
  %i.mx = phi ptr [ %i.mw, %.noexc.i249 ], [ %i.mt, %.noexc250 ] ; 2 uses
  store i32 0, ptr %20, align 8, !tbaa !235, !alias.scope !662
  %i.my = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.mc, ptr %i.my, align 8, !tbaa !69, !alias.scope !662
  %26 = icmp sgt i32 %i.iu, 0
  br i1 %26, label %.lr.ph.i243.preheader, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253

.lr.ph.i243.preheader:                            ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i242
  %min.iters.check486 = icmp ult i32 %i.ie, 5
  br i1 %min.iters.check486, label %.lr.ph.i243.preheader501, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph.i243.preheader
  %n.vec488 = and i64 %i.iv, 2147483644           ; 4 uses
  %i.mz = shl nuw nsw i64 %n.vec488, 2
  %i.na = getelementptr i8, ptr %i.jb, i64 %i.mz
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next494, %vector.body489 ] ; 3 uses
  %i.nb = shl i64 %index490, 2
  %next.gep491 = getelementptr i8, ptr %i.jb, i64 %i.nb ; 2 uses
  %i.nc = getelementptr i8, ptr %next.gep491, i64 8
  %wide.load492.a = load <2 x i32>, ptr %next.gep491, align 4, !tbaa !70, !noalias !662
  %wide.load493 = load <2 x i32>, ptr %i.nc, align 4, !tbaa !70, !noalias !662
  %i.nd = sext <2 x i32> %wide.load492.a to <2 x i64>
  %i.ne = sext <2 x i32> %wide.load493 to <2 x i64>
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index490 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <2 x i64> %i.nd, ptr %i.nf, align 8, !tbaa !72, !noalias !662
  store <2 x i64> %i.ne, ptr %i.ng, align 8, !tbaa !72, !noalias !662
  %index.next494 = add nuw i64 %index490, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.nh, label %middle.block495, label %vector.body489, !llvm.loop !659

middle.block495:                                  ; preds = %vector.body489
  %cmp.n496 = icmp eq i64 %n.vec488, %i.iv
  br i1 %cmp.n496, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253, label %.lr.ph.i243.preheader501

.lr.ph.i243.preheader501:                         ; preds = %.lr.ph.i243.preheader, %middle.block495
  %indvars.iv.i245.ph = phi i64 [ 0, %.lr.ph.i243.preheader ], [ %n.vec488, %middle.block495 ]
  %.0910.i246.ph = phi ptr [ %i.jb, %.lr.ph.i243.preheader ], [ %i.na, %middle.block495 ]
  br label %.lr.ph.i243

bb.bh:                                            ; preds = %bb.bg
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef 24) #29, !noalias !662
  br label %.body251

.lr.ph.i243:                                      ; preds = %.lr.ph.i243.preheader501, %.lr.ph.i243
  %indvars.iv.i245 = phi i64 [ %indvars.iv.next.i247, %.lr.ph.i243 ], [ %indvars.iv.i245.ph, %.lr.ph.i243.preheader501 ] ; 2 uses
  %.0910.i246 = phi ptr [ %i.nm, %.lr.ph.i243 ], [ %.0910.i246.ph, %.lr.ph.i243.preheader501 ] ; 2 uses
  %i.nj = load i32, ptr %.0910.i246, align 4, !tbaa !70, !noalias !662
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i245
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !72, !noalias !662
  %i.nm = getelementptr inbounds nuw i8, ptr %.0910.i246, i64 4
  %indvars.iv.next.i247 = add nuw nsw i64 %indvars.iv.i245, 1 ; 2 uses
  %exitcond.not.i248 = icmp eq i64 %indvars.iv.next.i247, %i.iv
  br i1 %exitcond.not.i248, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253, label %.lr.ph.i243, !llvm.loop !660

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253: ; preds = %.lr.ph.i243, %middle.block495, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i242
  %i.nn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.bi unwind label %bb.bk     ; 0 uses

bb.bi:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.no = load ptr, ptr %19, align 8, !tbaa !66   ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.lz
  br i1 %i.np, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bi
  %i.nq = load i64, ptr %i.lz, align 8, !tbaa !69
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i255: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %.idx443 = shl nuw nsw i64 %i.iv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %.idx443) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit258

bb.bj:                                            ; preds = %._crit_edge.i.i234
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body251

bb.bk:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit253
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
  br label %.body251

.body251:                                         ; preds = %bb.bj, %bb.bh, %bb.bk
  %.pn72 = phi { ptr, i32 } [ %i.nt, %bb.bk ], [ %i.ns, %bb.bj ], [ %i.ni, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.nu = load ptr, ptr %19, align 8, !tbaa !66   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.lz
  br i1 %i.nv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %.body251
  %i.nw = load i64, ptr %i.lz, align 8, !tbaa !69
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i260: ; preds = %.body251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %.idx = shl nuw nsw i64 %i.iv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %.idx) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

_ZNSt6vectorIiSaIiEED2Ev.exit258:                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %._crit_edge.i.i274

_ZNSt6vectorIiSaIiEED2Ev.exit263:                 ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.ba
  %.pn76.pn = phi { ptr, i32 } [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.io, %bb.ba ], [ %i.md, %bb.bd ], [ %.pn72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i260 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.bs

._crit_edge.i.i264:                               ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.ny = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ny, ptr %21, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ny, ptr noundef nonnull align 1 dereferenceable(9) @.str.192, i64 9, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 9, ptr %i.nz, align 8, !tbaa !65
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 25
  store i8 0, ptr %i.oa, align 1, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !52
  store i32 %i.oc, ptr %i.d, align 4, !tbaa !70
  %i.od = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bl unwind label %bb.bm     ; 0 uses

bb.bl:                                            ; preds = %._crit_edge.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.oe = load ptr, ptr %21, align 8, !tbaa !66   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ny
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %bb.bl
  %i.og = load i64, ptr %i.ny, align 8, !tbaa !69
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %._crit_edge.i.i274

bb.bm:                                            ; preds = %._crit_edge.i.i264
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.oj = load ptr, ptr %21, align 8, !tbaa !66   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.ny
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %bb.bm
  %i.ol = load i64, ptr %i.ny, align 8, !tbaa !69
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.bs

._crit_edge.i.i274:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.on = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  store ptr %i.on, ptr %22, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.on, ptr noundef nonnull align 1 dereferenceable(5) @.str.50, i64 5, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 5, ptr %i.oo, align 8, !tbaa !65
  %i.op = getelementptr inbounds nuw i8, ptr %22, i64 21
  store i8 0, ptr %i.op, align 1, !tbaa !69
  %i.oq = load ptr, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %.not10.i.i.i.i278 = icmp eq ptr %i.oq, null
  br i1 %.not10.i.i.i.i278, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %.lr.ph.i.i.i.i279

.lr.ph.i.i.i.i279:                                ; preds = %._crit_edge.i.i274, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285
  %.012.i.i.i.i280 = phi ptr [ %.1.i.i.i.i290, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285 ], [ %i.oq, %._crit_edge.i.i274 ] ; 4 uses
  %.0811.i.i.i.i281 = phi ptr [ %.19.i.i.i.i287, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285 ], [ %i.j, %._crit_edge.i.i274 ]
  %i.or = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i280, i64 40
  %i.os = load i64, ptr %i.or, align 8, !tbaa !65 ; 3 uses
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i304, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i283

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i283: ; preds = %.lr.ph.i.i.i.i279
  %.sroa.speculated.i.i.i.i.i.i.i282 = call i64 @llvm.umin.i64(i64 %i.os, i64 5)
  %i.ou = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i280, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !66
  %i.ow = call i32 @memcmp(ptr noundef %i.ov, ptr noundef nonnull %i.on, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i282) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i284 = icmp eq i32 %i.ow, 0
  br i1 %.not.i.i.i.i.i.i.i284, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i304, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i304: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i283, %.lr.ph.i.i.i.i279
  %i.ox = add i64 %i.os, -5
  %spec.select7.i.i.i.i.i.i.i.i305 = call i64 @llvm.smax.i64(i64 %i.ox, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i306 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i305, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i307 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i306 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i304, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i283
  %.0.i.i.i.i.i.i.i286 = phi i32 [ %i.ow, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i283 ], [ %.0.i6.i.i.i.i.i.i.i307, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i304 ]
  %i.oy = icmp slt i32 %.0.i.i.i.i.i.i.i286, 0    ; 2 uses
  %.19.i.i.i.i287 = select i1 %i.oy, ptr %.0811.i.i.i.i281, ptr %.012.i.i.i.i280 ; 5 uses
  %.1.in.v.i.i.i.i288 = select i1 %i.oy, i64 24, i64 16
  %.1.in.i.i.i.i289 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i280, i64 %.1.in.v.i.i.i.i288
  %.1.i.i.i.i290 = load ptr, ptr %.1.in.i.i.i.i289, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i291 = icmp eq ptr %.1.i.i.i.i290, null
  br i1 %.not.i.i.i.i291, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i292, label %.lr.ph.i.i.i.i279, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i292: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i285
  %i.oz = icmp eq ptr %.19.i.i.i.i287, %i.j
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i292
  %i.pa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i287, i64 40
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !65 ; 3 uses
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i300, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294: ; preds = %bb.bn
  %.sroa.speculated.i.i.i.i.i.i293 = call i64 @llvm.umin.i64(i64 %i.pb, i64 5)
  %i.pd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i287, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !66
  %i.pf = call i32 @memcmp(ptr noundef nonnull %i.on, ptr noundef %i.pe, i64 noundef %.sroa.speculated.i.i.i.i.i.i293) #28 ; 2 uses
  %.not.i.i.i.i.i.i295 = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i.i.i.i.i295, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i300, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i300: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294, %bb.bn
  %i.pg = sub i64 5, %i.pb
  %spec.select7.i.i.i.i.i.i.i301 = call i64 @llvm.smax.i64(i64 %i.pg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i302 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i301, i64 2147483647)
  %.0.i6.i.i.i.i.i.i303 = trunc nsw i64 %.08.i.i.i.i.i.i.i302 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i300, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294
  %.0.i.i.i.i.i.i297 = phi i32 [ %i.pf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294 ], [ %.0.i6.i.i.i.i.i.i303, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i300 ]
  %i.ph = icmp slt i32 %.0.i.i.i.i.i.i297, 0
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296
  %i.pi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i287, i64 64
  %i.pj = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit309 unwind label %bb.bq

_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit309: ; preds = %bb.bo
  %i.pk = icmp eq i64 %i.pj, 1
  %i.pl = select i1 %i.pk, ptr @.str.195, ptr @.str.196 ; 2 uses
  %.pre384 = load ptr, ptr %22, align 8, !tbaa !66 ; 2 uses
  %i.pm = icmp eq ptr %.pre384, %i.on
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit309
  %i.pn = load i64, ptr %i.on, align 8, !tbaa !69
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %.pre384, i64 noundef %i.po) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit309, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i292, %._crit_edge.i.i274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  %.0.i298449 = phi ptr [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %i.pl, %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit309 ], [ @.str.196, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i296 ], [ @.str.196, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i292 ], [ @.str.196, %._crit_edge.i.i274 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !65
  %i.ps = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i298449) #28
  %i.pt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.pp, i64 noundef 0, i64 noundef %i.pr, ptr noundef nonnull %.0.i298449, i64 noundef %i.ps) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.pu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.pu, ptr %23, align 8, !tbaa !71
  store i32 1936291937, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 4, ptr %i.pv, align 8, !tbaa !65
  %i.pw = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i8 0, ptr %i.pw, align 4, !tbaa !69
  %i.px = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.bp unwind label %bb.br     ; 0 uses

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.py = load ptr, ptr %23, align 8, !tbaa !66   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.pu
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.bp
  %i.qa = load i64, ptr %i.pu, align 8, !tbaa !69
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter8addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 2147483647)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.bq:                                            ; preds = %bb.bo
  %i.qc = landingpad { ptr, i32 }
          cleanup
  %i.qd = load ptr, ptr %22, align 8, !tbaa !66   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.on
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
end_hunk_0
