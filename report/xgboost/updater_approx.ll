Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_approx?download=true
inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE:bb.a
  br label %bb.w

bb.t:                                             ; preds = %.noexc63, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.v unwind label %bb.cq

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cp

bb.w:                                             ; preds = %bb.s, %._crit_edge
  %i.cg = phi ptr [ %i.by, %bb.s ], [ %i.s, %._crit_edge ]
  %i.ch = phi ptr [ %i.bz, %bb.s ], [ %i.t, %._crit_edge ]
  %i.ci = phi ptr [ %.pre151, %bb.s ], [ %i.x, %._crit_edge ]
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !622
  %i.ck = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !103
  %i.cm = sext i32 %i.cl to i64
  %i.cn = udiv i64 %i.ck, %i.cm
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !481
  %i.cp = load ptr, ptr %5, align 8, !tbaa !584
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %7, ptr %11, align 8, !tbaa !776
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree13HistEvaluator14EvaluateSplitsERKNS3_21BoundedHistCollectionERKNS0_13HistogramCutsENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS3_14CPUExpandEntryESaISG_EEEUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %.sroa.speculated)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !103
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !481 ; 2 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !584   ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = sdiv exact i64 %i.da, 88
  %i.dc = mul i64 %i.db, %i.cv                    ; 3 uses
  %i.dd = icmp ugt i64 %i.dc, 104811045873349725
  br i1 %i.dd, label %bb.z, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
          to label %.noexc74 unwind label %bb.af

.noexc74:                                         ; preds = %bb.z
  unreachable

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i69 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i69, label %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i70

_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %12, align 8
  br label %bb.aa

.lr.ph.preheader.i.i.i.i.i70:                     ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.de = mul i64 %i.da, %i.cv                    ; 3 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #36
          to label %.noexc75 unwind label %bb.af  ; 4 uses

.noexc75:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i70
  store ptr %i.df, ptr %12, align 8, !tbaa !584
  %i.dg = getelementptr inbounds nuw [88 x i8], ptr %i.df, i64 %i.dc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.de, i1 false)
  %scevgep.i.i.i.i.i71 = getelementptr i8, ptr %i.df, i64 %i.de
  %.pre152 = load ptr, ptr %i.e, align 8, !tbaa !481
  %.pre153 = load ptr, ptr %5, align 8, !tbaa !584
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc75, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.dh = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre153, %.noexc75 ] ; 2 uses
  %i.di = phi ptr [ %i.cw, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre152, %.noexc75 ] ; 2 uses
  %.sink.i72 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.dg, %.noexc75 ]
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i71, %.noexc75 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %.sink.i72, ptr %i.dk, align 8, !tbaa !483
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.dj, align 8, !tbaa !481
  %.not140 = icmp ne ptr %i.di, %i.dh
  %i.dl = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  %or.cond = select i1 %.not140, i1 %i.dm, i1 false
  br i1 %or.cond, label %.preheader123, label %._crit_edge134

