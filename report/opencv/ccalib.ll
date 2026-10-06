Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ccalib?download=true
inline.NumInlined: 1037
inline.NumDeleted: 460
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv6ccalib13CustomPattern15findPatternPassERKNS_3MatERSt6vectorINS_6Point_IfEESaIS7_EERS5_INS_7Point3_IfEESaISC_EERS2_SA_ddbS4_RKNS_12_OutputArrayE:bb.a
  %.0.lcssa.i.i.i.i.i200 = phi ptr [ %i.ep, %.noexc203 ], [ %i.es, %.lr.ph.i.i.i.i.i196 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i200, i64 12
  %.not.i23.i.i201 = icmp eq ptr %i.ee, null
  br i1 %.not.i23.i.i201, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.eu = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.ev, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ew) #24
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ep, ptr %3, align 8, !tbaa !92
  store ptr %i.et, ptr %i.h, align 8, !tbaa !90
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.ep, i64 %i.en
  store ptr %i.ex, ptr %i.ax, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.v
  %i.ey = load i32, ptr %i.dv, align 4, !tbaa !184
  %i.ez = sext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.fb = getelementptr inbounds nuw [28 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.az, align 8, !tbaa !72 ; 6 uses
  %i.fd = load ptr, ptr %i.ba, align 8, !tbaa !71
  %.not.i204 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i204, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit
  %i.fe = load i64, ptr %i.fb, align 4, !tbaa !69
  store i64 %i.fe, ptr %i.fc, align 4, !tbaa !69
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.ff, ptr %i.az, align 8, !tbaa !72
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit219

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit
  %i.fg = load ptr, ptr %21, align 8, !tbaa !70   ; 5 uses
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %.invoke, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i205

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i205: ; preds = %bb.z
  %i.fl = ashr exact i64 %i.fj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i206 = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i206, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 1152921504606846975)
  %i.fp = select i1 %i.fn, i64 1152921504606846975, i64 %i.fo ; 3 uses
  %.not.i.i.i207 = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i207)
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #25
          to label %.noexc218 unwind label %.loopexit ; 5 uses

.noexc218:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i205
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fj
  %i.ft = load i64, ptr %i.fb, align 4, !tbaa !69
  store i64 %i.ft, ptr %i.fs, align 4, !tbaa !69
  %.not10.i.i.i.i.i208 = icmp eq ptr %i.fg, %i.fc
  br i1 %.not10.i.i.i.i.i208, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i213, label %.lr.ph.i.i.i.i.i209

