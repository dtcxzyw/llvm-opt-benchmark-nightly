Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer?download=true
inline.NumInlined: 9294
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter9parseConvERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.fe = ptrtoint ptr %.0.i.i.i.i.i120 to i64
  %i.ff = ptrtoint ptr %i.ei to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 2                 ; 3 uses
  %i.fi = trunc i64 %i.fh to i32                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.fj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc134 unwind label %bb.ap ; 6 uses

bb.ag:                                            ; preds = %bb.af
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit145

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ak
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %bb.ak ], [ %indvars.iv187.ph, %scalar.ph.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv187, %wide.trip.count
  br i1 %exitcond.not, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.630, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc129 unwind label %bb.al

.noexc129:                                        ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.631, i32 noundef 97) #31
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc129
  unreachable

bb.aj:                                            ; preds = %.noexc129
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %bb.aj
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !69
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body130

bb.ak:                                            ; preds = %scalar.ph
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv187
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !70
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv187
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !70
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %i.eg
  br i1 %exitcond191.not, label %._crit_edge.i.i122, label %scalar.ph, !llvm.loop !809

bb.al:                                            ; preds = %bb.ah
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body130

.noexc134:                                        ; preds = %._crit_edge.i.i122
  %sext = shl i64 %i.fg, 30
  %i.fv = ashr i64 %sext, 32                      ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  store ptr %i.fw, ptr %i.fj, align 8, !tbaa !231, !noalias !814
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.not.i.i.i132 = icmp ugt i32 %i.fi, 1
  store i64 %i.fv, ptr %i.fx, align 8, !tbaa !232, !noalias !814
  br i1 %.not.i.i.i132, label %bb.am, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.am:                                            ; preds = %.noexc134
  %i.fy = icmp slt i32 %i.fi, 0
  %i.fz = shl nuw nsw i64 %i.fv, 3
  %i.ga = select i1 %i.fy, i64 -1, i64 %i.fz
  %i.gb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ga) #30
          to label %.noexc.i133 unwind label %bb.an, !noalias !814 ; 2 uses

.noexc.i133:                                      ; preds = %bb.am
  store ptr %i.gb, ptr %i.fj, align 8, !tbaa !231, !noalias !814
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc.i133, %.noexc134
  %i.gc = phi ptr [ %i.gb, %.noexc.i133 ], [ %i.fw, %.noexc134 ] ; 2 uses
  store i32 0, ptr %15, align 8, !tbaa !235, !alias.scope !814
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.fj, ptr %i.gd, align 8, !tbaa !69, !alias.scope !814
  %i.ge = icmp sgt i32 %i.fi, 0
  br i1 %i.ge, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %wide.trip.count.i = and i64 %i.fh, 2147483647  ; 3 uses
  %min.iters.check224 = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.i
  %n.vec226 = and i64 %i.fh, 2147483644           ; 4 uses
  %i.gf = shl nuw nsw i64 %n.vec226, 2
  %i.gg = getelementptr i8, ptr %i.ei, i64 %i.gf
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 3 uses
  %i.gh = shl i64 %index228, 2
  %next.gep = getelementptr i8, ptr %i.ei, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep, i64 8
  %wide.load229 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !70, !noalias !814
  %wide.load230 = load <2 x i32>, ptr %i.gi, align 4, !tbaa !70, !noalias !814
  %i.gj = sext <2 x i32> %wide.load229 to <2 x i64>
  %i.gk = sext <2 x i32> %wide.load230 to <2 x i64>
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index228 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <2 x i64> %i.gj, ptr %i.gl, align 8, !tbaa !72, !noalias !814
  store <2 x i64> %i.gk, ptr %i.gm, align 8, !tbaa !72, !noalias !814
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.gn, label %middle.block232, label %vector.body227, !llvm.loop !810

middle.block232:                                  ; preds = %vector.body227
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec226
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph223.preheader

scalar.ph223.preheader:                           ; preds = %.lr.ph.i, %middle.block232
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec226, %middle.block232 ]
  %.0910.i.ph = phi ptr [ %i.ei, %.lr.ph.i ], [ %i.gg, %middle.block232 ]
  br label %scalar.ph223

