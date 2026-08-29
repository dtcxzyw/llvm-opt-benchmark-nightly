Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_detection_mtcnn?download=true
inline.NumInlined: 6844
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 45
begin_hunk_0_@main:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533: ; preds = %.body427
  %i.gi = load i64, ptr %i.bp, align 8, !tbaa !17
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535: ; preds = %.body427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2230

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %65, align 8, !tbaa !15   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.cd
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %bb.x
  %i.gn = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #35
  br label %bb.bqz

.body448:                                         ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i445
  %i.gp = load ptr, ptr %67, align 8, !tbaa !15   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.cl
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539: ; preds = %.body448
  %i.gr = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %.body448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2227

.body461:                                         ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i458
  %i.gt = load ptr, ptr %69, align 8, !tbaa !15   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.cz
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542: ; preds = %.body461
  %i.gv = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %.body461, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2224

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %70, align 8, !tbaa !15   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.dn
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.y
  %i.ha = load i64, ptr %i.dn, align 8, !tbaa !17
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #35
  br label %bb.bqy

.body483:                                         ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480
  %i.hc = load ptr, ptr %72, align 8, !tbaa !15   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.dv
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %.body483
  %i.he = load i64, ptr %i.dv, align 8, !tbaa !17
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %.body483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221

.body496:                                         ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493
  %i.hg = load ptr, ptr %74, align 8, !tbaa !15   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ej
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %.body496
  %i.hi = load i64, ptr %i.ej, align 8, !tbaa !17
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %.body496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501
  %i.hk = landingpad { ptr, i32 }
          cleanup
  %i.hl = load ptr, ptr %75, align 8, !tbaa !15   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ex
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %bb.z
  %i.hn = load i64, ptr %i.ex, align 8, !tbaa !17
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #35
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EED2Ev.exit2215

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = load ptr, ptr %76, align 8, !tbaa !15   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.ff
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557: ; preds = %bb.aa
  %i.hs = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit559: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i557
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #35
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EED2Ev.exit2215

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %77, align 8, !tbaa !15   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fo
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560: ; preds = %bb.ab
  %i.hx = load i64, ptr %i.fo, align 8, !tbaa !17
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #35
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EED2Ev.exit2215

.thread2709:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #35
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EED2Ev.exit2215

bb.ac:                                            ; preds = %bb.s, %bb.r
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.thread2720

bb.ad:                                            ; preds = %bb.u
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

