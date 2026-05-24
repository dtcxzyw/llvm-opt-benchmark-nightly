inline.NumInlined: 8285
inline.NumDeleted: 2143
begin_hunk_0_@_ZN5arrow3ipc4test21CompareArraysDetailedEiRKNS_5ArrayES4_:bb.a
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.an, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %_ZN5arrow6StatusD2Ev.exit87

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %13, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.3, i64 noundef 49)
          to label %_ZN7testing7MessagelsIA50_cEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIA50_cEERS0_RKT_.exit:       ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %_ZN7testing7MessagelsIA50_cEERS0_RKT_.exit
  %i.ay = load ptr, ptr %13, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %14, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !30
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit71 unwind label %bb.ag ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit71: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @.str.2)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit71
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.be = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ab
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !31
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.bj = load ptr, ptr %13, align 8, !tbaa !23   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #22, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.bn = load ptr, ptr %11, align 8, !tbaa !20
  %.not.i78 = icmp eq ptr %i.bn, null
  br i1 %.not.i78, label %_ZN5arrow6StatusD2Ev.exit79, label %bb.ac, !prof !35

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit77
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN5arrow6StatusD2Ev.exit79

_ZN5arrow6StatusD2Ev.exit79:                      ; preds = %_ZN7testing7MessageD2Ev.exit77, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bh

bb.ad:                                            ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.ae:                                            ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %_ZN7testing7MessagelsIA50_cEERS0_RKT_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ag:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit71
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn38 = phi { ptr, i32 } [ %i.bt, %bb.ai ], [ %i.bs, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.aj ], [ %i.br, %bb.ag ] ; 2 uses
  %i.bu = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ak
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !31
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.af
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.af ], [ %.pn38.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn38.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.ae
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.bp, %bb.ae ] ; 2 uses
  %i.bz = load ptr, ptr %13, align 8, !tbaa !23   ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.al
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #22, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %bb.al, %bb.ad
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ad ], [ %.pn38.pn.pn.pn, %bb.al ], [ %.pn38.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.cd = load ptr, ptr %11, align 8, !tbaa !20
  %.not.i86 = icmp eq ptr %i.cd, null
  br i1 %.not.i86, label %_ZN5arrow6StatusD2Ev.exit87, label %bb.am, !prof !35

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit85
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN5arrow6StatusD2Ev.exit87

_ZN5arrow6StatusD2Ev.exit87:                      ; preds = %bb.am, %_ZN7testing7MessageD2Ev.exit85, %bb.w
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.w ], [ %.pn38.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn38.pn.pn.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bi

bb.an:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.ce = load ptr, ptr %16, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.4, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %bb.ao
  %i.ch = load ptr, ptr %16, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef %0)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.ck = load ptr, ptr %16, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.5, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %bb.ay ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.cn, ptr %17, align 8, !tbaa !45, !alias.scope !46
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.co, align 8, !tbaa !30, !alias.scope !46
  store i8 0, ptr %i.cn, align 8, !tbaa !31, !alias.scope !46
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %21 = load ptr, ptr %20, align 8, !tbaa !47, !noalias !46 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %21, null
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !46 ; 2 uses
  %22 = icmp ugt ptr %21, %i.cq
  %.08.i.i.i = select i1 %22, ptr %21, ptr %i.cq  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i90 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i90, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !51, !noalias !46 ; 2 uses
  %i.ct = ptrtoint ptr %.08.i.i.i to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.cs, i64 noundef %i.cv)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %17, align 8, !tbaa !25, !alias.scope !46 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cn
  br i1 %i.cz, label %.body, label %.body.sink.split