bb.an:                                            ; preds = %bb.am
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef 24) #29, !noalias !814
  br label %.body135

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph223 ], [ %indvars.iv.i.ph, %scalar.ph223.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.gs, %scalar.ph223 ], [ %.0910.i.ph, %scalar.ph223.preheader ] ; 2 uses
  %i.gp = load i32, ptr %.0910.i, align 4, !tbaa !70, !noalias !814
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !72, !noalias !814
  %i.gs = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph223, !llvm.loop !811

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph223, %middle.block232, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.gt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.ao unwind label %bb.aq     ; 0 uses

bb.ao:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.gu = load ptr, ptr %14, align 8, !tbaa !66   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fb
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ao
  %i.gw = load i64, ptr %i.fb, align 8, !tbaa !69
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.eh) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ap:                                            ; preds = %._crit_edge.i.i122
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body135

bb.aq:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %.body135

.body135:                                         ; preds = %bb.ap, %bb.an, %bb.aq
  %.pn47 = phi { ptr, i32 } [ %i.gz, %bb.aq ], [ %i.gy, %bb.ap ], [ %i.go, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ha = load ptr, ptr %14, align 8, !tbaa !66   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.fb
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %.body135
  %i.hc = load i64, ptr %i.fb, align 8, !tbaa !69
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %.body135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body130

.body130:                                         ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.pn54 = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.fu, %bb.al ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.eh) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit145

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ar

_ZNSt6vectorIiSaIiEED2Ev.exit145:                 ; preds = %bb.ag, %.body130, %.body115, %bb.s
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.ag ], [ %i.cn, %bb.s ], [ %.pn44, %.body115 ], [ %.pn54, %.body130 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ba

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !253 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !253
  %i.hi = icmp eq ptr %i.hf, %i.hh
  br i1 %i.hi, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !53
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ho = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8MatShapeESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %i.hm)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  br label %._crit_edge.i.i156

bb.au:                                            ; preds = %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 84
  br label %._crit_edge.i.i156

._crit_edge.i.i156:                               ; preds = %bb.au, %bb.at
  %.in = phi ptr [ %i.hp, %bb.at ], [ %i.hq, %bb.au ]
  %i.hr = load i32, ptr %.in, align 4, !tbaa !70
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.hs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.hs, ptr %16, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hs, ptr noundef nonnull align 1 dereferenceable(10) @.str.281, i64 10, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.ht, align 8, !tbaa !65
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 26
  store i8 0, ptr %i.hu, align 2, !tbaa !69
  %i.hv = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.av unwind label %bb.ay     ; 0 uses

bb.av:                                            ; preds = %._crit_edge.i.i156
  %i.hw = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hs
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.av
  %i.hy = load i64, ptr %i.hs, align 8, !tbaa !69
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  invoke void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter8addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(184) %7, i32 noundef 2147483647)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN11opencv_onnx9NodeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.as
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i156
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hs
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ay
  %i.ie = load i64, ptr %i.hs, align 8, !tbaa !69
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %bb.ax
  %.pn52 = phi { ptr, i32 } [ %i.ia, %bb.ax ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.o, %bb.az, %_ZNSt6vectorIiSaIiEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn54.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit145 ], [ %.pn52, %bb.az ], [ %.pn58, %bb.o ], [ %i.e, %bb.b ]
  call void @_ZN11opencv_onnx9NodeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn58.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter18parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.279, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter18parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 2115) #31
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !66     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !69
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull @.str.282, i64 noundef 13) ; 0 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !52
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit.lr.ph, label %._crit_edge.i.i

_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit.lr.ph: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZN2cv3dnn14dnn5_v2026060512ONNXImporter7getBlobERKN11opencv_onnx9NodeProtoEi.exit

end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter18parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.w
  %i.fc = load i64, ptr %i.cl, align 8, !tbaa !69
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

bb.x:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv624 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next625, %bb.ab ] ; 3 uses
  %i.fe = add nuw nsw i64 %indvars.iv624, 2       ; 2 uses
  %i.ff = load i32, ptr %i.ee, align 4, !tbaa !170
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.630, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc221 unwind label %bb.ac

.noexc221:                                        ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.631, i32 noundef 103) #31
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc221
  unreachable

bb.aa:                                            ; preds = %.noexc221
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218: ; preds = %bb.aa
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !69
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body222

bb.ab:                                            ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fe
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !70
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv624
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !70
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i200, label %bb.x, !llvm.loop !820

