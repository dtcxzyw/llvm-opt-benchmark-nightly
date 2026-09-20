Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/DecompressChunkTrace?download=true
inline.NumInlined: 1172
inline.NumDeleted: 718
begin_hunk_0_@_ZN6openzl10visualizer20DecompressChunkTrace20on_codecDecode_startEP12ZL_Decoder_sPKPK8Stream_sm:bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 168 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !126
  store <2 x ptr> %i.gi, ptr %i.gg, align 8, !tbaa !126
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fc, i64 184
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !139
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fc, i64 192
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 2 uses
  %i.go = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !126
  store <2 x ptr> %i.go, ptr %i.gm, align 8, !tbaa !126
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fc, i64 208
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i8 0, i64 24, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fc, i64 216 ; 2 uses
  %i.gt = load ptr, ptr %i.em, align 8, !tbaa !83 ; 3 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !83
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fc, i64 224
  %i.gv = load i64, ptr %i.eo, align 8, !tbaa !84 ; 2 uses
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !84
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fc, i64 232 ; 2 uses
  %i.gx = load ptr, ptr %i.ep, align 8, !tbaa !141 ; 3 uses
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !142
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fc, i64 240
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 240
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !143
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !143
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fc, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !145
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fc, i64 264 ; 4 uses
  store ptr null, ptr %i.hc, align 8, !tbaa !146
  %i.hd = icmp eq ptr %i.gt, %i.en
  br i1 %i.hd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.hc, ptr %i.gs, align 8, !tbaa !83
  %i.he = load ptr, ptr %i.en, align 8, !tbaa !146
  store ptr %i.he, ptr %i.hc, align 8, !tbaa !146
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.hf = phi ptr [ %i.hc, %bb.al ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i65 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i65, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !104
  %i.hi = sext i32 %i.hh to i64
  %i.hj = urem i64 %i.hi, %i.gv
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hj
  store ptr %i.gw, ptr %i.hk, align 8, !tbaa !147
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.am, %bb.an
  store i64 0, ptr %i.er, align 8, !tbaa !148
  store i64 1, ptr %i.eo, align 8, !tbaa !84
  store ptr null, ptr %i.en, align 8, !tbaa !146
  store ptr %i.en, ptr %i.em, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fc, i64 272
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.hn = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !149
  store <2 x ptr> %i.hn, ptr %i.hl, align 8, !tbaa !149
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fc, i64 288
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 288
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !150
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fc, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fc, i64 312
  %i.ht = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !126
  store <2 x ptr> %i.ht, ptr %i.hs, align 8, !tbaa !126
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fc, i64 328
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 328
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !88
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fc, i64 336
  %i.hy = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !126
  store <2 x ptr> %i.hy, ptr %i.hx, align 8, !tbaa !126
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fc, i64 352
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 352
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !88
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  %i.ic = load ptr, ptr %i.fb, align 8, !tbaa !91
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 360
  store ptr %i.id, ptr %i.fb, align 8, !tbaa !91
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.ao:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr %i.fc, ptr noundef nonnull align 8 dereferenceable(360) %11)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.as

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ao, %_ZN6openzl10visualizer5CodecC2EOS1_.exit
  br i1 %.not76, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

._crit_edge75:                                    ; preds = %bb.bb, %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.if = load ptr, ptr %i.ew, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge75
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 352
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !88
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #19
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.ap, %._crit_edge75
  %i.il = load ptr, ptr %i.ev, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 328
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !88
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #19
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.aq, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.el) #18
  %i.ir = load ptr, ptr %i.ei, align 8, !tbaa !89 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ej
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.it = load i64, ptr %i.ej, align 8, !tbaa !46
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.iv = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.af
  br i1 %i.iw, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ix = load i64, ptr %i.af, align 8, !tbaa !46
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #19
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  ret void