bb.ar:                                            ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aq

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ar, %bb.ap
  %i.db = load ptr, ptr %16, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %17, align 8, !tbaa !25
  %i.de = load i64, ptr %i.co, align 8, !tbaa !30
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd, i64 noundef %i.de)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91 unwind label %bb.az ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dg = load ptr, ptr %16, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.az ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.dj, ptr %18, align 8, !tbaa !45, !alias.scope !58
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.dk, align 8, !tbaa !30, !alias.scope !58
  store i8 0, ptr %i.dj, align 8, !tbaa !31, !alias.scope !58
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !47, !noalias !58 ; 3 uses
  %.not.i.not.i.i92 = icmp eq ptr %24, null
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !58 ; 2 uses
  %25 = icmp ugt ptr %24, %i.dm
  %.08.i.i.i93 = select i1 %25, ptr %24, ptr %i.dm ; 2 uses
  %.not5.i.i94 = icmp eq ptr %.08.i.i.i93, null
  %.not.i.i95 = select i1 %.not.i.not.i.i92, i1 true, i1 %.not5.i.i94
  br i1 %.not.i.i95, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !58 ; 2 uses
  %i.dp = ptrtoint ptr %.08.i.i.i93 to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.do, i64 noundef %i.dr)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit101 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %18, align 8, !tbaa !25, !alias.scope !58 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dj
  br i1 %i.dv, label %.body99, label %.body99.sink.split

bb.au:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit101 unwind label %bb.at

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit101: ; preds = %bb.au, %bb.as
  %i.dx = load ptr, ptr %16, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %18, align 8, !tbaa !25
  %i.ea = load i64, ptr %i.dk, align 8, !tbaa !30
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %i.dz, i64 noundef %i.ea)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit102 unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit102: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 68, ptr noundef nonnull @.str.2)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit102
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.ec = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dj
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.a: ; preds = %bb.aw
  %i.ee = load i64, ptr %i.dj, align 8, !tbaa !31
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.a: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.eg = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.a
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !31
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.ek = load ptr, ptr %16, align 8, !tbaa !23   ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i109, label %_ZN7testing7MessageD2Ev.exit111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(128) %i.ek) #22, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit111

_ZN7testing7MessageD2Ev.exit111:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bh

bb.ax:                                            ; preds = %bb.an
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit120

bb.ay:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %bb.ao
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.az:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit91, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit101
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit102
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.av
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn45 = phi { ptr, i32 } [ %i.et, %bb.bc ], [ %i.es, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.bd ], [ %i.er, %bb.ba ] ; 2 uses
  %i.eu = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dj
  br i1 %i.ev, label %.body99, label %.body99.sink.split

.body99.sink.split:                               ; preds = %bb.be, %bb.at
  %.sink = phi ptr [ %i.du, %bb.at ], [ %i.eu, %bb.be ]
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %.pn45.pn, %bb.be ]
  %i.ew = load i64, ptr %i.dj, align 8, !tbaa !31
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ex) #23
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.be, %bb.at
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %.pn45.pn, %bb.be ], [ %.pn45.pn.pn.ph, %.body99.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bf

bb.bf:                                            ; preds = %.body99, %bb.az
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %.body99 ], [ %i.eq, %bb.az ] ; 2 uses
  %i.ey = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cn
  br i1 %i.ez, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bf, %bb.aq
  %.sink153 = phi ptr [ %i.cy, %bb.aq ], [ %i.ey, %bb.bf ]
  %.pn45.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cx, %bb.aq ], [ %.pn45.pn.pn.pn, %bb.bf ]
  %i.fa = load i64, ptr %i.cn, align 8, !tbaa !31
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %.sink153, i64 noundef %i.fb) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bf, %bb.aq
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.aq ], [ %.pn45.pn.pn.pn, %bb.bf ], [ %.pn45.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.ay
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %.body ], [ %i.ep, %bb.ay ] ; 2 uses
  %i.fc = load ptr, ptr %16, align 8, !tbaa !23   ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i118, label %_ZN7testing7MessageD2Ev.exit120, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %bb.bg
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #22, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit120

_ZN7testing7MessageD2Ev.exit120:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, %bb.bg, %bb.ax
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ax ], [ %.pn45.pn.pn.pn.pn.pn, %bb.bg ], [ %.pn45.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit79, %_ZN5arrow6StatusD2Ev.exit58, %_ZN7testing7MessageD2Ev.exit111
  %i.fg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.fg, ptr %5, align 8, !tbaa !32
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 -24    ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %5, i64 %i.fj
  store ptr %i.fh, ptr %i.fk, align 8, !tbaa !32
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.fl, ptr %i.d, align 8, !tbaa !32
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fm, align 8, !tbaa !32
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !25 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !31
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fm, align 8, !tbaa !32
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ft) #22
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.fu, ptr %5, align 8, !tbaa !32
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 -24    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