.lr.ph.i.i.i.i.i209:                              ; preds = %.noexc218, %.lr.ph.i.i.i.i.i209
  %.012.i.i.i.i.i210 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i209 ], [ %i.fr, %.noexc218 ] ; 2 uses
  %.0911.i.i.i.i.i211 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i209 ], [ %i.fg, %.noexc218 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i211, align 4, !tbaa !69, !alias.scope !187, !noalias !186
  store i64 %i.fu, ptr %.012.i.i.i.i.i210, align 4, !tbaa !69, !alias.scope !186, !noalias !187
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i211, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i210, i64 8 ; 2 uses
  %.not.i.i.i.i.i212 = icmp eq ptr %i.fv, %i.fc
  br i1 %.not.i.i.i.i.i212, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i213, label %.lr.ph.i.i.i.i.i209, !llvm.loop !5

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i213: ; preds = %.lr.ph.i.i.i.i.i209, %.noexc218
  %.0.lcssa.i.i.i.i.i214 = phi ptr [ %i.fr, %.noexc218 ], [ %i.fw, %.lr.ph.i.i.i.i.i209 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i214, i64 8
  %.not.i23.i.i215 = icmp eq ptr %i.fg, null
  br i1 %.not.i23.i.i215, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i216, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i213
  %i.fy = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.ga) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i216

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i216: ; preds = %bb.aa, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i213
  store ptr %i.fr, ptr %21, align 8, !tbaa !70
  store ptr %i.fx, ptr %i.az, align 8, !tbaa !72
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.gb, ptr %i.ba, align 8, !tbaa !71
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit219

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i205
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit219: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i216, %bb.y, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gc = load i32, ptr %i.aq, align 8, !tbaa !105
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next, %i.gd
  br i1 %i.ge, label %bb.n, label %._crit_edge, !llvm.loop !171

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.gf, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.gg, align 4, !tbaa !81
  %i.gh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !72
  %i.gj = load ptr, ptr %21, align 8, !tbaa !70
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 3                 ; 2 uses
  %.not.i220 = icmp ugt i64 %i.gn, 2147483647
  br i1 %.not.i220, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.gn, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc221 unwind label %bb.aj

.noexc221:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 -2130509787, ptr %24, align 8, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %21, ptr %i.go, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.gp = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.gp, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.gq, align 4, !tbaa !81
  %i.gr = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.gs = load ptr, ptr %2, align 8, !tbaa !70
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 3                 ; 2 uses
  %.not.i222 = icmp ugt i64 %i.gw, 2147483647
  br i1 %.not.i222, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.gw, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc223 unwind label %bb.ak

.noexc223:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  store i32 -2130509787, ptr %25, align 8, !tbaa !67
  %i.gx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %2, ptr %i.gx, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.gy = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.gz, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !67
  store ptr %22, ptr %i.gy, align 8, !tbaa !63
  invoke void @_ZN2cv14findHomographyERKNS_11_InputArrayES2_idRKNS_12_OutputArrayEid(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef 8, double noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 2000, double noundef f0x3FEFD70A3D70A3D7)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ha = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.ah unwind label %bb.am     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.hb = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.hb, label %._crit_edge299.thread, label %.preheader287

.preheader287:                                    ; preds = %bb.ai
  %i.hc = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 2 uses
  %i.hd = load ptr, ptr %20, align 8, !tbaa !101  ; 2 uses
  %.not305 = icmp eq ptr %i.hc, %i.hd
  br i1 %.not305, label %._crit_edge299.thread, label %.lr.ph298

.lr.ph298:                                        ; preds = %.preheader287
  %i.he = getelementptr inbounds nuw i8, ptr %22, i64 24
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ac
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ae
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.af
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.pn135.pn = phi { ptr, i32 } [ %i.hh, %bb.al ], [ %i.hi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.an ], [ %i.hg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aj
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn, %bb.ao ], [ %i.hf, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.da

bb.aq:                                            ; preds = %bb.ah
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

._crit_edge299:                                   ; preds = %bb.at
  %i.hk = icmp eq ptr %i.if, %i.ig
  br i1 %i.hk, label %._crit_edge299.thread, label %bb.au

bb.ar:                                            ; preds = %.lr.ph298, %bb.at
  %i.hl = phi ptr [ %i.hd, %.lr.ph298 ], [ %i.if, %bb.at ] ; 2 uses
  %i.hm = phi ptr [ %i.hc, %.lr.ph298 ], [ %i.ig, %bb.at ] ; 2 uses
  %49 = phi i64 [ 0, %.lr.ph298 ], [ %i.ii, %bb.at ]
  %.0122297 = phi i32 [ 0, %.lr.ph298 ], [ %i.ih, %bb.at ] ; 2 uses
  %50 = load ptr, ptr %i.he, align 8, !tbaa !110
  %i.hn = getelementptr inbounds nuw i8, ptr %50, i64 %49
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !60
  %.not = icmp eq i8 %i.ho, 0
  br i1 %.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hp = getelementptr inbounds i8, ptr %i.hm, i64 -16
  %i.hq = sext i32 %.0122297 to i64               ; 3 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hr, ptr noundef nonnull align 4 dereferenceable(16) %i.hp, i64 16, i1 false), !tbaa.struct !102
  %i.hs = load ptr, ptr %i.bf, align 8, !tbaa !103
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -16
  store ptr %i.ht, ptr %i.bf, align 8, !tbaa !103
  %i.hu = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -8 ; 2 uses
  %i.hw = load ptr, ptr %2, align 8, !tbaa !70
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hq
  %i.hy = load i64, ptr %i.hv, align 4, !tbaa !69
  store i64 %i.hy, ptr %i.hx, align 4, !tbaa !69
  store ptr %i.hv, ptr %i.e, align 8, !tbaa !72
  %i.hz = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -12
  %i.ib = load ptr, ptr %3, align 8, !tbaa !92
  %i.ic = getelementptr inbounds nuw [12 x i8], ptr %i.ib, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ic, ptr noundef nonnull align 4 dereferenceable(12) %i.ia, i64 12, i1 false), !tbaa.struct !93
  %i.id = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -12
  store ptr %i.ie, ptr %i.h, align 8, !tbaa !90
  %.pre318.a = load ptr, ptr %i.bf, align 8, !tbaa !103
  %.pre319.a = load ptr, ptr %20, align 8, !tbaa !101
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.if = phi ptr [ %i.hl, %bb.ar ], [ %.pre319.a, %bb.as ] ; 3 uses
  %i.ig = phi ptr [ %i.hm, %bb.ar ], [ %.pre318.a, %bb.as ] ; 3 uses
  %i.ih = add i32 %.0122297, 1                    ; 2 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = ptrtoint ptr %i.ig to i64
  %i.ik = ptrtoint ptr %i.if to i64
  %i.il = sub i64 %i.ij, %i.ik                    ; 2 uses
  %i.im = ashr exact i64 %i.il, 4
  %i.in = icmp ugt i64 %i.im, %i.ii
  br i1 %i.in, label %bb.ar, label %._crit_edge299, !llvm.loop !172