bb.ac:                                            ; preds = %bb.y
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body222

.noexc225:                                        ; preds = %._crit_edge.i.i200
  %sext = shl i64 %i.el, 30
  %i.fs = ashr i64 %sext, 32                      ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  store ptr %i.ft, ptr %i.eo, align 8, !tbaa !231, !noalias !831
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.not.i.i.i = icmp ugt i32 %i.en, 1
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !232, !noalias !831
  br i1 %.not.i.i.i, label %bb.ad, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.ad:                                            ; preds = %.noexc225
  %i.fv = icmp slt i32 %i.en, 0
  %i.fw = shl nuw nsw i64 %i.fs, 3
  %i.fx = select i1 %i.fv, i64 -1, i64 %i.fw
  %i.fy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fx) #30
          to label %.noexc.i224 unwind label %bb.ae, !noalias !831 ; 2 uses

.noexc.i224:                                      ; preds = %bb.ad
  store ptr %i.fy, ptr %i.eo, align 8, !tbaa !231, !noalias !831
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc.i224, %.noexc225
  %i.fz = phi ptr [ %i.fy, %.noexc.i224 ], [ %i.ft, %.noexc225 ] ; 2 uses
  store i32 0, ptr %16, align 8, !tbaa !235, !alias.scope !831
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.eo, ptr %i.ga, align 8, !tbaa !69, !alias.scope !831
  %i.gb = icmp sgt i32 %i.en, 0
  br i1 %i.gb, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %wide.trip.count.i = and i64 %i.em, 2147483647  ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.em, 2147483644              ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec, 2
  %i.gd = getelementptr i8, ptr %i.dz, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ge = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dz, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !70, !noalias !831
  %wide.load775 = load <2 x i32>, ptr %i.gf, align 4, !tbaa !70, !noalias !831
  %i.gg = sext <2 x i32> %wide.load to <2 x i64>
  %i.gh = sext <2 x i32> %wide.load775 to <2 x i64>
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <2 x i64> %i.gg, ptr %i.gi, align 8, !tbaa !72, !noalias !831
  store <2 x i64> %i.gh, ptr %i.gj, align 8, !tbaa !72, !noalias !831
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !821

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.gd, %middle.block ]
  br label %scalar.ph