bb.ku:                                            ; preds = %.noexc.i234
  %i.aip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

bb.kv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit239
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit654

.loopexit654.loopexit:                            ; preds = %bb.dw
  %i.air = landingpad { ptr, i32 }
          cleanup
  %i.ais = getelementptr inbounds nuw i8, ptr %35, i64 64
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ais) #22
  %i.ait = getelementptr inbounds nuw i8, ptr %35, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ait) #22
  %i.aiu = getelementptr inbounds nuw i8, ptr %35, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu) #22
  %i.aiv = getelementptr inbounds nuw i8, ptr %35, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aiv) #22
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #22
  br label %.loopexit654

.loopexit654:                                     ; preds = %.loopexit654.loopexit, %bb.kv
  %i.aiw = phi i1 [ false, %bb.kv ], [ true, %.loopexit654.loopexit ] ; 2 uses
  %.pn92 = phi { ptr, i32 } [ %i.aiq, %bb.kv ], [ %i.air, %.loopexit654.loopexit ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %50) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %49) #22
  %i.aix = load ptr, ptr %48, align 8, !tbaa !25  ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, %i.mj
  br i1 %i.aiy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %.loopexit654
  %i.aiz = load i64, ptr %i.mj, align 8, !tbaa !31
  %i.aja = add i64 %i.aiz, 1
  call void @_ZdlPvm(ptr noundef %i.aix, i64 noundef %i.aja) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %.loopexit654, %bb.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336, %bb.kt
  %.082 = phi ptr [ %i.ls, %bb.kt ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336 ], [ %i.mi, %bb.ku ], [ %i.mi, %.loopexit654 ] ; 2 uses
  %.274 = phi i1 [ false, %bb.kt ], [ %i.aiw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336 ], [ false, %bb.ku ], [ %i.aiw, %.loopexit654 ] ; 2 uses
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.aio, %bb.kt ], [ %.pn92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336 ], [ %i.aip, %bb.ku ], [ %.pn92, %.loopexit654 ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %46) #22
  %i.ajb = load ptr, ptr %45, align 8, !tbaa !25  ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %i.lt
  br i1 %i.ajc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.ajd = load i64, ptr %i.lt, align 8, !tbaa !31
  %i.aje = add i64 %i.ajd, 1
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef %i.aje) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %bb.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %bb.kr
  %.284 = phi ptr [ %i.lf, %bb.kr ], [ %i.ls, %bb.ks ], [ %.082, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %.082, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ] ; 2 uses
  %.476 = phi i1 [ false, %bb.kr ], [ false, %bb.ks ], [ %.274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %.274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ] ; 2 uses
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aim, %bb.kr ], [ %i.ain, %bb.ks ], [ %.pn92.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %.pn92.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %44) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #22
  %i.ajf = load ptr, ptr %42, align 8, !tbaa !25  ; 2 uses
  %i.ajg = icmp eq ptr %i.ajf, %i.lg
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %i.ajh = load i64, ptr %i.lg, align 8, !tbaa !31
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.aji) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %bb.kq
  %.486 = phi ptr [ %i.kt, %bb.kq ], [ %.284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %.284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ] ; 2 uses
  %.678 = phi i1 [ false, %bb.kq ], [ %.476, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %.476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ] ; 2 uses
  %.pn92.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ail, %bb.kq ], [ %.pn92.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %.pn92.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ] ; 2 uses
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #22
  %i.ajj = load ptr, ptr %39, align 8, !tbaa !25  ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.ku
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.ajl = load i64, ptr %i.ku, align 8, !tbaa !31
  %i.ajm = add i64 %i.ajl, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.kp
  %.688 = phi ptr [ %35, %bb.kp ], [ %.486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ] ; 2 uses
  %.880 = phi i1 [ false, %bb.kp ], [ %.678, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.678, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ]
  %.pn92.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aik, %bb.kp ], [ %.pn92.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn92.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #22
  %i.ajn = load ptr, ptr %36, align 8, !tbaa !25  ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.kh
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  %i.ajp = load i64, ptr %i.kh, align 8, !tbaa !31
  %i.ajq = add i64 %i.ajp, 1
  call void @_ZdlPvm(ptr noundef %i.ajn, i64 noundef %i.ajq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  %i.ajr = icmp eq ptr %35, %.688
  %or.cond = select i1 %.880, i1 true, i1 %i.ajr
  br i1 %or.cond, label %.loopexit653, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %.preheader
  %i.ajs = phi ptr [ %i.ajt, %.preheader ], [ %.688, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ]
  %i.ajt = getelementptr inbounds i8, ptr %i.ajs, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt) #22
  %i.aju = icmp eq ptr %i.ajt, %35
  br i1 %i.aju, label %.loopexit653, label %.preheader

.loopexit653:                                     ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.sh

bb.kw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2INS0_15DictionaryArrayEvEERKS_IT_E.exit319
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  %i.ajw = getelementptr inbounds nuw i8, ptr %52, i64 64
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ajw) #22
  %i.ajx = getelementptr inbounds nuw i8, ptr %52, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ajx) #22
  %i.ajy = getelementptr inbounds nuw i8, ptr %52, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ajy) #22
  %i.ajz = getelementptr inbounds nuw i8, ptr %52, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ajz) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %bb.sg

