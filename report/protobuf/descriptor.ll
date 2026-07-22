inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.110, ptr noundef nonnull %11, i64 noundef 3)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.by = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bh
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ca = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !912
  invoke void @_ZN6google8protobuf11EnumOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.cd)
          to label %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit unwind label %bb.t

_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !913 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ci = or i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.o, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !535 ; 3 uses
  %i.co = trunc i64 %i.cn to i1
  br i1 %i.co, label %bb.p, label %bb.q, !prof !163

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i64 %i.cn, -1
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cs = inttoptr i64 %i.cn to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi ptr [ %i.cr, %bb.p ], [ %i.cs, %bb.q ]
  %i.ct = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !22
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i: ; preds = %.noexc, %bb.n
  %i.cu = phi ptr [ %i.ct, %.noexc ], [ %i.ck, %bb.n ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(72) %i.cf)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.u

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf11EnumOptionsC2ERKS1_.exit, %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !674
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1007
  %i.cz = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %i.cy, ptr noundef %2)
          to label %.preheader unwind label %bb.u ; 0 uses

.preheader:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !906
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !783
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit

bb.r:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.s:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_119VisibilityToKeywordB5cxx11ERKNS0_16SymbolVisibilityE.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bh
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.s
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.be

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.u:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.ay, %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_11EnumOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.v:                                             ; preds = %.lr.ph
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.dq = load ptr, ptr %i.dd, align 8, !tbaa !466
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.dq, i64 %indvars.iv
  invoke void @_ZNK6google8protobuf19EnumValueDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, i32 noundef %i.e, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = load i32, ptr %i.da, align 4, !tbaa !906
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %.lr.ph, label %._crit_edge, !llvm.loop !1044

bb.x:                                             ; preds = %._crit_edge
  %i.dv = load ptr, ptr %13, align 8, !tbaa !20
  %i.dw = load i64, ptr %i.r, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store i64 %i.dw, ptr %10, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dv, ptr %i.dx, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 13, ptr nonnull @.str.94, ptr noundef nonnull %10, i64 noundef 1)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.dy = load i32, ptr %i.de, align 8, !tbaa !783
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph71.preheader, label %._crit_edge72

.lr.ph71.preheader:                               ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.lr.ph71

._crit_edge72:                                    ; preds = %bb.aq, %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !23 ; 3 uses
  %i.eu = add i64 %i.et, -2                       ; 2 uses
  %i.ev = icmp ult i64 %i.et, 2
  br i1 %i.ev, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %._crit_edge72
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.eu, i64 noundef 2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit unwind label %bb.u ; 0 uses

bb.z:                                             ; preds = %bb.x
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.aq
  %indvars.iv184 = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next185, %bb.aq ] ; 2 uses
  %i.ey = load ptr, ptr %i.ea, align 8, !tbaa !784
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv184 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !787 ; 3 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !785 ; 3 uses
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph71
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.fe = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.fb, ptr noundef nonnull %i.eo)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.ep                    ; 2 uses
  store i64 %i.fg, ptr %17, align 8, !tbaa !847
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %i.fg, ptr %9, align 16
  store ptr %i.eo, ptr %i.er, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 4, ptr nonnull @.str.95, ptr noundef nonnull %9, i64 noundef 1)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.aq

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.bc

bb.ae:                                            ; preds = %.lr.ph71
  %i.fi = icmp eq i32 %i.fb, 2147483647
  br i1 %i.fi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.fj = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.fc, ptr noundef nonnull %i.ek)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.fk, %i.el                    ; 2 uses
  store i64 %i.fl, ptr %18, align 8, !tbaa !847
  store ptr %i.ek, ptr %i.em, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store i64 %i.fl, ptr %8, align 16
  store ptr %i.ek, ptr %i.en, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 11, ptr nonnull @.str.96, ptr noundef nonnull %8, i64 noundef 1)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %bb.bc

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  %i.fn = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.fc, ptr noundef nonnull %i.eb)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.ec
  store i64 %i.fp, ptr %19, align 8, !tbaa !847
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.fq = load i32, ptr %i.fa, align 4, !tbaa !787
  %i.fr = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.fq, ptr noundef nonnull %i.ee)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.ef                    ; 2 uses
  store i64 %i.ft, ptr %20, align 8, !tbaa !847
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %.sroa.0.0.copyload.i.i108 = load i64, ptr %19, align 8, !tbaa !19
  %.sroa.2.0.copyload.i.i110 = load ptr, ptr %i.ed, align 8, !tbaa !270
  store i64 %.sroa.0.0.copyload.i.i108, ptr %7, align 16
  store ptr %.sroa.2.0.copyload.i.i110, ptr %i.eh, align 8
  store i64 %i.ft, ptr %i.ei, align 16
  store ptr %i.ee, ptr %i.ej, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 10, ptr nonnull @.str.97, ptr noundef nonnull %7, i64 noundef 2)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn58 = phi { ptr, i32 } [ %i.fv, %bb.ao ], [ %i.fu, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ah, %bb.am, %bb.ac
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.fw = load i32, ptr %i.de, align 8, !tbaa !783
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next185, %i.fx
  br i1 %i.fy, label %.lr.ph71, label %._crit_edge72, !llvm.loop !1045

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !908
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.gc = load ptr, ptr %13, align 8, !tbaa !20
  %i.gd = load i64, ptr %i.r, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i64 %i.gd, ptr %6, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gc, ptr %i.ge, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 13, ptr nonnull @.str.94, ptr noundef nonnull %6, i64 noundef 1)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.gf = load i32, ptr %i.fz, align 4, !tbaa !908
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %bb.as
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  br label %.lr.ph75

._crit_edge76:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.as
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !23 ; 3 uses
  %i.gn = add i64 %i.gm, -2                       ; 2 uses
  %i.go = icmp ult i64 %i.gm, 2
  br i1 %i.go, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117

.invoke:                                          ; preds = %._crit_edge76, %._crit_edge72
  %i.gp = phi i64 [ %i.eu, %._crit_edge72 ], [ %i.gn, %._crit_edge76 ]
  %i.gq = phi i64 [ %i.et, %._crit_edge72 ], [ %i.gm, %._crit_edge76 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.329, i64 noundef %i.gp, i64 noundef %i.gq) #44
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117: ; preds = %._crit_edge76
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.gn, i64 noundef 2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121 unwind label %bb.u ; 0 uses

bb.at:                                            ; preds = %bb.ar
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %indvars.iv187 = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.gt = load ptr, ptr %i.cv, align 8, !tbaa !674
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40
  %i.gw = load ptr, ptr %i.gh, align 8, !tbaa !910
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv187
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !320 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !23
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, i64 %i.hb, ptr %i.gz)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.lr.ph75
  %i.hc = icmp slt i32 %i.gv, 1000                ; 2 uses
  %i.hd = select i1 %i.hc, ptr @.str.98, ptr @.str.95
  %i.he = select i1 %i.hc, i64 6, i64 4
  %i.hf = load ptr, ptr %21, align 8, !tbaa !20
  %i.hg = load i64, ptr %i.gi, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i64 %i.hg, ptr %5, align 16
  store ptr %i.hf, ptr %i.gj, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 %i.he, ptr nonnull %i.hd, ptr noundef nonnull %5, i64 noundef 1)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.hh = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gk
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.av
  %i.hj = load i64, ptr %i.gk, align 8, !tbaa !22
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.hl = load i32, ptr %i.fz, align 4, !tbaa !908
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next188, %i.hm
  br i1 %i.hn, label %.lr.ph75, label %._crit_edge76, !llvm.loop !1046

bb.aw:                                            ; preds = %.lr.ph75
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.ax:                                            ; preds = %bb.au
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.gk
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.ax
  %i.hs = load i64, ptr %i.gk, align 8, !tbaa !22
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.aw
  %.pn56 = phi { ptr, i32 } [ %i.ho, %bb.aw ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.hp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.hu = load ptr, ptr %13, align 8, !tbaa !20
  %i.hv = load i64, ptr %i.r, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i64 %i.hv, ptr %4, align 16
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hu, ptr %i.hw, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 4, ptr nonnull @.str.99, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter14AddPostCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %2)
          to label %bb.az unwind label %bb.u

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6google8protobuf11EnumOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.hx = load ptr, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.p
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb:bb.a
_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not501 = icmp eq ptr %i.lt, null
  br i1 %.not501, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, label %bb.bj

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.be, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  invoke void @_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb(ptr noundef nonnull align 8 dereferenceable(160) %i.lm, i32 noundef %i.j, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3, i1 noundef zeroext true)
          to label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread._crit_edge unwind label %bb.bd

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread._crit_edge: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread
  %.pre = load i32, ptr %i.ho, align 8, !tbaa !896
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread._crit_edge, %bb.be, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  %i.nb = phi i32 [ %.pre, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread._crit_edge ], [ %i.lk, %bb.be ], [ %i.lk, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ] ; 2 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next529, %i.nc
  br i1 %i.nd, label %.lr.ph172, label %.preheader165, !llvm.loop !1104

.preheader164:                                    ; preds = %bb.bl, %.preheader165
  %i.ne = load i32, ptr %i.dp, align 8, !tbaa !893
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph176.preheader, label %.preheader163

.lr.ph176.preheader:                              ; preds = %.preheader164
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph176

bb.bk:                                            ; preds = %.lr.ph174
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.bl
  %indvars.iv531 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next532, %bb.bl ] ; 2 uses
  %i.ni = load ptr, ptr %i.li, align 8, !tbaa !902
  %i.nj = getelementptr inbounds nuw [88 x i8], ptr %i.ni, i64 %indvars.iv531
  invoke void @_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %i.nj, i32 noundef %i.j, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.bl unwind label %bb.bk

bb.bl:                                            ; preds = %.lr.ph174
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.nk = load i32, ptr %i.lf, align 4, !tbaa !899
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next532, %i.nl
  br i1 %i.nm, label %.lr.ph174, label %.preheader164, !llvm.loop !1105

.preheader163:                                    ; preds = %bb.bq, %.preheader164
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !683
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph178.preheader, label %.preheader

.lr.ph178.preheader:                              ; preds = %.preheader163
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %27, i64 72 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %.lr.ph178

bb.bm:                                            ; preds = %bb.bp, %bb.bn
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.bq
  %indvars.iv534 = phi i64 [ 0, %.lr.ph176.preheader ], [ %indvars.iv.next535, %bb.bq ] ; 2 uses
  %i.ol = load ptr, ptr %i.ng, align 8, !tbaa !439
  %i.om = getelementptr inbounds nuw [88 x i8], ptr %i.ol, i64 %indvars.iv534 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 3
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = and i8 %i.oo, 8
  %.not.i246 = icmp eq i8 %i.op, 0
  br i1 %.not.i246, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph176
  invoke void @_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %i.om, i32 noundef %i.j, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.bq unwind label %bb.bm

bb.bo:                                            ; preds = %.lr.ph176
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !nonnull !51 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 48
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !1106
  %i.ou = icmp eq ptr %i.ot, %i.om
  br i1 %i.ou, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZNK6google8protobuf15OneofDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %i.or, i32 noundef %i.j, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.bq unwind label %bb.bm

bb.bq:                                            ; preds = %bb.bn, %bb.bp, %bb.bo
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.ov = load i32, ptr %i.dp, align 8, !tbaa !893
  %i.ow = sext i32 %i.ov to i64
  %i.ox = icmp slt i64 %indvars.iv.next535, %i.ow
  br i1 %i.ox, label %.lr.ph176, label %.preheader163, !llvm.loop !1107

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %.preheader163
  %i.oy = load i32, ptr %i.dv, align 4, !tbaa !690
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %.lr.ph181, label %._crit_edge.thread

.lr.ph181:                                        ; preds = %.preheader
  %i.pa = add nsw i32 %1, 2                       ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !691 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !430 ; 3 uses
  %.not.peel = icmp eq ptr %i.pe, null
  br i1 %.not.peel, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.lr.ph181
  %i.pf = load ptr, ptr %20, align 8, !tbaa !20
  %i.pg = load i64, ptr %i.w, align 8, !tbaa !23
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !137 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %.0.copyload.i.i.i252 = load i16, ptr %i.pj, align 1
  %i.pk = zext i16 %.0.copyload.i.i.i252 to i64   ; 2 uses
  %i.pl = xor i64 %i.pk, -1
  %i.pm = getelementptr inbounds i8, ptr %i.pi, i64 %i.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  store i64 %i.pg, ptr %17, align 16
  %i.pn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.pf, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 %i.pk, ptr %i.po, align 16
  %i.pp = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.pm, ptr %i.pp, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 17, ptr nonnull @.str.93, ptr noundef nonnull %17, i64 noundef 2)
          to label %bb.bs unwind label %.loopexit.split-lp192

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  %.pre550 = load ptr, ptr %i.pb, align 8, !tbaa !691
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph181
  %i.pq = phi ptr [ %.pre550, %bb.bs ], [ %i.pc, %.lr.ph181 ]
  invoke void @_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %i.pq, i32 noundef %i.pa, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.bu unwind label %.loopexit.split-lp197

bb.bu:                                            ; preds = %bb.bt
  %i.pr = load i32, ptr %i.dv, align 4, !tbaa !690 ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 1
  br i1 %i.ps, label %.peel.next.preheader, label %._crit_edge

.peel.next.preheader:                             ; preds = %bb.bu
  %i.pt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %.peel.next

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %indvars.iv537 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ] ; 5 uses
  %i.px = load ptr, ptr %20, align 8, !tbaa !20
  %i.py = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  %i.pz = load ptr, ptr %i.nq, align 8, !tbaa !775
  %i.qa = getelementptr inbounds nuw [40 x i8], ptr %i.pz, i64 %indvars.iv537
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !769
  %i.qc = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.qb, ptr noundef nonnull %i.nr)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %.lr.ph178
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = sub i64 %i.qd, %i.ns                    ; 2 uses
  store i64 %i.qe, ptr %25, align 8, !tbaa !847
  store ptr %i.nr, ptr %i.nt, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store i64 %i.py, ptr %16, align 16
  store ptr %i.px, ptr %i.nu, align 8
  store i64 %i.qe, ptr %i.nv, align 16
  store ptr %i.nr, ptr %i.nw, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 17, ptr nonnull @.str.87, ptr noundef nonnull %16, i64 noundef 2)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  %i.qf = load ptr, ptr %i.nq, align 8, !tbaa !775 ; 2 uses
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.qf, i64 %indvars.iv537 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !772 ; 2 uses
  %i.qj = load i32, ptr %i.qg, align 8, !tbaa !769
  %i.qk = add nsw i32 %i.qj, 1
  %i.ql = icmp sgt i32 %i.qi, %i.qk
  br i1 %i.ql, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  %i.qm = add nsw i32 %i.qi, -1
  %i.qn = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.qm, ptr noundef nonnull %i.nx)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = sub i64 %i.qo, %i.ny                    ; 2 uses
  store i64 %i.qp, ptr %26, align 8, !tbaa !847
  store ptr %i.nx, ptr %i.nz, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  store i64 %i.qp, ptr %15, align 16
  store ptr %i.nx, ptr %i.oa, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 6, ptr nonnull @.str.88, ptr noundef nonnull %15, i64 noundef 1)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %.pre549 = load ptr, ptr %i.nq, align 8, !tbaa !775
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bv, %.lr.ph178
  %i.qq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  br label %bb.em

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.em

bb.cc:                                            ; preds = %bb.bz, %bb.bw
  %i.qs = phi ptr [ %.pre549, %bb.bz ], [ %i.qf, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  %i.qt = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %indvars.iv537
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !773
  invoke void @_ZN6google8protobuf21ExtensionRangeOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(88) %i.qv)
          to label %_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_.exit unwind label %bb.ck

_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_.exit: ; preds = %bb.cc
  %i.qw = load ptr, ptr %i.nq, align 8, !tbaa !775
  %i.qx = getelementptr inbounds nuw [40 x i8], ptr %i.qw, i64 %indvars.iv537
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !774 ; 2 uses
  %.not.i276 = icmp eq ptr %i.qz, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i276, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_21ExtensionRangeOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_.exit
  %i.ra = load i32, ptr %i.ob, align 8, !tbaa !3
  %i.rb = or i32 %i.ra, 4
  store i32 %i.rb, ptr %i.ob, align 8, !tbaa !3
  %i.rc = load ptr, ptr %i.oc, align 8, !tbaa !22 ; 2 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.ce, label %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit.i

bb.ce:                                            ; preds = %bb.cd
  %i.re = load i64, ptr %i.od, align 8, !tbaa !535 ; 3 uses
  %i.rf = trunc i64 %i.re to i1
  br i1 %i.rf, label %bb.cf, label %bb.cg, !prof !163

