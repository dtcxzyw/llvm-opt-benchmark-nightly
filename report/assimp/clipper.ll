inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb:bb.a
.lr.ph.i.i.i.i.i.i131:                            ; preds = %.noexc140, %.lr.ph.i.i.i.i.i.i131
  %.012.i.i.i.i.i.i132 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i131 ], [ %i.er, %.noexc140 ] ; 2 uses
  %.0911.i.i.i.i.i.i133 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i131 ], [ %i.eg, %.noexc140 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i132, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i133, i64 16, i1 false), !alias.scope !296
  %i.et = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i133, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i132, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i134 = icmp eq ptr %i.et, %i.dv
  br i1 %.not.i.i.i.i.i.i134, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135, label %.lr.ph.i.i.i.i.i.i131, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135: ; preds = %.lr.ph.i.i.i.i.i.i131, %.noexc140
  %.0.lcssa.i.i.i.i.i.i136 = phi ptr [ %i.er, %.noexc140 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i131 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i136, i64 16 ; 2 uses
  %.not.i23.i.i.i137 = icmp eq ptr %i.eg, null
  br i1 %.not.i23.i.i.i137, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ej) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138: ; preds = %bb.t, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135
  store ptr %i.er, ptr %7, align 8
  store ptr %i.ev, ptr %i.w, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.ew, ptr %i.v, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138, %bb.q
  %i.ex = phi ptr [ %i.ev, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138 ], [ %i.ef, %bb.q ] ; 2 uses
  %i.ey = add nuw i64 %.066296, 1                 ; 2 uses
  %i.ez = load ptr, ptr %i.a, align 8
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 4
  %i.ff = icmp ult i64 %i.ey, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge, !llvm.loop !300

.loopexit269:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i127
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp270:                            ; preds = %bb.s
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119
  %i.fg = phi ptr [ %.pre, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge ], [ %i.dp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119 ] ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125
  %i.fh = load ptr, ptr %i.v, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.fl = add nuw i64 %.067297, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.n
  br i1 %exitcond.not, label %.loopexit263, label %.lr.ph298.split, !llvm.loop !301

bb.v:                                             ; preds = %.loopexit269, %.loopexit.split-lp270, %.loopexit276, %.loopexit.split-lp277
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  %i.fm = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.v, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fq) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.an

.loopexit263:                                     ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %.preheader274, %.preheader262
  %i.fr = load ptr, ptr %2, align 8               ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.ft, %i.fr
  br i1 %.not.i.i146, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %.loopexit263, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ga, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.fr, %.loopexit263 ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i147
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i147
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.ga, %i.ft
  br i1 %.not.i.i.i.i148, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i147, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.fr, ptr %i.fs, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %.loopexit263, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gb = zext i1 %4 to i64
  %i.gc = add nuw nsw i64 %i.n, %i.gb
  %i.gd = add nsw i64 %i.g, 1
  %i.ge = mul i64 %i.gc, %i.gd                    ; 4 uses
  %i.gf = icmp ugt i64 %i.ge, 384307168202282325
  br i1 %i.gf, label %.invoke, label %bb.y

.invoke:                                          ; preds = %bb.a, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load ptr, ptr %2, align 8               ; 4 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = sdiv exact i64 %i.gl, 24
  %i.gn = icmp ult i64 %i.gm, %i.ge
  br i1 %i.gn, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149: ; preds = %bb.y
  %i.go = ptrtoint ptr %i.fr to i64
  %i.gp = sub i64 %i.go, %i.gk
  %i.gq = mul nuw nsw i64 %i.ge, 24
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32
          to label %.noexc161 unwind label %bb.c  ; 4 uses

.noexc161:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i149
  %.not10.i.i.i.i150 = icmp eq ptr %i.gi, %i.fr
  br i1 %.not10.i.i.i.i150, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157, label %.lr.ph.i.i.i.i151