bb.kx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.ky:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit412
  %.020674 = phi i32 [ 5, %.lr.ph ], [ %i.akk, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit412 ] ; 2 uses
  %.sroa.0617.0673 = phi ptr [ %i.agb, %.lr.ph ], [ %i.arb, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit412 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.0617.0673, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !66 ; 2 uses
  %i.akd = load <2 x ptr>, ptr %.sroa.0617.0673, align 8, !tbaa !79
  store <2 x ptr> %i.akd, ptr %53, align 16, !tbaa !79
  %.not.i.i.i351 = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i351, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit353, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 8 ; 3 uses
  %i.akf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i352 = icmp eq i8 %i.akf, 0
  br i1 %.not.i.i.i.i352, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.akg = load i32, ptr %i.ake, align 4, !tbaa !3
  %i.akh = add nsw i32 %i.akg, 1
  store i32 %i.akh, ptr %i.ake, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit353

bb.lb:                                            ; preds = %bb.kz
  %i.aki = atomicrmw volatile add ptr %i.ake, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit353

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit353: ; preds = %bb.ky, %bb.la, %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %54)
          to label %bb.lc unwind label %bb.no

bb.lc:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit353
  %i.akj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agf, ptr noundef nonnull @.str.48, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.np ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.lc
  %i.akk = add nuw nsw i32 %.020674, 1
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.agf, i32 noundef %.020674)
          to label %bb.ld unwind label %bb.np     ; 0 uses

bb.ld:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %55, ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.le unwind label %bb.nq

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %56, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 18, ptr nonnull @.str.41)
          to label %bb.lf unwind label %bb.nr

bb.lf:                                            ; preds = %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  store ptr %i.agg, ptr %58, align 8, !tbaa !45, !alias.scope !968
  store i64 0, ptr %i.agh, align 8, !tbaa !30, !alias.scope !968
  store i8 0, ptr %i.agg, align 8, !tbaa !31, !alias.scope !968
  %i.akm = load ptr, ptr %i.agi, align 8, !tbaa !47, !noalias !968 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.akm, null
  %69 = load ptr, ptr %i.agj, align 8, !noalias !968 ; 2 uses
  %70 = icmp ugt ptr %i.akm, %69
  %.08.i.i.i = select i1 %70, ptr %i.akm, ptr %69 ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i355 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i355, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.akn = load ptr, ptr %i.agk, align 8, !tbaa !51, !noalias !968 ; 2 uses
  %i.ako = ptrtoint ptr %.08.i.i.i to i64
  %i.akp = ptrtoint ptr %i.akn to i64
  %i.akq = sub i64 %i.ako, %i.akp
  %i.akr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %58, i64 noundef 0, i64 noundef 0, ptr noundef %i.akn, i64 noundef %i.akq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.lh ; 0 uses