bb.ar:                                            ; preds = %.noexc.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.as:                                            ; preds = %bb.ao
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.at:                                            ; preds = %.lr.ph74, %bb.bb
  %.073 = phi i64 [ 0, %.lr.ph74 ], [ %i.kh, %bb.bb ] ; 2 uses
  %i.jb = load i64, ptr %i.ex, align 8, !tbaa !136
  %i.jc = load ptr, ptr %i.fa, align 8, !tbaa !90
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.073 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !98
  %i.jf = invoke i32 @ZL_Data_id(ptr noundef %i.je)
          to label %bb.au unwind label %.loopexit ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.jg = getelementptr inbounds nuw [360 x i8], ptr %i.jc, i64 %i.jb ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 336 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 344 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !151 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 352 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !88
  %.not.i.i60 = icmp eq ptr %i.jj, %i.jl
  br i1 %.not.i.i60, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 %i.jf, ptr %i.jj, align 4, !tbaa !104
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store ptr %i.jm, ptr %i.ji, align 8, !tbaa !151
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backEOS0_.exit

bb.aw:                                            ; preds = %bb.au
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !87 ; 4 uses
  %i.jo = ptrtoint ptr %i.jj to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 6 uses
  %i.jr = icmp eq i64 %i.jq, 9223372036854775804
  br i1 %i.jr, label %bb.ax, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
          to label %.noexc62.a unwind label %.loopexit.split-lp

.noexc62.a:                                       ; preds = %bb.ax
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.js = ashr exact i64 %i.jq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.js ; 2 uses
  %i.jt = icmp ult i64 %13, %i.js
  %i.ju = call i64 @llvm.umin.i64(i64 %13, i64 2305843009213693951)
  %i.jv = select i1 %i.jt, i64 2305843009213693951, i64 %i.ju ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.jw = shl nuw nsw i64 %i.jv, 2
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #23
          to label %.noexc63 unwind label %.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %i.jq ; 2 uses
  store i32 %i.jf, ptr %i.jy, align 4, !tbaa !104
  %i.jz = icmp sgt i64 %i.jq, 0
  br i1 %i.jz, label %bb.ay, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.ay:                                            ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jx, ptr align 4 %i.jn, i64 %i.jq, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.ay, %.noexc63
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jq) #19
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.az, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.jx, ptr %i.jh, align 8, !tbaa !87
  store ptr %i.ka, ptr %i.ji, align 8, !tbaa !151
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jv
  store ptr %i.kb, ptr %i.jk, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.av
  %i.kc = load i64, ptr %i.ex, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.kd = load ptr, ptr %i.jd, align 8, !tbaa !98
  %i.ke = invoke i32 @ZL_Data_id(ptr noundef %i.kd)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backEOS0_.exit
  store i32 %i.ke, ptr %12, align 4
  %i.kf = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %bb.bb unwind label %bb.bc     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 104
  store i64 %i.kc, ptr %i.kg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 112
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.kh = add nuw i64 %.073, 1                    ; 2 uses
  %exitcond78.not = icmp eq i64 %i.kh, %3
  br i1 %exitcond78.not, label %._crit_edge75, label %bb.at, !llvm.loop !178

.loopexit:                                        ; preds = %bb.at, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backEOS0_.exit
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bc, %bb.as
  %.pn49.pn = phi { ptr, i32 } [ %i.ja, %bb.as ], [ %i.ki, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %11) #18
  br label %bb.be

bb.be:                                            ; preds = %bb.ar, %bb.bd
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.bd ], [ %i.iz, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.af
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.af ], [ %.pn49.pn.pn, %bb.be ]
  resume { ptr, i32 } %.pn55.pn
}

declare i32 @ZL_Data_id(ptr noundef) local_unnamed_addr #4