bb.au:                                            ; preds = %._crit_edge299
  invoke void @_ZN2cv6ccalib13CustomPattern13check_matchesERSt6vectorINS_6Point_IfEESaIS4_EERKS6_RS2_INS_6DMatchESaISA_EERS2_INS_7Point3_IfEESaISF_EERKNS_3MatE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.io = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.ip = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = icmp ult i64 %i.il, %i.it
  %or.cond286 = or i1 %i.iq, %i.iu
  br i1 %or.cond286, label %._crit_edge299.thread, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.iw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.ay unwind label %bb.bg     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.iw, ptr %27, align 8, !tbaa !70
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.iw, i8 0, i64 32, i1 false), !tbaa !69
  %i.iy = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.ix, ptr %i.iz, align 8, !tbaa !71
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !72
  %i.ja = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %27) #22 ; 0 uses
  %i.jb = load ptr, ptr %27, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i227 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !71
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.jh, align 8, !tbaa !80
  %i.ji = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %i.ji, align 4, !tbaa !81
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !72
  %i.jl = load ptr, ptr %i.jg, align 8, !tbaa !70
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 3                 ; 2 uses
  %.not.i228 = icmp ugt i64 %i.jp, 2147483647
  br i1 %.not.i228, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.jp, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc229 unwind label %bb.bh

.noexc229:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  store i32 -2130509787, ptr %28, align 8, !tbaa !67
  %i.jq = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.jg, ptr %i.jq, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.jr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.js, align 8
  store i32 -2113732571, ptr %29, align 8, !tbaa !67
  store ptr %5, ptr %i.jr, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.jt = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 0, ptr %i.jt, align 8, !tbaa !80
  %i.ju = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i32 0, ptr %i.ju, align 4, !tbaa !81
  store i32 16842752, ptr %30, align 8, !tbaa !67
  %i.jv = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %4, ptr %i.jv, align 8, !tbaa !63
  invoke void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.jw = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.jw, align 8, !tbaa !80
  %i.jx = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 0, ptr %i.jx, align 4, !tbaa !81
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !72
  %i.ka = load ptr, ptr %5, align 8, !tbaa !70
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 3                 ; 2 uses
  %.not.i231 = icmp ugt i64 %i.ke, 2147483647
  br i1 %.not.i231, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ke, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc232 unwind label %bb.bk

.noexc232:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  store i32 -2130509787, ptr %31, align 8, !tbaa !67
  %i.kf = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %5, ptr %i.kf, align 8, !tbaa !63
  %i.kg = invoke noundef zeroext i1 @_ZN2cv15isContourConvexERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br i1 %i.kg, label %bb.bn, label %._crit_edge299.thread

bb.bg:                                            ; preds = %bb.ax
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.da

bb.bh:                                            ; preds = %bb.ba
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bb
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn140.pn.pn = phi { ptr, i32 } [ %i.kj, %bb.bi ], [ %i.ki, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.da

bb.bk:                                            ; preds = %bb.bd
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.be
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn144 = phi { ptr, i32 } [ %i.kl, %bb.bl ], [ %i.kk, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.da

bb.bn:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.km = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.km, align 8, !tbaa !80
  %i.kn = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.kn, align 4, !tbaa !81
  %i.ko = load ptr, ptr %i.jy, align 8, !tbaa !72
  %i.kp = load ptr, ptr %5, align 8, !tbaa !70
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 3                 ; 2 uses
  %.not.i234 = icmp ugt i64 %i.kt, 2147483647
  br i1 %.not.i234, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.kt, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc235 unwind label %bb.br

.noexc235:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  store i32 -2130509787, ptr %32, align 8, !tbaa !67
end_hunk_0