.lr.ph.i.i.i.i151:                                ; preds = %.noexc161, %.lr.ph.i.i.i.i151
  %.012.i.i.i.i152 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i151 ], [ %i.gr, %.noexc161 ] ; 3 uses
  %.0911.i.i.i.i153 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i151 ], [ %i.gi, %.noexc161 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.gs = load <2 x ptr>, ptr %.0911.i.i.i.i153, align 8, !alias.scope !305, !noalias !302
  store <2 x ptr> %i.gs, ptr %.012.i.i.i.i152, align 8, !alias.scope !302, !noalias !305
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !305, !noalias !302
  store ptr %i.gv, ptr %i.gt, align 8, !alias.scope !302, !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i153, i8 0, i64 24, i1 false), !alias.scope !305, !noalias !302
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 24 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 24
  %.not.i.i.i.i154 = icmp eq ptr %i.gw, %i.fr
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155, label %.lr.ph.i.i.i.i151, !llvm.loop !58

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155: ; preds = %.lr.ph.i.i.i.i151
  %.pre.i156 = load ptr, ptr %2, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155, %.noexc161
  %i.gy = phi ptr [ %.pre.i156, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.loopexit.i155 ], [ %i.gi, %.noexc161 ] ; 3 uses
  %.not.i8.i158 = icmp eq ptr %i.gy, null
  br i1 %.not.i8.i158, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157
  %i.gz = load ptr, ptr %i.gg, align 8
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159: ; preds = %bb.z, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i157
  store ptr %i.gr, ptr %2, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store ptr %i.hd, ptr %i.fs, align 8
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.ge
  store ptr %i.he, ptr %i.gg, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162: ; preds = %bb.y, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159
  %not. = xor i1 %4, true
  %i.hf = sext i1 %not. to i64
  %i.hg = add nsw i64 %i.n, %i.hf                 ; 2 uses
  %.not327 = icmp eq i64 %i.hg, 0
  br i1 %.not327, label %._crit_edge308.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %.not328 = icmp eq ptr %i.b, %i.c
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  br i1 %.not328, label %._crit_edge308.split, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge306
  %.065307.us = phi i64 [ %i.hj, %._crit_edge306 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.hj = add nuw i64 %.065307.us, 1              ; 3 uses
  br label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us

._crit_edge308.split:                             ; preds = %._crit_edge306, %.preheader.lr.ph, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %9 = load ptr, ptr %5, align 8                  ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %11 = load ptr, ptr %10, align 8                ; 2 uses
  %.not4.i.i.i = icmp eq ptr %9, %11
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge308.split, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %19, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %9, %._crit_edge308.split ] ; 3 uses
  %12 = load ptr, ptr %.05.i.i.i, align 8         ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %13

13:                                               ; preds = %.lr.ph.i.i.i
  %14 = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %16, %17
  call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %18) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %13, %.lr.ph.i.i.i
  %19 = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %19, %11
  br i1 %.not.i.i.i163, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge308.split
  %20 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %9, %._crit_edge308.split ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %20, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %21

21:                                               ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %22 = load ptr, ptr %i.p, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %20 to i64
  %25 = sub i64 %23, %24
  call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %25) #33
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