bb.lh:                                            ; preds = %bb.li, %bb.lg
  %i.aks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akt = load ptr, ptr %58, align 8, !tbaa !25, !alias.scope !968 ; 2 uses
  %i.aku = icmp eq ptr %i.akt, %i.agg
  br i1 %i.aku, label %.body356, label %.body356.sink.split

bb.li:                                            ; preds = %bb.lf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %i.agl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.lh

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.li, %bb.lg
  %i.akv = load ptr, ptr %i.agn, align 8, !tbaa !66 ; 2 uses
  %i.akw = load <2 x ptr>, ptr %55, align 16, !tbaa !79
  store <2 x ptr> %i.akw, ptr %59, align 16, !tbaa !79
  %.not.i.i.i358 = icmp eq ptr %i.akv, null
  br i1 %.not.i.i.i358, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit360, label %bb.lj

bb.lj:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akv, i64 8 ; 3 uses
  %i.aky = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i359 = icmp eq i8 %i.aky, 0
  br i1 %.not.i.i.i.i359, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.akz = load i32, ptr %i.akx, align 4, !tbaa !3
  %i.ala = add nsw i32 %i.akz, 1
  store i32 %i.ala, ptr %i.akx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit360

bb.ll:                                            ; preds = %bb.lj
  %i.alb = atomicrmw volatile add ptr %i.akx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit360

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit360: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.lk, %bb.ll
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %57, ptr noundef nonnull %58, ptr noundef nonnull %59, i1 noundef zeroext true, ptr noundef nonnull %60)
          to label %bb.lm unwind label %bb.ns

bb.lm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit360
  %i.alc = load ptr, ptr %i.pn, align 8, !tbaa !201 ; 5 uses
  %i.ald = load ptr, ptr %i.na, align 8, !tbaa !200
  %.not.i.i361 = icmp eq ptr %i.alc, %i.ald
  br i1 %.not.i.i361, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  store ptr null, ptr %i.ale, align 8, !tbaa !66
  %i.alf = load <2 x ptr>, ptr %57, align 16, !tbaa !79
  store ptr null, ptr %i.ago, align 8, !tbaa !66
  store <2 x ptr> %i.alf, ptr %i.alc, align 8, !tbaa !79
  store ptr null, ptr %57, align 16, !tbaa !473
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store ptr %i.alg, ptr %i.pn, align 8, !tbaa !201
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit

bb.lo:                                            ; preds = %bb.lm
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr %i.alc, ptr noundef nonnull align 8 dereferenceable(16) %57)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.nt

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ln, %bb.lo
  %i.alh = load ptr, ptr %i.ago, align 8, !tbaa !66 ; 8 uses
  %.not.i.i363 = icmp eq ptr %i.alh, null
  br i1 %.not.i.i363, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, label %bb.lp

