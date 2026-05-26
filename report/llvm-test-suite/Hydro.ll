inline.NumInlined: 461
inline.NumDeleted: 172
begin_hunk_0_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
  %i.ex = icmp eq ptr %i.ew, %i.ae
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.w
  %i.ey = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bk

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.an
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.x
  %i.fd = load i64, ptr %i.an, align 8, !tbaa !34
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bk

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.aw
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.y
  %i.fi = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bk

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bf
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.z
  %i.fn = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bk

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIdSaIdEED2Ev.exit157, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !44
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit157

_ZNSt6vectorIdSaIdEED2Ev.exit157:                 ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.bo
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit157
  %i.fy = load i64, ptr %i.bo, align 8, !tbaa !34
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bk

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %15, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIdSaIdEED2Ev.exit162, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !44
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit162

_ZNSt6vectorIdSaIdEED2Ev.exit162:                 ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.gh = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.cp
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit162
  %i.gj = load i64, ptr %i.cp, align 8, !tbaa !34
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bk

bb.ae:                                            ; preds = %bb.q, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.af:                                            ; preds = %bb.n
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 24) #22
  br label %bb.bk

bb.ag:                                            ; preds = %bb.p
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 24) #22
  br label %bb.bk

bb.ah:                                            ; preds = %bb.r
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 32) #22
  br label %bb.bk

bb.ai:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.gp = phi ptr [ %i.dx, %.lr.ph ], [ %i.hr, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.gq = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23
          to label %bb.aj unwind label %bb.as     ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gr = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %16, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !50
  invoke void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %17, ptr noundef nonnull align 8 dereferenceable(616) %i.gr, double noundef %i.gt)
          to label %bb.ak unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88) %i.gq, ptr noundef nonnull %i.gr, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.gu = load ptr, ptr %i.dy, align 8, !tbaa !51 ; 4 uses
  %i.gv = load ptr, ptr %i.dz, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.gu, %i.gv
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.gq, ptr %i.gu, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gw, ptr %i.dy, align 8, !tbaa !51
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit

bb.an:                                            ; preds = %bb.al
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !55  ; 4 uses
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 6 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775800
  br i1 %i.hb, label %bb.ao, label %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc166 unwind label %.thread

.noexc166:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.hc = ashr exact i64 %i.ha, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hc ; 2 uses
  %i.he = call i64 @llvm.umin.i64(i64 %i.hd, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.hd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #23
          to label %.noexc167 unwind label %bb.at ; 4 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.ha ; 2 uses
  store ptr %i.gq, ptr %i.hh, align 8, !tbaa !53
  %i.hi = icmp sgt i64 %i.ha, 0
  br i1 %i.hi, label %bb.ap, label %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ap:                                            ; preds = %.noexc167
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 8 %i.gx, i64 %i.ha, i1 false)
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ap, %.noexc167
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.ha) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !55
  store ptr %i.hj, ptr %i.dy, align 8, !tbaa !51
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.hk, ptr %i.dz, align 8, !tbaa !52
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.am
  %i.hl = load ptr, ptr %17, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit
  %i.hm = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hq = load ptr, ptr %i.bs, align 8, !tbaa !49
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 3
  %i.hw = icmp ugt i64 %i.hv, %indvars.iv.next
  br i1 %i.hw, label %bb.ai, label %.preheader, !llvm.loop !60

bb.as:                                            ; preds = %bb.ai
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit170.thread:          ; preds = %bb.aj
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.av

bb.at:                                            ; preds = %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ak
  %.024.ph = phi i1 [ true, %bb.ak ], [ false, %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hz = load ptr, ptr %17, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i169 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIiSaIiEED2Ev.exit170, label %bb.au

.thread:                                          ; preds = %bb.ao
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %17, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i169304 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i169304, label %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309, label %.thread323

.thread323:                                       ; preds = %.thread
  %i.ib = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ie) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309:       ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bk

bb.au:                                            ; preds = %bb.at
  %i.if = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.hz to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ii) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %.024.ph, label %bb.av, label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit170:                 ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %.024.ph, label %bb.av, label %bb.bk

bb.av:                                            ; preds = %bb.au, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit170
  %.pn66211 = phi { ptr, i32 } [ %i.hy, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread ], [ %lpad.loopexit217, %_ZNSt6vectorIiSaIiEED2Ev.exit170 ], [ %lpad.loopexit217, %bb.au ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 88) #22
  br label %bb.bk

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit182, %.preheader
  call void @_ZN5Hydro4initEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  ret void

bb.aw:                                            ; preds = %.lr.ph227, %_ZNSt6vectorIiSaIiEED2Ev.exit182
  %indvars.iv237 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next238, %_ZNSt6vectorIiSaIiEED2Ev.exit182 ] ; 2 uses
  %i.ij = phi ptr [ %i.ec, %.lr.ph227 ], [ %i.jl, %_ZNSt6vectorIiSaIiEED2Ev.exit182 ]
  %i.ik = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23
          to label %bb.ax unwind label %bb.bg     ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %i.il = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %18, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv237
  %i.in = load double, ptr %i.im, align 8, !tbaa !50
  invoke void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %19, ptr noundef nonnull align 8 dereferenceable(616) %i.il, double noundef %i.in)
          to label %bb.ay unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ik, ptr noundef nonnull %i.il, ptr noundef nonnull %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.io = load ptr, ptr %i.ed, align 8, !tbaa !51 ; 4 uses
  %i.ip = load ptr, ptr %i.ee, align 8, !tbaa !52
  %.not.i.i171 = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i.i171, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.ik, ptr %i.io, align 8, !tbaa !53
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr %i.iq, ptr %i.ed, align 8, !tbaa !51
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180