._crit_edge306:                                   ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us
  %exitcond330.not = icmp eq i64 %i.hj, %i.hg
  br i1 %exitcond330.not, label %._crit_edge308.split, label %.preheader.us, !llvm.loop !307

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us: ; preds = %.preheader.us, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us
  %.0305.us = phi i64 [ 0, %.preheader.us ], [ %i.ia, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.hk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us unwind label %.loopexit ; 7 uses

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us
  store ptr %i.hk, ptr %8, align 8
  store ptr %i.hk, ptr %i.hi, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  store ptr %i.hl, ptr %i.hh, align 8
  %i.hm = urem i64 %.065307.us, %i.n              ; 2 uses
  %i.hn = load ptr, ptr %5, align 8               ; 2 uses
  %i.ho = urem i64 %.0305.us, %i.g                ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hm
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  store ptr %i.hs, ptr %i.hi, align 8
  %i.ht = urem i64 %i.hj, %i.n                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 3 uses
  store ptr %i.hx, ptr %i.hi, align 8
  %.pre346 = load ptr, ptr %i.hh, align 8         ; 4 uses
  %i.hy = load ptr, ptr %5, align 8               ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.ht
  %i.ia = add nuw i64 %.0305.us, 1                ; 3 uses
  %i.ib = urem i64 %i.ia, %i.g                    ; 2 uses
  %i.ic = load ptr, ptr %i.hz, align 8
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.ib ; 2 uses
  %.not.i196.us = icmp eq ptr %i.hx, %.pre346
  br i1 %.not.i196.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  store ptr %i.ie, ptr %i.hi, align 8
  %.pre348 = load ptr, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us

bb.ab:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us
  %i.if = load ptr, ptr %8, align 8               ; 5 uses
  %i.ig = ptrtoint ptr %.pre346 to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775792
  br i1 %i.ij, label %.invoke419, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us

.invoke419:                                       ; preds = %bb.ae, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
          to label %.cont420 unwind label %.loopexit.split-lp

.cont420:                                         ; preds = %.invoke419
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us: ; preds = %bb.ab
  %i.ik = ashr exact i64 %i.ii, 4                 ; 3 uses
  %.sroa.speculated.i.i.i198.us = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i198.us, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = call i64 @llvm.umin.i64(i64 %i.il, i64 576460752303423487)
  %i.io = select i1 %i.im, i64 576460752303423487, i64 %i.in ; 3 uses
  %.not.i.i.i199.us = icmp ne i64 %i.io, 0
  call void @llvm.assume(i1 %.not.i.i.i199.us)
  %i.ip = shl nuw nsw i64 %i.io, 4
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #32
          to label %.noexc210.us unwind label %.loopexit ; 5 uses

.noexc210.us:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  %.not10.i.i.i.i.i200.us = icmp eq ptr %i.if, %.pre346
  br i1 %.not10.i.i.i.i.i200.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us, label %.lr.ph.i.i.i.i.i201.us

.lr.ph.i.i.i.i.i201.us:                           ; preds = %.noexc210.us, %.lr.ph.i.i.i.i.i201.us
  %.012.i.i.i.i.i202.us = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i201.us ], [ %i.iq, %.noexc210.us ] ; 2 uses
  %.0911.i.i.i.i.i203.us = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i201.us ], [ %i.if, %.noexc210.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i202.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i203.us, i64 16, i1 false), !alias.scope !308
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i203.us, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i202.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i204.us = icmp eq ptr %i.is, %.pre346
  br i1 %.not.i.i.i.i.i204.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us, label %.lr.ph.i.i.i.i.i201.us, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us: ; preds = %.lr.ph.i.i.i.i.i201.us, %.noexc210.us
  %.0.lcssa.i.i.i.i.i206.us = phi ptr [ %i.iq, %.noexc210.us ], [ %i.it, %.lr.ph.i.i.i.i.i201.us ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i206.us, i64 16 ; 2 uses
  %.not.i23.i.i207.us = icmp eq ptr %i.if, null
  br i1 %.not.i23.i.i207.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ii) #33
  %.pre347.pre = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us: ; preds = %bb.ac, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  %.pre347 = phi ptr [ %.pre347.pre, %bb.ac ], [ %i.hy, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us ]
  store ptr %i.iq, ptr %8, align 8
  store ptr %i.iu, ptr %i.hi, align 8
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.io ; 2 uses
  store ptr %i.iv, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us, %bb.aa
  %i.iw = phi ptr [ %i.iv, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %.pre348, %bb.aa ] ; 4 uses
  %i.ix = phi ptr [ %i.iu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %i.ie, %bb.aa ] ; 3 uses
  %i.iy = phi ptr [ %.pre347, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us ], [ %i.hy, %bb.aa ]
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %i.hm
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.ib ; 2 uses
  %.not.i212.us = icmp eq ptr %i.ix, %i.iw
  br i1 %.not.i212.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  store ptr %i.jc, ptr %i.hi, align 8
  %.pre349 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us

bb.ae:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us
  %i.jd = load ptr, ptr %8, align 8               ; 5 uses
  %i.je = ptrtoint ptr %i.iw to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775792
  br i1 %i.jh, label %.invoke419, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us: ; preds = %bb.ae
  %i.ji = ashr exact i64 %i.jg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i214.us = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i214.us, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 576460752303423487)
  %i.jm = select i1 %i.jk, i64 576460752303423487, i64 %i.jl ; 3 uses
  %.not.i.i.i215.us = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i215.us)
  %i.jn = shl nuw nsw i64 %i.jm, 4
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #32
          to label %.noexc226.us unwind label %.loopexit ; 6 uses

.noexc226.us:                                     ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  %.not10.i.i.i.i.i216.us = icmp eq ptr %i.jd, %i.iw
  br i1 %.not10.i.i.i.i.i216.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us, label %.lr.ph.i.i.i.i.i217.us