bb.cf:                                            ; preds = %bb.ce
  %i.rg = add nsw i64 %i.re, -1
  %i.rh = inttoptr i64 %i.rg to ptr
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i277

bb.cg:                                            ; preds = %bb.ce
  %i.rj = inttoptr i64 %i.re to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i277

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i277: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i278 = phi ptr [ %i.ri, %bb.cf ], [ %i.rj, %bb.cg ]
  %i.rk = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i.i278)
          to label %.noexc279 unwind label %bb.cl ; 2 uses

.noexc279:                                        ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i277
  store ptr %i.rk, ptr %i.oc, align 8, !tbaa !22
  br label %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit.i: ; preds = %.noexc279, %bb.cd
  %i.rl = phi ptr [ %i.rk, %.noexc279 ], [ %i.rc, %bb.cd ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.rl, ptr noundef nonnull align 8 dereferenceable(72) %i.qz)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_21ExtensionRangeOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.cl

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_21ExtensionRangeOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf21ExtensionRangeOptionsC2ERKS1_.exit, %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  store ptr %i.oe, ptr %28, align 8, !tbaa !16
  store i64 0, ptr %i.of, align 8, !tbaa !23
  store i8 0, ptr %i.oe, align 8, !tbaa !22
  %i.rm = load ptr, ptr %i.dk, align 8, !tbaa !669
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !1007
  %i.rp = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_122FormatBracketedOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %i.ro, ptr noundef %28)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_21ExtensionRangeOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  br i1 %i.rp, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #40
  store i64 2, ptr %29, align 8
  store ptr @.str.89, ptr %i.og, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  %i.rq = load ptr, ptr %28, align 8, !tbaa !20
  %i.rr = load i64, ptr %i.of, align 8, !tbaa !23
  store i64 %i.rr, ptr %30, align 8
  store ptr %i.rq, ptr %i.oh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  store i64 1, ptr %31, align 8
  store ptr @.str.90, ptr %i.oi, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %31)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  br label %bb.co

bb.ck:                                            ; preds = %bb.cc
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cl:                                            ; preds = %_ZN6google8protobuf21ExtensionRangeOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i277
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cm:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_21ExtensionRangeOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  br label %bb.cr

bb.co:                                            ; preds = %bb.ch, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  store i64 2, ptr %32, align 8
  store ptr @.str.91, ptr %i.oj, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %32)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %i.rw = load ptr, ptr %28, align 8, !tbaa !20   ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.oe
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.cp
  %i.ry = load i64, ptr %i.oe, align 8, !tbaa !22
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  call void @_ZN6google8protobuf21ExtensionRangeOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %27) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.sa = load i32, ptr %i.nn, align 8, !tbaa !683
  %i.sb = sext i32 %i.sa to i64
  %i.sc = icmp slt i64 %indvars.iv.next538, %i.sb
  br i1 %i.sc, label %.lr.ph178, label %.preheader, !llvm.loop !1108

bb.cq:                                            ; preds = %bb.co
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn, %bb.cm
  %.pn146 = phi { ptr, i32 } [ %i.sd, %bb.cq ], [ %i.rv, %bb.cn ], [ %i.ru, %bb.cm ]
  %i.se = load ptr, ptr %28, align 8, !tbaa !20   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.oe
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.cr
  %i.sg = load i64, ptr %i.oe, align 8, !tbaa !22
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %bb.cl
  %.pn146.pn = phi { ptr, i32 } [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ], [ %i.rt, %bb.cl ]
  call void @_ZN6google8protobuf21ExtensionRangeOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %27) #40
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.ck
  %.pn146.pn.pn = phi { ptr, i32 } [ %.pn146.pn, %bb.cs ], [ %i.rs, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  br label %bb.em

._crit_edge:                                      ; preds = %bb.cz, %bb.bu
  %i.si = phi i32 [ %i.pr, %bb.bu ], [ %i.te, %bb.cz ]
  %i.sj = icmp sgt i32 %i.si, 0
  br i1 %i.sj, label %bb.da, label %._crit_edge.thread

.loopexit196:                                     ; preds = %bb.cy
  %lpad.loopexit198 = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.loopexit.split-lp197:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.cz
  %indvars.iv540 = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next541, %bb.cz ] ; 4 uses
  %.0126179 = phi ptr [ %i.pe, %.peel.next.preheader ], [ %.1127, %bb.cz ] ; 2 uses
  %i.sk = load ptr, ptr %i.pb, align 8, !tbaa !691 ; 2 uses
  %i.sl = getelementptr inbounds nuw [88 x i8], ptr %i.sk, i64 %indvars.iv540
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !430
  %.not = icmp eq ptr %i.sn, %.0126179
  br i1 %.not, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %.peel.next
  %i.so = load ptr, ptr %20, align 8, !tbaa !20
  %i.sp = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  store i64 %i.sp, ptr %14, align 16
  store ptr %i.so, ptr %i.pt, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 6, ptr nonnull @.str.92, ptr noundef nonnull %14, i64 noundef 1)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.sq = load ptr, ptr %i.pb, align 8, !tbaa !691
  %i.sr = getelementptr inbounds nuw [88 x i8], ptr %i.sq, i64 %indvars.iv540
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 32
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !430 ; 2 uses
  %i.su = load ptr, ptr %20, align 8, !tbaa !20
  %i.sv = load i64, ptr %i.w, align 8, !tbaa !23
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !137 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %.0.copyload.i.i.i292 = load i16, ptr %i.sy, align 1
  %i.sz = zext i16 %.0.copyload.i.i.i292 to i64   ; 2 uses
  %i.ta = xor i64 %i.sz, -1
  %i.tb = getelementptr inbounds i8, ptr %i.sx, i64 %i.ta
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 %i.sv, ptr %13, align 16
  store ptr %i.su, ptr %i.pu, align 8
  store i64 %i.sz, ptr %i.pv, align 16
  store ptr %i.tb, ptr %i.pw, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 17, ptr nonnull @.str.93, ptr noundef nonnull %13, i64 noundef 2)
          to label %bb.cx unwind label %.loopexit191

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  %.pre551 = load ptr, ptr %i.pb, align 8, !tbaa !691
  br label %bb.cy

.loopexit191:                                     ; preds = %bb.cw
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.loopexit.split-lp192:                            ; preds = %bb.br
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.cy:                                            ; preds = %bb.cx, %.peel.next
  %i.tc = phi ptr [ %.pre551, %bb.cx ], [ %i.sk, %.peel.next ]
  %.1127 = phi ptr [ %i.st, %bb.cx ], [ %.0126179, %.peel.next ]
  %i.td = getelementptr inbounds nuw [88 x i8], ptr %i.tc, i64 %indvars.iv540
  invoke void @_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %i.td, i32 noundef %i.pa, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(3) %3)
          to label %bb.cz unwind label %.loopexit196

bb.cz:                                            ; preds = %bb.cy
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.te = load i32, ptr %i.dv, align 4, !tbaa !690 ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = icmp slt i64 %indvars.iv.next541, %i.tf
  br i1 %i.tg, label %.peel.next, label %._crit_edge, !llvm.loop !1109

bb.da:                                            ; preds = %._crit_edge
  %i.th = load ptr, ptr %20, align 8, !tbaa !20
  %i.ti = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i64 %i.ti, ptr %12, align 16
  %i.tj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.th, ptr %i.tj, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 6, ptr nonnull @.str.92, ptr noundef nonnull %12, i64 noundef 1)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %._crit_edge.thread

bb.dc:                                            ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %bb.ef
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dd:                                            ; preds = %bb.da
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

._crit_edge.thread:                               ; preds = %.preheader, %bb.db, %._crit_edge
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !777
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %bb.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit

bb.de:                                            ; preds = %._crit_edge.thread
  %i.tp = load ptr, ptr %20, align 8, !tbaa !20
  %i.tq = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store i64 %i.tq, ptr %11, align 16
  %i.tr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.tp, ptr %i.tr, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 13, ptr nonnull @.str.94, ptr noundef nonnull %11, i64 noundef 1)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.ts = load i32, ptr %i.tm, align 8, !tbaa !777
  %i.tt = icmp sgt i32 %i.ts, 0
  br i1 %i.tt, label %.lr.ph184.preheader, label %._crit_edge185

.lr.ph184.preheader:                              ; preds = %bb.df
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tv = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ue = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %.lr.ph184

._crit_edge185:                                   ; preds = %bb.dx, %bb.df
  %i.um = load i64, ptr %i.cn, align 8, !tbaa !23 ; 3 uses
  %i.un = add i64 %i.um, -2                       ; 2 uses
  %i.uo = icmp ult i64 %i.um, 2
  br i1 %i.uo, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %._crit_edge185
  %i.up = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.un, i64 noundef 2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit unwind label %bb.dc ; 0 uses

bb.dg:                                            ; preds = %bb.de
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.dx
  %indvars.iv543 = phi i64 [ 0, %.lr.ph184.preheader ], [ %indvars.iv.next544, %bb.dx ] ; 2 uses
  %i.ur = load ptr, ptr %i.tu, align 8, !tbaa !778
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv543 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !781 ; 2 uses
  %i.uv = load i32, ptr %i.us, align 4, !tbaa !779 ; 4 uses
  %i.uw = add nsw i32 %i.uv, 1
  %i.ux = icmp eq i32 %i.uu, %i.uw
  br i1 %i.ux, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %.lr.ph184
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #40
  %i.uy = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.uv, ptr noundef nonnull %i.ui)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.uz = ptrtoint ptr %i.uy to i64
  %i.va = sub i64 %i.uz, %i.uj                    ; 2 uses
  store i64 %i.va, ptr %33, align 8, !tbaa !847
  store ptr %i.ui, ptr %i.uk, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store i64 %i.va, ptr %10, align 16
  store ptr %i.ui, ptr %i.ul, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 4, ptr nonnull @.str.95, ptr noundef nonnull %10, i64 noundef 1)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #40
  br label %bb.dx

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #40
  br label %bb.em

bb.dl:                                            ; preds = %.lr.ph184
  %i.vc = icmp sgt i32 %i.uu, 536870911
  br i1 %i.vc, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  %i.vd = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.uv, ptr noundef nonnull %i.ue)
          to label %bb.dn unwind label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = sub i64 %i.ve, %i.uf                    ; 2 uses
  store i64 %i.vf, ptr %34, align 8, !tbaa !847
  store ptr %i.ue, ptr %i.ug, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i64 %i.vf, ptr %9, align 16
  store ptr %i.ue, ptr %i.uh, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 11, ptr nonnull @.str.96, ptr noundef nonnull %9, i64 noundef 1)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  br label %bb.em

bb.dq:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #40
  %i.vh = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.uv, ptr noundef nonnull %i.tv)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = sub i64 %i.vi, %i.tw
  store i64 %i.vj, ptr %35, align 8, !tbaa !847
  store ptr %i.tv, ptr %i.tx, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #40
  %i.vk = load i32, ptr %i.ut, align 4, !tbaa !781
  %i.vl = add nsw i32 %i.vk, -1
  %i.vm = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.vl, ptr noundef nonnull %i.ty)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = sub i64 %i.vn, %i.tz                    ; 2 uses
  store i64 %i.vo, ptr %36, align 8, !tbaa !847
  store ptr %i.ty, ptr %i.ua, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %.sroa.0.0.copyload.i.i334 = load i64, ptr %35, align 8, !tbaa !19
  %.sroa.2.0.copyload.i.i336 = load ptr, ptr %i.tx, align 8, !tbaa !270
  store i64 %.sroa.0.0.copyload.i.i334, ptr %8, align 16
  store ptr %.sroa.2.0.copyload.i.i336, ptr %i.ub, align 8
  store i64 %i.vo, ptr %i.uc, align 16
  store ptr %i.ty, ptr %i.ud, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 10, ptr nonnull @.str.97, ptr noundef nonnull %8, i64 noundef 2)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.dx

bb.du:                                            ; preds = %bb.dq
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #40
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.pn136 = phi { ptr, i32 } [ %i.vq, %bb.dv ], [ %i.vp, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #40
  br label %bb.em

bb.dx:                                            ; preds = %bb.do, %bb.dt, %bb.dj
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %i.vr = load i32, ptr %i.tm, align 8, !tbaa !777
  %i.vs = sext i32 %i.vr to i64
  %i.vt = icmp slt i64 %indvars.iv.next544, %i.vs
  br i1 %i.vt, label %.lr.ph184, label %._crit_edge185, !llvm.loop !1110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %._crit_edge.thread
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !927
  %i.vw = icmp sgt i32 %i.vv, 0
  br i1 %i.vw, label %bb.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit351

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.vx = load ptr, ptr %20, align 8, !tbaa !20
  %i.vy = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store i64 %i.vy, ptr %7, align 16
  %i.vz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.vx, ptr %i.vz, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 13, ptr nonnull @.str.94, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.wa = load i32, ptr %i.vu, align 4, !tbaa !927
  %i.wb = icmp sgt i32 %i.wa, 0
  br i1 %i.wb, label %.lr.ph188.preheader, label %._crit_edge189

.lr.ph188.preheader:                              ; preds = %bb.dz
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.wd = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.wf = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  br label %.lr.ph188

._crit_edge189:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.dz
  %i.wg = load i64, ptr %i.cn, align 8, !tbaa !23 ; 3 uses
  %i.wh = add i64 %i.wg, -2                       ; 2 uses
  %i.wi = icmp ult i64 %i.wg, 2
  br i1 %i.wi, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i347

.invoke:                                          ; preds = %._crit_edge189, %._crit_edge185
  %i.wj = phi i64 [ %i.un, %._crit_edge185 ], [ %i.wh, %._crit_edge189 ]
  %i.wk = phi i64 [ %i.um, %._crit_edge185 ], [ %i.wg, %._crit_edge189 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.329, i64 noundef %i.wj, i64 noundef %i.wk) #44
          to label %.cont unwind label %bb.dc

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i347: ; preds = %._crit_edge189
  %i.wl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.wh, i64 noundef 2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit351 unwind label %bb.dc ; 0 uses

bb.ea:                                            ; preds = %bb.dy
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %indvars.iv546 = phi i64 [ 0, %.lr.ph188.preheader ], [ %indvars.iv.next547, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ] ; 2 uses
  %i.wn = load ptr, ptr %i.dk, align 8, !tbaa !669
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #40
  %i.wq = load ptr, ptr %i.wc, align 8, !tbaa !929
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %indvars.iv546
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !320 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !20
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !23
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, i64 %i.wv, ptr %i.wt)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %.lr.ph188
  %i.ww = icmp slt i32 %i.wp, 1000                ; 2 uses
  %i.wx = select i1 %i.ww, ptr @.str.98, ptr @.str.95
  %i.wy = select i1 %i.ww, i64 6, i64 4
  %i.wz = load ptr, ptr %37, align 8, !tbaa !20
  %i.xa = load i64, ptr %i.wd, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i64 %i.xa, ptr %6, align 16
  store ptr %i.wz, ptr %i.we, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 %i.wy, ptr nonnull %i.wx, ptr noundef nonnull %6, i64 noundef 1)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.xb = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.wf
  br i1 %i.xc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.ec
  %i.xd = load i64, ptr %i.wf, align 8, !tbaa !22
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xe) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.xf = load i32, ptr %i.vu, align 4, !tbaa !927
  %i.xg = sext i32 %i.xf to i64
  %i.xh = icmp slt i64 %indvars.iv.next547, %i.xg
  br i1 %i.xh, label %.lr.ph188, label %._crit_edge189, !llvm.loop !1111

bb.ed:                                            ; preds = %.lr.ph188
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

bb.ee:                                            ; preds = %bb.eb
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.wf
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.ee
  %i.xm = load i64, ptr %i.wf, align 8, !tbaa !22
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360, %bb.ed
  %.pn134 = phi { ptr, i32 } [ %i.xi, %bb.ed ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360 ], [ %i.xj, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br label %bb.em

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.xo = load ptr, ptr %20, align 8, !tbaa !20
  %i.xp = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i64 %i.xp, ptr %5, align 16
  %i.xq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.xo, ptr %i.xq, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %2, i64 4, ptr nonnull @.str.99, ptr noundef nonnull %5, i64 noundef 1)
          to label %bb.ef unwind label %bb.el

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit351
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter14AddPostCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %21, ptr noundef nonnull %2)
          to label %bb.eg unwind label %bb.dc