bb.lp:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8 ; 4 uses
  %i.alj = load atomic i64, ptr %i.ali acquire, align 8 ; 2 uses
  %i.alk = icmp eq i64 %i.alj, 4294967297
  %i.all = trunc i64 %i.alj to i32                ; 2 uses
  br i1 %i.alk, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  store i32 0, ptr %i.ali, align 8, !tbaa !67
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alh, i64 12
  store i32 0, ptr %i.alm, align 4, !tbaa !69
  %i.aln = load ptr, ptr %i.alh, align 8, !tbaa !32
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8
  call void %i.alp(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #22, !inline_history !204
  %i.alq = load ptr, ptr %i.alh, align 8, !tbaa !32
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  %i.als = load ptr, ptr %i.alr, align 8
  call void %i.als(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #22, !inline_history !204
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367

bb.lr:                                            ; preds = %bb.lp
  %i.alt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i364 = icmp eq i8 %i.alt, 0
  br i1 %.not.i.i.i364, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.alu = add nsw i32 %i.all, -1
  store i32 %i.alu, ptr %i.ali, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365

bb.lt:                                            ; preds = %bb.lr
  %i.alv = atomicrmw volatile add ptr %i.ali, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365: ; preds = %bb.lt, %bb.ls
  %.0.i.i.i.i366 = phi i32 [ %i.all, %bb.ls ], [ %i.alv, %bb.lt ]
  %i.alw = icmp eq i32 %.0.i.i.i.i366, 1
  br i1 %i.alw, label %bb.lu, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, !prof !71

bb.lu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.lq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365, %bb.lu
  %i.alx = load ptr, ptr %i.agp, align 8, !tbaa !66 ; 8 uses
  %.not.i.i368 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i368, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372, label %bb.lv

bb.lv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8 ; 4 uses
  %i.alz = load atomic i64, ptr %i.aly acquire, align 8 ; 2 uses
  %i.ama = icmp eq i64 %i.alz, 4294967297
  %i.amb = trunc i64 %i.alz to i32                ; 2 uses
  br i1 %i.ama, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  store i32 0, ptr %i.aly, align 8, !tbaa !67
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alx, i64 12
  store i32 0, ptr %i.amc, align 4, !tbaa !69
  %i.amd = load ptr, ptr %i.alx, align 8, !tbaa !32
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16
  %i.amf = load ptr, ptr %i.ame, align 8
  call void %i.amf(ptr noundef nonnull align 8 dereferenceable(16) %i.alx) #22, !inline_history !205
  %i.amg = load ptr, ptr %i.alx, align 8, !tbaa !32
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 24
  %i.ami = load ptr, ptr %i.amh, align 8
  call void %i.ami(ptr noundef nonnull align 8 dereferenceable(16) %i.alx) #22, !inline_history !205
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372

bb.lx:                                            ; preds = %bb.lv
  %i.amj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i369 = icmp eq i8 %i.amj, 0
  br i1 %.not.i.i.i369, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.amk = add nsw i32 %i.amb, -1
  store i32 %i.amk, ptr %i.aly, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i370

bb.lz:                                            ; preds = %bb.lx
  %i.aml = atomicrmw volatile add ptr %i.aly, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i370

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i370: ; preds = %bb.lz, %bb.ly
  %.0.i.i.i.i371 = phi i32 [ %i.amb, %bb.ly ], [ %i.aml, %bb.lz ]
  %i.amm = icmp eq i32 %.0.i.i.i.i371, 1
  br i1 %i.amm, label %bb.ma, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372, !prof !71

bb.ma:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i370
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alx) #22
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, %bb.lw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i370, %bb.ma
  %i.amn = load ptr, ptr %i.agm, align 8, !tbaa !66 ; 8 uses
  %.not.i.i373 = icmp eq ptr %i.amn, null
  br i1 %.not.i.i373, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit377, label %bb.mb

bb.mb:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit372
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8 ; 4 uses
  %i.amp = load atomic i64, ptr %i.amo acquire, align 8 ; 2 uses
  %i.amq = icmp eq i64 %i.amp, 4294967297
  %i.amr = trunc i64 %i.amp to i32                ; 2 uses
  br i1 %i.amq, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  store i32 0, ptr %i.amo, align 8, !tbaa !67
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amn, i64 12
  store i32 0, ptr %i.ams, align 4, !tbaa !69
  %i.amt = load ptr, ptr %i.amn, align 8, !tbaa !32
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %i.amv = load ptr, ptr %i.amu, align 8
  call void %i.amv(ptr noundef nonnull align 8 dereferenceable(16) %i.amn) #22, !inline_history !206
  %i.amw = load ptr, ptr %i.amn, align 8, !tbaa !32
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  %i.amy = load ptr, ptr %i.amx, align 8
  call void %i.amy(ptr noundef nonnull align 8 dereferenceable(16) %i.amn) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit377

bb.md:                                            ; preds = %bb.mb
  %i.amz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i374 = icmp eq i8 %i.amz, 0
  br i1 %.not.i.i.i374, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ana = add nsw i32 %i.amr, -1
  store i32 %i.ana, ptr %i.amo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i375
end_hunk_1
begin_hunk_2_@_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt10shared_ptrINS_8DataTypeEERKSt6vectorIT0_SaIS8_EEPS2_INS_5ArrayEE:bb.a
bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %.pr = load ptr, ptr %17, align 8, !tbaa !20
  %.not.i153 = icmp eq ptr %.pr, null
  br i1 %.not.i153, label %_ZN5arrow6StatusD2Ev.exit154, label %bb.by, !prof !1157

bb.by:                                            ; preds = %bb.bx
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN5arrow6StatusD2Ev.exit154

_ZN5arrow6StatusD2Ev.exit154:                     ; preds = %_ZN5arrow6StatusD2Ev.exit135, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bz

_ZN5arrow6StatusD2Ev.exit152:                     ; preds = %bb.bw, %_ZN7testing7MessageD2Ev.exit150, %bb.bh
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.bh ], [ %.pn68.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit150 ], [ %.pn68.pn.pn.pn.pn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bg, %_ZN5arrow6StatusD2Ev.exit99, %_ZN5arrow6StatusD2Ev.exit154
  %i.gw = load ptr, ptr %7, align 8, !tbaa !770   ; 3 uses
  %.not.i155 = icmp eq ptr %i.gw, null
  br i1 %.not.i155, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i: ; preds = %bb.bz
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.gw) #22, !inline_history !810
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bz, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.cb:                                            ; preds = %bb.am, %_ZN5arrow6StatusD2Ev.exit131, %_ZN5arrow6StatusD2Ev.exit152, %_ZN5arrow6StatusD2Ev.exit107
  %.pn75.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit107 ], [ %i.cn, %bb.am ], [ %.pn68.pn.pn.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit152 ], [ %.pn61.pn.pn.pn.pn.pn, %_ZN5arrow6StatusD2Ev.exit131 ]
  %i.ha = load ptr, ptr %7, align 8, !tbaa !770   ; 3 uses
  %.not.i156 = icmp eq ptr %i.ha, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit158, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i157

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i157: ; preds = %bb.cb
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ha) #22, !inline_history !810
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit158

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit158: ; preds = %bb.cb, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit158, %_ZN7testing7MessageD2Ev.exit89
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit158 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn75.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1123 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !31
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #23
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