bb.bb:                                            ; preds = %bb.az
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !55  ; 4 uses
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 6 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.bc, label %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc178 unwind label %.thread312

.noexc178:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172: ; preds = %bb.bb
  %i.iw = ashr exact i64 %i.iu, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i173 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i.i.i173, %i.iw ; 2 uses
  %i.iy = call i64 @llvm.umin.i64(i64 %i.ix, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i174 = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i.i.i174)
  %i.iz = shl nuw nsw i64 %i.iy, 3
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #23
          to label %.noexc179 unwind label %bb.bh ; 4 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 %i.iu ; 2 uses
  store ptr %i.ik, ptr %i.jb, align 8, !tbaa !53
  %i.jc = icmp sgt i64 %i.iu, 0
  br i1 %i.jc, label %bb.bd, label %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175

bb.bd:                                            ; preds = %.noexc179
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ja, ptr align 8 %i.ir, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175

_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175: ; preds = %bb.bd, %.noexc179
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.not.i17.i.i.i176 = icmp eq ptr %i.ir, null
  br i1 %.not.i17.i.i.i176, label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iu) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177

_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177: ; preds = %bb.be, %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
  store ptr %i.ja, ptr %i.a, align 8, !tbaa !55
  store ptr %i.jd, ptr %i.ed, align 8, !tbaa !51
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iy
  store ptr %i.je, ptr %i.ee, align 8, !tbaa !52
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180

_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180: ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177, %bb.ba
  %i.jf = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit182, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180
  %i.jg = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jj) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit182

_ZNSt6vectorIiSaIiEED2Ev.exit182:                 ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.jk = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 3
  %i.jq = icmp ugt i64 %i.jp, %indvars.iv.next238
  br i1 %i.jq, label %bb.aw, label %._crit_edge, !llvm.loop !62

bb.bg:                                            ; preds = %bb.aw
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184.thread:          ; preds = %bb.ax
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172, %bb.ay
  %.0.ph = phi i1 [ true, %bb.ay ], [ false, %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172 ] ; 2 uses
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jt = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i183 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIiSaIiEED2Ev.exit184, label %bb.bi

.thread312:                                       ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i183315 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i183315, label %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320, label %.thread326

.thread326:                                       ; preds = %.thread312
  %i.jv = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jy) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320:       ; preds = %.thread312
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.jz = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jt to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.kc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br i1 %.0.ph, label %bb.bj, label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br i1 %.0.ph, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit184
  %.pn63214 = phi { ptr, i32 } [ %i.js, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %lpad.loopexit, %bb.bi ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 88) #22
  br label %bb.bk

bb.bk:                                            ; preds = %.thread326, %.thread323, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309, %bb.au, %_ZNSt6vectorIiSaIiEED2Ev.exit170, %bb.av, %bb.as, %bb.bi, %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.bj, %bb.bg, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.go, %bb.ah ], [ %i.gl, %bb.ae ], [ %i.gn, %bb.ag ], [ %i.gm, %bb.af ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %lpad.loopexit, %bb.bi ], [ %lpad.loopexit217, %bb.au ], [ %.pn66211, %bb.av ], [ %lpad.loopexit217, %_ZNSt6vectorIiSaIiEED2Ev.exit170 ], [ %i.hx, %bb.as ], [ %.pn63214, %bb.bj ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %i.jr, %bb.bg ], [ %lpad.loopexit.split-lp218, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309 ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320 ], [ %lpad.loopexit.split-lp218, %.thread323 ], [ %lpad.loopexit.split-lp, %.thread326 ]
  %i.kd = load ptr, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIdSaIdEED2Ev.exit186, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !44
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit186

_ZNSt6vectorIdSaIdEED2Ev.exit186:                 ; preds = %bb.bk, %bb.bl
  %i.kj = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIdSaIdEED2Ev.exit188, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit186
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !44
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.ko) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit188

_ZNSt6vectorIdSaIdEED2Ev.exit188:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit186, %bb.bm
  %i.kp = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit188
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !52
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ku) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit

_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit188, %bb.bn
  resume { ptr, i32 } %.pn66.pn.pn.pn
}

declare noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN7PolyGasC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN3TTSC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN3QCSC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(616), double noundef) local_unnamed_addr #1

declare void @_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(616), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN5Hydro4initEv(ptr noundef nonnull align 8 captures(none) dereferenceable(408) initializes((248, 408)) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 9 uses
  %i.p = sext i32 %i.g to i64                     ; 2 uses
  %i.q = shl nsw i64 %i.p, 4                      ; 4 uses
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !78
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.t, ptr %i.u, align 8, !tbaa !79
  %i.v = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.v, ptr %i.w, align 8, !tbaa !80
  %i.x = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.x, ptr %i.y, align 8, !tbaa !81
  %i.z = shl nsw i64 %i.p, 3
  %i.aa = tail call noalias noundef ptr @malloc(i64 noundef %i.z) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
end_hunk_0