bb.eg:                                            ; preds = %bb.ef
  %i.xr = load i64, ptr %24, align 8, !tbaa !73   ; 3 uses
  %i.xs = icmp ne i64 %i.xr, 0
  call void @llvm.assume(i1 %i.xs)
  %i.xt = icmp ult i64 %i.xr, 2
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf14DescriptorPool27NewPlaceholderWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEENS1_15PlaceholderTypeE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !23
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !22
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.av, ptr %i.ah, align 8, !tbaa !20
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !23
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !23
  %i.bg = load i64, ptr %i.ai, align 8, !tbaa !22
  store i64 %i.bg, ptr %i.at, align 8, !tbaa !22
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bh = load i64, ptr %i.at, align 8, !tbaa !22
  store ptr %i.av, ptr %i.ah, align 8, !tbaa !20
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !23
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !22
  store i64 %i.bk, ptr %i.at, align 8, !tbaa !22
  %.not.i.i123 = icmp eq ptr %i.as, null
  br i1 %.not.i.i123, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.as, ptr %7, align 8, !tbaa !20
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ai, ptr %7, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.k
  %i.bl = phi ptr [ %i.as, %bb.o ], [ %i.ai, %bb.p ], [ %i.av, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ap, align 8, !tbaa !23
  store i8 0, ptr %i.bl, align 1, !tbaa !22
  %i.bm = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ai
  br i1 %i.bn, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bo = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.bq = sub nuw i64 %.sroa.0174.0, %.1.i.i268
  br label %bb.q

.loopexit:                                        ; preds = %.preheader, %bb.f
  %i.br = call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIS8_EEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.bs, ptr %6, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.bs, align 8, !tbaa !22
  %.not21.i.i129 = icmp eq ptr %6, %i.br
  br i1 %.not21.i.i129, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i132, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i130, !prof !163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i130: ; preds = %.loopexit
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !23
  store i8 0, ptr %i.bu, align 1, !tbaa !22
  %.pre.i.i131 = load ptr, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i130, %.loopexit
  %i.bw = phi ptr [ %.pre.i.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i130 ], [ %i.bs, %.loopexit ]
  store i64 0, ptr %i.bt, align 8, !tbaa !23
  store i8 0, ptr %i.bw, align 1, !tbaa !22
  %i.bx = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bs
  br i1 %i.by, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i132
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit
  %.sroa.0171.0 = phi i64 [ %.sroa.0174.0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit ], [ %i.bq, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.br, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJRA1_KcEEEPKS8_DpOT_.exit ], [ %i.ah, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE15AllocateStringsIJSt17basic_string_viewIcS6_EEEEPKS8_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store i64 %.sroa.0174.0, ptr %10, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.15.0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store i64 18, ptr %11, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.133, ptr %i.cb, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.cc = load ptr, ptr %9, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.cf = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool31NewPlaceholderFileWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %i.ce, ptr %i.cc, ptr noundef nonnull align 8 dereferenceable(224) %8)
          to label %bb.r unwind label %bb.ai      ; 7 uses

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.r
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %.0, ptr %i.cl, align 8, !tbaa !146
  %.not44.i26.i = icmp ult i64 %.sroa.0171.0, 65536
  %.not44.i.i = icmp ult i64 %.sroa.0174.0, 65536
  %or.cond.i = select i1 %.not44.i26.i, i1 %.not44.i.i, i1 false ; 2 uses
  br i1 %i.u, label %bb.s, label %bb.al

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  store i32 1, ptr %i.cm, align 4, !tbaa !879
  %i.cn = call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayINS0_14EnumDescriptorEEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef 1) ; 14 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.cn, i8 0, i64 88, i1 false)
  br i1 %or.cond.i, label %.lr.ph.i.preheader.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.s
  %i.cp = trunc nuw nsw i64 %.sroa.0174.0 to i32
  %i.cq = add nuw nsw i32 %i.cp, 5
  %i.cr = call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIcEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef %i.cq) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.15.0, i64 %.sroa.0174.0, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0174.0 ; 3 uses
  store i8 0, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 2 uses
  %i.cu = trunc nuw i64 %.sroa.0171.0 to i16
  store i16 %i.cu, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.cw = trunc nuw i64 %.sroa.0174.0 to i16
  store i16 %i.cw, ptr %i.cv, align 1
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE24AllocatePlaceholderNamesESt17basic_string_viewIcS6_Em.exit

.lr.ph.i.preheader.i.i:                           ; preds = %bb.s
  %i.cx = call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIcEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef 12) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cx, ptr noundef nonnull align 1 dereferenceable(7) @.str.146, i64 7, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 7
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store i16 7, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  store i16 7, ptr %i.da, align 1
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE24AllocatePlaceholderNamesESt17basic_string_viewIcS6_Em.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE24AllocatePlaceholderNamesESt17basic_string_viewIcS6_Em.exit: ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i.i
  %.sroa.03.0.i = phi ptr [ %i.ct, %.lr.ph.i.preheader.i ], [ %i.cz, %.lr.ph.i.preheader.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.03.0.i, ptr %i.db, align 8, !tbaa !270
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cf, ptr %i.dc, align 8, !tbaa !674
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr %i.dd, align 8, !tbaa !912
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.de, align 8, !tbaa !913
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.df, align 8, !tbaa !1150
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = or i8 %i.dh, 1                          ; 2 uses
  store i8 %i.di, ptr %i.dg, align 1
  %i.dj = load i8, ptr %2, align 1, !tbaa !22
  %.not89 = icmp eq i8 %i.dj, 46
  %i.dk = select i1 %.not89, i8 0, i8 2
  %i.dl = and i8 %i.di, -3
  %i.dm = or disjoint i8 %i.dk, %i.dl
  store i8 %i.dm, ptr %i.dg, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !906
  %i.do = call fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayINS0_19EnumValueDescriptorEEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef 1) ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !466
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i16 -1, ptr %i.dq, align 2, !tbaa !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.do, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  %i.dr = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !23 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  br i1 %i.dt, label %.noexc.i140, label %bb.t

.noexc.i140:                                      ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE24AllocatePlaceholderNamesESt17basic_string_viewIcS6_Em.exit
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.du, ptr %12, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 17, ptr %i.b, align 8, !tbaa !19
  %i.dv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %.noexc.i140
  store ptr %i.dv, ptr %12, align 8, !tbaa !20
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dv, ptr noundef nonnull align 1 dereferenceable(17) @.str.134, i64 17, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !23
  %i.dy = load ptr, ptr %12, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.u

bb.t:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE24AllocatePlaceholderNamesESt17basic_string_viewIcS6_Em.exit
  %i.ea = load ptr, ptr %.0, align 8, !tbaa !20
  store i64 %i.ds, ptr %13, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ea, ptr %i.eb, align 8
  store i64 18, ptr %14, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.135, ptr %i.ec, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.u unwind label %.thread204

bb.u:                                             ; preds = %.noexc, %bb.t
  %i.ed = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIS8_EEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %8, i32 noundef 2)
          to label %.noexc152 unwind label %bb.aj ; 15 uses

.noexc152:                                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ee, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 17, ptr %i.a, align 8, !tbaa !19
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc153 unwind label %bb.aj ; 2 uses

.noexc153:                                        ; preds = %.noexc152
  store ptr %i.ef, ptr %4, align 8, !tbaa !20
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ef, ptr noundef nonnull align 1 dereferenceable(17) @.str.134, i64 17, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !23
  %i.ei = load ptr, ptr %4, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 5 uses
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 4 uses
  %i.en = icmp eq ptr %i.el, %i.em
  %i.eo = load ptr, ptr %4, align 8, !tbaa !20    ; 6 uses
  %i.ep = icmp eq ptr %i.eo, %i.ee                ; 2 uses
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %.noexc153
  br i1 %i.ep, label %bb.v, label %.thread.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141: ; preds = %.noexc153
  br i1 %i.ep, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i142

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  %i.eq = load i64, ptr %i.eh, align 8, !tbaa !23 ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %.not21.i.i147 = icmp eq ptr %4, %i.ed
  br i1 %.not21.i.i147, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144, label %bb.w, !prof !163

bb.w:                                             ; preds = %bb.v
  switch i64 %i.eq, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !22
  store i8 %i.es, ptr %i.el, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.eo, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148: ; preds = %bb.y, %bb.x, %bb.w
  %i.et = load i64, ptr %i.eh, align 8, !tbaa !23 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !23
  %i.ev = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et
  store i8 0, ptr %i.ew, align 1, !tbaa !22
  %.pre.i.i149 = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144

.thread.i.i151:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eo, ptr %i.ed, align 8, !tbaa !20
  %i.ey = load i64, ptr %i.eh, align 8, !tbaa !23
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !23
  %i.ez = load i64, ptr %i.ee, align 8, !tbaa !22
  store i64 %i.ez, ptr %i.em, align 8, !tbaa !22
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i142: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141
  %i.fa = load i64, ptr %i.em, align 8, !tbaa !22
  store ptr %i.eo, ptr %i.ed, align 8, !tbaa !20
  %i.fb = load i64, ptr %i.eh, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !23
  %i.fd = load i64, ptr %i.ee, align 8, !tbaa !22
  store i64 %i.fd, ptr %i.em, align 8, !tbaa !22
  %.not.i.i143 = icmp eq ptr %i.el, null
  br i1 %.not.i.i143, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i142
  store ptr %i.el, ptr %4, align 8, !tbaa !20
  store i64 %i.fa, ptr %i.ee, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i142, %.thread.i.i151
  store ptr %i.ee, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144: ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148, %bb.v
  %i.fe = phi ptr [ %i.el, %bb.z ], [ %i.ee, %bb.aa ], [ %i.eo, %bb.v ], [ %.pre.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i148 ]
  store i64 0, ptr %i.eh, align 8, !tbaa !23
  store i8 0, ptr %i.fe, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.ff, ptr %5, align 8, !tbaa !16
  %i.fg = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !23 ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nuw nsw i64 %i.fk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, ptr noundef nonnull align 8 dereferenceable(1) %i.fh, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i144
  store ptr %i.fg, ptr %5, align 8, !tbaa !20
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !22
  store i64 %i.fn, ptr %i.ff, align 8, !tbaa !22
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.ab
  %i.fo = phi ptr [ %i.ff, %bb.ab ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 6 uses
  %i.fp = phi i64 [ %i.fk, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !23
  store ptr %i.fh, ptr %12, align 8, !tbaa !20
  store i64 0, ptr %i.fq, align 8, !tbaa !23
  store i8 0, ptr %i.fh, align 8, !tbaa !22
  %i.fs = load ptr, ptr %i.ek, align 8, !tbaa !20 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 4 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  %i.fv = icmp eq ptr %i.fo, %i.ff                ; 2 uses
  br i1 %i.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  br i1 %i.fv, label %bb.ac, label %.thread.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  br i1 %i.fv, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i10.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i
  %i.fw = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fw)
  %.not21.i12.i = icmp eq ptr %5, %i.ek
  br i1 %.not21.i12.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit17.i, label %bb.ad, !prof !163

bb.ad:                                            ; preds = %bb.ac
  switch i64 %i.fp, label %bb.af [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i13.i
    i64 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load i8, ptr %i.fo, align 1, !tbaa !22
  store i8 %i.fx, ptr %i.fs, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i13.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fs, ptr align 1 %i.fo, i64 %i.fp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i13.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.fy = load i64, ptr %i.fr, align 8, !tbaa !23 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !23
  %i.ga = load ptr, ptr %i.ek, align 8, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1, !tbaa !22
  %.pre.i14.i = load ptr, ptr %5, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit17.i

.thread.i16.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store ptr %i.fo, ptr %i.ek, align 8, !tbaa !20
  store i64 %i.fp, ptr %i.gc, align 8, !tbaa !23
  %i.gd = load i64, ptr %i.ff, align 8, !tbaa !22
  store i64 %i.gd, ptr %i.ft, align 8, !tbaa !22
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i10.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9.i
  %i.ge = load i64, ptr %i.ft, align 8, !tbaa !22
  store ptr %i.fo, ptr %i.ek, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.az, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i ], [ 8, %bb.az ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i ], [ %.val36, %bb.az ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.val36, i64 %.sroa.0.020.i.idx.i.i.i ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.020.i.ptr.i.i.i, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i110 = load i64, ptr %.val36, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i to i32 ; 6 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i to i32 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i110 to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i110, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i.i to i32
  %i.jm = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i.i
  %i.jn = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.jo = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.jn, i1 %i.jo, i1 false
  %i.jp = select i1 %i.jm, i1 true, i1 %spec.select.i.i.i.i.i.i
  br i1 %i.jp, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jq = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 8
  br i1 %i.jq, label %bb.bb, label %bb.bc, !prof !322

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val36, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i.i.i110, ptr %i.jr, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.0.0.copyload.i10.i.i.i.i.i = load i64, ptr %.pn19.i.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i11.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i10.i.i.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i12.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i10.i.i.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i13.i.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i12.i.i.i.i.i to i32
  %i.js = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i11.i.i.i.i.i
  %i.jt = icmp sge i32 %.sroa.03.0.extract.trunc.i.i11.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.ju = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i13.i.i.i.i.i
  %spec.select.i.i14.i.i.i.i.i = select i1 %i.jt, i1 %i.ju, i1 false
  %i.jv = select i1 %i.js, i1 true, i1 %spec.select.i.i14.i.i.i.i.i
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.copyload.i17.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i113, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.copyload.i10.i.i.i.i.i, %bb.bd ]
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.bd ] ; 3 uses
  %.sroa.08.015.i.i.i.i.i = phi ptr [ %.sroa.0.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.bd ]
  store i64 %.sroa.0.0.copyload.i17.i.i.i.i.i, ptr %.sroa.08.015.i.i.i.i.i, align 4
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i113 = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i113 to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i113, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i.i.i to i32
  %i.jw = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i
  %i.jx = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.jy = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.jx, i1 %i.jy, i1 false
  %i.jz = select i1 %i.jw, i1 true, i1 %spec.select.i.i.i.i.i.i.i
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i, !llvm.loop !1640

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.bd, %bb.bc, %bb.bb
  %.sink.i.i.i.i = phi ptr [ %.val36, %bb.bc ], [ %.val36, %bb.bb ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.bd ], [ %.sroa.0.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %.sroa.01.0.copyload.i.i.i.i.i, ptr %.sink.i.i.i.i, align 4
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i111 = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 128
  br i1 %.not.i.i.i.i111, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !1641

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_.exit.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.val36, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ka, %.val
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit", label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.kk, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i" ], [ %i.ka, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_.exit.i.i.i" ] ; 5 uses
  %i.kb = load i64, ptr %.sroa.0.07.i.i.i.i, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.kb to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %i.kb, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i10.i.i16.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i11.i.i17.i.i.i = trunc i64 %.sroa.0.0.copyload.i10.i.i16.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i12.i.i18.i.i.i = lshr i64 %.sroa.0.0.copyload.i10.i.i16.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i13.i.i19.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i12.i.i18.i.i.i to i32
  %i.kc = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i11.i.i17.i.i.i
  %i.kd = icmp sge i32 %.sroa.03.0.extract.trunc.i.i11.i.i17.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  %i.ke = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i13.i.i19.i.i.i
  %spec.select.i.i14.i.i20.i.i.i = select i1 %i.kd, i1 %i.ke, i1 false
  %i.kf = select i1 %i.kc, i1 true, i1 %spec.select.i.i14.i.i20.i.i.i
  br i1 %i.kf, label %.lr.ph.i.i22.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i22.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i22.i.i.i
  %.sroa.0.0.copyload.i17.i.i23.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i27.i.i.i, %.lr.ph.i.i22.i.i.i ], [ %.sroa.0.0.copyload.i10.i.i16.i.i.i, %.lr.ph.i15.i.i.i ]
  %.sroa.0.016.i.i24.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i22.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.08.015.i.i25.i.i.i = phi ptr [ %.sroa.0.016.i.i24.i.i.i, %.lr.ph.i.i22.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i15.i.i.i ]
  store i64 %.sroa.0.0.copyload.i17.i.i23.i.i.i, ptr %.sroa.08.015.i.i25.i.i.i, align 4
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i24.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i27.i.i.i = load i64, ptr %.sroa.0.0.i.i26.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i28.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i27.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i29.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i27.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i30.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i29.i.i.i to i32
  %i.kg = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i28.i.i.i
  %i.kh = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i28.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  %i.ki = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i30.i.i.i
  %spec.select.i.i.i.i31.i.i.i = select i1 %i.kh, i1 %i.ki, i1 false
  %i.kj = select i1 %i.kg, i1 true, i1 %spec.select.i.i.i.i31.i.i.i
  br i1 %i.kj, label %.lr.ph.i.i22.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1640

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.016.i.i24.i.i.i, %.lr.ph.i.i22.i.i.i ]
  store i64 %i.kb, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i21.i.i.i112 = icmp eq ptr %i.kk, %.val
  br i1 %.not.i21.i.i.i112, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit", label %.lr.ph.i15.i.i.i, !llvm.loop !1642