declare i32 @ZL_Data_type(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare void @_ZN6openzl10visualizer14ChunkTraceCore16getStreamPreviewB5cxx11EPKv7ZL_TypemmPKj(ptr dead_on_unwind writable sret(%"class.std::variant") align 8, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rStringLens(ptr noundef) local_unnamed_addr #4

declare void @_ZN6openzl10visualizer14ChunkTraceCore12emptyPreviewB5cxx11E7ZL_Type(ptr dead_on_unwind writable sret(%"class.std::variant") align 8, i32 noundef) local_unnamed_addr #4

declare i64 @ZL_Data_contentSize(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !100    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !104
  store i32 %i.n, ptr %i.m, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, i8 0, i64 152, i1 false)
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !100
  %i.v = load i32, ptr %i.t, align 4, !tbaa !100
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !40
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #18
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #18
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i8, ptr %i.b, align 8, !tbaa !127
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !126  ; 7 uses
  switch i8 %i.c, label %bb.e [
end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer20DecompressChunkTrace18on_codecDecode_endEP12ZL_Decoder_sPKPK8Stream_sm18ZL_Result_size_t_u:bb.a
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRSF_St17integral_constantImLm2EEEESI_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc3.i.i.i.i unwind label %bb.o

.noexc3.i.i.i.i:                                  ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN6openzl10visualizer6StreamaSEOS1_.exit

bb.n:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #20
  unreachable

_ZN6openzl10visualizer6StreamaSEOS1_.exit:        ; preds = %.noexc.i.i.i.i, %.noexc2.i.i.i.i, %.noexc3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.by = load i8, ptr %i.w, align 8, !tbaa !127
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !126 ; 7 uses
  switch i8 %i.by, label %bb.s [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
  ]

bb.p:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.q:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.r:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %i.ca = load ptr, ptr %i.x, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.r ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !46
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i.i = icmp eq ptr %i.cg, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ch = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.r ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.s:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.q, %bb.p
  %.sink20.i.i.i.i = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ch, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !126
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.sink20.i.i.i.i to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i.i, i64 noundef %i.cl) #19
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.q, %bb.p
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZN6openzl10visualizer6StreamD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i
  %i.cn = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #19
  br label %_ZN6openzl10visualizer6StreamD2Ev.exit

_ZN6openzl10visualizer6StreamD2Ev.exit:           ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.cr = load i8, ptr %i.ab, align 8, !tbaa !127
  %i.cs = load ptr, ptr %11, align 16, !tbaa !126 ; 7 uses
  switch i8 %i.cr, label %bb.x [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.v:                                             ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %.not.i.i.i.i.i.i.i.i8.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.w:                                             ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %i.ct = load ptr, ptr %i.y, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cs, %bb.w ] ; 3 uses
  %i.cu = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !46
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i = icmp eq ptr %i.cz, %i.ct
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %11, align 16, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.w
  %i.da = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.cs, %bb.w ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.x:                                             ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.v, %bb.u
  %.sink20.i.i.i = phi ptr [ %i.cs, %bb.v ], [ %i.cs, %bb.u ], [ %i.da, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.db = load ptr, ptr %i.aa, align 16, !tbaa !126
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %.sink20.i.i.i to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i, i64 noundef %i.de) #19
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit: ; preds = %bb.u, %bb.v, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ab

bb.y:                                             ; preds = %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.h
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %12) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %i.df, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  resume { ptr, i32 } %.pn

bb.ab:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE4findERS6_.exit
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !136
  %i.di = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.dj = getelementptr inbounds nuw [360 x i8], ptr %i.di, i64 %i.dh ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 312 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 320 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !151 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 328 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load i32, ptr %10, align 4, !tbaa !104
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !104
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !151
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !87 ; 4 uses
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775804
  br i1 %i.dv, label %bb.ae, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.dw = ashr exact i64 %i.du, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dx = icmp ult i64 %13, %i.dw
  %i.dy = call i64 @llvm.umin.i64(i64 %13, i64 2305843009213693951)
  %i.dz = select i1 %i.dx, i64 2305843009213693951, i64 %i.dy ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i42)
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #23 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.du ; 2 uses
  %i.ed = load i32, ptr %10, align 4, !tbaa !104
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !104
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.af, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.af, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #19
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !87
  store ptr %i.ef, ptr %i.dl, align 8, !tbaa !151
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.eg, ptr %i.dn, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.ac, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.eh = load i64, ptr %i.ae, align 8, !tbaa !96
  %i.ei = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %10) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  store i64 %i.eh, ptr %i.ej, align 8
  %.sroa.4.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  store i8 1, ptr %.sroa.4.0..sroa_idx47, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ek = add nuw i64 %.03952, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %3
  br i1 %exitcond.not, label %.lr.ph54, label %bb.d, !llvm.loop !192