.preheader123:                                    ; preds = %bb.aa, %._crit_edge132
  %i.dn = phi ptr [ %i.en, %._crit_edge132 ], [ %i.dh, %bb.aa ]
  %i.do = phi ptr [ %i.eo, %._crit_edge132 ], [ %i.di, %bb.aa ]
  %i.dp = phi i32 [ %i.ep, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 2 uses
  %i.dq = phi i32 [ %i.eq, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 3 uses
  %.037133 = phi i64 [ %i.er, %._crit_edge132 ], [ 0, %bb.aa ] ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph131, label %._crit_edge132

._crit_edge134:                                   ; preds = %._crit_edge132, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !619, !noalias !778
  %i.dv = icmp eq i16 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge134
  %i.dx = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc77 unwind label %bb.bn

.noexc77:                                         ; preds = %bb.ab
  store ptr %i.dx, ptr %13, align 8, !tbaa !781, !alias.scope !778
  %i.dy = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc78 unwind label %bb.bn

.noexc78:                                         ; preds = %.noexc77
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !783, !alias.scope !778
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ba unwind label %bb.bn

bb.ac:                                            ; preds = %._crit_edge134
  %i.ec = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc80 unwind label %bb.bn

.noexc80:                                         ; preds = %bb.ac
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !230, !noalias !778
  store ptr %i.ed, ptr %13, align 8, !tbaa !781, !alias.scope !778
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc81 unwind label %bb.bn

.noexc81:                                         ; preds = %.noexc80
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !745, !noalias !778
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !783, !alias.scope !778
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %.noexc82 unwind label %bb.bn

.noexc82:                                         ; preds = %.noexc81
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !745, !noalias !778
  br label %bb.ba

bb.ad:                                            ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ae:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.co

bb.af:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i70, %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge132.loopexit:                          ; preds = %bb.az
  %.pre155 = load ptr, ptr %i.e, align 8, !tbaa !481
  %.pre156 = load ptr, ptr %5, align 8, !tbaa !584
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %._crit_edge132.loopexit, %.preheader123
  %i.en = phi ptr [ %.pre156, %._crit_edge132.loopexit ], [ %i.dn, %.preheader123 ] ; 2 uses
  %i.eo = phi ptr [ %.pre155, %._crit_edge132.loopexit ], [ %i.do, %.preheader123 ] ; 2 uses
  %i.ep = phi i32 [ %i.hd, %._crit_edge132.loopexit ], [ %i.dp, %.preheader123 ]
  %i.eq = phi i32 [ %i.hd, %._crit_edge132.loopexit ], [ %i.dq, %.preheader123 ]
  %i.er = add nuw i64 %.037133, 1                 ; 2 uses
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 88
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %.preheader123, label %._crit_edge134, !llvm.loop !784

.lr.ph131:                                        ; preds = %.preheader123, %bb.az
  %i.ex = phi i32 [ %i.hd, %bb.az ], [ %i.dp, %.preheader123 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 0, %.preheader123 ] ; 2 uses
  %i.ey = phi i32 [ %i.hd, %bb.az ], [ %i.dq, %.preheader123 ]
  %i.ez = load ptr, ptr %5, align 8, !tbaa !584
  %i.fa = getelementptr inbounds nuw [88 x i8], ptr %i.ez, i64 %.037133 ; 6 uses
  %15 = sext i32 %i.ey to i64
  %i.fb = mul i64 %.037133, %15
  %i.fc = load ptr, ptr %12, align 8, !tbaa !584
  %i.fd = getelementptr [88 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = getelementptr [88 x i8], ptr %i.fd, i64 %indvars.iv ; 8 uses
  %i.ff = load i64, ptr %i.fa, align 8
  store i64 %i.ff, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr noundef nonnull align 8 dereferenceable(80) %i.fh, i64 12, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph131
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !484
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !475 ; 9 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 12 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !477
  %i.fs = load ptr, ptr %i.fi, align 8, !tbaa !475 ; 5 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ugt i64 %i.fp, %i.fv
  br i1 %i.fw, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.fx = icmp ugt i64 %i.fp, 9223372036854775804
  br i1 %i.fx, label %bb.ai, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, !prof !104

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc96 unwind label %.loopexit.split-lp125

.noexc96:                                         ; preds = %bb.ai
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.ah
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #36
          to label %.noexc97 unwind label %.loopexit124 ; 4 uses

.noexc97:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.fz = icmp samesign ugt i64 %i.fp, 4
  br i1 %i.fz, label %bb.aj, label %bb.ak, !prof !136

bb.aj:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %i.fm, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.ak:                                            ; preds = %.noexc97
  %i.ga = icmp eq i64 %i.fp, 4
  br i1 %i.ga, label %bb.al, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.gb = load i32, ptr %i.fm, align 4, !tbaa !103
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !103
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.gc = load ptr, ptr %i.fi, align 8, !tbaa !475 ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i95, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !477
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gg) #37
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  store ptr %i.fy, ptr %i.fi, align 8, !tbaa !475
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store ptr %i.gh, ptr %i.fq, align 8, !tbaa !477
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.an:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !484 ; 3 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fu                    ; 5 uses
  %.not24.i = icmp ult i64 %i.gl, %i.fp
  br i1 %.not24.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = icmp sgt i64 %i.fp, 4
  br i1 %i.gm, label %bb.ap, label %bb.aq, !prof !136

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fs, ptr align 4 %i.fm, i64 %i.fp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.gn = icmp eq i64 %i.fp, 4
  br i1 %i.gn, label %bb.ar, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.go = load i32, ptr %i.fm, align 4, !tbaa !103
  store i32 %i.go, ptr %i.fs, align 4, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.as:                                            ; preds = %bb.an
  %i.gp = icmp sgt i64 %i.gl, 4
  br i1 %i.gp, label %bb.at, label %bb.au, !prof !136

bb.at:                                            ; preds = %bb.as
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fs, ptr align 4 %i.fm, i64 %i.gl, i1 false)
  %.pre.i = load ptr, ptr %i.fj, align 8, !tbaa !475
  %.pre25.i = load ptr, ptr %i.gi, align 8, !tbaa !484 ; 2 uses
  %.pre26.i = load ptr, ptr %i.fi, align 8, !tbaa !475
  %.pre27.i = load ptr, ptr %i.fk, align 8, !tbaa !484
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gq = icmp eq i64 %i.gl, 4
  br i1 %i.gq, label %bb.av, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gr = load i32, ptr %i.fm, align 4, !tbaa !103
  store i32 %i.gr, ptr %i.fs, align 4, !tbaa !103
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.av, %bb.au, %bb.at
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.at ], [ %i.fn, %bb.au ], [ %i.fn, %bb.av ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.at ], [ %i.gl, %bb.au ], [ 4, %bb.av ]
  %i.gs = phi ptr [ %.pre25.i, %bb.at ], [ %i.gj, %bb.au ], [ %i.gj, %bb.av ] ; 2 uses
  %i.gt = phi ptr [ %.pre.i, %bb.at ], [ %i.fm, %bb.au ], [ %i.fm, %bb.av ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.pre-phi32.i ; 3 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %.pre-phi34.i, %i.gv            ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, 4
  br i1 %i.gx, label %bb.aw, label %bb.ax, !prof !136

bb.aw:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gs, ptr align 4 %i.gu, i64 %i.gw, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ax:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.gy = icmp eq i64 %i.gw, 4
  br i1 %i.gy, label %bb.ay, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i32, ptr %i.gu, align 4, !tbaa !103
  store i32 %i.gz, ptr %i.gs, align 4, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar, %bb.aq, %bb.ap, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.ha = load ptr, ptr %i.fi, align 8, !tbaa !475
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.fp
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !484
  %.pre154 = load i32, ptr %i.a, align 4, !tbaa !103
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph131, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i
  %i.hd = phi i32 [ %i.ex, %.lr.ph131 ], [ %.pre154, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.he, ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i64 40, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = sext i32 %i.hd to i64
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %.lr.ph131, label %._crit_edge132.loopexit, !llvm.loop !786

.loopexit124:                                     ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp125:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ba:                                            ; preds = %.noexc82, %.noexc78
  %.sink4.i = phi ptr [ %i.ej, %.noexc82 ], [ %i.eb, %.noexc78 ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sink.i76 = load i32, ptr %.sink.in.i, align 4, !tbaa !612, !noalias !778
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !614, !range !123, !noalias !778, !noundef !124
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sink4.i, ptr %i.hi, align 8, !tbaa !787, !alias.scope !778
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 %.sink3.i, ptr %i.hj, align 8, !tbaa !788, !alias.scope !778
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.sink.i76, ptr %i.hk, align 4, !tbaa !789, !alias.scope !778
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit unwind label %bb.bo

_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit:   ; preds = %bb.ba
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE:bb.a
  %i.if = load ptr, ptr %12, align 8, !tbaa !584  ; 3 uses
  %i.ig = load ptr, ptr %i.dj, align 8, !tbaa !481 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.if, %i.ig
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge139, %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.io, %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i ], [ %i.if, %._crit_edge139 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !475 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !477
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #37
  br label %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.io, %i.ig
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !585

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !584
  br label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge139
  %i.ip = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.if, %._crit_edge139 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i
  %i.iq = load ptr, ptr %i.dk, align 8, !tbaa !483
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.it) #37
  br label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !191 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !194
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.be, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.jb = load ptr, ptr %10, align 8, !tbaa !803  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i1.i, label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !806
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #37
  br label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit

_ZN7xgboost6common14BlockedSpace2dD2Ev.exit:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.jh = load ptr, ptr %7, align 8, !tbaa !768   ; 3 uses
  %i.ji = load ptr, ptr %i.cg, align 8, !tbaa !772 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.05.i.i.i89 = phi ptr [ %i.ka, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i ], [ %i.jh, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i88
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.jl, align 8, !tbaa !67
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 0, ptr %i.jp, align 4, !tbaa !69
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !60
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #21, !inline_history !807
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !60
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #21, !inline_history !807
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jo, %bb.bj ], [ %i.jy, %bb.bk ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jz, label %bb.bl, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, !prof !104

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bh, %.lr.ph.i.i.i88
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.ka, %i.ji
  br i1 %.not.i.i.i90, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i88, !llvm.loop !808

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.pr.i91 = load ptr, ptr %7, align 8, !tbaa !768
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit
  %i.kb = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.jh, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 3 uses
  %.not.i.i1.i92 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i1.i92, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.kc = load ptr, ptr %i.ch, align 8, !tbaa !771
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #37
  br label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.bn:                                            ; preds = %.noexc81, %.noexc80, %bb.ac, %.noexc78, %.noexc77, %bb.ab
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bo:                                            ; preds = %bb.ba
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bp:                                            ; preds = %_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cl

._crit_edge137.loopexit:                          ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %.pre160 = load ptr, ptr %i.e, align 8, !tbaa !481
  %.pre161 = load ptr, ptr %5, align 8, !tbaa !584
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.preheader
  %i.kj = phi ptr [ %.pre161, %._crit_edge137.loopexit ], [ %i.ia, %.preheader ] ; 2 uses
  %i.kk = phi ptr [ %.pre160, %._crit_edge137.loopexit ], [ %i.ib, %.preheader ] ; 2 uses
  %i.kl = phi i32 [ %i.nu, %._crit_edge137.loopexit ], [ %i.ic, %.preheader ]
  %i.km = phi i32 [ %i.nu, %._crit_edge137.loopexit ], [ %i.id, %.preheader ]
  %i.kn = add nuw i64 %.035138, 1                 ; 2 uses
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 88
  %i.ks = icmp ult i64 %i.kn, %i.kr
  br i1 %i.ks, label %.preheader, label %._crit_edge139, !llvm.loop !809

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.kt = phi i32 [ %i.ic, %.lr.ph136.preheader ], [ %i.nu, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 3 uses
  %i.ku = phi ptr [ %.pre158, %.lr.ph136.preheader ], [ %i.nv, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 4 uses
  %indvars.iv145 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next146, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 2 uses
  %i.kv = phi i32 [ %i.id, %.lr.ph136.preheader ], [ %i.nu, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ]
  %i.kw = load ptr, ptr %5, align 8, !tbaa !584
  %i.kx = getelementptr inbounds nuw [88 x i8], ptr %i.kw, i64 %.035138 ; 11 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %16 = sext i32 %i.kv to i64
  %i.kz = mul i64 %.035138, %16
  %i.la = getelementptr [88 x i8], ptr %i.ku, i64 %i.kz
  %i.lb = getelementptr [88 x i8], ptr %i.la, i64 %indvars.iv145 ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !570 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !576 ; 2 uses
  %i.lg = call float @llvm.fabs.f32(float %i.ld)
  %i.lh = fcmp oeq float %i.lg, +inf
  br i1 %i.lh, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph136
  %i.li = and i32 %i.lf, 2147483647
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 12 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !576
  %i.ll = and i32 %i.lk, 2147483647
  %.not.i.i93 = icmp samesign ugt i32 %i.ll, %i.li
  %i.lm = load float, ptr %i.ky, align 8, !tbaa !570 ; 2 uses
  br i1 %.not.i.i93, label %.split.i, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i:                                         ; preds = %bb.bq
  %i.ln = fcmp ule float %i.lm, %i.ld
  br i1 %i.ln, label %bb.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.bq
  %i.lo = fcmp ogt float %i.ld, %i.lm
  br i1 %i.lo, label %bb.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.br:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i
  store float %i.ld, ptr %i.ky, align 8, !tbaa !570
  store i32 %i.lf, ptr %i.lj, align 4, !tbaa !576
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lq = load float, ptr %i.lp, align 8, !tbaa !577
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store float %i.lq, ptr %i.lr, align 8, !tbaa !577
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !810, !range !123, !noundef !124
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  store i8 %i.lt, ptr %i.lu, align 8, !tbaa !810
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 24 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 5 uses
  %.not.i98 = icmp eq ptr %i.lb, %i.kx
  br i1 %.not.i98, label %.noexc94, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !484
  %i.lz = load ptr, ptr %i.lv, align 8, !tbaa !475 ; 9 uses
  %i.ma = ptrtoint ptr %i.ly to i64               ; 3 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 12 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.kx, i64 40 ; 3 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !477
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !475 ; 5 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = icmp ugt i64 %i.mc, %i.mi
  br i1 %i.mj, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.mk = icmp ugt i64 %i.mc, 9223372036854775804
  br i1 %i.mk, label %bb.bu, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112, !prof !104

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.bu
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112: ; preds = %bb.bt
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #36
          to label %.noexc117 unwind label %.loopexit ; 4 uses

.noexc117:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112
  %i.mm = icmp samesign ugt i64 %i.mc, 4
  br i1 %i.mm, label %bb.bv, label %bb.bw, !prof !136

bb.bv:                                            ; preds = %.noexc117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ml, ptr align 4 %i.lz, i64 %i.mc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

bb.bw:                                            ; preds = %.noexc117
  %i.mn = icmp eq i64 %i.mc, 4
  br i1 %i.mn, label %bb.bx, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

bb.bx:                                            ; preds = %bb.bw
  %i.mo = load i32, ptr %i.lz, align 4, !tbaa !103
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !103
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113: ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.mp = load ptr, ptr %i.lw, align 8, !tbaa !475 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i114, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113
  %i.mq = load ptr, ptr %i.md, align 8, !tbaa !477
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mt) #37
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115: ; preds = %bb.by, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113
  store ptr %i.ml, ptr %i.lw, align 8, !tbaa !475
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mc
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !477
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.bz:                                            ; preds = %bb.bs
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kx, i64 32 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !484 ; 3 uses
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.mh                    ; 5 uses
  %.not24.i99 = icmp ult i64 %i.my, %i.mc
  br i1 %.not24.i99, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mz = icmp sgt i64 %i.mc, 4
  br i1 %i.mz, label %bb.cb, label %bb.cc, !prof !136

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mf, ptr align 4 %i.lz, i64 %i.mc, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cc:                                            ; preds = %bb.ca
  %i.na = icmp eq i64 %i.mc, 4
  br i1 %i.na, label %bb.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cd:                                            ; preds = %bb.cc
  %i.nb = load i32, ptr %i.lz, align 4, !tbaa !103
  store i32 %i.nb, ptr %i.mf, align 4, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.ce:                                            ; preds = %bb.bz
  %i.nc = icmp sgt i64 %i.my, 4
  br i1 %i.nc, label %bb.cf, label %bb.cg, !prof !136

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mf, ptr align 4 %i.lz, i64 %i.my, i1 false)
  %.pre.i104 = load ptr, ptr %i.lv, align 8, !tbaa !475
  %.pre25.i105 = load ptr, ptr %i.mv, align 8, !tbaa !484 ; 2 uses
  %.pre26.i106 = load ptr, ptr %i.lw, align 8, !tbaa !475
  %.pre27.i107 = load ptr, ptr %i.lx, align 8, !tbaa !484
  %.pre28.i108 = ptrtoint ptr %.pre25.i105 to i64
  %.pre29.i109 = ptrtoint ptr %.pre26.i106 to i64
  %.pre31.i110 = sub i64 %.pre28.i108, %.pre29.i109
  %.pre33.i111 = ptrtoint ptr %.pre27.i107 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

bb.cg:                                            ; preds = %bb.ce
  %i.nd = icmp eq i64 %i.my, 4
  br i1 %i.nd, label %bb.ch, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

bb.ch:                                            ; preds = %bb.cg
  %i.ne = load i32, ptr %i.lz, align 4, !tbaa !103
  store i32 %i.ne, ptr %i.mf, align 4, !tbaa !103
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101:            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pre-phi34.i102 = phi i64 [ %.pre33.i111, %bb.cf ], [ %i.ma, %bb.cg ], [ %i.ma, %bb.ch ]
  %.pre-phi32.i103 = phi i64 [ %.pre31.i110, %bb.cf ], [ %i.my, %bb.cg ], [ 4, %bb.ch ]
  %i.nf = phi ptr [ %.pre25.i105, %bb.cf ], [ %i.mw, %bb.cg ], [ %i.mw, %bb.ch ] ; 2 uses
  %i.ng = phi ptr [ %.pre.i104, %bb.cf ], [ %i.lz, %bb.cg ], [ %i.lz, %bb.ch ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.pre-phi32.i103 ; 3 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %.pre-phi34.i102, %i.ni         ; 3 uses
  %i.nk = icmp sgt i64 %i.nj, 4
  br i1 %i.nk, label %bb.ci, label %bb.cj, !prof !136

bb.ci:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.nf, ptr align 4 %i.nh, i64 %i.nj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cj:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101
  %i.nl = icmp eq i64 %i.nj, 4
  br i1 %i.nl, label %bb.ck, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.ck:                                            ; preds = %bb.cj
  %i.nm = load i32, ptr %i.nh, align 4, !tbaa !103
  store i32 %i.nm, ptr %i.nf, align 4, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cd, %bb.cc, %bb.cb, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115
  %i.nn = load ptr, ptr %i.lw, align 8, !tbaa !475
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.mc
  %i.np = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  store ptr %i.no, ptr %i.np, align 8, !tbaa !484
  br label %.noexc94

.noexc94:                                         ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100, %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i64 16, i1 false), !tbaa.struct !758
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i64 16, i1 false), !tbaa.struct !758
  %.pre157 = load ptr, ptr %12, align 8, !tbaa !584
end_hunk_1
begin_hunk_2_@_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE:bb.a
  br i1 %i.al, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.am = phi <2 x double> [ %i.bj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.an = load <2 x double>, ptr %.08.i, align 8, !tbaa !708
  %i.ao = fadd <2 x double> %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !708
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 32
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !708
  %i.au = fadd <2 x double> %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i, i64 48
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !708
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i, i64 64
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !708
  %i.ba = fadd <2 x double> %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i, i64 80
  %i.bc = load <2 x double>, ptr %i.bb, align 8, !tbaa !708
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i, i64 96
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !708
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i, i64 112
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !708
  %i.bj = fadd <2 x double> %i.bg, %i.bi          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i, i64 128 ; 2 uses
  %.not.i57.7 = icmp eq ptr %i.bk, %i.ad
  br i1 %.not.i57.7, label %.loopexit, label %.lr.ph.i, !llvm.loop !2200

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %i.bl = phi <2 x double> [ zeroinitializer, %bb.g ], [ %.lcssa149.unr, %.lr.ph.i.prol.loopexit ], [ %i.bj, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bn = sext i32 %5 to i64
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !203
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn ; 4 uses
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !708
  %i.br = fsub <2 x double> %i.bq, %i.bl
  %.not113 = icmp eq i32 %i.i, %i.m
  br i1 %.not113, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = or i32 %4, -2147483648                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bw = sext i32 %i.i to i64                    ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.bw)
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65
  %i.bx = trunc nuw i8 %i.do to i1
  br i1 %i.bx, label %bb.t, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.i:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65
  %i.bz = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dn, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 3 uses
  %i.ca = phi i8 [ 0, %.lr.ph ], [ %i.do, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 3 uses
  %i.cb = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dp, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 3 uses
  %i.cc = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 3 uses
  %i.cd = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dr, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 5 uses
  %i.ce = phi i32 [ 0, %.lr.ph ], [ %i.ds, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65 ] ; 4 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !745
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !141 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %umax
  br i1 %exitcond.not, label %bb.j, label %bb.k, !prof !104

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #38
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.cj = load <2 x double>, ptr %i.ci, align 8, !tbaa !708 ; 4 uses
  %i.ck = load <2 x double>, ptr %i.bp, align 8, !tbaa !708
  %i.cl = fsub <2 x double> %i.ck, %i.cj          ; 2 uses
  %i.cm = load ptr, ptr %i.bs, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store <2 x double> %i.cl, ptr %9, align 16, !tbaa !708
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store <2 x double> %i.cj, ptr %10, align 16, !tbaa !708
  %i.cn = invoke noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.cm, i32 noundef %5, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.co = load float, ptr %i.bt, align 8, !tbaa !759
  %i.cp = fsub float %i.cn, %i.co                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cq = call float @llvm.fabs.f32(float %i.cp)
  %i.cr = fcmp oeq float %i.cq, +inf
  br i1 %i.cr, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = and i32 %i.ce, 2147483647
  %.not.i.i = icmp ugt i32 %i.cs, %4
  br i1 %.not.i.i, label %.split.i60, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i60:                                       ; preds = %bb.m
  %i.ct = fcmp ule float %i.cd, %i.cp
  br i1 %i.ct, label %bb.n, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.m
  %i.cu = fcmp ogt float %i.cp, %i.cd
  br i1 %i.cu, label %bb.n, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

bb.n:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i60
  store float %i.cp, ptr %8, align 8, !tbaa !570
  store i32 %i.bu, ptr %i.o, align 4, !tbaa !576
  store float %i.ch, ptr %i.p, align 8, !tbaa !577
  store i8 1, ptr %i.s, align 8, !tbaa !810
  store <2 x double> %i.cl, ptr %i.r, align 8, !tbaa !708
  store <2 x double> %i.cj, ptr %i.bv, align 8, !tbaa !708
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit: ; preds = %bb.n, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i60, %bb.l
  %i.cv = phi float [ %i.ch, %bb.n ], [ %i.bz, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.bz, %.split.i60 ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cw = phi i8 [ 1, %bb.n ], [ %i.ca, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ca, %.split.i60 ], [ %i.ca, %bb.l ] ; 3 uses
  %i.cx = phi float [ %i.cp, %bb.n ], [ %i.cb, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cb, %.split.i60 ], [ %i.cb, %bb.l ] ; 7 uses
  %i.cy = phi i32 [ %i.bu, %bb.n ], [ %i.cc, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cc, %.split.i60 ], [ %i.cc, %bb.l ] ; 6 uses
  %i.cz = phi float [ %i.cp, %bb.n ], [ %i.cd, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cd, %.split.i60 ], [ %i.cd, %bb.l ]
  %i.da = phi i32 [ %i.bu, %bb.n ], [ %i.ce, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ce, %.split.i60 ], [ %i.ce, %bb.l ]
  %i.db = fadd <2 x double> %i.br, %i.cj          ; 3 uses
  %i.dc = load <2 x double>, ptr %i.bp, align 8, !tbaa !708
  %i.dd = fsub <2 x double> %i.dc, %i.db          ; 2 uses
  %i.de = load ptr, ptr %i.bs, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store <2 x double> %i.dd, ptr %11, align 16, !tbaa !708
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store <2 x double> %i.db, ptr %12, align 16, !tbaa !708
  %i.df = invoke noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.de, i32 noundef %5, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dg = load float, ptr %i.bt, align 8, !tbaa !759
  %i.dh = fsub float %i.df, %i.dg                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp oeq float %i.di, +inf
  br i1 %i.dj, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = and i32 %i.cy, 2147483647
  %.not.i.i61 = icmp ugt i32 %i.dk, %4
  br i1 %.not.i.i61, label %.split.i64, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62

.split.i64:                                       ; preds = %bb.p
  %i.dl = fcmp ule float %i.cx, %i.dh
  br i1 %i.dl, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62: ; preds = %bb.p
  %i.dm = fcmp ogt float %i.dh, %i.cx
  br i1 %i.dm, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

bb.q:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62, %.split.i64
  store float %i.dh, ptr %8, align 8, !tbaa !570
  store i32 %4, ptr %i.o, align 4, !tbaa !576
  store float %i.ch, ptr %i.p, align 8, !tbaa !577
  store i8 1, ptr %i.s, align 8, !tbaa !810
  store <2 x double> %i.dd, ptr %i.r, align 8, !tbaa !708
  store <2 x double> %i.db, ptr %i.bv, align 8, !tbaa !708
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65: ; preds = %bb.q, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62, %.split.i64, %bb.o
  %i.dn = phi float [ %i.ch, %bb.q ], [ %i.cv, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cv, %.split.i64 ], [ %i.cv, %bb.o ] ; 2 uses
  %i.do = phi i8 [ 1, %bb.q ], [ %i.cw, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cw, %.split.i64 ], [ %i.cw, %bb.o ] ; 2 uses
  %i.dp = phi float [ %i.dh, %bb.q ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cx, %.split.i64 ], [ %i.cx, %bb.o ] ; 2 uses
  %i.dq = phi i32 [ %4, %bb.q ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cy, %.split.i64 ], [ %i.cy, %bb.o ] ; 2 uses
  %i.dr = phi float [ %i.dh, %bb.q ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cx, %.split.i64 ], [ %i.cz, %bb.o ]
  %i.ds = phi i32 [ %4, %bb.q ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cy, %.split.i64 ], [ %i.da, %bb.o ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.m, %i.dt
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !2201

bb.r:                                             ; preds = %bb.k
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.y

bb.s:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge
  %i.dw = add nsw i32 %i.n, 1
  %13 = sext i32 %i.dw to i64
  %i.dx = uitofp i64 %13 to double
  %i.dy = fmul nnan double %i.dx, 3.125000e-02
  %i.dz = call double @llvm.ceil.f64(double %i.dy)
  %i.ea = fptoui double %i.dz to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !103
  %.not135 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not135)
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr null, i64 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 unwind label %bb.u

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117: ; preds = %bb.t
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !475 ; 2 uses
  %.pre118 = load float, ptr %i.p, align 8, !tbaa !577 ; 2 uses
  %.pre119.pre = load float, ptr %8, align 8, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.eb = fptoui float %.pre118 to i64            ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = and i64 %i.eb, 31
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ec ; 2 uses
  %i.ef = lshr exact i64 2147483648, %i.ed
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !103
  %i.ei = or i32 %i.eh, %i.eg
  store i32 %i.ei, ptr %i.ee, align 4, !tbaa !103
  %.pre120 = load i32, ptr %i.o, align 4, !tbaa !576
  br label %._crit_edge.thread

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.y

._crit_edge.thread:                               ; preds = %.loopexit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117, %._crit_edge
  %i.ek = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ null, %._crit_edge ], [ null, %.loopexit ] ; 3 uses
  %i.el = phi float [ %.pre118, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dn, %._crit_edge ], [ 0.000000e+00, %.loopexit ]
  %i.em = phi i32 [ %.pre120, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dq, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.en = phi float [ %.pre119.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dp, %._crit_edge ], [ 0.000000e+00, %.loopexit ] ; 4 uses
  %i.eo = call float @llvm.fabs.f32(float %i.en)
  %i.ep = fcmp oeq float %i.eo, +inf
  br i1 %i.ep, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread
  %i.eq = and i32 %i.em, 2147483647
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !576
  %i.et = and i32 %i.es, 2147483647
  %.not.i.i67 = icmp samesign ugt i32 %i.et, %i.eq
  %i.eu = load float, ptr %7, align 8, !tbaa !570 ; 2 uses
  br i1 %.not.i.i67, label %.split.i69, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68

.split.i69:                                       ; preds = %bb.v
  %i.ev = fcmp ule float %i.eu, %i.en
  br i1 %i.ev, label %bb.w, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68: ; preds = %bb.v
  %i.ew = fcmp ogt float %i.en, %i.eu
  br i1 %i.ew, label %bb.w, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.w:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68, %.split.i69
  store float %i.en, ptr %7, align 8, !tbaa !570
  store i32 %i.em, ptr %i.er, align 4, !tbaa !576
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.el, ptr %i.ex, align 8, !tbaa !577
  %i.ey = load i8, ptr %i.s, align 8, !tbaa !810, !range !123, !noundef !124
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.ey, ptr %i.ez, align 8, !tbaa !810
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc70 unwind label %bb.h   ; 0 uses

.noexc70:                                         ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !758
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !758
  %.pre121 = load ptr, ptr %i.q, align 8, !tbaa !475
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit: ; preds = %.noexc70, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68, %.split.i69, %._crit_edge.thread
  %i.ff = phi ptr [ %.pre121, %.noexc70 ], [ %i.ek, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68 ], [ %i.ek, %.split.i69 ], [ %i.ek, %._crit_edge.thread ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !477
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #37
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit: ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.y:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.h
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.r ], [ %i.ej, %bb.u ], [ %i.dv, %bb.s ], [ %i.by, %bb.h ]
  %i.fl = load ptr, ptr %i.q, align 8, !tbaa !475 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i71, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !477
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #37
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.xgboost::tree::SplitEntryContainer", align 8 ; 16 uses
  %11 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %12 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %13 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = sext i32 %7 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !203
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = zext i32 %6 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !475  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !103  ; 5 uses
  %i.o = add i32 %6, 1
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !103
  %i.s = sub nsw i32 %i.r, %i.n                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !592
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store float 0.000000e+00, ptr %10, align 8, !tbaa !570
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !576
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !577
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = sext i32 %i.n to i64                    ; 7 uses
  %i.ac = sext i32 %i.s to i64                    ; 3 uses
  %i.ad = icmp eq i32 %i.s, -1
  br i1 %i.ad, label %.split.i, label %bb.b

.split.i:                                         ; preds = %bb.a
  %.not8.i = icmp ult i64 %4, %i.ab
  br i1 %.not8.i, label %bb.c, label %bb.d, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.ae = add nsw i64 %i.ac, %i.ab
  %.not.i = icmp ugt i64 %i.ae, %4
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !104

bb.c:                                             ; preds = %bb.b, %.split.i
  tail call void @_ZSt9terminatev() #38
  unreachable

bb.d:                                             ; preds = %.split.i
  %i.af = sub nuw i64 %4, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ag = phi i64 [ %i.af, %bb.d ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = icmp ne ptr %5, null
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f, !prof !136

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #38
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ab
  %i.al = add i32 %i.n, -1
  %i.am = add i32 %i.al, %.sroa.speculated        ; 2 uses
  %.not139 = icmp eq i32 %i.n, %i.am
  br i1 %.not139, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ao = or i32 %6, -2147483648                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %.not48 = icmp eq i32 %i.bs, -1
  br i1 %.not48, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %i.ar = phi i8 [ 0, %.lr.ph ], [ %i.bo, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.as = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bp, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.at = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bq, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 5 uses
  %i.au = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %.037142 = phi i32 [ -1, %.lr.ph ], [ %i.bs, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bc, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ]
  %15 = sub nsw i64 %indvars.iv, %i.ab            ; 2 uses
  %i.aw = icmp ugt i64 %2, %15
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.i, !prof !136

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ag
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, label %bb.j, !prof !136

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !708
  %i.bc = fadd <2 x double> %i.av, %i.bb          ; 4 uses
  %i.bd = load <2 x double>, ptr %i.j, align 8, !tbaa !708
  %i.be = fsub <2 x double> %i.bd, %i.bc          ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store <2 x double> %i.be, ptr %11, align 16, !tbaa !708
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store <2 x double> %i.bc, ptr %12, align 16, !tbaa !708
  %i.bg = call noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.bh = load float, ptr %i.an, align 8, !tbaa !759
  %i.bi = fsub float %i.bg, %i.bh                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60
  %i.bl = and i32 %i.au, 2147483647
  %.not.i.i = icmp ugt i32 %i.bl, %6
  br i1 %.not.i.i, label %.split.i61, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i61:                                       ; preds = %bb.k
  %i.bm = fcmp ule float %i.at, %i.bi
  br i1 %i.bm, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.k
  %i.bn = fcmp ogt float %i.bi, %i.at
  br i1 %i.bn, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

bb.l:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61
  store float %i.bi, ptr %10, align 8, !tbaa !570
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !576
  store float +qnan, ptr %i.y, align 8, !tbaa !577
  store i8 1, ptr %i.ap, align 8, !tbaa !810
  store <2 x double> %i.be, ptr %i.aa, align 8, !tbaa !708
  store <2 x double> %i.bc, ptr %i.aq, align 8, !tbaa !708
  %16 = trunc nsw i64 %indvars.iv to i32
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61, %bb.l
  %i.bo = phi i8 [ 1, %bb.l ], [ %i.ar, %.split.i61 ], [ %i.ar, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ar, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bp = phi float [ +qnan, %bb.l ], [ %i.as, %.split.i61 ], [ %i.as, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.as, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bq = phi float [ %i.bi, %bb.l ], [ %i.at, %.split.i61 ], [ %i.at, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.at, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.br = phi i32 [ %i.ao, %bb.l ], [ %i.au, %.split.i61 ], [ %i.au, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.au, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bs = phi i32 [ %16, %bb.l ], [ %.037142, %.split.i61 ], [ %.037142, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %.037142, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %17 = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.am, %17
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2202

bb.m:                                             ; preds = %._crit_edge
  %i.bt = uitofp i64 %i.ac to double
  %i.bu = fmul nnan double %i.bt, 3.125000e-02
  %i.bv = call double @llvm.ceil.f64(double %i.bu)
  %i.bw = fptoui double %i.bv to i64              ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, 2305843009213693951
  br i1 %i.bx, label %.noexc62, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc62:                                         ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = shl nuw nsw i64 %i.bw, 2                ; 3 uses
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #36 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !103
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc63
  %i.cc = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc63 ] ; 8 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc63 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc63 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cc, ptr %i.z, align 8, !tbaa !475
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !484
  store ptr %.sroa.11.0, ptr %i.ce, align 8, !tbaa !477
  %i.cf = sub nsw i32 %i.bs, %i.n
  %.fr180 = freeze i32 %i.cf                      ; 4 uses
  %i.cg = add i32 %.fr180, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !103, !noalias !2203
  store i32 0, ptr %i.b, align 4, !tbaa !103, !noalias !2203
  %i.ch = icmp sgt i32 %.fr180, -1
  br i1 %i.ch, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.pr = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ci, ptr noundef nonnull @.str.110, i32 noundef 191)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.r

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.cj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.s ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.112, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !38   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !15
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cn, i64 noundef %i.cp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.u unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %.noexc64, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.r ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.y

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pr131 = load ptr, ptr %13, align 8, !tbaa !38 ; 4 uses
  %.not.i73 = icmp eq ptr %.pr131, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %.pr131, align 8, !tbaa !19 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.o, %.thread, %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.da = sext i32 %i.cg to i64                   ; 2 uses
  %.not.i.i78 = icmp ult i64 %2, %i.da
  br i1 %.not.i.i78, label %bb.w, label %bb.x, !prof !104

bb.w:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #38
  unreachable

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.x
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !745, !noalias !2206
  %invariant.gep = getelementptr [4 x i8], ptr %i.db, i64 %i.ab ; 3 uses
  %i.dc = icmp eq i32 %.fr180, 0
  br i1 %i.dc, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, %.lr.ph.split.i.preheader.new
  %.sroa.4.09.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ea, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ]
  %exitcond.not.i = icmp eq i64 %.sroa.4.09.i, %2
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !104

.split.us.i:                                      ; preds = %.lr.ph.split.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.split.i.epil.preheader
  call void @_ZSt9terminatev() #38, !noalias !2206
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %.lr.ph.split.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.4.09.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !47, !noalias !2206
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = load float, ptr %gep, align 4, !tbaa !141, !noalias !2206
  %i.dg = fptoui float %i.df to i64               ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = and i64 %i.dg, 31
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dh ; 2 uses
  %i.dk = lshr exact i64 2147483648, %i.di
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !103, !noalias !2206
  %i.dn = or i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !103, !noalias !2206
  %i.do = or disjoint i64 %.sroa.4.09.i, 1        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.do, %2
  br i1 %exitcond.not.i.1, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, !prof !104

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !47, !noalias !2206
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.1, align 4, !tbaa !141, !noalias !2206
end_hunk_2