bb.be:                                            ; preds = %bb.az
  %.not18.i34.i.i.i = icmp eq ptr %scevgep.i.i.i, %.val
  br i1 %.not18.i34.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit", label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i
  %.sroa.0.020.i36.i.i.i = phi ptr [ %.sroa.0.0.i54.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i ], [ %scevgep.i.i.i, %bb.be ] ; 6 uses
  %.pn19.i37.i.i.i = phi ptr [ %.sroa.0.020.i36.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i ], [ %.val36, %bb.be ] ; 4 uses
  %.sroa.01.0.copyload.i.i38.i.i.i = load i64, ptr %.sroa.0.020.i36.i.i.i, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i39.i.i.i = load i64, ptr %.val36, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i40.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i38.i.i.i to i32 ; 6 uses
  %.sroa.2.0.extract.shift.i.i.i41.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i38.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i42.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i41.i.i.i to i32 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i43.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i39.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i44.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i39.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i45.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i44.i.i.i to i32
  %i.kl = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i40.i.i.i, %.sroa.03.0.extract.trunc.i.i.i43.i.i.i
  %i.km = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i43.i.i.i, %.sroa.0.0.extract.trunc.i.i.i40.i.i.i
  %i.kn = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i42.i.i.i, %.sroa.24.0.extract.trunc.i.i.i45.i.i.i
  %spec.select.i.i.i46.i.i.i = select i1 %i.km, i1 %i.kn, i1 false
  %i.ko = select i1 %i.kl, i1 true, i1 %spec.select.i.i.i46.i.i.i
  br i1 %i.ko, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %.lr.ph.i35.i.i.i
  %i.kp = ptrtoint ptr %.sroa.0.020.i36.i.i.i to i64
  %i.kq = sub i64 %i.kp, %i.jf                    ; 3 uses
  %i.kr = ashr exact i64 %i.kq, 3                 ; 2 uses
  %i.ks = icmp sgt i64 %i.kr, 1
  br i1 %i.ks, label %bb.bg, label %bb.bh, !prof !322

bb.bg:                                            ; preds = %bb.bf
  %i.kt = getelementptr inbounds nuw i8, ptr %.pn19.i37.i.i.i, i64 16
  %i.ku = sub nsw i64 0, %i.kr
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.ku
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kv, ptr noundef nonnull align 4 dereferenceable(1) %.val36, i64 %i.kq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.kw = icmp eq i64 %i.kq, 8
  br i1 %i.kw, label %bb.bi, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.kx = getelementptr inbounds nuw i8, ptr %.pn19.i37.i.i.i, i64 8
  store i64 %.sroa.0.0.copyload.i.i39.i.i.i, ptr %i.kx, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i

bb.bj:                                            ; preds = %.lr.ph.i35.i.i.i
  %.sroa.0.0.copyload.i10.i.i47.i.i.i = load i64, ptr %.pn19.i37.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i11.i.i48.i.i.i = trunc i64 %.sroa.0.0.copyload.i10.i.i47.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i12.i.i49.i.i.i = lshr i64 %.sroa.0.0.copyload.i10.i.i47.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i13.i.i50.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i12.i.i49.i.i.i to i32
  %i.ky = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i40.i.i.i, %.sroa.03.0.extract.trunc.i.i11.i.i48.i.i.i
  %i.kz = icmp sge i32 %.sroa.03.0.extract.trunc.i.i11.i.i48.i.i.i, %.sroa.0.0.extract.trunc.i.i.i40.i.i.i
  %i.la = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i42.i.i.i, %.sroa.24.0.extract.trunc.i.i13.i.i50.i.i.i
  %spec.select.i.i14.i.i51.i.i.i = select i1 %i.kz, i1 %i.la, i1 false
  %i.lb = select i1 %i.ky, i1 true, i1 %spec.select.i.i14.i.i51.i.i.i
  br i1 %i.lb, label %.lr.ph.i.i56.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %bb.bj, %.lr.ph.i.i56.i.i.i
  %.sroa.0.0.copyload.i17.i.i57.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i61.i.i.i, %.lr.ph.i.i56.i.i.i ], [ %.sroa.0.0.copyload.i10.i.i47.i.i.i, %bb.bj ]
  %.sroa.0.016.i.i58.i.i.i = phi ptr [ %.sroa.0.0.i.i60.i.i.i, %.lr.ph.i.i56.i.i.i ], [ %.pn19.i37.i.i.i, %bb.bj ] ; 3 uses
  %.sroa.08.015.i.i59.i.i.i = phi ptr [ %.sroa.0.016.i.i58.i.i.i, %.lr.ph.i.i56.i.i.i ], [ %.sroa.0.020.i36.i.i.i, %bb.bj ]
  store i64 %.sroa.0.0.copyload.i17.i.i57.i.i.i, ptr %.sroa.08.015.i.i59.i.i.i, align 4
  %.sroa.0.0.i.i60.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i58.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i61.i.i.i = load i64, ptr %.sroa.0.0.i.i60.i.i.i, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i62.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i61.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i63.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i61.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i64.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i63.i.i.i to i32
  %i.lc = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i40.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i62.i.i.i
  %i.ld = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i62.i.i.i, %.sroa.0.0.extract.trunc.i.i.i40.i.i.i
  %i.le = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i42.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i64.i.i.i
  %spec.select.i.i.i.i65.i.i.i = select i1 %i.ld, i1 %i.le, i1 false
  %i.lf = select i1 %i.lc, i1 true, i1 %spec.select.i.i.i.i65.i.i.i
  br i1 %i.lf, label %.lr.ph.i.i56.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i, !llvm.loop !1640

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i: ; preds = %.lr.ph.i.i56.i.i.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.sink.i53.i.i.i = phi ptr [ %.val36, %bb.bi ], [ %.val36, %bb.bg ], [ %.val36, %bb.bh ], [ %.sroa.0.020.i36.i.i.i, %bb.bj ], [ %.sroa.0.016.i.i58.i.i.i, %.lr.ph.i.i56.i.i.i ]
  store i64 %.sroa.01.0.copyload.i.i38.i.i.i, ptr %.sink.i53.i.i.i, align 4
  %.sroa.0.0.i54.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i36.i.i.i, i64 8 ; 2 uses
  %.not.i55.i.i.i = icmp eq ptr %.sroa.0.0.i54.i.i.i, %.val
  br i1 %.not.i55.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit", label %.lr.ph.i35.i.i.i, !llvm.loop !1641

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i52.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_.exit.i.i.i.i", %bb.be, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_.exit.i.i.i", %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EE9push_backEOS8_.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i32 1, ptr %i.c, align 4, !tbaa !3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !1561 ; 2 uses
  %.not = icmp eq ptr %i.lh, null
  br i1 %.not, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.a, ptr %4, align 8, !tbaa !1541
  store ptr %3, ptr %i.n, align 8, !tbaa !1643
  store ptr %i.c, ptr %i.o, align 8, !tbaa !91
  store ptr %i.b, ptr %i.p, align 8, !tbaa !91
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !699
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !137 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.ll, align 1
  %i.lm = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ln = xor i64 %i.lm, -1
  %i.lo = getelementptr inbounds i8, ptr %i.lk, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !1559
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS4_14FileDescriptorERKNS4_19FileDescriptorProtoEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.q, align 8, !tbaa !1210
  store ptr %4, ptr %5, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.lm, ptr nonnull %i.lo, ptr noundef nonnull align 8 dereferenceable(16) %i.lh, i32 noundef %i.lq, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %5)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bn

.loopexit145:                                     ; preds = %_ZNKSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp146:                            ; preds = %bb.al
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit150:                                     ; preds = %_ZNKSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i100
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp151:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEEZNS4_19SuggestFieldNumbersES6_S9_E3$_3EvT_SH_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %.val45 = load ptr, ptr %3, align 8             ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %.val45, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val46 = load ptr, ptr %i.m, align 8
  %i.ls = ptrtoint ptr %.val46 to i64
  %i.lt = ptrtoint ptr %.val45 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %.val45, i64 noundef %i.lu) #41
  br label %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit

_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %.pre193.pre = load i32, ptr %i.d, align 8, !tbaa !876
  br label %bb.bp

bb.bp:                                            ; preds = %bb.j, %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit
  %.pre193 = phi i32 [ %.pre193194, %bb.j ], [ %.pre193.pre, %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEE4findIS8_EENSK_8iteratorERKT_.exit, %bb.bp
  %.pre193195 = phi i32 [ %.pre193194, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEE4findIS8_EENSK_8iteratorERKT_.exit ], [ %.pre193, %bb.bp ]
  %i.lv = phi i32 [ %i.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEE4findIS8_EENSK_8iteratorERKT_.exit ], [ %.pre193, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp slt i64 %indvars.iv.next184, %i.lw
  br i1 %i.lx, label %bb.b, label %._crit_edge168, !llvm.loop !1645

bb.br:                                            ; preds = %.loopexit150, %.loopexit.split-lp151, %.loopexit145, %.loopexit.split-lp146, %.loopexit, %.loopexit.split-lp, %.loopexit129, %.loopexit.split-lp130, %.loopexit135, %.loopexit.split-lp136, %.loopexit140, %.loopexit.split-lp141, %bb.bm
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp148, %.loopexit.split-lp146 ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp136 ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp130 ], [ %i.lr, %bb.bm ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit137, %.loopexit135 ], [ %lpad.loopexit131, %.loopexit129 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit145 ], [ %lpad.loopexit152, %.loopexit150 ], [ %lpad.loopexit.split-lp153, %.loopexit.split-lp151 ]
  %.val43 = load ptr, ptr %3, align 8             ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %.val43, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit118, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val44 = load ptr, ptr %i.m, align 8
  %i.ly = ptrtoint ptr %.val44 to i64
  %i.lz = ptrtoint ptr %.val43 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.val43, i64 noundef %i.ma) #41
  br label %_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit118

_ZNSt6vectorIZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS1_14FileDescriptorERKNS1_19FileDescriptorProtoEE5RangeSaIS8_EED2Ev.exit118: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder17OptionInterpreter20UpdateSourceCodeInfoEPNS0_14SourceCodeInfoE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedPtrField", align 8 ; 23 uses
  %3 = alloca %"class.std::vector.195", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79
  %.not.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = or i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !554
  %.not116141 = icmp eq i32 %i.i, 0
  br i1 %.not116141, label %._crit_edge149.thread, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !557
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  %i.n = add i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = select i1 %i.m, ptr %i.g, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br label %bb.c

._crit_edge149:                                   ; preds = %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit
  %i.v = trunc nuw i8 %.3 to i1
  br i1 %i.v, label %bb.ay, label %thread-pre-split

bb.c:                                             ; preds = %.lr.ph148, %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit
  %.0146 = phi i8 [ 0, %.lr.ph148 ], [ %.3, %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit ] ; 3 uses
  %.026145 = phi i1 [ false, %.lr.ph148 ], [ %.4, %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit ]
  %.sroa.0103.0142 = phi ptr [ %i.q, %.lr.ph148 ], [ %i.hu, %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit ] ; 8 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !728   ; 7 uses
  %.pre152 = load ptr, ptr %i.r, align 8, !tbaa !951 ; 4 uses
  br i1 %.026145, label %bb.d, label %.loopexit122

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %.sroa.0103.0142, align 8, !tbaa !323 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !566
  %i.z = sext i32 %i.y to i64
  %i.aa = ptrtoint ptr %.pre152 to i64
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, %i.z
  br i1 %i.ae, label %.loopexit122, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not117129.not = icmp eq ptr %.pre152, %.pre
  br i1 %.not117129.not, label %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !559
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ai, ptr %i.af, ptr %i.ak
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i64 %.042130, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond.not, label %_ZN6google8protobuf23SourceCodeInfo_LocationaSERKS1_.exit, label %bb.f, !llvm.loop !1646

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.042130 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.e ] ; 3 uses
  %sext = shl i64 %.042130, 32
  %i.am = ashr exact i64 %sext, 30
  %i.an = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.042130
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %.not = icmp eq i32 %i.ao, %i.aq
  br i1 %.not, label %bb.e, label %.loopexit122

.loopexit122:                                     ; preds = %bb.f, %bb.d, %bb.c
  %.not.i.i = icmp eq ptr %.pre152, %.pre
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.loopexit122
  store ptr %.pre, ptr %i.r, align 8, !tbaa !951
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.loopexit122, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ar = phi ptr [ %.pre152, %.loopexit122 ], [ %.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.as = load ptr, ptr %.sroa.0103.0142, align 8, !tbaa !323 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !566
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph132.preheader, label %._crit_edge

.lr.ph132.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf17DescriptorBuilder24CheckEnumValueUniquenessERKNS0_19EnumDescriptorProtoEPKNS0_14EnumDescriptorE:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !1760
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.ad, %bb.y, %bb.s, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  store ptr %i.am, ptr %6, align 8, !tbaa !16, !alias.scope !1765
  store i64 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !1765
  store i8 0, ptr %i.am, align 8, !tbaa !22, !alias.scope !1765
  %i.dv = load i64, ptr %i.al, align 8, !tbaa !23, !noalias !1765
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.dv)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dw = load ptr, ptr %7, align 8, !tbaa !20, !noalias !1765 ; 3 uses
  %i.dx = load i64, ptr %i.al, align 8, !tbaa !23, !noalias !1765 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %.not24.i = icmp samesign eq i64 %i.dx, 0
  br i1 %.not24.i, label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i54