._crit_edge:                                      ; preds = %.lr.ph54, %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !136 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !90
  %i.ep = getelementptr inbounds nuw [360 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 312
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !126 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 320
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !126 ; 2 uses
  %.not55 = icmp eq ptr %i.er, %i.et
  br i1 %.not55, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ah

.lr.ph54:                                         ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit, %.lr.ph54
  %.053 = phi i64 [ %i.ex, %.lr.ph54 ], [ 0, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !98
  call void @_ZN6openzl10visualizer20DecompressChunkTrace10streamdumpEPK8Stream_s(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.ew)
  %i.ex = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond62.not = icmp eq i64 %i.ex, %3
  br i1 %exitcond62.not, label %._crit_edge, label %.lr.ph54, !llvm.loop !193

._crit_edge59.loopexit:                           ; preds = %bb.ah
  %.pre = load i64, ptr %i.em, align 8, !tbaa !136
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %._crit_edge
  %i.ey = phi i64 [ %.pre, %._crit_edge59.loopexit ], [ %i.en, %._crit_edge ]
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.em, align 8, !tbaa !136
  ret void

bb.ah:                                            ; preds = %.lr.ph58, %bb.ah
  %.sroa.043.056 = phi ptr [ %i.er, %.lr.ph58 ], [ %i.fh, %bb.ah ] ; 2 uses
  %i.fa = load i64, ptr %i.em, align 8, !tbaa !136
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !90
  %i.fc = getelementptr inbounds nuw [360 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 336
  %i.fe = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.043.056)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fd) ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.043.056, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fh, %i.et
  br i1 %.not, label %._crit_edge59.loopexit, label %bb.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer20DecompressChunkTrace10streamdumpEPK8Stream_s(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.124", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.114", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.58", align 8     ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = tail call ptr @ZL_Data_rPtr(ptr noundef %1) ; 3 uses
  %i.e = tail call i64 @ZL_Data_contentSize(ptr noundef %1) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !43
  %i.g = icmp eq ptr %i.d, null
  %i.h = icmp ne i64 %i.e, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.e, ptr %i.b, align 8, !tbaa !96
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !89
  %i.k = load i64, ptr %i.b, align 8, !tbaa !96
  store i64 %i.k, ptr %i.f, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %._crit_edge.i.i23
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !46
  store i8 %i.m, ptr %i.l, align 1, !tbaa !46
  br label %._crit_edge.i.i23

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !45
  %i.p = load ptr, ptr %4, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.s, align 8, !tbaa !45
  store i8 0, ptr %i.r, align 8, !tbaa !46
  %i.t = invoke i32 @ZL_Data_type(ptr noundef %1)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %._crit_edge.i.i23
  %i.u = icmp eq i32 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.v = invoke ptr @ZL_Data_rStringLens(ptr noundef %1)
          to label %bb.g unwind label %bb.s       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.w = invoke i64 @ZL_Data_numElts(ptr noundef %1)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.x = shl i64 %i.w, 2                          ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !43
  %i.z = icmp eq ptr %i.v, null
  %i.aa = icmp ne i64 %i.x, 0
  %or.cond.i26 = and i1 %i.z, %i.aa
  br i1 %or.cond.i26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #22
          to label %.noexc29 unwind label %bb.u

.noexc29:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.x, ptr %i.a, align 8, !tbaa !96
  %i.ab = icmp ugt i64 %i.x, 15
  br i1 %i.ab, label %.noexc.i28, label %._crit_edge.i.i27

.noexc.i28:                                       ; preds = %bb.j
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i27.thread unwind label %bb.u ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRS7_St17integral_constantImLm1EEEESI_St14__invoke_otherOSK_DpOT1_:bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !127
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !152
  store <2 x ptr> %i.g, ptr %i.a, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  store ptr %i.i, ptr %i.e, align 8, !tbaa !212
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRS6_St17integral_constantImLm1EEEEDaSI_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.l) #19
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRS6_St17integral_constantImLm1EEEEDaSI_SJ_.exit

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.n
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.e ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !46
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.u = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.sink20.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.sink20.i.i.i.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i.i, i64 noundef %i.z) #19
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.aa = load <2 x ptr>, ptr %1, align 8, !tbaa !152
  store <2 x ptr> %i.aa, ptr %i.a, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !212
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !127
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRS6_St17integral_constantImLm1EEEEDaSI_SJ_.exit