bb.ae:                                            ; preds = %bb.ad
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 24) #29, !noalias !831
  br label %.body226

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.gp, %scalar.ph ], [ %.0910.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gm = load i32, ptr %.0910.i, align 4, !tbaa !70, !noalias !831
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.i
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !72, !noalias !831
  %i.gp = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph, !llvm.loop !822

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph, %middle.block, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.gq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.af unwind label %bb.ah     ; 0 uses

bb.af:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.gr = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.eg
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.af
  %i.gt = load i64, ptr %i.eg, align 8, !tbaa !69
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ag:                                            ; preds = %._crit_edge.i.i200
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body226

bb.ah:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
  br label %.body226

.body226:                                         ; preds = %bb.ag, %bb.ae, %bb.ah
  %.pn96 = phi { ptr, i32 } [ %i.gw, %bb.ah ], [ %i.gv, %bb.ag ], [ %i.gl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.gx = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.eg
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %.body226
  %i.gz = load i64, ptr %i.eg, align 8, !tbaa !69
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %.body226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.body222

.body222:                                         ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %.pn99 = phi { ptr, i32 } [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.fr, %bb.ac ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.hb, ptr %17, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.hb, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.hc, align 8, !tbaa !65
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 27
  store i8 0, ptr %i.hd, align 1, !tbaa !69
  %i.he = load ptr, ptr %i.bc, align 8, !tbaa !61 ; 4 uses
  %.not10.i.i.i.i241 = icmp eq ptr %i.he, null
  br i1 %.not10.i.i.i.i241, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273.thread, label %.lr.ph.i.i.i.i242

.lr.ph.i.i.i.i242:                                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248
  %.012.i.i.i.i243 = phi ptr [ %.1.i.i.i.i253, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248 ], [ %i.he, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %.0811.i.i.i.i244 = phi ptr [ %.19.i.i.i.i250, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248 ], [ %i.be, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i243, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !65 ; 3 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i266, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i246

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i246: ; preds = %.lr.ph.i.i.i.i242
  %.sroa.speculated.i.i.i.i.i.i.i245 = call i64 @llvm.umin.i64(i64 %i.hg, i64 11)
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i243, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !66
  %i.hk = call i32 @memcmp(ptr noundef %i.hj, ptr noundef nonnull %i.hb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i245) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i247 = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i247, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i266, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i266: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i246, %.lr.ph.i.i.i.i242
  %i.hl = add i64 %i.hg, -11
  %spec.select7.i.i.i.i.i.i.i.i267 = call i64 @llvm.smax.i64(i64 %i.hl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i268 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i267, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i269 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i268 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i266, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i246
  %.0.i.i.i.i.i.i.i249 = phi i32 [ %i.hk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i246 ], [ %.0.i6.i.i.i.i.i.i.i269, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i266 ]
  %i.hm = icmp slt i32 %.0.i.i.i.i.i.i.i249, 0    ; 2 uses
  %.19.i.i.i.i250 = select i1 %i.hm, ptr %.0811.i.i.i.i244, ptr %.012.i.i.i.i243 ; 4 uses
  %.1.in.v.i.i.i.i251 = select i1 %i.hm, i64 24, i64 16
  %.1.in.i.i.i.i252 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i243, i64 %.1.in.v.i.i.i.i251
  %.1.i.i.i.i253 = load ptr, ptr %.1.in.i.i.i.i252, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i254 = icmp eq ptr %.1.i.i.i.i253, null
  br i1 %.not.i.i.i.i254, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i255, label %.lr.ph.i.i.i.i242, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i255: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i248
  %i.hn = icmp eq ptr %.19.i.i.i.i250, %i.be
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i255
  %i.ho = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i250, i64 40
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !65 ; 3 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i262, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i257

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i257: ; preds = %bb.ai
  %.sroa.speculated.i.i.i.i.i.i256 = call i64 @llvm.umin.i64(i64 %i.hp, i64 11)
  %i.hr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i250, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ht = call i32 @memcmp(ptr noundef nonnull %i.hb, ptr noundef %i.hs, i64 noundef %.sroa.speculated.i.i.i.i.i.i256) #28 ; 2 uses
  %.not.i.i.i.i.i.i258 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i.i.i.i258, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i262, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i262: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i257, %bb.ai
  %i.hu = sub i64 11, %i.hp
  %spec.select7.i.i.i.i.i.i.i263 = call i64 @llvm.smax.i64(i64 %i.hu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i264 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i263, i64 2147483647)
  %.0.i6.i.i.i.i.i.i265 = trunc nsw i64 %.08.i.i.i.i.i.i.i264 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i257, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i262
  %.0.i.i.i.i.i.i260 = phi i32 [ %i.ht, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i257 ], [ %.0.i6.i.i.i.i.i.i265, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i262 ]
  %i.hv = icmp sgt i32 %.0.i.i.i.i.i.i260, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br i1 %i.hv, label %._crit_edge.i.i280, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.284, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter18parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 2139) #31
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

bb.an:                                            ; preds = %bb.ak
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %18, align 8, !tbaa !66   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.an
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !69
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.am
  %.pn136 = phi { ptr, i32 } [ %i.hw, %bb.am ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ], [ %i.hx, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

._crit_edge.i.i280:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.id = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.id, ptr %20, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr noundef nonnull align 1 dereferenceable(12) @.str.285, i64 12, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 12, ptr %i.ie, align 8, !tbaa !65
  %i.if = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i8 0, ptr %i.if, align 4, !tbaa !69
  br label %.lr.ph.i.i.i.i285

.lr.ph.i.i.i.i285:                                ; preds = %._crit_edge.i.i280, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291
  %.012.i.i.i.i286 = phi ptr [ %.1.i.i.i.i296, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291 ], [ %i.he, %._crit_edge.i.i280 ] ; 4 uses
  %.0811.i.i.i.i287 = phi ptr [ %.19.i.i.i.i293, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291 ], [ %i.be, %._crit_edge.i.i280 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i286, i64 40
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !65 ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i309, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i289

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i289: ; preds = %.lr.ph.i.i.i.i285
  %.sroa.speculated.i.i.i.i.i.i.i288 = call i64 @llvm.umin.i64(i64 %i.ih, i64 12)
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i286, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !66
  %i.il = call i32 @memcmp(ptr noundef %i.ik, ptr noundef nonnull %i.id, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i288) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i290 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i290, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i309, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i309: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i289, %.lr.ph.i.i.i.i285
  %i.im = add i64 %i.ih, -12
  %spec.select7.i.i.i.i.i.i.i.i310 = call i64 @llvm.smax.i64(i64 %i.im, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i311 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i310, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i312 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i311 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i309, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i289
  %.0.i.i.i.i.i.i.i292 = phi i32 [ %i.il, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i289 ], [ %.0.i6.i.i.i.i.i.i.i312, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i309 ]
  %i.in = icmp slt i32 %.0.i.i.i.i.i.i.i292, 0    ; 2 uses
  %.19.i.i.i.i293 = select i1 %i.in, ptr %.0811.i.i.i.i287, ptr %.012.i.i.i.i286 ; 4 uses
  %.1.in.v.i.i.i.i294 = select i1 %i.in, i64 24, i64 16
  %.1.in.i.i.i.i295 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i286, i64 %.1.in.v.i.i.i.i294
  %.1.i.i.i.i296 = load ptr, ptr %.1.in.i.i.i.i295, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i297 = icmp eq ptr %.1.i.i.i.i296, null
  br i1 %.not.i.i.i.i297, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i298, label %.lr.ph.i.i.i.i285, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i298: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i291
  %i.io = icmp eq ptr %.19.i.i.i.i293, %i.be
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i298
  %i.ip = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i293, i64 40
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !65 ; 3 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i305, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i300

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i300: ; preds = %bb.ao
  %.sroa.speculated.i.i.i.i.i.i299 = call i64 @llvm.umin.i64(i64 %i.iq, i64 12)
  %i.is = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i293, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !66
  %i.iu = call i32 @memcmp(ptr noundef nonnull %i.id, ptr noundef %i.it, i64 noundef %.sroa.speculated.i.i.i.i.i.i299) #28 ; 2 uses
  %.not.i.i.i.i.i.i301 = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i301, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i305, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i305: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i300, %bb.ao
  %i.iv = sub i64 12, %i.iq
  %spec.select7.i.i.i.i.i.i.i306 = call i64 @llvm.smax.i64(i64 %i.iv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i307 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i306, i64 2147483647)
  %.0.i6.i.i.i.i.i.i308 = trunc nsw i64 %.08.i.i.i.i.i.i.i307 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %._crit_edge.i.i467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i300, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i305
  %.0.i.i.i.i.i.i303 = phi i32 [ %i.iu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i300 ], [ %.0.i6.i.i.i.i.i.i308, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i305 ]
  %i.iw = icmp sgt i32 %.0.i.i.i.i.i.i303, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br i1 %i.iw, label %._crit_edge.i.i317, label %._crit_edge.i.i467

._crit_edge.i.i317:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter18parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
.body423:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420, %bb.cc, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %.pn130.pn = phi { ptr, i32 } [ %i.qs, %bb.cb ], [ %i.pf, %bb.bq ], [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420 ], [ %i.qt, %bb.cc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i462 = icmp eq ptr %.sroa.0533.0, null
  br i1 %.not.i.i.i462, label %_ZNSt6vectorIiSaIiEED2Ev.exit463, label %bb.cj

bb.cj:                                            ; preds = %.body423
  %i.sj = ptrtoint ptr %.sroa.14.0 to i64
  %i.sk = ptrtoint ptr %.sroa.0533.0 to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.0, i64 noundef %i.sl) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit463

_ZNSt6vectorIiSaIiEED2Ev.exit463:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %.body423, %bb.cj
  %.pn130.pn570 = phi { ptr, i32 } [ %.pn130.pn, %bb.cj ], [ %.pn130.pn, %.body423 ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417 ]
  %i.sm = load ptr, ptr %26, align 8, !tbaa !66   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.jv
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit463
  %i.so = load i64, ptr %i.jv, align 8, !tbaa !69
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %24)
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn570, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %bb.ck ], [ %i.nj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

._crit_edge.i.i467:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.sq = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.sq, ptr %34, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.sq, ptr noundef nonnull align 1 dereferenceable(14) @.str.288, i64 14, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 14, ptr %i.sr, align 8, !tbaa !65
  %i.ss = getelementptr inbounds nuw i8, ptr %34, i64 30
  store i8 0, ptr %i.ss, align 2, !tbaa !69
  br label %.lr.ph.i.i.i.i472

.lr.ph.i.i.i.i472:                                ; preds = %._crit_edge.i.i467, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478
  %.012.i.i.i.i473 = phi ptr [ %.1.i.i.i.i483, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478 ], [ %i.he, %._crit_edge.i.i467 ] ; 4 uses
  %.0811.i.i.i.i474 = phi ptr [ %.19.i.i.i.i480, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478 ], [ %i.be, %._crit_edge.i.i467 ]
  %i.st = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i473, i64 40
  %i.su = load i64, ptr %i.st, align 8, !tbaa !65 ; 3 uses
  %i.sv = icmp eq i64 %i.su, 0
  br i1 %i.sv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i496, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i476

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i476: ; preds = %.lr.ph.i.i.i.i472
  %.sroa.speculated.i.i.i.i.i.i.i475 = call i64 @llvm.umin.i64(i64 %i.su, i64 14)
  %i.sw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i473, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !66
  %i.sy = call i32 @memcmp(ptr noundef %i.sx, ptr noundef nonnull %i.sq, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i475) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i477 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i.i.i.i.i.i477, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i496, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i496: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i476, %.lr.ph.i.i.i.i472
  %i.sz = add i64 %i.su, -14
  %spec.select7.i.i.i.i.i.i.i.i497 = call i64 @llvm.smax.i64(i64 %i.sz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i498 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i497, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i499 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i498 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i496, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i476
  %.0.i.i.i.i.i.i.i479 = phi i32 [ %i.sy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i476 ], [ %.0.i6.i.i.i.i.i.i.i499, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i496 ]
  %i.ta = icmp slt i32 %.0.i.i.i.i.i.i.i479, 0    ; 2 uses
  %.19.i.i.i.i480 = select i1 %i.ta, ptr %.0811.i.i.i.i474, ptr %.012.i.i.i.i473 ; 4 uses
  %.1.in.v.i.i.i.i481 = select i1 %i.ta, i64 24, i64 16
  %.1.in.i.i.i.i482 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i473, i64 %.1.in.v.i.i.i.i481
  %.1.i.i.i.i483 = load ptr, ptr %.1.in.i.i.i.i482, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i484 = icmp eq ptr %.1.i.i.i.i483, null
  br i1 %.not.i.i.i.i484, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i485, label %.lr.ph.i.i.i.i472, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i485: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i478
  %i.tb = icmp eq ptr %.19.i.i.i.i480, %i.be
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.thread, label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i485
  %i.tc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i480, i64 40
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !65 ; 3 uses
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i492, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i487

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i487: ; preds = %bb.cm
  %.sroa.speculated.i.i.i.i.i.i486 = call i64 @llvm.umin.i64(i64 %i.td, i64 14)
  %i.tf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i480, i64 32
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !66
  %i.th = call i32 @memcmp(ptr noundef nonnull %i.sq, ptr noundef %i.tg, i64 noundef %.sroa.speculated.i.i.i.i.i.i486) #28 ; 2 uses
  %.not.i.i.i.i.i.i488 = icmp eq i32 %i.th, 0
  br i1 %.not.i.i.i.i.i.i488, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i492, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i492: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i487, %bb.cm
  %i.ti = sub i64 14, %i.td
  %spec.select7.i.i.i.i.i.i.i493 = call i64 @llvm.smax.i64(i64 %i.ti, i64 -2147483648)
  %.08.i.i.i.i.i.i.i494 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i493, i64 2147483647)
  %.0.i6.i.i.i.i.i.i495 = trunc nsw i64 %.08.i.i.i.i.i.i.i494 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i487, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i492
  %.0.i.i.i.i.i.i490 = phi i32 [ %i.th, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i487 ], [ %.0.i6.i.i.i.i.i.i495, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i492 ]
  %i.tj = icmp sgt i32 %.0.i.i.i.i.i.i490, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br i1 %i.tj, label %._crit_edge.i.i504, label %bb.cp

._crit_edge.i.i504:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.tk = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.tk, ptr %35, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.tk, ptr noundef nonnull align 1 dereferenceable(14) @.str.288, i64 14, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 14, ptr %i.tl, align 8, !tbaa !65
  %i.tm = getelementptr inbounds nuw i8, ptr %35, i64 30
  store i8 0, ptr %i.tm, align 2, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.tn = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.tn, ptr %36, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.tn, ptr noundef nonnull align 1 dereferenceable(3) @.str.287, i64 3, i1 false)
  %i.to = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 3, ptr %i.to, align 8, !tbaa !65
  %i.tp = getelementptr inbounds nuw i8, ptr %36, i64 19
  store i8 0, ptr %i.tp, align 1, !tbaa !69
  invoke void @_ZN2cv3dnn14dnn5_v2026060517replaceLayerParamERNS1_11LayerParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i504
  %i.tq = load ptr, ptr %36, align 8, !tbaa !66   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.tn
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %bb.cn
  %i.ts = load i64, ptr %i.tn, align 8, !tbaa !69
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.tu = load ptr, ptr %35, align 8, !tbaa !66   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.tk
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
  %i.tw = load i64, ptr %i.tk, align 8, !tbaa !69
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i.i504
  %i.ty = landingpad { ptr, i32 }
          cleanup
  %i.tz = load ptr, ptr %36, align 8, !tbaa !66   ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.tn
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521: ; preds = %bb.co
  %i.ub = load i64, ptr %i.tn, align 8, !tbaa !69
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.ud = load ptr, ptr %35, align 8, !tbaa !66   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.tk
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523
  %i.uf = load i64, ptr %i.tk, align 8, !tbaa !69
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit236

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  call void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter8addLayerERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoEi(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 2147483647)
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit236:                 ; preds = %.body222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn99, %.body222 ], [ %.pn130.pn.pn.pn, %bb.cl ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.pn88.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  resume { ptr, i32 } %.pn138
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter14parseTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %12 = alloca %"class.std::vector", align 8      ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.std::allocator.66", align 1 ; 4 uses
  %15 = alloca %"class.std::vector", align 8      ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.50, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.e, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.f, %._crit_edge.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 5)
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = call i32 @memcmp(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = add i64 %i.h, -5
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.n, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65   ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 5)
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.u = call i32 @memcmp(ptr noundef nonnull %i.a, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.a
  %i.v = sub i64 5, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.y = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit unwind label %bb.g

_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit: ; preds = %bb.b
  %i.z = icmp eq i64 %i.y, 1
  %i.aa = select i1 %i.z, ptr @.str.289, ptr @.str.211 ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.ab = icmp eq ptr %.pre, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !69
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.0.i214 = phi ptr [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %_ZNK2cv3dnn14dnn5_v202606054Dict3getIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_.exit ], [ @.str.211, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606059DictValueESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ @.str.211, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ @.str.211, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i214) #28
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef %i.ag, ptr noundef nonnull %.0.i214, i64 noundef %i.ah) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !71
  store i32 1836213616, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.ak, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.al, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.am, ptr noundef nonnull align 1 dereferenceable(5) @.str.213, i64 5, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.an, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.ao, align 1, !tbaa !69
  invoke void @_ZN2cv3dnn14dnn5_v2026060517replaceLayerParamERNS1_11LayerParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.am
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.c
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !69
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.at = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aj
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !69
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ax, ptr %6, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ax, ptr noundef nonnull align 1 dereferenceable(5) @.str.213, i64 5, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.ay, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.az, align 1, !tbaa !69
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not10.i.i.i.i74 = icmp eq ptr %i.ba, null
  br i1 %.not10.i.i.i.i74, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i81
  %.012.i.i.i.i76 = phi ptr [ %.1.i.i.i.i86, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i81 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 4 uses
  %.0811.i.i.i.i77 = phi ptr [ %.19.i.i.i.i83, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i81 ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i76, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i97, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i79

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i79: ; preds = %.lr.ph.i.i.i.i75
  %.sroa.speculated.i.i.i.i.i.i.i78 = call i64 @llvm.umin.i64(i64 %i.bc, i64 5)
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i76, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = call i32 @memcmp(ptr noundef %i.bf, ptr noundef nonnull %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i78) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i80 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i80, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i97, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i81

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i97: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i79, %.lr.ph.i.i.i.i75
  %i.bh = add i64 %i.bc, -5
  %spec.select7.i.i.i.i.i.i.i.i98 = call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i99 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i98, i64 2147483647)
end_hunk_2