bb.af:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph.i54:                                       ; preds = %bb.ae, %bb.am
  %.026.i = phi i1 [ %i.eb, %bb.am ], [ true, %bb.ae ]
  %.sroa.021.025.i = phi ptr [ %i.ex, %bb.am ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.ea = load i8, ptr %.sroa.021.025.i, align 1, !tbaa !22 ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 95                    ; 2 uses
  br i1 %i.eb, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i54
  %i.ec = zext i8 %i.ea to i64                    ; 2 uses
  %i.ed = load i64, ptr %i.an, align 8, !tbaa !23, !alias.scope !1765 ; 6 uses
  %i.ee = add i64 %i.ed, 1                        ; 4 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !1765 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, %i.am                ; 2 uses
  br i1 %.026.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.ec
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !22, !noalias !1765 ; 2 uses
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57: ; preds = %bb.ah
  %i.ej = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.ah
  %i.ek = load i64, ptr %i.am, align 8, !tbaa !22, !alias.scope !1765
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57
  %i.el = phi i64 [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57 ]
  %i.em = icmp ugt i64 %i.ee, %i.el
  br i1 %i.em, label %bb.ai, label %.sink.split.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.sink.split.sink.split.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.ec
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !22, !noalias !1765 ; 2 uses
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i: ; preds = %bb.ak
  %i.eq = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %bb.ak
  %i.er = load i64, ptr %i.am, align 8, !tbaa !22, !alias.scope !1765
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i
  %i.es = phi i64 [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i ]
  %i.et = icmp ugt i64 %i.ee, %i.es
  br i1 %i.et, label %bb.al, label %.sink.split.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.sink.split.sink.split.i unwind label %bb.aj

.sink.split.sink.split.i:                         ; preds = %bb.al, %bb.ai
  %.sink.ph.i = phi i8 [ %i.ei, %bb.ai ], [ %i.ep, %bb.al ]
  %.pre.i15.i = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !1765
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.sink32.i = phi ptr [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i ], [ %.pre.i15.i, %.sink.split.sink.split.i ]
  %.sink.i = phi i8 [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i ], [ %.sink.ph.i, %.sink.split.sink.split.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink32.i, i64 %i.ed
  store i8 %.sink.i, ptr %i.eu, align 1, !tbaa !22
  store i64 %i.ee, ptr %i.an, align 8, !tbaa !23, !alias.scope !1765
  %i.ev = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !1765
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ee
  store i8 0, ptr %i.ew, align 1, !tbaa !22
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i, %.lr.ph.i54
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 1 ; 2 uses
  %.not.i55 = icmp eq ptr %i.ex, %i.dy
  br i1 %.not.i55, label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit, label %.lr.ph.i54

bb.an:                                            ; preds = %bb.aj, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %i.dz, %bb.af ] ; 2 uses
  %i.ey = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !1765 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.am
  br i1 %i.ez, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %bb.an
  %i.fa = load i64, ptr %i.am, align 8, !tbaa !22, !alias.scope !1765
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #41
  br label %.body

_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit: ; preds = %bb.am
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !20
  br label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit, %bb.ae
  %i.fc = phi ptr [ %.pre99, %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ak
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fe = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.464") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc58 unwind label %bb.aw

.noexc58:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fg = load i8, ptr %i.ao, align 8, !tbaa !1774, !range !49, !alias.scope !1777, !noundef !51
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread

bb.ao:                                            ; preds = %.noexc58
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1777 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 16 ; 3 uses
  store ptr %i.fi, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !16
  %i.fj = load ptr, ptr %6, align 8, !tbaa !20, !noalias !1777 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.am
  br i1 %i.fk, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load i64, ptr %i.an, align 8, !tbaa !23, !noalias !1777 ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nuw nsw i64 %i.fl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fi, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.fn, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  store ptr %i.fj, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !20
  %i.fo = load i64, ptr %i.am, align 8, !tbaa !22, !noalias !1777
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !22
  %.pre100 = load i64, ptr %i.an, align 8, !tbaa !23, !noalias !1777
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = phi i64 [ %.pre100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fl, %bb.ap ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !23
  store ptr %i.am, ptr %6, align 8, !tbaa !20, !noalias !1777
  store i64 0, ptr %i.an, align 8, !tbaa !23, !noalias !1777
  store i8 0, ptr %i.am, align 8, !tbaa !22, !noalias !1777
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !498, !noalias !1777
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !1778
  %.pre101 = load i8, ptr %i.ao, align 8, !tbaa !1774, !range !49
  %i.ft = trunc nuw i8 %.pre101 to i1
  br i1 %i.ft, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread: ; preds = %.noexc58, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit
  %i.fu = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !1780 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !139 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !23 ; 3 uses
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !498 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !139 ; 6 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !23
  %i.gi = icmp eq i64 %i.gb, %i.gh
  br i1 %i.gi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread
  %i.gj = icmp eq i64 %i.gb, 0
  br i1 %i.gj, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.aq
  %bcmp.i.i = call i32 @bcmp(ptr %i.fz, ptr %i.gf, i64 %i.gb)
  %i.gk = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gk, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !471
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !471
  %.not = icmp eq i32 %i.gm, %i.go
  br i1 %.not, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store ptr %i.e, ptr %9, align 8, !tbaa !1614
  store ptr %8, ptr %i.ap, align 8, !tbaa !1782
  %i.gp = load ptr, ptr %0, align 8, !tbaa !799
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 70
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !1715, !range !49, !noundef !51
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load ptr, ptr %i.aq, align 8, !tbaa !912
  %i.gu = getelementptr i8, ptr %i.gt, i64 50
  %.val40 = load i8, ptr %i.gu, align 2, !tbaa !22, !range !49, !noundef !51
  %i.gv = trunc nuw i8 %.val40 to i1
  br i1 %i.gv, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gw = load ptr, ptr %i.ar, align 8, !tbaa !674
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !319
  %i.gz = icmp eq i32 %i.gy, 998
  br i1 %i.gz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !20
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !23
  %i.he = load ptr, ptr %i.as, align 8, !tbaa !557
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hg = and i64 %i.hf, 1
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = add i64 %i.hf, -1
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv
  %.0.i.i.i.i.i = select i1 %i.hh, ptr %i.as, ptr %i.hl
  %i.hm = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !323
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder24CheckEnumValueUniquenessERKNS4_19EnumDescriptorProtoEPKNS4_14EnumDescriptorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.au, align 8, !tbaa !1210
  store ptr %9, ptr %10, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder10AddWarningESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.hd, ptr %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %10)
          to label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.sink.split unwind label %bb.ax

.loopexit:                                        ; preds = %._crit_edge.i.i.i.i.thread.i, %.noexc.i.i.i27.i, %.noexc.i.i.i36.i, %.noexc.i.i.i45.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

.loopexit.split-lp:                               ; preds = %.noexc28.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

.body:                                            ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  %i.hn = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ak
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.body
  %i.hp = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn.i, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %bb.ay, %bb.av
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.az

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !23
  %i.hx = load ptr, ptr %i.as, align 8, !tbaa !557
  %i.hy = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.hz = and i64 %i.hy, 1
  %i.ia = icmp eq i64 %i.hz, 0
  %i.ib = add i64 %i.hy, -1
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv
  %.0.i.i.i.i.i70 = select i1 %i.ia, ptr %i.as, ptr %i.ie
  %i.if = load ptr, ptr %.0.i.i.i.i.i70, align 8, !tbaa !323
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder24CheckEnumValueUniquenessERKNS4_19EnumDescriptorProtoEPKNS4_14EnumDescriptorEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.at, align 8, !tbaa !1210
  store ptr %9, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.hw, ptr %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.if, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.sink.split unwind label %bb.ax

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.sink.split: ; preds = %bb.av, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.aq, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.ig = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.am
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.ii = load i64, ptr %i.am, align 8, !tbaa !22
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ik = load i32, ptr %i.ag, align 4, !tbaa !906
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next, %i.il
  br i1 %i.im, label %bb.h, label %._crit_edge, !llvm.loop !1784

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.pn34.pn = phi { ptr, i32 } [ %i.hr, %bb.aw ], [ %i.hs, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.in = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.am
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.az
  %i.ip = load i64, ptr %i.am, align 8, !tbaa !22
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn34.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ir = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.h
  br i1 %i.is, label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemoverD2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.it = load i64, ptr %i.h, align 8, !tbaa !22
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemoverD2Ev.exit80

_ZN6google8protobuf12_GLOBAL__N_113PrefixRemoverD2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.965, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %0, ptr %1, align 8, !tbaa !1757
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.c = load i64, ptr %0, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noundef %i.e, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder14BuildEnumValueERKNS0_24EnumValueDescriptorProtoEPKNS0_14EnumDescriptorEPNS0_19EnumValueDescriptorERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(224) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.168", align 8    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 5 uses
  %8 = alloca %class.anon.354, align 8            ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %20 = alloca %class.anon.475, align 8           ; 7 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !1160
  store ptr %3, ptr %i.e, align 8, !tbaa !498
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.f, ptr %11, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i64 0, ptr %i.g, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i to i64
  %.0.copyload.i.i.i48 = load i16, ptr %i.i, align 1
  %i.l = zext i16 %.0.copyload.i.i.i48 to i64
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !276
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -4
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = add i64 %i.m, %i.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.u)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.g, align 8, !tbaa !23
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.m
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #44
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !137  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.0.copyload.i.i.i51 = load i16, ptr %i.z, align 1
  %i.aa = zext i16 %.0.copyload.i.i.i51 to i64
  %i.ab = xor i64 %i.aa, -1
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.ac, i64 noundef %i.m)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !276
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !23
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #44
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf17DescriptorBuilder14BuildEnumValueERKNS0_24EnumValueDescriptorProtoEPKNS0_14EnumDescriptorEPNS0_19EnumValueDescriptorERNS0_8internal13FlatAllocatorE:bb.a
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.ci, ptr %10, align 8, !tbaa !20
  %i.cn = load i64, ptr %i.f, align 8, !tbaa !22
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !22
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i, %bb.r
  %i.co = phi ptr [ %i.ch, %bb.r ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i ] ; 6 uses
  %i.cp = phi i64 [ %i.ck, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !23
  store ptr %i.f, ptr %11, align 8, !tbaa !20
  store i64 0, ptr %i.g, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 4 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  %i.cu = icmp eq ptr %i.co, %i.ch                ; 2 uses
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  br i1 %i.cu, label %bb.s, label %.thread.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  br i1 %i.cu, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14.i
  %i.cv = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i11.i = icmp eq ptr %10, %i.bm
  br i1 %.not21.i11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i, label %bb.t, !prof !163

bb.t:                                             ; preds = %bb.s
  switch i64 %i.cp, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !22
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.co, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !23
  %i.cz = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !22
  %.pre.i13.i = load ptr, ptr %10, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i

.thread.i15.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.co, ptr %i.bm, align 8, !tbaa !20
  store i64 %i.cp, ptr %i.db, align 8, !tbaa !23
  %i.dc = load i64, ptr %i.ch, align 8, !tbaa !22
  store i64 %i.dc, ptr %i.cs, align 8, !tbaa !22
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i8.i
  %i.dd = load i64, ptr %i.cs, align 8, !tbaa !22
  store ptr %i.co, ptr %i.bm, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %i.cp, ptr %i.de, align 8, !tbaa !23
  %i.df = load i64, ptr %i.ch, align 8, !tbaa !22
  store i64 %i.df, ptr %i.cs, align 8, !tbaa !22
  %.not.i10.i = icmp eq ptr %i.cr, null
  br i1 %.not.i10.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9.i
  store ptr %i.cr, ptr %10, align 8, !tbaa !20
  store i64 %i.dd, ptr %i.ch, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9.i, %.thread.i15.i
  store ptr %i.ch, ptr %10, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i: ; preds = %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i, %bb.s
  %i.dg = phi ptr [ %i.cr, %bb.w ], [ %i.ch, %bb.x ], [ %i.co, %bb.s ], [ %.pre.i13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12.i ]
  store i64 0, ptr %i.cq, align 8, !tbaa !23
  store i8 0, ptr %i.dg, align 1, !tbaa !22
  %i.dh = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ch
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i
  %i.dj = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.dl = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.az
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dn = load i64, ptr %i.az, align 8, !tbaa !22
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !498 ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.dq, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !471
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !1160 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !465
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !276
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, -4
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !23 ; 3 uses
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.ec, ptr %6, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ea, ptr %i.eg, align 8
  %i.eh = icmp eq i64 %i.ec, 0
  br i1 %i.eh, label %bb.y, label %.lr.ph.preheader.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18.i
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ef, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, ptr noundef nonnull @.str.136)
          to label %.loopexit unwind label %bb.g

.lr.ph.preheader.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i
  %.034.i = phi ptr [ %i.ep, %bb.aa ], [ %i.ea, %.lr.ph.preheader.i ] ; 2 uses
  %i.ej = load i8, ptr %.034.i, align 1, !tbaa !22 ; 3 uses
  %i.ek = and i8 %i.ej, -33
  %i.el = add i8 %i.ek, -91
  %or.cond32.i = icmp ult i8 %i.el, -26
  br i1 %or.cond32.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i
  %i.em = add i8 %i.ej, -58
  %or.cond8.i = icmp ult i8 %i.em, -10
  %i.en = icmp ne i8 %i.ej, 95
  %or.cond11.i = and i1 %i.en, %or.cond8.i
  br i1 %or.cond11.i, label %.critedge.i, label %bb.aa

.critedge.i:                                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %6, ptr %8, align 8, !tbaa !1219
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder18ValidateSymbolNameESt17basic_string_viewIcSt11char_traitsIcEES9_RKNS4_7MessageEE3$_0NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.eo, align 8, !tbaa !1210
  store ptr %8, ptr %7, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ef, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %7)
          to label %.noexc62 unwind label %bb.g

.noexc62:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.034.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ep, %i.ei
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.aa, %.noexc62, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  invoke void @_ZN6google8protobuf17DescriptorBuilder15AllocateOptionsINS0_19EnumValueDescriptorEEEvRKNT_5ProtoEPS4_iSt17basic_string_viewIcSt11char_traitsIcEERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.dp, i32 noundef 3, i64 32, ptr nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(224) %4)
          to label %bb.ab unwind label %bb.g

bb.ab:                                            ; preds = %.loopexit
  %i.eq = load ptr, ptr %i.dq, align 8, !tbaa !139 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !760
  store i8 5, ptr %i.dp, align 8, !tbaa !135
  %i.ex = ptrtoint ptr %i.dp to i64
  %i.ey = invoke noundef zeroext i1 @_ZN6google8protobuf17DescriptorBuilder9AddSymbolESt17basic_string_viewIcSt11char_traitsIcEEPKvS5_RKNS0_7MessageENS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.eu, ptr %i.es, ptr noundef %i.ew, i64 poison, ptr poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.ex)
          to label %bb.ac unwind label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1308
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  store i8 6, ptr %i.fb, align 1, !tbaa !135
  %i.fc = invoke noundef zeroext i1 @_ZN6google8protobuf20FileDescriptorTables19AddAliasUnderParentEPKvSt17basic_string_viewIcSt11char_traitsIcEENS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(200) %i.fa, ptr nonnull poison, i64 poison, ptr poison, ptr nonnull %i.fb)
          to label %bb.ad unwind label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %.not = xor i1 %i.fc, true
  %or.cond = or i1 %i.ey, %.not
  br i1 %or.cond, label %bb.bs, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store ptr %i.fd, ptr %12, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 11 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !23
  store i8 0, ptr %i.fd, align 8, !tbaa !22
  %i.ff = load ptr, ptr %i.ev, align 8, !tbaa !760 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.af, label %bb.au

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1281
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !146 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !20 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !23 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  store ptr %i.fo, ptr %13, align 8, !tbaa !16
  %i.fp = icmp eq ptr %i.fl, null
  %i.fq = icmp ne i64 %i.fn, 0
  %or.cond.i.i.i = and i1 %i.fp, %i.fq
  br i1 %or.cond.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
          to label %.noexc71 unwind label %bb.at

.noexc71:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.fn, ptr %i.b, align 8, !tbaa !19
  %i.fr = icmp ugt i64 %i.fn, 15
  br i1 %i.fr, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ah
  %i.fs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc72 unwind label %bb.at  ; 2 uses