declare void @__cxa_bad_cast() local_unnamed_addr

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal18CmpHelperEQFailureIN5arrow4Type4typeES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing13PrintToStringIN5arrow4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing13PrintToStringIN5arrow4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN5arrow4Type4typeES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN5arrow4Type4typeES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN5arrow4Type4typeES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !31
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.f = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !31
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN5arrow4Type4typeES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !31
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.r = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing13PrintToStringIN5arrow4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !1106
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIN5arrow4Type4typeEE5PrintERKS4_PSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIN5arrow4Type4typeEE5PrintERKS4_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !45, !alias.scope !2245
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !30, !alias.scope !2245
  store i8 0, ptr %i.d, align 8, !tbaa !31, !alias.scope !2245
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !47, !noalias !2245 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2245 ; 2 uses
  %5 = icmp ugt ptr %4, %i.g
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.g     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN5arrow4Type4typeEE5PrintERKS4_PSo.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51, !noalias !2245 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !25, !alias.scope !2245 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !31, !alias.scope !2245
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN5arrow4Type4typeEE5PrintERKS4_PSo.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.t = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !32
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.v = getelementptr i8, ptr %i.t, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8, !tbaa !32
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.y, ptr %i.a, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !31
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !32
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ArrayFromVectorINS_9UInt8TypeEhEEvRKSt10shared_ptrINS_8DataTypeEERKSt6vectorIT0_SaIS8_EEPS2_INS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.109", align 8 ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 2, ptr %i.a, align 4, !tbaa !1106
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = load ptr, ptr %0, align 8, !tbaa !472
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1108 ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !1106
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIN5arrow4Type4typeES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIN5arrow4Type4typeES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIN5arrow4Type4typeES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIN5arrow4Type4typeES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %4, align 8, !tbaa !1115, !range !467, !noundef !464
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN5arrow4Type4typeES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %5, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.112, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit:       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1123 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  %i.o = phi ptr [ %i.n, %bb.f ], [ @.str.17, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.113, i32 noundef 66, ptr noundef %i.o)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.p = load ptr, ptr %5, align 8, !tbaa !23     ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.p, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.p) #22, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !1123 ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.t, null
  br i1 %.not.i.i86, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ca

end_hunk_2