bb.ae:                                            ; preds = %bb.v
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %79, align 8, !tbaa !15   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563: ; preds = %bb.ae
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !17
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563, %bb.ad
  %.pn243 = phi { ptr, i32 } [ %i.ib, %bb.ad ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563 ], [ %i.ic, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #35
  br label %.thread2720

bb.af:                                            ; preds = %bb.t
  %i.ii = invoke noundef double @_ZNK2cv12VideoCapture3getEi(ptr noundef nonnull align 8 dereferenceable(25) %78, i32 noundef 3)
          to label %bb.ag unwind label %bb.ba

bb.ag:                                            ; preds = %bb.af
  %i.ij = invoke noundef double @_ZNK2cv12VideoCapture3getEi(ptr noundef nonnull align 8 dereferenceable(25) %78, i32 noundef 4)
          to label %bb.ah unwind label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %202 = insertelement <2 x double> poison, double %i.ij, i64 0
  %203 = insertelement <2 x double> %202, double %i.ii, i64 1
  %204 = fptosi <2 x double> %203 to <2 x i32>
  %205 = sitofp <2 x i32> %204 to <2 x double>    ; 5 uses
  br i1 %i.fj, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i, label %217

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i: ; preds = %bb.ah
  %206 = extractelement <2 x double> %205, i64 0  ; 2 uses
  %207 = extractelement <2 x double> %205, i64 1  ; 2 uses
  %208 = fcmp olt double %207, %206
  %.sroa.speculated.i = select i1 %208, double %207, double %206 ; 2 uses
  %209 = fcmp ult double %.sroa.speculated.i, 2.400000e+01
  br i1 %209, label %_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i
  %i.ik = insertelement <2 x double> <double poison, double 5.000000e-01>, double %.sroa.speculated.i, i64 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i
  %.sroa.24.5 = phi ptr [ %.sroa.24.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.142326.1 = phi ptr [ %.sroa.142326.2, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.02318.5 = phi ptr [ %.sroa.02318.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.29.5 = phi ptr [ %.sroa.29.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 8 uses
  %.sroa.02335.5 = phi ptr [ %.sroa.02335.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 11 uses
  %i.il = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 3 uses
  %.01334.i = phi i32 [ %i.ki, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ 0, %.lr.ph.i.preheader ]
  %i.im = phi <2 x double> [ %i.kh, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %i.ik, %.lr.ph.i.preheader ] ; 3 uses
  %i.in = extractelement <2 x double> %i.im, i64 1 ; 2 uses
  %210 = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %211 = fmul <2 x double> %210, %205
  %212 = fptosi <2 x double> %211 to <2 x i32>    ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.142326.1, %.sroa.24.5
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  store double %i.in, ptr %.sroa.142326.1, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

bb.aj:                                            ; preds = %.lr.ph.i
  %i.io = ptrtoint ptr %.sroa.24.5 to i64
  %i.ip = ptrtoint ptr %.sroa.02318.5 to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 6 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775800
  br i1 %i.ir, label %bb.ak, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc566 unwind label %.loopexit.split-lp2776.loopexit.split-lp

.noexc566:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.is = ashr exact i64 %i.iq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.it = add nsw i64 %.sroa.speculated.i.i.i.i, %i.is ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %i.iv = call i64 @llvm.umin.i64(i64 %i.it, i64 1152921504606846975)
  %i.iw = select i1 %i.iu, i64 1152921504606846975, i64 %i.iv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.iw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ix = shl nuw nsw i64 %i.iw, 3
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #37
          to label %.noexc567 unwind label %.loopexit2775 ; 4 uses

.noexc567:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.iq ; 2 uses
  store double %i.in, ptr %i.iz, align 8, !tbaa !47
  %i.ja = icmp sgt i64 %i.iq, 0
  br i1 %i.ja, label %bb.al, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.al:                                            ; preds = %.noexc567
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr align 8 %.sroa.02318.5, i64 %i.iq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.al, %.noexc567
  %.not.i17.i.i.i = icmp eq ptr %.sroa.02318.5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02318.5, i64 noundef %i.iq) #36
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iw
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.ai
  %.sroa.24.6 = phi ptr [ %i.jb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.24.5, %bb.ai ] ; 4 uses
  %.pn2733 = phi ptr [ %i.iz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.142326.1, %bb.ai ]
  %.sroa.02318.6 = phi ptr [ %i.iy, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.02318.5, %bb.ai ] ; 4 uses
  %.sroa.142326.2 = getelementptr inbounds nuw i8, ptr %.pn2733, i64 8
  %.not.i16.i = icmp eq ptr %i.il, %.sroa.29.5
  br i1 %.not.i16.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i
  %213 = extractelement <2 x i32> %212, i64 0
  %.sroa.5.0.insert.ext.i = zext i32 %213 to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %214 = extractelement <2 x i32> %212, i64 1
  %.sroa.0.0.insert.ext.i = zext i32 %214 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.il, align 4
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i
  %i.jc = ptrtoint ptr %.sroa.29.5 to i64         ; 2 uses
  %i.jd = ptrtoint ptr %.sroa.02335.5 to i64      ; 3 uses
  %i.je = sub i64 %i.jc, %i.jd                    ; 4 uses
  %i.jf = icmp eq i64 %i.je, 9223372036854775800
  br i1 %i.jf, label %bb.ap, label %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc568 unwind label %.loopexit.split-lp2776.loopexit.split-lp

.noexc568:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.jg = ashr exact i64 %i.je, 3                 ; 3 uses
  %.sroa.speculated.i.i.i17.i = call i64 @llvm.umax.i64(i64 %i.jg, i64 1)
  %i.jh = add nsw i64 %.sroa.speculated.i.i.i17.i, %i.jg ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.jg
  %i.jj = call i64 @llvm.umin.i64(i64 %i.jh, i64 1152921504606846975)
  %i.jk = select i1 %i.ji, i64 1152921504606846975, i64 %i.jj ; 3 uses
  %.not.i.i.i18.i = icmp ne i64 %i.jk, 0
  call void @llvm.assume(i1 %.not.i.i.i18.i)
  %i.jl = shl nuw nsw i64 %i.jk, 3
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #37
          to label %.noexc569 unwind label %.loopexit2775 ; 8 uses

.noexc569:                                        ; preds = %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.je
  %215 = extractelement <2 x i32> %212, i64 0
  %i.jo = zext i32 %215 to i64
  %.sroa.5.0.insert.shift25.i = shl nuw i64 %i.jo, 32
  %216 = extractelement <2 x i32> %212, i64 1
  %i.jp = zext i32 %216 to i64
  %.sroa.0.0.insert.insert22.i = or disjoint i64 %.sroa.5.0.insert.shift25.i, %i.jp
  store i64 %.sroa.0.0.insert.insert22.i, ptr %i.jn, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.02335.5, %.sroa.29.5
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc569
  %i.jq = ptrtoaddr ptr %i.jm to i64
  %i.jr = add i64 %i.jc, -8
  %i.js = sub i64 %i.jr, %i.jd                    ; 2 uses
  %i.jt = lshr i64 %i.js, 3
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %min.iters.check4504 = icmp ult i64 %i.js, 24
  %i.jv = sub i64 %i.jd, %i.jq
  %diff.check4502 = icmp ugt i64 %i.jv, -32
  %or.cond = or i1 %min.iters.check4504, %diff.check4502
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader4748, label %vector.ph4505

vector.ph4505:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec4506 = and i64 %i.ju, 4611686018427387900 ; 3 uses
  %i.jw = shl i64 %n.vec4506, 3                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jm, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %.sroa.02335.5, i64 %i.jw
  br label %vector.body4507

vector.body4507:                                  ; preds = %vector.body4507, %vector.ph4505
  %index4508 = phi i64 [ 0, %vector.ph4505 ], [ %index.next4513, %vector.body4507 ] ; 2 uses
  %i.jz = shl i64 %index4508, 3                   ; 2 uses
  %next.gep4509 = getelementptr i8, ptr %i.jm, i64 %i.jz ; 2 uses
  %next.gep4510 = getelementptr i8, ptr %.sroa.02335.5, i64 %i.jz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.ka = getelementptr i8, ptr %next.gep4510, i64 16
  %wide.load4511 = load <2 x i64>, ptr %next.gep4510, align 4, !alias.scope !52, !noalias !49
  %wide.load4512 = load <2 x i64>, ptr %i.ka, align 4, !alias.scope !52, !noalias !49
  %i.kb = getelementptr i8, ptr %next.gep4509, i64 16
  store <2 x i64> %wide.load4511, ptr %next.gep4509, align 4, !alias.scope !49, !noalias !52
  store <2 x i64> %wide.load4512, ptr %i.kb, align 4, !alias.scope !49, !noalias !52
  %index.next4513 = add nuw i64 %index4508, 4     ; 2 uses
  %i.kc = icmp eq i64 %index.next4513, %n.vec4506
  br i1 %i.kc, label %middle.block4514, label %vector.body4507, !llvm.loop !54

middle.block4514:                                 ; preds = %vector.body4507
  %cmp.n4515 = icmp eq i64 %i.ju, %n.vec4506
  br i1 %cmp.n4515, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader4748

.lr.ph.i.i.i.i.i.i.preheader4748:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block4514
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.jx, %middle.block4514 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.02335.5, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.jy, %middle.block4514 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader4748, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader4748 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader4748 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.kd = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !52, !noalias !49
  store i64 %i.kd, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !49, !noalias !52
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ke, %.sroa.29.5
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block4514, %.noexc569
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.jm, %.noexc569 ], [ %i.jx, %middle.block4514 ], [ %i.kf, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.02335.5, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02335.5, i64 noundef %i.je) #36
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jk
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.an
  %.sroa.29.6 = phi ptr [ %i.kg, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.29.5, %bb.an ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.il, %bb.an ]
  %.sroa.02335.6 = phi ptr [ %i.jm, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.02335.5, %bb.an ] ; 2 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8
  %i.kh = fmul <2 x double> %i.im, splat (double 5.000000e-01) ; 2 uses
  %i.ki = add nuw nsw i32 %.01334.i, 1            ; 2 uses
  %i.kj = extractelement <2 x double> %i.kh, i64 0
  %i.kk = fcmp ult double %i.kj, 2.400000e+01
  br i1 %i.kk, label %_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit, label %.lr.ph.i, !llvm.loop !59

217:                                              ; preds = %bb.ah
  %218 = extractelement <2 x double> %205, i64 0  ; 7 uses
  %219 = extractelement <2 x double> %205, i64 1  ; 7 uses
  %220 = fcmp olt double %218, %219
  %.sroa.speculated46.i = select i1 %220, double %218, double %219
  %221 = fcmp ogt double %.sroa.speculated46.i, 1.000000e+03
  br i1 %221, label %222, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574

222:                                              ; preds = %217
  %223 = fcmp olt double %219, %218
  %.sroa.speculated43.i = select i1 %223, double %219, double %218
  %224 = fdiv double 1.000000e+03, %.sroa.speculated43.i ; 3 uses
  %225 = fmul double %224, %219
  %226 = fmul double %224, %218
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574: ; preds = %222, %217
  %.052.i = phi double [ %226, %222 ], [ %218, %217 ] ; 2 uses
  %.051.i = phi double [ %225, %222 ], [ %219, %217 ] ; 2 uses
  %.018.i = phi double [ %224, %222 ], [ 1.000000e+00, %217 ]
  %i.kl = fcmp olt double %.051.i, %.052.i
  %.sroa.speculated.i575 = select i1 %i.kl, double %.051.i, double %.052.i ; 2 uses
  %i.km = fcmp ult double %.sroa.speculated.i575, 1.200000e+01
  br i1 %i.km, label %_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit.thread, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583
  %.sroa.24.8 = phi ptr [ %.sroa.24.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 5 uses
  %.sroa.142326.4 = phi ptr [ %.sroa.142326.5, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 3 uses
  %.sroa.02318.8 = phi ptr [ %.sroa.02318.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 7 uses
  %.sroa.29.8 = phi ptr [ %.sroa.29.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 8 uses
  %.sroa.02335.8 = phi ptr [ %.sroa.02335.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 11 uses
  %i.kn = phi ptr [ %.sroa.17.5, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ null, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 3 uses
  %.056.i = phi double [ %i.mm, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ %.sroa.speculated.i575, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ]
  %.01755.i = phi i32 [ %i.mn, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ], [ 0, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE5clearEv.exit.i574 ] ; 2 uses
  %i.ko = uitofp nneg i32 %.01755.i to double
  %i.kp = call noundef double @pow(double noundef 7.090000e-01, double noundef %i.ko) #35
  %i.kq = fmul double %.018.i, %i.kp              ; 4 uses
  %i.kr = fmul double %i.kq, %219
  %i.ks = fptosi double %i.kr to i32              ; 2 uses
  %i.kt = fmul double %i.kq, %218
  %i.ku = fptosi double %i.kt to i32              ; 2 uses
  %.not.i.i577 = icmp eq ptr %.sroa.142326.4, %.sroa.24.8
  br i1 %.not.i.i577, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i576
  store double %i.kq, ptr %.sroa.142326.4, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i578

bb.as:                                            ; preds = %.lr.ph.i576
  %i.kv = ptrtoint ptr %.sroa.24.8 to i64
  %i.kw = ptrtoint ptr %.sroa.02318.8 to i64
  %i.kx = sub i64 %i.kv, %i.kw                    ; 6 uses
  %i.ky = icmp eq i64 %i.kx, 9223372036854775800
  br i1 %i.ky, label %bb.at, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i594

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc601 unwind label %.loopexit.split-lp2776.loopexit.split-lp

.noexc601:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i594: ; preds = %bb.as
  %i.kz = ashr exact i64 %i.kx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i595 = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i.i.i595, %i.kz ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kz
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 1152921504606846975)
  %i.ld = select i1 %i.lb, i64 1152921504606846975, i64 %i.lc ; 3 uses
  %.not.i.i.i.i596 = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i.i.i596)
  %i.le = shl nuw nsw i64 %i.ld, 3
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #37
          to label %.noexc602 unwind label %.loopexit.split-lp2776.loopexit ; 4 uses

.noexc602:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i594
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.kx ; 2 uses
  store double %i.kq, ptr %i.lg, align 8, !tbaa !47
  %i.lh = icmp sgt i64 %i.kx, 0
  br i1 %i.lh, label %bb.au, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i597

bb.au:                                            ; preds = %.noexc602
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lf, ptr align 8 %.sroa.02318.8, i64 %i.kx, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i597

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i597: ; preds = %bb.au, %.noexc602
  %.not.i17.i.i.i598 = icmp eq ptr %.sroa.02318.8, null
  br i1 %.not.i17.i.i.i598, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i597
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02318.8, i64 noundef %i.kx) #36
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599: ; preds = %bb.av, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i597
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.ld
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i578

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i578:     ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599, %bb.ar
  %.sroa.24.9 = phi ptr [ %i.li, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599 ], [ %.sroa.24.8, %bb.ar ] ; 4 uses
  %.pn2732 = phi ptr [ %i.lg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599 ], [ %.sroa.142326.4, %bb.ar ]
  %.sroa.02318.9 = phi ptr [ %i.lf, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i599 ], [ %.sroa.02318.8, %bb.ar ] ; 4 uses
  %.sroa.142326.5 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 8
  %.not.i23.i = icmp eq ptr %i.kn, %.sroa.29.8
  br i1 %.not.i23.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i578
  %.sroa.5.0.insert.ext.i579 = zext i32 %i.ku to i64
  %.sroa.5.0.insert.shift.i580 = shl nuw i64 %.sroa.5.0.insert.ext.i579, 32
  %.sroa.0.0.insert.ext.i581 = zext i32 %i.ks to i64
  %.sroa.0.0.insert.insert.i582 = or disjoint i64 %.sroa.5.0.insert.shift.i580, %.sroa.0.0.insert.ext.i581
  store i64 %.sroa.0.0.insert.insert.i582, ptr %i.kn, align 4
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583

bb.ax:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i578
  %i.lj = ptrtoint ptr %.sroa.29.8 to i64         ; 2 uses
  %i.lk = ptrtoint ptr %.sroa.02335.8 to i64      ; 3 uses
  %i.ll = sub i64 %i.lj, %i.lk                    ; 4 uses
  %i.lm = icmp eq i64 %i.ll, 9223372036854775800
  br i1 %i.lm, label %bb.ay, label %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i584

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc603 unwind label %.loopexit.split-lp2776.loopexit.split-lp

.noexc603:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i584: ; preds = %bb.ax
  %i.ln = ashr exact i64 %i.ll, 3                 ; 3 uses
  %.sroa.speculated.i.i.i24.i = call i64 @llvm.umax.i64(i64 %i.ln, i64 1)
  %i.lo = add nsw i64 %.sroa.speculated.i.i.i24.i, %i.ln ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.ln
  %i.lq = call i64 @llvm.umin.i64(i64 %i.lo, i64 1152921504606846975)
  %i.lr = select i1 %i.lp, i64 1152921504606846975, i64 %i.lq ; 3 uses
  %.not.i.i.i25.i = icmp ne i64 %i.lr, 0
  call void @llvm.assume(i1 %.not.i.i.i25.i)
  %i.ls = shl nuw nsw i64 %i.lr, 3
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #37
          to label %.noexc604 unwind label %.loopexit.split-lp2776.loopexit ; 8 uses

.noexc604:                                        ; preds = %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i584
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ll
  %.sroa.5.0.insert.ext31.i = zext i32 %i.ku to i64
  %.sroa.5.0.insert.shift32.i = shl nuw i64 %.sroa.5.0.insert.ext31.i, 32
  %.sroa.0.0.insert.ext27.i = zext i32 %i.ks to i64
  %.sroa.0.0.insert.insert29.i = or disjoint i64 %.sroa.5.0.insert.shift32.i, %.sroa.0.0.insert.ext27.i
  store i64 %.sroa.0.0.insert.insert29.i, ptr %i.lu, align 4
  %.not10.i.i.i.i.i.i585 = icmp eq ptr %.sroa.02335.8, %.sroa.29.8
  br i1 %.not10.i.i.i.i.i.i585, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i586.preheader

.lr.ph.i.i.i.i.i.i586.preheader:                  ; preds = %.noexc604
  %i.lv = ptrtoaddr ptr %i.lt to i64
  %i.lw = add i64 %i.lj, -8
  %i.lx = sub i64 %i.lw, %i.lk                    ; 2 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lx, 24
  %i.ma = sub i64 %i.lk, %i.lv
  %diff.check = icmp ugt i64 %i.ma, -32
  %or.cond4607 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond4607, label %.lr.ph.i.i.i.i.i.i586.preheader4765, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i586.preheader
  %n.vec = and i64 %i.lz, 4611686018427387900     ; 3 uses
  %i.mb = shl i64 %n.vec, 3                       ; 2 uses
  %i.mc = getelementptr i8, ptr %i.lt, i64 %i.mb  ; 2 uses
  %i.md = getelementptr i8, ptr %.sroa.02335.8, i64 %i.mb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.me = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lt, i64 %i.me ; 2 uses
  %next.gep4498 = getelementptr i8, ptr %.sroa.02335.8, i64 %i.me ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.mf = getelementptr i8, ptr %next.gep4498, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4498, align 4, !alias.scope !63, !noalias !60
  %wide.load4499 = load <2 x i64>, ptr %i.mf, align 4, !alias.scope !63, !noalias !60
  %i.mg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !60, !noalias !63
  store <2 x i64> %wide.load4499, ptr %i.mg, align 4, !alias.scope !60, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mh = icmp eq i64 %index.next, %n.vec
  br i1 %i.mh, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i586.preheader4765

.lr.ph.i.i.i.i.i.i586.preheader4765:              ; preds = %.lr.ph.i.i.i.i.i.i586.preheader, %middle.block
  %.012.i.i.i.i.i.i587.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i586.preheader ], [ %i.mc, %middle.block ]
  %.0911.i.i.i.i.i.i588.ph = phi ptr [ %.sroa.02335.8, %.lr.ph.i.i.i.i.i.i586.preheader ], [ %i.md, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i586

.lr.ph.i.i.i.i.i.i586:                            ; preds = %.lr.ph.i.i.i.i.i.i586.preheader4765, %.lr.ph.i.i.i.i.i.i586
  %.012.i.i.i.i.i.i587 = phi ptr [ %i.mk, %.lr.ph.i.i.i.i.i.i586 ], [ %.012.i.i.i.i.i.i587.ph, %.lr.ph.i.i.i.i.i.i586.preheader4765 ] ; 2 uses
  %.0911.i.i.i.i.i.i588 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i586 ], [ %.0911.i.i.i.i.i.i588.ph, %.lr.ph.i.i.i.i.i.i586.preheader4765 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.mi = load i64, ptr %.0911.i.i.i.i.i.i588, align 4, !alias.scope !63, !noalias !60
  store i64 %i.mi, ptr %.012.i.i.i.i.i.i587, align 4, !alias.scope !60, !noalias !63
  %i.mj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i588, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i587, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i589 = icmp eq ptr %i.mj, %.sroa.29.8
  br i1 %.not.i.i.i.i.i.i589, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i586, !llvm.loop !66

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590: ; preds = %.lr.ph.i.i.i.i.i.i586, %middle.block, %.noexc604
  %.0.lcssa.i.i.i.i.i.i591 = phi ptr [ %i.lt, %.noexc604 ], [ %i.mc, %middle.block ], [ %i.mk, %.lr.ph.i.i.i.i.i.i586 ]
  %.not.i23.i.i.i592 = icmp eq ptr %.sroa.02335.8, null
  br i1 %.not.i23.i.i.i592, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02335.8, i64 noundef %i.ll) #36
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593: ; preds = %bb.az, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i590
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lr
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583

_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583: ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593, %bb.aw
  %.sroa.29.9 = phi ptr [ %i.ml, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593 ], [ %.sroa.29.8, %bb.aw ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i591.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i591, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593 ], [ %i.kn, %bb.aw ]
  %.sroa.02335.9 = phi ptr [ %i.lt, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i593 ], [ %.sroa.02335.8, %bb.aw ] ; 2 uses
  %.sroa.17.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i591.pn, i64 8
  %i.mm = fmul nnan double %.056.i, 7.090000e-01  ; 2 uses
  %i.mn = add nuw nsw i32 %.01755.i, 1            ; 2 uses
  %i.mo = fcmp ult double %i.mm, 1.200000e+01
  br i1 %i.mo, label %_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit, label %.lr.ph.i576, !llvm.loop !67

_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit: ; preds = %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i
  %.sroa.24.0 = phi ptr [ %.sroa.24.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.24.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ] ; 2 uses
  %.sroa.02318.0 = phi ptr [ %.sroa.02318.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.02318.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ] ; 2 uses
  %.sroa.29.0 = phi ptr [ %.sroa.29.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.29.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ] ; 2 uses
  %.sroa.02335.0 = phi ptr [ %.sroa.02335.6, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.02335.9, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ] ; 2 uses
  %i.mp = phi i32 [ %i.ki, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i ], [ %i.mn, %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backERKS2_.exit.i583 ] ; 2 uses
  %i.mq = icmp slt i32 %i.mp, 14
  br i1 %i.mq, label %_ZN12_GLOBAL__N_121calculate_half_scalesERKN2cv5Size_IiEERSt6vectorIdSaIdEERS5_IS2_SaIS2_EE.exit.thread, label %bb.bb

bb.ba:                                            ; preds = %bb.ag, %bb.af
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN2cv5Rect_IiEESt6vectorINS3_6Point_IiEESaIS8_EEES6_ISB_SaISB_EEEEPSB_ET0_T_SJ_SI_:bb.a
  %.018 = phi ptr [ %i.aj, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.ai, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.018, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.017, i64 16, i1 false), !tbaa.struct !630
  %i.a = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !629  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !621  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !82

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #37
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.j, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !621
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !629
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.018, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !624
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !631  ; 5 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !631  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc8
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoaddr ptr %i.p to i64
  %i.t = add i64 %i.s, -8
  %i.u = sub i64 %i.t, %i.q                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  %i.x = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 4
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load37, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.i.preheader39:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4
  store i64 %i.af, ptr %.09.i.i.i.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1464

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc8 ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !629
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.018, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1465

.loopexit12:                                      ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN2cv5Rect_IiEESt6vectorINS1_6Point_IiEESaIS6_EEEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #34
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aj, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.am

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #38
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_face_detection_mtcnn.cpp() #30 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 16), ptr @_ZL5aboutB5cxx11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 67, ptr %i.b, align 8, !tbaa !13
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL5aboutB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr @_ZL5aboutB5cxx11, align 8, !tbaa !15
  %i.d = load i64, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 16), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.c, ptr noundef nonnull align 1 dereferenceable(67) @.str, i64 67, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL5aboutB5cxx11, i64 8), align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL5aboutB5cxx11, ptr nonnull @__dso_handle) #35 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), ptr @_ZL4keysB5cxx11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 1223, ptr %i.a, align 8, !tbaa !13
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL4keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.g, ptr @_ZL4keysB5cxx11, align 8, !tbaa !15
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1223) %i.g, ptr noundef nonnull align 1 dereferenceable(1223) @.str.2, i64 1223, i1 false)
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 8), align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL4keysB5cxx11, ptr nonnull @__dso_handle) #35 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { noreturn }
attributes #35 = { nounwind }
attributes #36 = { builtin nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !11, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !14, i64 8, !7, i64 16}
!17 = !{!7, !7, i64 0}
!18 = !{!16, !14, i64 8}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!21 = distinct !{!21, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!24 = distinct !{!24, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!27 = distinct !{!27, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !7, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!32 = distinct !{!32, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!35 = distinct !{!35, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!38 = distinct !{!38, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!41 = distinct !{!41, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!42 = !{!43, !43, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!6, !6, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !7, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!54 = distinct !{!54, !55, !56, !57}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{!58, !55, !56}
!59 = distinct !{!59, !55}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!62 = distinct !{!62, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aIN2cv5Size_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !55, !56, !57}
!66 = distinct !{!66, !55, !56}
!67 = distinct !{!67, !55}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN2cv4GMatE", !12, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZSt3tieIJN2cv4GMatES1_EESt5tupleIJDpRT_EES5_: argument 0"}
!72 = distinct !{!72, !"_ZSt3tieIJN2cv4GMatES1_EESt5tupleIJDpRT_EES5_"}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !75, i64 0}
!75 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!76 = !{!77, !6, i64 8}
!77 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!78 = !{!77, !6, i64 12}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !8, i64 0}
!81 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!84 = !{!12, !12, i64 0}
!85 = distinct !{ptr @_ZN2cv4GMatD2Ev, null, null, null}
!86 = distinct !{ptr @_ZN2cv6GArrayIN6custom12_GLOBAL__N_14FaceEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!87 = distinct !{ptr @_ZN2cv6GArrayIN6custom12_GLOBAL__N_14FaceEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!88 = distinct !{null, null, null, null, null, null, null}
!89 = distinct !{null, null, null, null, null, null, null}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt3tieIJN2cv4GMatES1_EESt5tupleIJDpRT_EES5_: argument 0"}
!92 = distinct !{!92, !"_ZSt3tieIJN2cv4GMatES1_EESt5tupleIJDpRT_EES5_"}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTSSt12__shared_ptrIN2cv7GOriginELN9__gnu_cxx12_Lock_policyE2EE", !95, i64 0, !74, i64 8}
!95 = !{!"p1 _ZTSN2cv7GOriginE", !12, i64 0}
!96 = !{!97, !98, i64 0}
!97 = !{!"_ZTSSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EE", !98, i64 0, !74, i64 8}
!98 = !{!"p1 _ZTSN2cv6detail12TypeHintBaseE", !12, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN2cv11GKernelTypeIN6custom12_GLOBAL__N_124AccumulatePyramidOutputsESt8functionIFNS_6GArrayINS2_4FaceEEES7_S7_EEE2onES7_S7_: argument 0"}
!101 = distinct !{!101, !"_ZN2cv11GKernelTypeIN6custom12_GLOBAL__N_124AccumulatePyramidOutputsESt8functionIFNS_6GArrayINS2_4FaceEEES7_S7_EEE2onES7_S7_"}
!102 = !{!103, !12, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN2cv6GShapeESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!104 = !{!103, !12, i64 16}
!105 = !{!106, !106, i64 0}
!106 = !{!"_ZTSN2cv6GShapeE", !7, i64 0}
!107 = !{!103, !12, i64 8}
!108 = !{!109, !12, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail10OpaqueKindESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!110 = !{!109, !12, i64 16}
!111 = !{!109, !12, i64 8}
!112 = !{!113, !14, i64 0}
!113 = !{!"_ZTSN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEEE", !14, i64 0, !7, i64 8}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN2cv6detail11GObtainCtorINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getEv: argument 0"}
!116 = distinct !{!116, !"_ZN2cv6detail11GObtainCtorINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEE3getEv"}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateESt8functionIFvRNS0_6detail9VectorRefEEES4_IFvRNS5_9OpaqueRefEEEEEESaISE_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTSN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEEE", !12, i64 0}
!120 = !{!118, !119, i64 16}
!121 = !{!118, !119, i64 8}
!122 = !{!123, !123, i64 0}
!123 = !{!"_ZTSN2cv6detail10OpaqueKindE", !7, i64 0}
!124 = !{!125, !126, i64 0}
!125 = !{!"_ZTSN2cv4GArgE", !126, i64 0, !123, i64 4, !127, i64 8}
!126 = !{!"_ZTSN2cv6detail7ArgKindE", !7, i64 0}
!127 = !{!"_ZTSN2cv4util3anyE", !128, i64 0}
!128 = !{!"_ZTSSt10unique_ptrIN2cv4util3any6holderESt14default_deleteIS3_EE", !129, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataIN2cv4util3any6holderESt14default_deleteIS3_ELb1ELb1EE", !130, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implIN2cv4util3any6holderESt14default_deleteIS3_EE", !131, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN2cv4util3any6holderESt14default_deleteIS3_EEE", !132, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJPN2cv4util3any6holderESt14default_deleteIS3_EEE", !133, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm0EPN2cv4util3any6holderELb0EE", !134, i64 0}
!134 = !{!"p1 _ZTSN2cv4util3any6holderE", !12, i64 0}
!135 = !{!125, !123, i64 4}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN2cv6detail9WrapValueINS_6GArrayIN6custom12_GLOBAL__N_14FaceEEEvE4wrapERKS6_: argument 0"}
end_hunk_1