.noexc72:                                         ; preds = %.noexc.i.i.i
  store ptr %i.fs, ptr %13, align 8, !tbaa !20
  %i.ft = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.ft, ptr %i.fo, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc72, %bb.ah
  %i.fu = phi ptr [ %i.fs, %.noexc72 ], [ %i.fo, %bb.ah ] ; 2 uses
  switch i64 %i.fn, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fv = load i8, ptr %i.fl, align 1, !tbaa !22
  store i8 %i.fv, ptr %i.fu, align 1, !tbaa !22
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i.i
  %i.fw = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !23
  %i.fy = load ptr, ptr %13, align 8, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fw
  store i8 0, ptr %i.fz, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ga = load ptr, ptr %12, align 8, !tbaa !20   ; 6 uses
  %i.gb = icmp eq ptr %i.ga, %i.fd
  %i.gc = load ptr, ptr %13, align 8, !tbaa !20   ; 5 uses
  %i.gd = icmp eq ptr %i.gc, %i.fo                ; 2 uses
  br i1 %i.gb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ak
  br i1 %i.gd, label %bb.al, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ak
  br i1 %i.gd, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ge = load i64, ptr %i.fx, align 8, !tbaa !23 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  switch i64 %i.ge, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !22
  store i8 %i.gg, ptr %i.ga, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %i.gc, i64 %i.ge, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.gh = load i64, ptr %i.fx, align 8, !tbaa !23 ; 2 uses
  store i64 %i.gh, ptr %i.fe, align 8, !tbaa !23
  %i.gi = load ptr, ptr %12, align 8, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  store i8 0, ptr %i.gj, align 1, !tbaa !22
  %.pre.i74 = load ptr, ptr %13, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gc, ptr %12, align 8, !tbaa !20
  %i.gk = load <2 x i64>, ptr %i.fx, align 8, !tbaa !22
  store <2 x i64> %i.gk, ptr %i.fe, align 8, !tbaa !22
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gl = load i64, ptr %i.fd, align 8, !tbaa !22
  store ptr %i.gc, ptr %12, align 8, !tbaa !20
  %i.gm = load <2 x i64>, ptr %i.fx, align 8, !tbaa !22
  store <2 x i64> %i.gm, ptr %i.fe, align 8, !tbaa !22
  %.not.i73 = icmp eq ptr %i.ga, null
  br i1 %.not.i73, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ga, ptr %13, align 8, !tbaa !20
  store i64 %i.gl, ptr %i.fo, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fo, ptr %13, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ao, %bb.ap
  %i.gn = phi ptr [ %i.ga, %bb.ao ], [ %i.fo, %bb.ap ], [ %.pre.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.fx, align 8, !tbaa !23
  store i8 0, ptr %i.gn, align 1, !tbaa !22
  %i.go = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.fo
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gq = load i64, ptr %i.fo, align 8, !tbaa !22
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.be

bb.aq:                                            ; preds = %bb.ab
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ar:                                            ; preds = %bb.bu, %bb.ac
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.as:                                            ; preds = %bb.bf
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.at:                                            ; preds = %.noexc.i.i.i, %bb.ag
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.br

bb.au:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !137 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %.0.copyload.i.i.i77 = load i16, ptr %i.gy, align 1 ; 3 uses
  %i.gz = zext i16 %.0.copyload.i.i.i77 to i64    ; 3 uses
  %i.ha = xor i64 %i.gz, -1
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.hc, ptr %14, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.gz, ptr %i.a, align 8, !tbaa !19
  %i.hd = icmp ugt i16 %.0.copyload.i.i.i77, 15
  br i1 %i.hd, label %.noexc.i.i.i85, label %._crit_edge.i.i.i.i84

.noexc.i.i.i85:                                   ; preds = %bb.au
  %i.he = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc87 unwind label %bb.bd  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i.i.i85
  store ptr %i.he, ptr %14, align 8, !tbaa !20
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.hf, ptr %i.hc, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i84

._crit_edge.i.i.i.i84:                            ; preds = %.noexc87, %bb.au
  %i.hg = phi ptr [ %i.he, %.noexc87 ], [ %i.hc, %bb.au ] ; 2 uses
  switch i16 %.0.copyload.i.i.i77, label %bb.aw [
    i16 1, label %bb.av
    i16 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i.i84
  %i.hh = load i8, ptr %i.hb, align 1, !tbaa !22
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !22
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr nonnull align 1 %i.hb, i64 %i.gz, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i.i.i84
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !23
  %i.hk = load ptr, ptr %14, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.hm = load ptr, ptr %12, align 8, !tbaa !20   ; 6 uses
  %i.hn = icmp eq ptr %i.hm, %i.fd
  %i.ho = load ptr, ptr %14, align 8, !tbaa !20   ; 5 uses
  %i.hp = icmp eq ptr %i.ho, %i.hc                ; 2 uses
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i94: ; preds = %bb.ax
  br i1 %i.hp, label %bb.ay, label %.thread.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i89: ; preds = %bb.ax
  br i1 %i.hp, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i94
  %i.hq = load i64, ptr %i.hj, align 8, !tbaa !23 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  switch i64 %i.hq, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !22
  store i8 %i.hs, ptr %i.hm, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.ho, i64 %i.hq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ht = load i64, ptr %i.hj, align 8, !tbaa !23 ; 2 uses
  store i64 %i.ht, ptr %i.fe, align 8, !tbaa !23
  %i.hu = load ptr, ptr %12, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 0, ptr %i.hv, align 1, !tbaa !22
  %.pre.i93 = load ptr, ptr %14, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96

.thread.i95:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i94
  store ptr %i.ho, ptr %12, align 8, !tbaa !20
  %i.hw = load <2 x i64>, ptr %i.hj, align 8, !tbaa !22
  store <2 x i64> %i.hw, ptr %i.fe, align 8, !tbaa !22
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i89
  %i.hx = load i64, ptr %i.fd, align 8, !tbaa !22
  store ptr %i.ho, ptr %12, align 8, !tbaa !20
  %i.hy = load <2 x i64>, ptr %i.hj, align 8, !tbaa !22
  store <2 x i64> %i.hy, ptr %i.fe, align 8, !tbaa !22
  %.not.i91 = icmp eq ptr %i.hm, null
  br i1 %.not.i91, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90
  store ptr %i.hm, ptr %14, align 8, !tbaa !20
  store i64 %i.hx, ptr %i.hc, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90, %.thread.i95
  store ptr %i.hc, ptr %14, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92, %bb.bb, %bb.bc
  %i.hz = phi ptr [ %i.hm, %bb.bb ], [ %i.hc, %bb.bc ], [ %.pre.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92 ]
  store i64 0, ptr %i.hj, align 8, !tbaa !23
  store i8 0, ptr %i.hz, align 1, !tbaa !22
  %i.ia = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hc
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96
  %i.ic = load i64, ptr %i.hc, align 8, !tbaa !22
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.be

bb.bd:                                            ; preds = %.noexc.i.i.i85
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.br

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.if = load i64, ptr %i.fe, align 8, !tbaa !23 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ih = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.165, i64 noundef 16)
          to label %bb.bo unwind label %bb.as     ; 0 uses

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store i64 1, ptr %16, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.68, ptr %i.ii, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.ij = load ptr, ptr %12, align 8, !tbaa !20
  store i64 %i.if, ptr %17, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ij, ptr %i.ik, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  store i64 1, ptr %18, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.68, ptr %i.il, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %bb.bh unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.im = load ptr, ptr %12, align 8, !tbaa !20   ; 6 uses
  %i.in = icmp eq ptr %i.im, %i.fd
  %i.io = load ptr, ptr %15, align 8, !tbaa !20   ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.iq = icmp eq ptr %i.io, %i.ip                ; 2 uses
  br i1 %i.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106: ; preds = %bb.bh
  br i1 %i.iq, label %bb.bi, label %.thread.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i101: ; preds = %bb.bh
  br i1 %i.iq, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i102

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !23 ; 3 uses
  %i.it = icmp ult i64 %i.is, 16
  call void @llvm.assume(i1 %i.it)
  switch i64 %i.is, label %bb.bk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104
    i64 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.iu = load i8, ptr %i.io, align 1, !tbaa !22
  store i8 %i.iu, ptr %i.im, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 1 %i.io, i64 %i.is, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.iv = load i64, ptr %i.ir, align 8, !tbaa !23 ; 2 uses
  store i64 %i.iv, ptr %i.fe, align 8, !tbaa !23
  %i.iw = load ptr, ptr %12, align 8, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !22
  %.pre.i105 = load ptr, ptr %15, align 8, !tbaa !20
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoE:bb.a
bb.as:                                            ; preds = %select.unfold442
  %i.km = load atomic i32, ptr %i.kl acquire, align 4
  %.not.i314 = icmp eq i32 %i.km, 221
  br i1 %.not.i314, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.at, !prof !322

bb.at:                                            ; preds = %bb.as
  %i.kn = cmpxchg ptr %i.kl, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.ko = extractvalue { i32, i1 } %i.kn, 1
  br i1 %i.ko, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.at
  %i.kp = call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.kl, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %bb.at
  call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %.ph444), !inline_history !698
  %i.kr = atomicrmw xchg ptr %i.kl, i32 221 release, align 4
  %i.ks = icmp eq i32 %i.kr, 94570706
  br i1 %i.ks, label %bb.au, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

bb.au:                                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.kl, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.as, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %bb.au, %select.unfold442
  %i.kt = load ptr, ptr %i.kj, align 8, !tbaa !22
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = trunc i8 %i.kv to i1
  %.pre376 = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  br i1 %i.kw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %.pre376, i64 1 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = and i8 %i.ky, -2
  store i8 %i.kz, ptr %i.kx, align 1
  %.pre375 = load ptr, ptr %i.b, align 8, !tbaa !337
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit
  %i.la = phi ptr [ %.pre375, %bb.av ], [ %.pre376, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = trunc i8 %i.lc to i1
  br i1 %i.ld, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !276
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = and i64 %i.lg, -4
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = call noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12IsIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.li)
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  br i1 %i.lj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !137 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %.0.copyload.i.i.i277 = load i16, ptr %i.ln, align 1
  %i.lo = zext i16 %.0.copyload.i.i.i277 to i64   ; 2 uses
  %i.lp = xor i64 %i.lo, -1
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 %i.lp
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.lo, ptr nonnull %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull @.str.173)
  br label %.thread199

bb.az:                                            ; preds = %bb.ax
  %i.lr = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lk)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !674
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 168
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !741
  %i.lw = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.lx = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lw)
  %i.ly = load ptr, ptr %i.le, align 8, !tbaa !276
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, -4
  %i.mb = inttoptr i64 %i.ma to ptr               ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !23
  %i.mf = call fastcc ptr @_ZNK6google8protobuf20FileDescriptorTables16FindNestedSymbolINS0_12_GLOBAL__N_115ParentNameQueryEEEDaPKvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(200) %i.lv, ptr noundef %i.lx, i64 %i.me, ptr %i.mc) ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !135
  switch i8 %i.mg, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit [
    i8 5, label %bb.bb
    i8 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.mh, %bb.ba ], [ %i.mf, %bb.az ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !465
  %i.mk = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.ml = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.mk)
  %i.mm = icmp eq ptr %i.mj, %i.ml
  br i1 %i.mm, label %bb.bc, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit

bb.bc:                                            ; preds = %bb.bb
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 80
  store ptr %.ph, ptr %i.mo, align 8, !tbaa !22
  br label %.thread199

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit: ; preds = %bb.az, %bb.bb
  %i.mp = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !137 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %.0.copyload.i.i.i282 = load i16, ptr %i.ms, align 1
  %i.mt = zext i16 %.0.copyload.i.i.i282 to i64   ; 2 uses
  %i.mu = xor i64 %i.mt, -1
  %i.mv = getelementptr inbounds i8, ptr %i.mr, i64 %i.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  store ptr %i.b, ptr %23, align 8, !tbaa !731
  %i.mw = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %2, ptr %i.mw, align 8, !tbaa !1726
  %i.mx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_7NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.mx, align 8, !tbaa !1210
  store ptr %23, ptr %22, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.mt, ptr nonnull %i.mv, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %.thread199

bb.bd:                                            ; preds = %bb.aw
  %i.my = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.la)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !906
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.be, label %.thread199

bb.be:                                            ; preds = %bb.bd
  %i.nc = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nd = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !466
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !22
  br label %.thread199

bb.bf:                                            ; preds = %bb.aq
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre220, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !137 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %.0.copyload.i.i.i285 = load i16, ptr %i.nk, align 1
  %i.nl = zext i16 %.0.copyload.i.i.i285 to i64   ; 2 uses
  %i.nm = xor i64 %i.nl, -1
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.nl, ptr nonnull %i.nn, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull @.str.174)
  br label %.thread199

.thread199:                                       ; preds = %bb.bc, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit, %bb.bf, %bb.bd, %bb.be, %bb.ay, %select.unfold, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.bj

bb.bg:                                            ; preds = %.critedge, %bb.ab, %bb.ar, %bb.ao, %bb.am, %bb.ai, %.thread393
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.cu

bb.bh:                                            ; preds = %bb.q
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !692
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !845
  switch i32 %i.nt, label %bb.bj [
    i32 10, label %bb.bi
    i32 8, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !137 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %.0.copyload.i.i.i288 = load i16, ptr %i.nw, align 1
  %i.nx = zext i16 %.0.copyload.i.i.i288 to i64   ; 2 uses
  %i.ny = xor i64 %i.nx, -1
  %i.nz = getelementptr inbounds i8, ptr %i.nv, i64 %i.ny
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEPKc(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.nx, ptr nonnull %i.nz, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, ptr noundef nonnull @.str.175)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %.thread199, %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !1308
  %i.oc = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.od = call noundef zeroext i1 @_ZN6google8protobuf20FileDescriptorTables16AddFieldByNumberEPNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(200) %i.ob, ptr noundef %i.oc)
  br i1 %i.od, label %bb.cr, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.oe = load ptr, ptr %i.oa, align 8, !tbaa !1308 ; 6 uses
  %i.of = load ptr, ptr %i.b, align 8, !tbaa !337 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !430 ; 14 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !343 ; 6 uses
  %i.ok = icmp ne ptr %i.oh, null
  %i.ol = icmp sgt i32 %i.oj, 0
  %or.cond.i = and i1 %i.ok, %i.ol
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.on = load i16, ptr %i.om, align 4, !tbaa !431
  %i.oo = zext i16 %i.on to i32
  %.not.i292 = icmp samesign ugt i32 %i.oj, %i.oo
  br i1 %.not.i292, label %bb.bm, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread: ; preds = %bb.bl
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !439
  %i.or = zext nneg i32 %i.oj to i64
  %i.os = getelementptr [88 x i8], ptr %i.oq, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 -88
  store ptr %i.ot, ptr %i.c, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  br label %bb.bu

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %.val.i.i.i = load i64, ptr %i.ou, align 8, !tbaa !73 ; 4 uses
  %i.ov = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp ult i64 %.val.i.i.i, 2
  br i1 %i.ow, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %.val.i.i.i.i = load i64, ptr %i.ox, align 8, !tbaa !79
  %.not.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 72 ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !337 ; 2 uses
  %i.oz = getelementptr i8, ptr %.val4.i.i.i.i, i64 4
  %.val4.val.i.i.i.i = load i32, ptr %i.oz, align 4, !tbaa !343
  %i.pa = getelementptr i8, ptr %.val4.i.i.i.i, i64 32
  %.val4.val6.i.i.i.i = load ptr, ptr %i.pa, align 8, !tbaa !430
  %i.pb = icmp eq ptr %.val4.val6.i.i.i.i, %i.oh
  %i.pc = icmp eq i32 %.val4.val.i.i.i.i, %i.oj
  %i.pd = select i1 %i.pb, i1 %i.pc, i1 false
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.oy, 1
  %spec.select.i.i.i.i = select i1 %i.pd, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

bb.bp:                                            ; preds = %bb.bm
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 72
  %.val6.i.i.i = load ptr, ptr %i.pe, align 8, !tbaa !22 ; 4 uses
  call void @llvm.prefetch.p0(ptr readonly %.val6.i.i.i, i32 0, i32 1, i32 1)
  %i.pf = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.pg = xor i64 %i.pf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ph = mul i64 %i.pg, -2543921745674291987
  %i.pi = call noundef i64 @llvm.bswap.i64(i64 %i.ph)
  %i.pj = xor i64 %i.pi, %i.pf
  %i.pk = mul i64 %i.pj, -2543921745674291987
  %i.pl = call noundef i64 @llvm.bswap.i64(i64 %i.pk)
  %i.pm = zext i32 %i.oj to i64
  %i.pn = xor i64 %i.pl, %i.pm
  %i.po = mul i64 %i.pn, -2543921745674291987
  %i.pp = call noundef i64 @llvm.bswap.i64(i64 %i.po) ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !79, !noalias !1804
  %i.ps = and i64 %i.pr, 65535
  %i.pt = lshr i64 %i.pp, 7
  %i.pu = xor i64 %i.ps, %i.pt
  %i.pv = trunc i64 %i.pp to i8
  %i.pw = and i8 %i.pv, 127
  %i.px = getelementptr inbounds nuw i8, ptr %i.oe, i64 80
  %.val14.i.i.i.i = load ptr, ptr %i.px, align 8, !tbaa !22 ; 3 uses
  %i.py = insertelement <16 x i8> poison, i8 %i.pw, i64 0
  %i.pz = shufflevector <16 x i8> %i.py, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %.pn.i9.i.i.i = phi i64 [ %i.pu, %bb.bp ], [ %i.qw, %bb.bs ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.qv, %bb.bs ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i9.i.i.i, %.val.i.i.i ; 4 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.qa, i32 0, i32 3, i32 1)
  %i.qb = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.qc = load <16 x i8>, ptr %i.qb, align 1, !tbaa !22 ; 2 uses
  %i.qd = icmp eq <16 x i8> %i.pz, %i.qc
  %i.qe = bitcast <16 x i1> %i.qd to i16          ; 2 uses
  %.not53.i.i.i.i = icmp eq i16 %i.qe, 0
  br i1 %.not53.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bq, %bb.br
  %.sroa.024.054.i.i.i.i = phi i16 [ %i.qs, %bb.br ], [ %i.qe, %bb.bq ] ; 3 uses
  %i.qf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.i.i.i, i1 true)
  %i.qg = zext nneg i16 %i.qf to i64
  %i.qh = add i64 %.sroa.6.0.i.i.i.i, %i.qg
  %i.qi = and i64 %i.qh, %.val.i.i.i              ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.qi
  %.val19.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !337 ; 2 uses
  %i.qk = getelementptr i8, ptr %.val19.i.i.i.i, i64 4
  %.val19.val.i.i.i.i = load i32, ptr %i.qk, align 4, !tbaa !343
  %i.ql = getelementptr i8, ptr %.val19.i.i.i.i, i64 32
  %.val19.val21.i.i.i.i = load ptr, ptr %i.ql, align 8, !tbaa !430
  %i.qm = icmp eq ptr %.val19.val21.i.i.i.i, %i.oh
  %i.qn = icmp eq i32 %.val19.val.i.i.i.i, %i.oj
  %i.qo = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %i.qo, label %.thread39.i.i.i.i, label %bb.br, !prof !322

.thread39.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i, i64 %i.qi
  %i.qq = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %i.qi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qr = add i16 %.sroa.024.054.i.i.i.i, -1
  %i.qs = and i16 %i.qr, %.sroa.024.054.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.qs, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.br, %bb.bq
  %i.qt = icmp eq <16 x i8> %i.qc, splat (i8 -128)
  %i.qu = bitcast <16 x i1> %i.qt to i16
  %.not50.i.i.i.i = icmp eq i16 %i.qu, 0
  br i1 %.not50.i.i.i.i, label %bb.bs, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, !prof !163

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qv = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.qw = add i64 %i.qv, %.sroa.6.0.i.i.i.i
  br label %bb.bq, !llvm.loop !745

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread39.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.qq, %.thread39.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.qp, %.thread39.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i, %bb.bo, %bb.bn
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE10find_largeINSA_17ParentNumberQueryEEENSE_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.bn ], [ %spec.select.i.i.i.i, %bb.bo ] ; 2 uses
  %i.qx = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i
  %i.qz = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !337
  br label %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit

_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i, %bb.bt
  %.0.i291 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS5_12_GLOBAL__N_116ParentNumberHashENSA_14ParentNumberEqESaIS8_EE4findINSA_17ParentNumberQueryEEENSE_14const_iteratorERKT_.exit.i ], [ %i.ra, %bb.bt ]
  store ptr %.0.i291, ptr %i.c, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  %i.rb = icmp eq ptr %i.oh, null
  br i1 %i.rb, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit.thread, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !137 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %.0.copyload.i.i.i293 = load i16, ptr %i.re, align 1
  %i.rf = zext i16 %.0.copyload.i.i.i293 to i64   ; 2 uses
  %i.rg = xor i64 %i.rf, -1
  %i.rh = getelementptr inbounds i8, ptr %i.rd, i64 %i.rg
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit, %bb.bu
  %.sink407 = phi i64 [ %i.rf, %bb.bu ], [ 7, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit ]
  %.sink = phi ptr [ %i.rh, %bb.bu ], [ @.str.146, %_ZNK6google8protobuf20FileDescriptorTables17FindFieldByNumberEPKNS0_10DescriptorEi.exit ]
  store i64 %.sink407, ptr %24, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sink, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.rk = load i8, ptr %i.rj, align 1
  %i.rl = and i8 %i.rk, 8
  %.not341 = icmp eq i8 %i.rl, 0
  br i1 %.not341, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rm = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !137 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 2
  %.0.copyload.i.i.i296 = load i16, ptr %i.ro, align 1
  %i.rp = zext i16 %.0.copyload.i.i.i296 to i64   ; 2 uses
  %i.rq = xor i64 %i.rp, -1
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 %i.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  store ptr %i.b, ptr %26, align 8, !tbaa !731
  %i.rs = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %24, ptr %i.rs, align 8, !tbaa !1219
  %i.rt = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %i.c, ptr %i.rt, align 8, !tbaa !731
  %i.ru = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_8NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.ru, align 8, !tbaa !1210
  store ptr %26, ptr %25, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.rp, ptr nonnull %i.rr, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.cq

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %27, align 8, !tbaa !1807
  %i.rv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.rv, align 8, !tbaa !1813
  %i.rw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store i64 0, ptr %i.rw, align 8, !tbaa !1814
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !893
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %.lr.ph.preheader, label %.preheader206

.lr.ph.preheader:                                 ; preds = %bb.bx
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %.lr.ph

.preheader206:                                    ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit, %bb.bx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.oh, i64 144 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !683
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %.lr.ph212.preheader, label %.preheader

.lr.ph212.preheader:                              ; preds = %.preheader206
  %i.sf = getelementptr inbounds nuw i8, ptr %i.oh, i64 96
  %i.sg = getelementptr inbounds nuw i8, ptr %30, i64 8
  br label %.lr.ph212

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit ] ; 2 uses
  %i.sh = load ptr, ptr %i.sa, align 8, !tbaa !439
  %i.si = getelementptr inbounds nuw [88 x i8], ptr %i.sh, i64 %indvars.iv
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  store i64 %i.sl, ptr %28, align 8, !tbaa !1815
  store i64 %i.sl, ptr %i.sb, align 8, !tbaa !1817
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #40
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.503") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit unwind label %bb.by

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sm = load i32, ptr %i.rx, align 8, !tbaa !893
  %i.sn = sext i32 %i.sm to i64
  %i.so = icmp slt i64 %indvars.iv.next, %i.sn
  br i1 %i.so, label %.lr.ph, label %.preheader206, !llvm.loop !1818

bb.by:                                            ; preds = %.lr.ph
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  br label %bb.cp

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299, %.preheader206
  %i.sq = getelementptr inbounds nuw i8, ptr %i.oh, i64 152 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !777
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.lr.ph214.preheader, label %.loopexit

.lr.ph214.preheader:                              ; preds = %.preheader
  %i.st = getelementptr inbounds nuw i8, ptr %i.oh, i64 112
  %i.su = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %.lr.ph214

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299
  %indvars.iv366 = phi i64 [ 0, %.lr.ph212.preheader ], [ %indvars.iv.next367, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299 ] ; 2 uses
  %i.sv = load ptr, ptr %i.sf, align 8, !tbaa !775
  %i.sw = getelementptr inbounds nuw [40 x i8], ptr %i.sv, i64 %indvars.iv366 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !769
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !772
  %i.ta = sext i32 %i.sz to i64
  %i.tb = add nsw i64 %i.ta, -1
  %i.tc = sext i32 %i.sx to i64
  store i64 %i.tc, ptr %30, align 8, !tbaa !1815
  store i64 %i.tb, ptr %i.sg, align 8, !tbaa !1817
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.503") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299 unwind label %bb.bz

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit299: ; preds = %.lr.ph212
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.td = load i32, ptr %i.sc, align 8, !tbaa !683
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp slt i64 %indvars.iv.next367, %i.te
  br i1 %i.tf, label %.lr.ph212, label %.preheader, !llvm.loop !1819

bb.bz:                                            ; preds = %.lr.ph212
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.cp

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300
  %indvars.iv369 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next370, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300 ] ; 2 uses
  %i.th = load ptr, ptr %i.st, align 8, !tbaa !778
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv369 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !781
  %i.tl = sext i32 %i.tk to i64
  %i.tm = add nsw i64 %i.tl, -1
  %i.tn = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.to = sext i32 %i.tn to i64
  store i64 %i.to, ptr %32, align 8, !tbaa !1815
  store i64 %i.tm, ptr %i.su, align 8, !tbaa !1817
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #40
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.503") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300 unwind label %bb.ca

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300: ; preds = %.lr.ph214
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.tp = load i32, ptr %i.sq, align 8, !tbaa !777
  %i.tq = sext i32 %i.tp to i64
  %i.tr = icmp slt i64 %indvars.iv.next370, %i.tq
  br i1 %i.tr, label %.lr.ph214, label %.loopexit, !llvm.loop !1820

bb.ca:                                            ; preds = %.lr.ph214
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  br label %bb.cp

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEE6insertEOS6_.exit300, %.preheader
  %i.tt = load ptr, ptr %27, align 8, !tbaa !1807
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !1821 ; 2 uses
  %i.tv = load ptr, ptr %i.rv, align 8, !tbaa !1821 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 10
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !22  ; 2 uses
  %i.ty = zext i8 %i.tx to i32
  %i.tz = icmp ne ptr %i.tu, %i.tv
  %i.ua = icmp ne i8 %i.tx, 0
  %.not3.i352 = select i1 %i.tz, i1 true, i1 %i.ua
  br i1 %.not3.i352, label %.lr.ph356, label %.loopexit205.thread

.loopexit205.thread:                              ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #40
  br label %bb.cg

.lr.ph356:                                        ; preds = %.loopexit, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit
  %.0168355 = phi i64 [ %spec.select195, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit ], [ 1, %.loopexit ] ; 4 uses
  %.sroa.8.0354 = phi i32 [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit ], [ 0, %.loopexit ] ; 3 uses
  %.sroa.0317.0353 = phi ptr [ %.sroa.0317.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit ], [ %i.tu, %.loopexit ] ; 7 uses
  %i.ub = and i32 %.sroa.8.0354, 255
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 16
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.ud, i64 %i.uc ; 2 uses
  %.sroa.0315.0.copyload = load i64, ptr %i.ue, align 8
  %.not179 = icmp sgt i64 %.sroa.0315.0.copyload, %.0168355
  br i1 %.not179, label %.loopexit205, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph356
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.not180.not = icmp sgt i64 %.0168355, %.sroa.6.0.copyload
  %i.uf = add nsw i64 %.sroa.6.0.copyload, 1
  %spec.select195 = call i64 @llvm.smax.i64(i64 %.0168355, i64 %i.uf) ; 3 uses
  br i1 %.not180.not, label %.loopexit205, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 11
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !22
  %.not.i.i303 = icmp eq i8 %i.uh, 0
  br i1 %.not.i.i303, label %.thread.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ui = add nsw i32 %.sroa.8.0354, 1            ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 10
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !22
  %i.ul = zext i8 %i.uk to i32
  %i.um = icmp eq i32 %i.ui, %i.ul
  br i1 %i.um, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cd, %bb.ce
  %.01521.i.i.i = phi ptr [ %i.un, %bb.ce ], [ %.sroa.0317.0353, %bb.cd ] ; 2 uses
  %i.un = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !1821 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 11
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !22
  %.not17.i.i.i = icmp eq i8 %i.up, 0
  br i1 %.not17.i.i.i, label %bb.ce, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ur = load i8, ptr %i.uq, align 8, !tbaa !22  ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 10
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !22
  %i.uu = icmp eq i8 %i.ur, %i.ut
  br i1 %i.uu, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !1822

.thread.i.i:                                      ; preds = %bb.cc
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0317.0353, i64 256
  %i.uw = add i32 %.sroa.8.0354, 1
  %i.ux = and i32 %i.uw, 255
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.uy
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.uz, %.thread.i.i ], [ %i.vc, %bb.cf ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !1821 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !22
  %.not.i.i.i.i304 = icmp eq i8 %i.vb, 0
  %i.vc = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i304, label %bb.cf, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit, !llvm.loop !1823

.critedge.loopexit23.i.i.i:                       ; preds = %bb.ce
  %i.vd = zext i8 %i.ur to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.cf, %.critedge.loopexit23.i.i.i, %bb.cd
  %.sroa.0317.1 = phi ptr [ %.116.i.i.i, %bb.cf ], [ %.sroa.0317.0353, %bb.cd ], [ %i.un, %.critedge.loopexit23.i.i.i ], [ %.sroa.0317.0353, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.cf ], [ %i.ui, %bb.cd ], [ %i.vd, %.critedge.loopexit23.i.i.i ], [ %i.ui, %.lr.ph.i.i.i ] ; 2 uses
  %i.ve = icmp ne ptr %.sroa.0317.1, %i.tv
  %i.vf = icmp ne i32 %.sroa.8.1, %i.ty
  %.not3.i = select i1 %i.ve, i1 true, i1 %i.vf
  br i1 %.not3.i, label %.lr.ph356, label %.loopexit205

.loopexit205:                                     ; preds = %bb.cb, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit, %.lr.ph356
  %.2170 = phi i64 [ %spec.select195, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EppEv.exit ], [ %spec.select195, %bb.cb ], [ %.0168355, %.lr.ph356 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  %i.vg = icmp sgt i64 %.2170, 536870911
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #40
  br i1 %i.vg, label %.noexc.i, label %bb.cg

bb.cg:                                            ; preds = %.loopexit205.thread, %.loopexit205
  %.2170398 = phi i64 [ 1, %.loopexit205.thread ], [ %.2170, %.loopexit205 ]
  store i64 31, ptr %35, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.176, ptr %i.vh, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.vj = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %.2170398, ptr noundef nonnull %i.vi)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = ptrtoint ptr %i.vi to i64
  %i.vm = sub i64 %i.vk, %i.vl
  store i64 %i.vm, ptr %36, align 8, !tbaa !847
  %i.vn = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.vi, ptr %i.vn, align 8, !tbaa !848
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull align 8 dereferenceable(48) %36)
          to label %.critedge193 unwind label %bb.cl

.noexc.i:                                         ; preds = %.loopexit205
  %i.vo = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %i.vo, ptr %34, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 36, ptr %i.a, align 8, !tbaa !19
  %i.vp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.cm    ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS0_14EnumDescriptorERKNS0_19EnumDescriptorProtoE:bb.a

bb.u:                                             ; preds = %bb.q, %bb.s, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE7emplaceIJiSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSP_.exit
  %.pre4649 = phi ptr [ %.pre4654, %bb.q ], [ %.pre45, %bb.s ], [ %.pre46.pre, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE7emplaceIJiSt17basic_string_viewIcS7_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSP_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre4649, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !906
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next, %i.eq
  br i1 %i.er, label %bb.j, label %._crit_edge, !llvm.loop !1881

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.998, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !73
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %0, ptr %1, align 8, !tbaa !1852
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSP_SQ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.c = load i64, ptr %0, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noundef %i.e, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE15destructor_implEv.exit: ; preds = %bb.a, %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS0_19EnumValueDescriptorERKNS0_24EnumValueDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !799
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1443, !range !49, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !768
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !139  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  call void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 %i.o, ptr %i.m)
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !139  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf17DescriptorBuilder27MaybeAddFeatureSupportErrorERKN4absl12lts_202505126StatusERKNS0_7MessageESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.t, ptr %i.r)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %3, align 8, !tbaa !1184   ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = inttoptr i64 %i.u to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #42
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder28ValidateExtensionDeclarationESt17basic_string_viewIcSt11char_traitsIcEERKNS0_16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEEERKNS0_30DescriptorProto_ExtensionRangeERN4absl12lts_2025051213flat_hash_setIS5_NSF_18container_internal10StringHashENSH_8StringEqESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_set.272", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %8 = alloca %class.anon.543, align 8            ; 5 uses
  %9 = alloca %"struct.std::pair.373", align 8    ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %11 = alloca %class.anon.544, align 8           ; 5 uses
  %12 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %13 = alloca %class.anon.545, align 8           ; 5 uses
  %14 = alloca %"struct.std::pair.377", align 8   ; 8 uses
  %15 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %16 = alloca %class.anon.546, align 8           ; 5 uses
  %17 = alloca %"class.std::optional.547", align 8 ; 12 uses
  %18 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %19 = alloca %class.anon.557, align 8           ; 13 uses
  %20 = alloca %"class.std::optional.547", align 8 ; 8 uses
  %21 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %22 = alloca %class.anon.558, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store i64 1, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.d = load ptr, ptr %3, align 8, !tbaa !557
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = add i64 %i.e, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = select i1 %i.g, ptr %3, ptr %i.j         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !554  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.n, 3
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %.not108140 = icmp eq i32 %i.m, 0
  br i1 %.not108140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i74 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bc
  %.sroa.0104.0141 = phi ptr [ %i.k, %.lr.ph ], [ %i.fx, %bb.bc ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.0104.0141, align 8, !tbaa !323 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !22 ; 3 uses
  %i.am = load i32, ptr %i.p, align 8, !tbaa !22
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !22
  %.not = icmp slt i32 %i.al, %i.ao
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %i.aj, ptr %8, align 8, !tbaa !1882
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28ValidateExtensionDeclarationESt17basic_string_viewIcSt11char_traitsIcEERKNS4_16RepeatedPtrFieldINS4_33ExtensionRangeOptions_DeclarationEEERKNS4_30DescriptorProto_ExtensionRangeERNS0_13flat_hash_setIS9_NS0_18container_internal10StringHashENSJ_8StringEqESaIS9_EEEE3$_0NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.r, align 8, !tbaa !1210
  store ptr %8, ptr %7, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.bf

bb.g:                                             ; preds = %bb.c, %bb.e
  %23 = phi i32 [ %i.al, %bb.c ], [ %.pre, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i32 %23, ptr %i.c, align 4, !tbaa !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.373") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  %i.aq = load i8, ptr %i.s, align 8, !tbaa !977, !range !49, !alias.scope !1902, !noundef !51
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertEOi.exit.thread, label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertEOi.exit.thread: ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1902
  %i.as = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !1902
  store i32 %i.as, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.l

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  store ptr %i.aj, ptr %11, align 8, !tbaa !1882
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28ValidateExtensionDeclarationESt17basic_string_viewIcSt11char_traitsIcEERKNS4_16RepeatedPtrFieldINS4_33ExtensionRangeOptions_DeclarationEEERKNS4_30DescriptorProto_ExtensionRangeERNS0_13flat_hash_setIS9_NS0_18container_internal10StringHashENSJ_8StringEqESaIS9_EEEE3$_1NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.t, align 8, !tbaa !1210
  store ptr %11, ptr %10, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.bf

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.bf

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertEOi.exit.thread, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !3  ; 3 uses
  %i.ax = and i32 %i.aw, 3
  %or.cond = icmp eq i32 %i.ax, 3
  br i1 %or.cond, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = trunc i32 %i.aw to i1
  %i.az = and i32 %i.aw, 2
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = xor i1 %i.ba, %i.ay
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !22, !range !49, !noundef !51
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.bc, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store ptr %i.aj, ptr %13, align 8, !tbaa !1882
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28ValidateExtensionDeclarationESt17basic_string_viewIcSt11char_traitsIcEERKNS4_16RepeatedPtrFieldINS4_33ExtensionRangeOptions_DeclarationEEERKNS4_30DescriptorProto_ExtensionRangeERNS0_13flat_hash_setIS9_NS0_18container_internal10StringHashENSJ_8StringEqESaIS9_EEEE3$_2NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.u, align 8, !tbaa !1210
  store ptr %13, ptr %12, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 3, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %12)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bc

bb.q:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bf

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !276
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, -4
  %i.bk = inttoptr i64 %i.bj to ptr               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.bl = load i64, ptr %5, align 8, !tbaa !73, !noalias !1921 ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp ult i64 %i.bl, 2
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE26find_or_prepare_insert_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.377") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.377") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.u

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.bo = load i8, ptr %i.v, align 8, !tbaa !1380, !range !49, !alias.scope !1924, !noundef !51
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %.loopexit180

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertINSt7__cxx1112basic_stringIcS6_SaIcEEEEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i75 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i74, align 8, !alias.scope !1924 ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !20, !noalias !1924
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !23, !noalias !1924
  store i64 %i.bs, ptr %.sroa.2.0.copyload.i.i.i.i.i.i75, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i75, i64 8
  store ptr %i.bq, ptr %i.bt, align 8
  %.pre164 = load i8, ptr %i.v, align 8, !tbaa !1380, !range !49
  %i.bu = trunc nuw i8 %.pre164 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br i1 %i.bu, label %bb.w, label %.loopexit180