.lr.ph.i.i.i.i.i217.us:                           ; preds = %.noexc226.us, %.lr.ph.i.i.i.i.i217.us
  %.012.i.i.i.i.i218.us = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i217.us ], [ %i.jo, %.noexc226.us ] ; 2 uses
  %.0911.i.i.i.i.i219.us = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i217.us ], [ %i.jd, %.noexc226.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i218.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i219.us, i64 16, i1 false), !alias.scope !312
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i219.us, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i218.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i220.us = icmp eq ptr %i.jq, %i.iw
  br i1 %.not.i.i.i.i.i220.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us, label %.lr.ph.i.i.i.i.i217.us, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us: ; preds = %.lr.ph.i.i.i.i.i217.us, %.noexc226.us
  %.0.lcssa.i.i.i.i.i222.us = phi ptr [ %i.jo, %.noexc226.us ], [ %i.jr, %.lr.ph.i.i.i.i.i217.us ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i222.us, i64 16 ; 2 uses
  %.not.i23.i.i223.us = icmp eq ptr %i.jd, null
  br i1 %.not.i23.i.i223.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jg) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us: ; preds = %bb.af, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us
  store ptr %i.jo, ptr %8, align 8
  store ptr %i.js, ptr %i.hi, align 8
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.jt, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us, %bb.ad
  %i.ju = phi ptr [ %i.jo, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us ], [ %.pre349, %bb.ad ] ; 6 uses
  %i.jv = phi ptr [ %i.js, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us ], [ %i.jc, %bb.ad ] ; 3 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = lshr exact i64 %i.jy, 4                 ; 3 uses
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = icmp slt i32 %i.ka, 3
  br i1 %i.kb, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us
  %i.kc = add nsw i64 %i.jz, -1
  %wide.trip.count.i.i.us = and i64 %i.jz, 2147483647
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv.i.i.us = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next.i.i.us, %bb.ah ] ; 3 uses
  %.023.i.i.us = phi i64 [ %i.kc, %bb.ag ], [ %indvars.iv.i.i.us, %bb.ah ]
  %.01821.i.i.us = phi double [ 0.000000e+00, %bb.ag ], [ %i.ks, %bb.ah ]
  %sext.i.i.us = shl i64 %.023.i.i.us, 32
  %i.kd = ashr exact i64 %sext.i.i.us, 28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kd ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = sitofp i64 %i.kf to double
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %indvars.iv.i.i.us ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = sitofp i64 %i.ki to double
  %i.kk = fadd double %i.kg, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = sitofp i64 %i.km to double
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = sitofp i64 %i.kp to double
  %i.kr = fsub double %i.kn, %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.kk, double %i.kr, double %.01821.i.i.us) ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us, label %bb.ah, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us: ; preds = %bb.ah
  %i.kt = fmul double %i.ks, -5.000000e-01
  %i.ku = fcmp ult double %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.ai, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us

bb.ai:                                            ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.kv = icmp ne ptr %i.ju, %i.jv
  %.sroa.0.08.i.i.i.us = getelementptr inbounds i8, ptr %i.jv, i64 -16 ; 2 uses
  %i.kw = icmp ult ptr %i.ju, %.sroa.0.08.i.i.i.us
  %or.cond.i.i.i.us = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond.i.i.i.us, label %.lr.ph.i.i.i228.us, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us