_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRS6_St17integral_constantImLm1EEEEDaSI_SJ_.exit: ; preds = %bb.b, %bb.c, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRSF_St17integral_constantImLm2EEEESI_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !127
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !126  ; 9 uses
  switch i8 %i.c, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !214
  store <2 x ptr> %i.i, ptr %i.a, align 8, !tbaa !214
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  store ptr %i.k, ptr %i.g, align 8, !tbaa !213
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.b
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRSE_St17integral_constantImLm2EEEEDaSI_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.t) #19
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRSE_St17integral_constantImLm2EEEEDaSI_SJ_.exit

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJSE_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJSE_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #19
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJSE_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJSE_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i, %bb.e, %bb.d
  %i.z = load <2 x ptr>, ptr %1, align 8, !tbaa !214
  store <2 x ptr> %i.z, ptr %i.a, align 8, !tbaa !214
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !213
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i8 2, ptr %i.b, align 8, !tbaa !127
  br label %_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRSE_St17integral_constantImLm2EEEEDaSI_SJ_.exit

_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEaSEOSF_ENUlOT_T0_E_clIRSE_St17integral_constantImLm2EEEEDaSI_SJ_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.c, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEJSE_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 360                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 25620477880152155)
  %i.k = select i1 %i.i, i64 25620477880152155, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 360
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr noundef nonnull align 8 dereferenceable(360) %2) #18
  %i.q = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #19
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !90
  store ptr %i.s, ptr %i.a, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %i.k
  store ptr %i.x, ptr %i.t, align 8, !tbaa !92
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  %i.b = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !89
  %i.i = load i64, ptr %i.c, align 8, !tbaa !46
  store i64 %i.i, ptr %i.a, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !45
  store ptr %i.c, ptr %1, align 8, !tbaa !89
  store i64 0, ptr %i.j, align 8, !tbaa !45
  store i8 0, ptr %i.c, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !43
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.r, ptr %i.o, align 8, !tbaa !89
  %i.y = load i64, ptr %i.s, align 8, !tbaa !46
  store i64 %i.y, ptr %i.q, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !45
  store ptr %i.s, ptr %i.p, align 8, !tbaa !89
  store i64 0, ptr %i.z, align 8, !tbaa !45
  store i8 0, ptr %i.s, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noundef nonnull align 8 dereferenceable(200) %i.ad, i64 48, i1 false), !tbaa.struct !137
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !126
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !126
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !126
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !139
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !126
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !140
  store ptr %i.av, ptr %i.at, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !84 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !142
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !143
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !143
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !145
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !146
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !83
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !146
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  %i.bp = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9 ]
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN6openzl11LocalParamsC2EOS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !104
  %i.bs = sext i32 %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bb
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  store ptr %i.bc, ptr %i.bu, align 8, !tbaa !147
  br label %_ZN6openzl11LocalParamsC2EOS0_.exit

_ZN6openzl11LocalParamsC2EOS0_.exit:              ; preds = %bb.e, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 0, ptr %i.bv, align 8, !tbaa !148
  store i64 1, ptr %i.ba, align 8, !tbaa !84
  store ptr null, ptr %i.bm, align 8, !tbaa !146
  store ptr %i.bm, ptr %i.ax, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !149
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !149
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !126
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !126
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !88
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
end_hunk_2