.loopexit180:                                     ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit.thread
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !276
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -4
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  store ptr %i.aj, ptr %16, align 8, !tbaa !1882
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder28ValidateExtensionDeclarationESt17basic_string_viewIcSt11char_traitsIcEERKNS4_16RepeatedPtrFieldINS4_33ExtensionRangeOptions_DeclarationEEERKNS4_30DescriptorProto_ExtensionRangeERNS0_13flat_hash_setIS9_NS0_18container_internal10StringHashENSJ_8StringEqESaIS9_EEEE3$_3NSt7__cxx1112basic_stringIcS8_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.cc, align 8, !tbaa !1210
  store ptr %16, ptr %15, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.cb, ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %15)
          to label %.critedge unwind label %bb.v

.critedge:                                        ; preds = %.loopexit180
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bf

bb.v:                                             ; preds = %.loopexit180
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.bf

bb.w:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EEESt4pairINSC_8iteratorEbERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.cf = load ptr, ptr %i.bg, align 8, !tbaa !276
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, -4
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !23
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128ValidateSymbolForDeclarationB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %17, i64 %i.cl, ptr %i.cj)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.cm = load i8, ptr %i.w, align 8, !tbaa !1925, !range !49, !noundef !51
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  store i8 0, ptr %i.x, align 8, !tbaa !1925
  store ptr %i.y, ptr %19, align 8, !tbaa !16
  %i.co = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.cp = load i64, ptr %i.z, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !19
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.y
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc80 unwind label %bb.af  ; 2 uses
end_hunk_7
begin_hunk_8_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3722
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3718
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE19transfer_n_slots_fnEPvSL_SL_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit
  %.014 = phi i64 [ %i.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit ], [ %1, %bb.a ] ; 5 uses
  %.01012 = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit ], [ %2, %bb.a ] ; 6 uses
  %i.a = load i32, ptr %.01012, align 8, !tbaa !1864
  store i32 %i.a, ptr %.0913, align 8, !tbaa !1864
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0913, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01012, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.e, ptr %i.b, align 8, !tbaa !20
  %i.l = load i64, ptr %i.f, align 8, !tbaa !22
  store i64 %i.l, ptr %i.d, align 8, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !20
  store i64 0, ptr %i.m, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.p = add i64 %.014, -1                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3723

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !3724

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.054.061 = phi i16 [ %i.bn, %bb.j ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.w ; 5 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = xor i64 %i.ad, %i.j                     ; 5 uses
  %i.af = trunc i64 %i.ac to i8
  %i.ag = and i8 %i.af, 127                       ; 2 uses
  %i.ah = sub i64 %i.w, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.k, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !322

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add nuw nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.b
  %.not.i = icmp ult i64 %i.an, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !322

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !22
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !163

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.ao, %i.au
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.w, i64 noundef %i.ae)
  br label %bb.j

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.ag, ptr %i.aw, align 1, !tbaa !300
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 4 uses
  store i32 %i.y, ptr %i.ax, align 8, !tbaa !1864
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !20
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !22
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !23
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !20
  store i64 0, ptr %i.bj, align 8, !tbaa !23
  store i8 0, ptr %i.bc, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS9_EEE8transferEPNS1_13map_slot_typeIiS9_EESN_.exit, %bb.h
  %i.bm = add i16 %.sroa.054.061, -1
  %i.bn = and i16 %i.bm, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS4_14EnumDescriptorERKNS4_19EnumDescriptorProtoEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_set.1309", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"struct.std::pair.1319", align 8   ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3737
  store i64 1, ptr %3, align 8, !noalias !3737
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3737
  %i.b = load ptr, ptr %1, align 8, !tbaa !3738, !noalias !3737, !nonnull !51, !align !644
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1160, !noalias !3737 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !906, !noalias !3737
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %.split.us.thread.i.i.i.i

.split.us.thread.i.i.i.i:                         ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !3740, !noalias !3737, !nonnull !51, !align !644
  %10 = load ptr, ptr %9, align 8, !tbaa !498, !noalias !3737 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4
  %11 = load i32, ptr %i.g, align 4, !tbaa !471, !noalias !3737
  %12 = sext i32 %11 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.split.us.split.us.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !tbaa !73, !noalias !3737 ; 4 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.pre68.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3737
  %.pre69.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3737
  %.phi.trans.insert70.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert70.i.i.i.i, align 8, !noalias !3737 ; 2 uses
  %14 = freeze i64 %.pre69.i.i.i.i                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3740, !noalias !3737, !nonnull !51, !align !644
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !498, !noalias !3737 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !471, !noalias !3737
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp ne i64 %.pre.i.i.i.i, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %.pre.i.i.i.i, 2
  %.fr.i.i.i.i = freeze ptr %.pre68.i.i.i.i       ; 4 uses
  %i.q = and i64 %14, 65535
  %.cast.i.i.i.i = ptrtoint ptr %.fr.i.i.i.i to i64 ; 3 uses
  br i1 %i.p, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %14, 131071
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.split.us.split.i.preheader.i.i.i, label %.split.us.split.us.i.i.i.i

.split.us.split.i.preheader.i.i.i:                ; preds = %.split.us.i.i.i.i
  %storemerge.us.i.peel.i.i.i = add nsw i64 %i.n, 1 ; 2 uses
  %i.r = icmp eq i64 %storemerge.us.i.peel.i.i.i, %.cast.i.i.i.i ; 2 uses
  %storemerge.us.i.i.i.i = add nsw i64 %.cast.i.i.i.i, 1
  %spec.select.i.i.i = select i1 %i.r, i64 %.cast.i.i.i.i, i64 %i.n
  %spec.select9.i.i.i = select i1 %i.r, i64 %storemerge.us.i.i.i.i, i64 %storemerge.us.i.peel.i.i.i
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i

.split.us.split.us.i.i.i.i:                       ; preds = %.split.us.i.i.i.i, %.split.us.thread.i.i.i.i
  %15 = phi ptr [ %10, %.split.us.thread.i.i.i.i ], [ %i.k, %.split.us.i.i.i.i ]
  %16 = phi i64 [ %12, %.split.us.thread.i.i.i.i ], [ %i.n, %.split.us.i.i.i.i ] ; 2 uses
  %17 = phi ptr [ %i.h, %.split.us.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %.split.us.i.i.i.i ]
  %storemerge.us.us.i.i.i.i = add nsw i64 %16, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i

.split.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.fr.i.i.i.i) ]
  br label %.split.split.i.i.i.i

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !3737
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !466, !noalias !3737
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !471, !noalias !3737
  store i32 %i.x, ptr %i.a, align 4, !tbaa !3, !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3737
  call void @llvm.experimental.noalias.scope.decl(metadata !3741)
  call void @llvm.experimental.noalias.scope.decl(metadata !3744)
  call void @llvm.experimental.noalias.scope.decl(metadata !3747)
  call void @llvm.experimental.noalias.scope.decl(metadata !3750)
  call void @llvm.experimental.noalias.scope.decl(metadata !3753)
  call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !3737

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.y = load i8, ptr %13, align 8, !tbaa !3759, !range !49, !alias.scope !3762, !noalias !3737, !noundef !51
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3762, !noalias !3737
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !3763
  %i.ab = sext i32 %i.aa to i64
  store i64 %i.ab, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19, !noalias !3737
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE6insertIiLi0EEESt4pairINSB_8iteratorEbEOT_.exit.i.i.i.i: ; preds = %bb.c, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3737
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !3738, !noalias !3737, !nonnull !51, !align !644
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1160, !noalias !3737 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !906, !noalias !3737
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge.i.i.i.i, !llvm.loop !3764

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !3737
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

.split.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.split.i.i.i.i
  %storemerge.in.i.i.i.i = phi i64 [ %i.n, %.split.i.i.i.i ], [ %storemerge.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %storemerge.i.i.i.i = add nsw i64 %storemerge.in.i.i.i.i, 1 ; 4 uses
  call void @llvm.prefetch.p0(ptr nonnull %.fr.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aj = xor i64 %storemerge.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ak = mul i64 %i.aj, -2543921745674291987
  %i.al = call noundef i64 @llvm.bswap.i64(i64 %i.ak) ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = xor i64 %i.am, %i.q
  %i.ao = trunc i64 %i.al to i8
  %i.ap = and i8 %i.ao, 127
  %i.aq = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.split.split.i.i.i.i
  %.pn.i6.i.i.i.i.i.i.i = phi i64 [ %i.an, %.split.split.i.i.i.i ], [ %i.bj, %bb.g ]
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.split.i.i.i.i ], [ %i.bi, %bb.g ]
  %.sroa.6.0.i.i.i.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i.i.i.i, %.pre.i.i.i.i ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.pre.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1), !noalias !3737
  %i.at = getelementptr inbounds nuw i8, ptr %.fr.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !22 ; 2 uses
  %i.av = icmp eq <16 x i8> %i.ar, %i.au
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not46.i.i.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not46.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i.i.i.i.i = phi i16 [ %i.bf, %bb.f ], [ %i.aw, %bb.e ] ; 3 uses
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i.i.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i, %i.ay
  %i.ba = and i64 %i.az, %.pre.i.i.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.pre.i.i.i.i, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !3737
  %i.bd = icmp eq i64 %i.bc, %storemerge.i.i.i.i
  br i1 %i.bd, label %.split.split.i.i.i.i, label %bb.f, !prof !322

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.be = add i16 %.sroa.017.047.i.i.i.i.i.i.i.i, -1
  %i.bf = and i16 %i.be, %.sroa.017.047.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.f, %bb.e
  %i.bg = icmp eq <16 x i8> %i.au, splat (i8 -128)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %.not43.i.i.i.i.i.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not43.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i, !prof !163

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bi = add i64 %.sroa.13.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bj = add i64 %i.bi, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.e, !llvm.loop !3765

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.split.us.split.us.i.i.i.i, %.split.us.split.i.preheader.i.i.i
  %18 = phi ptr [ %17, %.split.us.split.us.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %.split.us.split.i.preheader.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ]
  %19 = phi ptr [ %15, %.split.us.split.us.i.i.i.i ], [ %i.k, %.split.us.split.i.preheader.i.i.i ], [ %i.k, %._crit_edge.i.i.i.i.i.i.i.i ]
  %storemerge.in48.i.i.i.i = phi i64 [ %16, %.split.us.split.us.i.i.i.i ], [ %spec.select.i.i.i, %.split.us.split.i.preheader.i.i.i ], [ %storemerge.in.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ]
  %storemerge46.i.i.i.i = phi i64 [ %storemerge.us.us.i.i.i.i, %.split.us.split.us.i.i.i.i ], [ %spec.select9.i.i.i, %.split.us.split.i.preheader.i.i.i ], [ %storemerge.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !139, !noalias !3737 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20, !noalias !3737
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23, !noalias !3737
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3766, !noalias !3737, !nonnull !51, !align !644
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !22, !noalias !3737 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20, !noalias !3737
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !23, !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3767
  store i64 1, ptr %2, align 8, !noalias !3767
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.68, ptr %i.by, align 8, !noalias !3767
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bp, ptr %i.bz, align 8, !noalias !3767
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bn, ptr %i.ca, align 8, !noalias !3767
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 31, ptr %i.cb, align 8, !noalias !3767
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.417, ptr %i.cc, align 8, !noalias !3767
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bx, ptr %i.cd, align 8, !noalias !3767
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.bv, ptr %i.ce, align 8, !noalias !3767
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 80, ptr %i.cf, align 8, !noalias !3767
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.418, ptr %i.cg, align 8, !noalias !3767
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %2, i64 5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3767
  %i.ch = icmp slt i64 %storemerge.in48.i.i.i.i, 2147483646
  br i1 %i.ch, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !3737
  store i64 34, ptr %5, align 8, !noalias !3737
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.419, ptr %i.ci, align 8, !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !3737
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ck = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %storemerge46.i.i.i.i, ptr noundef nonnull %i.cj)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %6, align 8, !tbaa !847, !noalias !3737
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cj, ptr %i.co, align 8, !tbaa !848, !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !3737
  store i64 1, ptr %7, align 8, !noalias !3737
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.73, ptr %i.cp, align 8, !noalias !3737
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !3737
  br label %bb.p

bb.l:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE8containsIlEEbRKl.exit.thread.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

bb.m:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !3737
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn17.i.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.n ], [ %i.cr, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !3737
  %i.ct = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !3737 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !22, !alias.scope !3737
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

bb.p:                                             ; preds = %bb.k, %bb.h
  %i.cy = load i64, ptr %3, align 8, !tbaa !73, !noalias !3737 ; 3 uses
  %i.cz = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp ult i64 %i.cy, 2
  br i1 %i.da, label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS1_14EnumDescriptorERKNS1_19EnumDescriptorProtoEE3$_0JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %18, align 8, !tbaa !22, !noalias !3737
  %i.dc = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !79, !noalias !3737
  %i.dd = and i64 %i.dc, 65536
  %i.de = icmp ne i64 %i.dd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cy, ptr noundef %i.db, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.de)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS1_14EnumDescriptorERKNS1_19EnumDescriptorProtoEE3$_0JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit" unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.l, %bb.d
  %.pn21.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %i.cq, %bb.l ], [ %.pn17.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.pn17.i.i.i.i, %bb.o ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3737
  resume { ptr, i32 } %.pn21.i.i.i.i

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder15ValidateOptionsEPKNS1_14EnumDescriptorERKNS1_19EnumDescriptorProtoEE3$_0JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit": ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3737
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1319") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !73     ; 5 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79, !noalias !3770
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !19, !noalias !3770
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !3, !noalias !3770
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !19, !noalias !3770 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = xor i64 %i.j, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, 6679450291180483821
  %i.n = lshr i64 %i.m, 56
  %i.o = trunc nuw i64 %i.n to i8
  %i.p = and i8 %i.o, 127
  %i.q = xor i64 %i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i8 noundef signext %i.p), !noalias !3770 ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !3770, !nonnull !51, !noundef !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !22, !noalias !3770
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.t
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22, !noalias !3773 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 1, i32 1), !noalias !3773
  %i.aa = load i32, ptr %2, align 4, !tbaa !3, !noalias !3773
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = xor i64 %i.ab, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ad = mul i64 %i.ac, -2543921745674291987
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79, !noalias !3776
  %i.ah = and i64 %i.ag, 65535
  %i.ai = lshr i64 %i.ae, 7
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.ae to i8
  %i.al = and i8 %i.ak, 127
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !22, !noalias !3773 ; 3 uses
  %i.an = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.aj, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1), !noalias !3773
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.7.0.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !22, !noalias !3773 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ao, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.at, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bc, %.critedge.i ], [ %i.at, %bb.g ] ; 3 uses
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.7.0.i, %i.av
  %i.ax = and i64 %i.aw, %i.a                     ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19, !noalias !3773
  %i.ba = icmp eq i64 %i.az, %i.ab
  br i1 %i.ba, label %.critedge20.i, label %.critedge.i, !prof !322

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bb = add i16 %.sroa.033.060.i, -1
  %i.bc = and i16 %i.bb, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bd = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.be, 0
  br i1 %.not51.i, label %bb.h, label %.thread.i, !prof !163

.thread.i:                                        ; preds = %.critedge18.i
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = add i64 %.sroa.7.0.i, %i.bg
  %i.bi = and i64 %i.bh, %i.a
  %i.bj = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ae, i64 %i.bi, i64 %.sroa.15.0.i), !noalias !3773 ; 2 uses
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !22, !noalias !3773, !nonnull !51, !noundef !51
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.am, align 8, !tbaa !22, !noalias !3773
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bj
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

.critedge20.i:                                    ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ax
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ax
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIlEENS0_13hash_internal4HashIlEESt8equal_toIlESaIlEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.critedge20.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink76.i.sink = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ %i.v, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.bl, %.thread.i ], [ %i.bq, %.critedge20.i ]
  %.sink75.i.sink = phi ptr [ %i.g, %bb.d ], [ %i.x, %bb.e ], [ %i.f, %bb.c ], [ %i.bm, %.thread.i ], [ %i.bp, %.critedge20.i ]
  %.sink.i4.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge20.i ]
  store ptr %.sink76.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.sink, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i4.sink, ptr %i.br, align 8, !tbaa !3759
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIlEElEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !19
  %i.b = xor i64 %i.a, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.c = mul i64 %i.b, -2543921745674291987
  %i.d = tail call noundef i64 @llvm.bswap.i64(i64 %i.c)
  ret i64 %i.d
}
end_hunk_8
