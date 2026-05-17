inline.NumInlined: 640
inline.NumDeleted: 215
begin_hunk_0_@_ZN6Assimp11X3DImporter14readArcClose2DERN4pugi8xml_nodeE:._crit_edge.i.i
  %i.aa = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc49 unwind label %bb.r

.noexc49:                                         ; preds = %.noexc48
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.ab = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %6, float noundef 0.000000e+00)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %.noexc49, %bb.g
  %.0 = phi float [ f0x3FC90FDB, %.noexc49 ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ac = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
          to label %.noexc52 unwind label %bb.r

.noexc52:                                         ; preds = %bb.h
  store ptr %i.ac, ptr %5, align 8
  %i.ad = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc53 unwind label %bb.r

.noexc53:                                         ; preds = %.noexc52
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc53
  %i.ae = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %5, float noundef 0.000000e+00)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %.noexc53, %bb.i
  %.1 = phi float [ %.0, %.noexc53 ], [ %i.ae, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.af = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc57 unwind label %bb.r

.noexc57:                                         ; preds = %bb.j
  store ptr %i.af, ptr %4, align 8
  %i.ag = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc58 unwind label %bb.r

.noexc58:                                         ; preds = %.noexc57
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc58
  %i.ah = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %.noexc58, %bb.k
  %.0129 = phi float [ 1.000000e+00, %.noexc58 ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ai = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc62 unwind label %bb.r

.noexc62:                                         ; preds = %bb.l
  store ptr %i.ai, ptr %3, align 8
  %i.aj = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc63 unwind label %bb.r

.noexc63:                                         ; preds = %.noexc62
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc63
  %i.ak = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.m
  %i.al = zext i1 %i.ak to i8
  br label %bb.n

bb.n:                                             ; preds = %.noexc64, %.noexc63
  %.0130 = phi i8 [ 0, %.noexc63 ], [ %i.al, %.noexc64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.am = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4)
          to label %.noexc66 unwind label %bb.r

.noexc66:                                         ; preds = %bb.n
  store ptr %i.am, ptr %2, align 8
  %i.an = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc67 unwind label %bb.r

.noexc67:                                         ; preds = %.noexc66
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc67
  %i.ao = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.noexc67, %bb.o
  %.0131 = phi float [ 0.000000e+00, %.noexc67 ], [ %i.ao, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 8, ptr noundef null)
          to label %bb.aq unwind label %bb.r      ; 0 uses

bb.r:                                             ; preds = %bb.ap, %bb.ao, %bb.u, %bb.o, %.noexc66, %bb.n, %bb.m, %.noexc62, %bb.l, %bb.k, %.noexc57, %bb.j, %bb.i, %.noexc52, %bb.h, %bb.g, %.noexc48, %bb.f, %.noexc44, %bb.e, %.noexc42, %bb.d, %.noexc38, %bb.c, %.noexc36, %bb.b, %.noexc33, %bb.a, %.noexc31, %._crit_edge.i.i, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.s, %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.s:                                             ; preds = %bb.p
  %i.at = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.t unwind label %bb.r       ; 17 uses

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %i.ba, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store i32 8, ptr %i.bd, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24X3DNodeElementGeometry2D, i64 16), ptr %i.at, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store ptr %i.be, ptr %i.bf, align 8
  store ptr %i.be, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 6 uses
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 2 uses
  store i8 1, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.b, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.u, %bb.t
  store i8 %.0130, ptr %i.bh, align 8
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef %.0131, float noundef %.1, float noundef %.0129, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bk = fsub float %.1, %.0131
  %i.bl = call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp oge float %i.bl, f0x40C90FDB
  %i.bn = fcmp oeq float %.1, %.0131
  %or.cond = or i1 %i.bn, %i.bm
  br i1 %or.cond, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %bb.v
  %.pre = load i64, ptr %i.bg, align 8
  br label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr %i.f, align 8
  switch i64 %i.bo, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  %i.bp = load ptr, ptr %12, align 8              ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = xor i16 %i.bq, 18768
  %i.bs = getelementptr i8, ptr %i.bp, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 69
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72: ; preds = %bb.w
  %i.ca = load ptr, ptr %12, align 8              ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1162432546
  %i.cd = getelementptr i8, ptr %i.ca, i64 4
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 34
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.x unwind label %bb.z       ; 2 uses

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <3 x float> zeroinitializer, ptr %i.cm, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #17
  %i.cn = load i64, ptr %i.bg, align 8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.bg, align 8
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134

bb.y:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72
  %i.cr = load i32, ptr %i.ca, align 1
  %i.cs = xor i32 %i.cr, 1380927555
  %i.ct = getelementptr i8, ptr %i.ca, i64 4
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = xor i32 %i.cv, 68
  %i.cx = or i32 %i.cs, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.da = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.da, label %bb.ab, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6Assimp24Throw_IncorrectAttrValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15) #20
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ag:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ah:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %15, align 8              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.dh = load i64, ptr %i.df, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dd, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.dj = load ptr, ptr %13, align 8              ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = load i64, ptr %i.dk, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.db, %bb.af ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aa, %bb.x
  %i.do = load ptr, ptr %i.be, align 8
  %i.dp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.ai unwind label %bb.aj     ; 2 uses

bb.ai:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dr, ptr noundef nonnull align 4 dereferenceable(12) %i.dq, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #17
  %i.ds = load i64, ptr %i.bg, align 8
  %i.dt = add i64 %i.ds, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.bg, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %._crit_edge, %bb.ai
  %i.dv = phi i64 [ %.pre, %._crit_edge ], [ %i.dt, %bb.ai ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store i64 %i.dv, ptr %i.dw, align 8
  %i.dx = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.al unwind label %bb.r

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dx, label %bb.ao, label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dy, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dy, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 10, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 26
  store i8 0, ptr %i.ea, align 2
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i78
  %i.eb = load ptr, ptr %17, align 8              ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dy
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.am
  %i.ed = load i64, ptr %i.dy, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ap

bb.an:                                            ; preds = %._crit_edge.i.i78
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %17, align 8              ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dy
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.an
  %i.ei = load i64, ptr %i.dy, align 8
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ar

bb.ao:                                            ; preds = %bb.al
  %i.ek = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.el = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.r ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.at, ptr %i.en, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.em) #17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eo, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.er = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit90 unwind label %bb.r ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit90: ; preds = %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.at, ptr %i.et, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es) #17
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
end_hunk_0