.lr.ph.i.i.i228.us:                               ; preds = %bb.ai, %.lr.ph.i.i.i228.us
  %.sroa.0.010.i.i.i.us = phi ptr [ %.sroa.0.0.i.i.i.us, %.lr.ph.i.i.i228.us ], [ %.sroa.0.08.i.i.i.us, %bb.ai ] ; 3 uses
  %.sroa.05.09.i.i.i.us = phi ptr [ %i.kx, %.lr.ph.i.i.i228.us ], [ %i.ju, %bb.ai ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i.i.us, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i.us, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i.us, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.us, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.us = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.us, i64 -16 ; 2 uses
  %i.ky = icmp ult ptr %i.kx, %.sroa.0.0.i.i.i.us
  br i1 %i.ky, label %.lr.ph.i.i.i228.us, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us, !llvm.loop !170

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197.us, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213.us, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %26

.loopexit.split-lp:                               ; preds = %.invoke419, %.noexc.i.i.i241
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %26

26:                                               ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %27 = load ptr, ptr %8, align 8                 ; 3 uses
  %.not.i.i.i229 = icmp eq ptr %27, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %i.hh, align 8
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %30, %31
  call void @_ZdlPvm(ptr noundef nonnull %27, i64 noundef %32) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230: ; preds = %26, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.an

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us: ; preds = %.lr.ph.i.i.i228.us, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us, %bb.ai, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.kz = load ptr, ptr %i.fs, align 8            ; 6 uses
  %i.la = load ptr, ptr %i.gg, align 8
  %.not.i231.us = icmp eq ptr %i.kz, %i.la
  br i1 %.not.i231.us, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.lb = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.lc = load ptr, ptr %8, align 8               ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i232.us = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i.i.i.i.i232.us, label %.noexc243.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lg = icmp ugt i64 %i.lf, 9223372036854775792
  br i1 %i.lg, label %.noexc.i.i.i241, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, !prof !60

.noexc.i.i.i241:                                  ; preds = %bb.ak
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc242 unwind label %.loopexit.split-lp

.noexc242:                                        ; preds = %.noexc.i.i.i241
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us: ; preds = %bb.ak
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #32
          to label %.noexc243.us unwind label %.loopexit

.noexc243.us:                                     ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us, %bb.aj
  %i.li = phi ptr [ null, %bb.aj ], [ %i.lh, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233.us ] ; 5 uses
  store ptr %i.li, ptr %i.kz, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  store ptr %i.li, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.lk, ptr %i.ll, align 8
  %i.lm = load ptr, ptr %8, align 8               ; 3 uses
  %i.ln = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i234.us = icmp eq ptr %i.lm, %i.ln
  br i1 %.not7.i.i.i.i.i.i234.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us, label %.lr.ph.i.i.i.i.i.i235.us

.lr.ph.i.i.i.i.i.i235.us:                         ; preds = %.noexc243.us, %.lr.ph.i.i.i.i.i.i235.us
  %.09.i.i.i.i.i.i236.us = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i235.us ], [ %i.li, %.noexc243.us ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i237.us = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i235.us ], [ %i.lm, %.noexc243.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i236.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i237.us, i64 16, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i237.us, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i236.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i238.us = icmp eq ptr %i.lo, %i.ln
  br i1 %.not.i.i.i.i.i.i238.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us, label %.lr.ph.i.i.i.i.i.i235.us, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us: ; preds = %.lr.ph.i.i.i.i.i.i235.us, %.noexc243.us
  %.0.lcssa.i.i.i.i.i.i240.us = phi ptr [ %i.li, %.noexc243.us ], [ %i.lp, %.lr.ph.i.i.i.i.i.i235.us ]
  store ptr %.0.lcssa.i.i.i.i.i.i240.us, ptr %i.lj, align 8
  %i.lq = load ptr, ptr %i.fs, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store ptr %i.lr, ptr %i.fs, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

bb.al:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge unwind label %.loopexit

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge: ; preds = %bb.al
  %.pre350 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us
  %i.ls = phi ptr [ %.pre350, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge ], [ %i.lm, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us ] ; 3 uses
  %.not.i.i.i246.us = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i246.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us
  %i.lt = load ptr, ptr %i.hh, align 8
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %exitcond343.not = icmp eq i64 %i.ia, %i.g
  br i1 %exitcond343.not, label %._crit_edge306, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us, !llvm.loop !316

bb.an:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, %bb.c
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98 ], [ %lpad.phi, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230 ], [ %i.ac, %bb.c ], [ %.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145 ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn76.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12MinkowskiSumERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  tail call void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 134
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 209
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !44

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %bb.a
  %i.ag = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 1)
          to label %bb.b unwind label %.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ah, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #33, !inline_history !178
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !82

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #33, !inline_history !178
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.ax = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #33, !inline_history !178
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.e
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #30, !inline_history !178
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13TranslatePathERKSt6vectorINS_8IntPointESaIS1_EERS3_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
!107 = distinct !{!107, !4}
!108 = distinct !{!108, !4}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !4}
!114 = distinct !{!114, !4}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNSt7__cxx114listIxSaIxEE4rendEv: argument 0"}
!117 = distinct !{!117, !"_ZNSt7__cxx114listIxSaIxEE4rendEv"}
!118 = distinct !{!118, !4}
!119 = distinct !{!119, !4}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNSt7__cxx114listIxSaIxEE4rendEv: argument 0"}
!122 = distinct !{!122, !"_ZNSt7__cxx114listIxSaIxEE4rendEv"}
!123 = distinct !{!123, !4}
!124 = distinct !{!124, !4}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNSt16reverse_iteratorISt20_List_const_iteratorIxEEppEi: argument 0"}
!127 = distinct !{!127, !"_ZNSt16reverse_iteratorISt20_List_const_iteratorIxEEppEi"}
!128 = distinct !{!128, !4}
!129 = distinct !{!129, !4}
!130 = distinct !{!130, !4}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = distinct !{!133, !4}
!134 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!135 = distinct !{!135, !4}
!136 = distinct !{!136, !4}
!137 = distinct !{!137, !4}
!138 = distinct !{!138, !4}
!139 = distinct !{!139, !4}
!140 = distinct !{!140, !4}
!141 = distinct !{!141, !4}
!142 = distinct !{!142, !4}
!143 = distinct !{!143, !4}
!144 = distinct !{!144, !4}
!145 = distinct !{!145, !4}
!146 = distinct !{!146, !4}
!147 = distinct !{!147, !4}
!148 = distinct !{!148, !4}
!149 = distinct !{!149, !4}
!150 = distinct !{!150, !4}
!151 = distinct !{!151, !4}
!152 = distinct !{!152, !4}
!153 = distinct !{!153, !4}
!154 = distinct !{!154, !4}
!155 = distinct !{!155, !4}
!156 = distinct !{!156, !4}
!157 = distinct !{!157, !4}
!158 = distinct !{!158, !4}
!159 = distinct !{!159, !4}
!160 = distinct !{!160, !4}
!161 = !{ptr @_ZN10ClipperLib13ClipperOffset5ClearEv}
!162 = distinct !{!162, !4}
!163 = !{ptr @_ZN10ClipperLib8PolyNodeD2Ev}
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!167 = distinct !{!167, !166, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!168 = distinct !{!168, !4}
!169 = distinct !{!169, !4}
!170 = distinct !{!170, !4}
!171 = distinct !{!171, !4}
!172 = distinct !{!172, !4}
!173 = !{ptr @_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN10ClipperLib11ClipperBase9GetBoundsEv: argument 0"}
!176 = distinct !{!176, !"_ZN10ClipperLib11ClipperBase9GetBoundsEv"}
!177 = distinct !{!177, !4}
!178 = !{ptr @_ZN10ClipperLib7ClipperD1Ev}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!181 = distinct !{!181, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!184 = distinct !{!184, !4}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!187 = distinct !{!187, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!190 = !{!191, !193}
!191 = distinct !{!191, !192, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!192 = distinct !{!192, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!193 = distinct !{!193, !192, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!194 = distinct !{!194, !4}
!195 = !{!196, !198}
!196 = distinct !{!196, !197, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!197 = distinct !{!197, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!198 = distinct !{!198, !197, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!199 = distinct !{!199, !4}
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!202 = distinct !{!202, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_"}
!203 = distinct !{!203, !202, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!204 = distinct !{!204, !4}
!205 = !{!206, !208}
!206 = distinct !{!206, !207, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!207 = distinct !{!207, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_"}
!208 = distinct !{!208, !207, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!209 = distinct !{!209, !4}
!210 = !{!211, !213}
!211 = distinct !{!211, !212, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!212 = distinct !{!212, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_"}
!213 = distinct !{!213, !212, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!216 = distinct !{!216, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_"}
!217 = distinct !{!217, !216, !"_ZSt19__relocate_object_aIN10ClipperLib11DoublePointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!218 = distinct !{!218, !4}
!219 = distinct !{!219, !4}
!220 = distinct !{!220, !4}
!221 = distinct !{!221, !4}
!222 = distinct !{!222, !4}
!223 = !{!224, !226}
!224 = distinct !{!224, !225, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!225 = distinct !{!225, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!226 = distinct !{!226, !225, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!227 = !{!228, !230}
!228 = distinct !{!228, !229, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!229 = distinct !{!229, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!230 = distinct !{!230, !229, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!231 = distinct !{!231, !4}
!232 = distinct !{!232, !4}
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!235 = distinct !{!235, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!239 = distinct !{!239, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!240 = distinct !{!240, !239, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!241 = distinct !{!241, !4}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN10ClipperLib11ClipperBase9GetBoundsEv: argument 0"}
!244 = distinct !{!244, !"_ZN10ClipperLib11ClipperBase9GetBoundsEv"}
!245 = distinct !{!245, !4}
!246 = distinct !{!246, !4}
!247 = !{!248, !250}
!248 = distinct !{!248, !249, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!249 = distinct !{!249, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!250 = distinct !{!250, !249, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!251 = !{!252, !254}
!252 = distinct !{!252, !253, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!253 = distinct !{!253, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!254 = distinct !{!254, !253, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!255 = !{!256, !258}
!256 = distinct !{!256, !257, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!257 = distinct !{!257, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!258 = distinct !{!258, !257, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!259 = !{!260, !262}
!260 = distinct !{!260, !261, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!261 = distinct !{!261, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!262 = distinct !{!262, !261, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!263 = !{!264, !266}
!264 = distinct !{!264, !265, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!265 = distinct !{!265, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!266 = distinct !{!266, !265, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!269 = distinct !{!269, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!270 = distinct !{!270, !269, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!271 = !{!272, !274}
!272 = distinct !{!272, !273, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!273 = distinct !{!273, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!274 = distinct !{!274, !273, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!275 = !{!276, !278}
!276 = distinct !{!276, !277, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!277 = distinct !{!277, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!278 = distinct !{!278, !277, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!279 = distinct !{!279, !4}
!280 = !{!281, !283}
!281 = distinct !{!281, !282, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!282 = distinct !{!282, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!283 = distinct !{!283, !282, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!284 = distinct !{!284, !4}
!285 = distinct !{!285, !4, !286}
!286 = !{!"llvm.loop.peeled.count", i32 1}
!287 = distinct !{!287, !4}
!288 = distinct !{!288, !4}
!289 = distinct !{!289, !4}
!290 = !{!291, !293}
!291 = distinct !{!291, !292, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!292 = distinct !{!292, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!293 = distinct !{!293, !292, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!294 = distinct !{!294, !4}
!295 = distinct !{!295, !4}
!296 = !{!297, !299}
!297 = distinct !{!297, !298, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!298 = distinct !{!298, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!299 = distinct !{!299, !298, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!300 = distinct !{!300, !4}
!301 = distinct !{!301, !4}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!304 = distinct !{!304, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!307 = distinct !{!307, !4}
!308 = !{!309, !311}
!309 = distinct !{!309, !310, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!310 = distinct !{!310, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!311 = distinct !{!311, !310, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!312 = !{!313, !315}
!313 = distinct !{!313, !314, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!314 = distinct !{!314, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!315 = distinct !{!315, !314, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!316 = distinct !{!316, !4}
!317 = distinct !{!317, !4}
!318 = distinct !{!318, !4}
!319 = distinct !{!319, !4}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!322 = distinct !{!322, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!327 = distinct !{!327, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!332 = distinct !{!332, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!335 = distinct !{!335, !4}
!336 = distinct !{!336, !4}
!337 = distinct !{!337, !4}
!338 = !{ptr @_ZN10ClipperLib7ClipperD0Ev, ptr @_ZN10ClipperLib7ClipperD1Ev}
!339 = !{ptr @_ZN10ClipperLib7ClipperD0Ev}
!340 = !{ptr @_ZN10ClipperLib16clipperExceptionD2Ev}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!343 = distinct !{!343, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!348 = distinct !{!348, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!351 = distinct !{!351, !4}
!352 = distinct !{!352, !4}
!353 = distinct !{!353, !4}
!354 = distinct !{!354, !4}
!355 = distinct !{!355, !4}
!356 = distinct !{!356, !4}
!357 = distinct !{!357, !4}
!358 = distinct !{!358, !4}
!359 = distinct !{!359, !4}
!360 = distinct !{!360, !4}
!361 = distinct !{!361, !4}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!364 = distinct !{!364, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!365 = !{!366}
!366 = distinct !{!366, !364, !"_ZSt19__relocate_object_aISt6vectorIN10ClipperLib8IntPointESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!367 = distinct !{!367, !4}
!368 = distinct !{null, null, null, null, null}
!369 = distinct !{!369, !4}
!370 = distinct !{null, null, null, null, null, null}
!371 = distinct !{!371, !4}
!372 = distinct !{!372, !4}
!373 = distinct !{null, null, null}
!374 = distinct !{null, null, null}
!375 = distinct !{!375, !4}
!376 = distinct !{!376, !4}
!377 = distinct !{!377, !4}
!378 = distinct !{null, null}
!379 = distinct !{null, null, null}
!380 = distinct !{!380, !4}
!381 = !{!382, !384}
!382 = distinct !{!382, !383, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!383 = distinct !{!383, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!384 = distinct !{!384, !383, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
