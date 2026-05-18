inline.NumInlined: 8159
inline.NumDeleted: 2480
begin_hunk_0_@_ZNK11OpenImageIO4v3_19ImageSpec9serializeB5cxx11ENS1_12SerialFormatENS1_13SerialVerboseE:bb.a

bb.t:                                             ; preds = %.invoke, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i
  %.0.i = phi ptr [ %i.ca, %.invoke ], [ %i.cb, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.i, ptr %i.e, align 8, !tbaa !113
  invoke void @_ZN3fmt3v125printIJPKcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.53, i64 2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %.loopexit

bb.v:                                             ; preds = %.invoke, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %.body120

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.u
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.54, i64 1)
          to label %bb.w unwind label %bb.e

bb.w:                                             ; preds = %.loopexit
  %i.cd = icmp sgt i32 %3, 0
  br i1 %i.cd, label %bb.x, label %bb.bz

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.55, i64 18)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %bb.x
  %i.ce = load i32, ptr %i.o, align 4, !tbaa !44
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph166, label %._crit_edge

.lr.ph166:                                        ; preds = %.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.54, i64 1)
          to label %bb.ah unwind label %bb.e

bb.y:                                             ; preds = %.lr.ph166, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next, %bb.ag ] ; 6 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !56
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !55 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %sext = shl i64 %i.cm, 27
  %i.cn = ashr i64 %sext, 32
  %i.co = icmp slt i64 %indvars.iv, %i.cn
  br i1 %i.co, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %indvars.iv
  invoke void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.53, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.af, %bb.ad, %bb.ab, %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body120

bb.ab:                                            ; preds = %bb.y
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.56, i64 7)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.cs = load ptr, ptr %i.w, align 8, !tbaa !84  ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %sext218 = shl i64 %i.cv, 29
  %i.cw = ashr i64 %sext218, 32
  %i.cx = icmp slt i64 %indvars.iv, %i.cw
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  invoke void @_ZN3fmt3v125printIJRKN11OpenImageIO4v3_18TypeDescEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.57, i64 5, ptr noundef nonnull align 4 dereferenceable(8) %i.cy)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !44  ; 2 uses
  %i.da = add nsw i32 %i.cz, -1
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv, %i.db
  br i1 %i.dc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.39, i64 2)
          to label %._crit_edge176 unwind label %bb.aa

._crit_edge176:                                   ; preds = %bb.af
  %.pre = load i32, ptr %i.o, align 4, !tbaa !44
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge176, %bb.ae
  %i.dd = phi i32 [ %.pre, %._crit_edge176 ], [ %i.cz, %bb.ae ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.y, label %._crit_edge, !llvm.loop !209

bb.ah:                                            ; preds = %._crit_edge
  %i.dg = load i32, ptr %1, align 8, !tbaa !48    ; 3 uses
  %.not39 = icmp eq i32 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %.not40 = icmp eq i32 %i.di, 0
  %or.cond = select i1 %.not39, i1 %.not40, i1 false
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load i32, ptr %i.dj, align 8            ; 2 uses
  %.not41 = icmp eq i32 %i.dk, 0
  %or.cond70 = select i1 %or.cond, i1 %.not41, i1 false
  br i1 %or.cond70, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !23
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39, !noalias !210
  store i32 %i.dg, ptr %11, align 16, !tbaa !62, !alias.scope !213, !noalias !210
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.di, ptr %i.dn, align 16, !tbaa !62, !alias.scope !213, !noalias !210
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %i.dk, ptr %i.do, align 16, !tbaa !62, !alias.scope !213, !noalias !210
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.59, i64 16, i64 273, ptr nonnull %11)
          to label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA17_cJRKiS6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit unwind label %bb.an

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA17_cJRKiS6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39, !noalias !210
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !216
  store i32 %i.dg, ptr %10, align 16, !tbaa !62, !alias.scope !219, !noalias !216
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.di, ptr %i.dp, align 16, !tbaa !62, !alias.scope !219, !noalias !216
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.60, i64 10, i64 17, ptr nonnull %10)
          to label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJRKiS6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit unwind label %bb.an

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJRKiS6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !216
  br label %bb.al

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJRKiS6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA17_cJRKiS6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.58, i64 26, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dq = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !62
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.ao:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ao
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !62
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.an
  %.pn42 = phi { ptr, i32 } [ %i.dv, %bb.an ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.dw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.body120

bb.ap:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %23 = load i32, ptr %i.ec, align 8, !tbaa !79
  %.not44 = icmp eq i32 %23, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %24 = load i32, ptr %i.ed, align 4
  %.not45 = icmp eq i32 %24, 0
  %or.cond72 = select i1 %.not44, i1 %.not45, i1 false
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %26 = load i32, ptr %25, align 8
  %i.ee = icmp eq i32 %26, 0
  %or.cond74 = select i1 %or.cond72, i1 %i.ee, i1 false
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !53 ; 4 uses
  br i1 %or.cond74, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !51
  %.not47 = icmp eq i32 %i.eg, %i.ei
  %.not48 = icmp eq i32 %i.eg, 0
  %or.cond75 = or i1 %.not48, %.not47
  br i1 %or.cond75, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !54 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.em = load i32, ptr %i.el, align 8, !tbaa !52
  %.not49 = icmp eq i32 %i.ek, %i.em
  %.not50 = icmp eq i32 %i.ek, 0
  %or.cond76 = or i1 %.not50, %.not49
  br i1 %or.cond76, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !222 ; 2 uses
  %i.ep = load i32, ptr %i.g, align 4, !tbaa !23  ; 2 uses
  %.not51 = icmp eq i32 %i.eo, %i.ep
  %.not52 = icmp eq i32 %i.eo, 0
  %or.cond77 = or i1 %.not52, %.not51
  br i1 %or.cond77, label %bb.be, label %bb.at

thread-pre-split:                                 ; preds = %bb.ap, %bb.aq, %bb.ar
  %.pr = load i32, ptr %i.g, align 4, !tbaa !23, !noalias !223
  br label %bb.at

bb.at:                                            ; preds = %thread-pre-split, %bb.as
  %i.eq = phi i32 [ %.pr, %thread-pre-split ], [ %i.ep, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.es = load i32, ptr %i.er, align 8, !tbaa !54 ; 2 uses
  %i.et = icmp sgt i32 %i.eq, 1
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !226
  store i32 %i.eg, ptr %9, align 16, !tbaa !62, !alias.scope !229, !noalias !226
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.es, ptr %i.ew, align 16, !tbaa !62, !alias.scope !229, !noalias !226
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.ev, ptr %i.ex, align 16, !tbaa !62, !alias.scope !229, !noalias !226
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.285, i64 12, i64 273, ptr nonnull %9)
          to label %.noexc86 unwind label %bb.ba

.noexc86:                                         ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !226
  br label %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !232
  store i32 %i.eg, ptr %8, align 16, !tbaa !62, !alias.scope !235, !noalias !232
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.es, ptr %i.ey, align 16, !tbaa !62, !alias.scope !235, !noalias !232
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.286, i64 7, i64 17, ptr nonnull %8)
          to label %.noexc87 unwind label %bb.ba

.noexc87:                                         ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !232
  br label %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit

_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit: ; preds = %.noexc87, %.noexc86
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.61, i64 26, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit
  %i.ez = load ptr, ptr %17, align 8, !tbaa !57   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.aw
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !62
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  %i.fe = load i32, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ff = load i32, ptr %i.ed, align 4, !tbaa !80 ; 2 uses
  %i.fg = load i32, ptr %i.g, align 4, !tbaa !23, !noalias !238
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.fi = load i32, ptr %25, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !241
  store i32 %i.fe, ptr %7, align 16, !tbaa !62, !alias.scope !244, !noalias !241
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.ff, ptr %i.fj, align 16, !tbaa !62, !alias.scope !244, !noalias !241
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.fi, ptr %i.fk, align 16, !tbaa !62, !alias.scope !244, !noalias !241
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.287, i64 10, i64 273, ptr nonnull %7)
          to label %.noexc91 unwind label %bb.bc

.noexc91:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !241
  br label %_ZN11OpenImageIO4v3_113format_offsetB5cxx11ERKNS0_9ImageSpecEiii.exit

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !247
  store i32 %i.fe, ptr %6, align 16, !tbaa !62, !alias.scope !250, !noalias !247
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.ff, ptr %i.fl, align 16, !tbaa !62, !alias.scope !250, !noalias !247
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.288, i64 6, i64 17, ptr nonnull %6)
          to label %.noexc92 unwind label %bb.bc

.noexc92:                                         ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !247
  br label %_ZN11OpenImageIO4v3_113format_offsetB5cxx11ERKNS0_9ImageSpecEiii.exit

_ZN11OpenImageIO4v3_113format_offsetB5cxx11ERKNS0_9ImageSpecEiii.exit: ; preds = %.noexc92, %.noexc91
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.62, i64 28, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_113format_offsetB5cxx11ERKNS0_9ImageSpecEiii.exit
  %i.fm = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.az
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !62
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.be

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %17, align 8, !tbaa !57   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.bb
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !62
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ba
  %.pn53 = phi { ptr, i32 } [ %i.fr, %bb.ba ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.fs, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %.body120

bb.bc:                                            ; preds = %bb.ay, %bb.ax
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_113format_offsetB5cxx11ERKNS0_9ImageSpecEiii.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bd
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !62
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.bc
  %.pn55 = phi { ptr, i32 } [ %i.fy, %bb.bc ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.fz, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %.body120

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !98 ; 3 uses
  %.not57 = icmp eq i32 %i.gg, 0
  br i1 %.not57, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !99 ; 2 uses
  %i.gj = load i32, ptr %i.g, align 4, !tbaa !23, !noalias !253
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !256
  store i32 %i.gg, ptr %5, align 16, !tbaa !62, !alias.scope !259, !noalias !256
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.gi, ptr %i.gn, align 16, !tbaa !62, !alias.scope !259, !noalias !256
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.gm, ptr %i.go, align 16, !tbaa !62, !alias.scope !259, !noalias !256
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.285, i64 12, i64 273, ptr nonnull %5)
          to label %.noexc102 unwind label %bb.bj

.noexc102:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !256
  br label %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit104

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !262
  store i32 %i.gg, ptr %4, align 16, !tbaa !62, !alias.scope !265, !noalias !262
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.gi, ptr %i.gp, align 16, !tbaa !62, !alias.scope !265, !noalias !262
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.286, i64 7, i64 17, ptr nonnull %4)
          to label %.noexc103 unwind label %bb.bj

.noexc103:                                        ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !262
  br label %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit104

_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit104: ; preds = %.noexc103, %.noexc102
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nonnull @.str.63, i64 18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit104
  %i.gq = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.bi
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !62
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.bk:                                            ; preds = %_ZN11OpenImageIO4v3_110format_resB5cxx11ERKNS0_9ImageSpecEiii.exit104
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bk
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !62
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.bj
  %.pn58 = phi { ptr, i32 } [ %i.gv, %bb.bj ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.gw, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %.body120

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit unwind label %bb.bo

_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit: ; preds = %bb.bl
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList4sortEb(ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext false)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit
  %i.hd = load ptr, ptr %20, align 8, !tbaa !106  ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !106 ; 2 uses
  %.not162167 = icmp eq ptr %i.hd, %i.hf
  br i1 %.not162167, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.bm
  %i.hg = icmp eq i32 %3, 2
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_14pugi4impl19text_output_escapedERNS2_19xml_buffered_writerEPKcNS2_11chartypex_tEj:bb.a
  %.not.i.i.i62 = icmp eq ptr %i.cj, %i.bs
  br i1 %.not.i.i.i62, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1056

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.l
  %i.ck = ptrtoint ptr %i.bs to i64
  %i.cl = sub i64 %i.ck, %i.f
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cm = add i32 %i.bk, -5
  %or.cond3.i.i = icmp ult i32 %i.cm, 2
  br i1 %or.cond3.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp ne i32 %i.bk, 5
  %i.co = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf32_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i, ptr noundef nonnull %i.e) ; 4 uses
  %.not11.i22.i.i = icmp ne ptr %i.e, %i.co
  %or.cond.not.i23.i.i = and i1 %i.cn, %.not11.i22.i.i
  br i1 %or.cond.not.i23.i.i, label %.lr.ph.i24.i.i.preheader, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.n
  %i.cp = ptrtoint ptr %i.co to i64
  %.reass = add i64 %i.cp, %invariant.op          ; 2 uses
  %i.cq = lshr i64 %.reass, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check132, label %.lr.ph.i24.i.i.preheader145, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i24.i.i.preheader
  %n.vec135 = and i64 %i.cr, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec135, 2
  %i.ct = getelementptr i8, ptr %i.e, i64 %i.cs
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body136 ] ; 2 uses
  %i.cu = shl i64 %index137, 2
  %next.gep138 = getelementptr i8, ptr %i.e, i64 %i.cu ; 3 uses
  %i.cv = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load139 = load <4 x i32>, ptr %next.gep138, align 8, !tbaa !3
  %wide.load140 = load <4 x i32>, ptr %i.cv, align 8, !tbaa !3
  %i.cw = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load139)
  %i.cx = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load140)
  store <4 x i32> %i.cw, ptr %next.gep138, align 8, !tbaa !3
  store <4 x i32> %i.cx, ptr %i.cv, align 8, !tbaa !3
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cy, label %middle.block142, label %vector.body136, !llvm.loop !1057

middle.block142:                                  ; preds = %vector.body136
  %cmp.n143 = icmp eq i64 %i.cr, %n.vec135
  br i1 %cmp.n143, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i24.i.i.preheader145

.lr.ph.i24.i.i.preheader145:                      ; preds = %.lr.ph.i24.i.i.preheader, %middle.block142
  %.012.i25.i.i.ph = phi ptr [ %i.e, %.lr.ph.i24.i.i.preheader ], [ %i.ct, %middle.block142 ]
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i.preheader145, %.lr.ph.i24.i.i
  %.012.i25.i.i = phi ptr [ %i.db, %.lr.ph.i24.i.i ], [ %.012.i25.i.i.ph, %.lr.ph.i24.i.i.preheader145 ] ; 3 uses
  %i.cz = load i32, ptr %.012.i25.i.i, align 4, !tbaa !3
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %.012.i25.i.i, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i25.i.i, i64 4 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.db, %i.co
  br i1 %.not.i26.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, label %.lr.ph.i24.i.i, !llvm.loop !1058

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i: ; preds = %.lr.ph.i24.i.i, %middle.block142, %bb.n
  %i.dc = ptrtoint ptr %i.co to i64
  %i.dd = sub i64 %i.dc, %i.f
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.de = icmp eq i32 %i.bk, 9
  br i1 %i.de, label %bb.p, label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

bb.p:                                             ; preds = %bb.o
  %i.df = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_13latin1_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i, ptr noundef nonnull %i.e)
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.f
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i

_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i: ; preds = %bb.p, %bb.o, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i
  %.0.i.i = phi i64 [ %i.cl, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.dd, %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i.i ], [ %i.dh, %bb.p ], [ 0, %bb.o ]
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !993, !nonnull !161, !align !518 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !123
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %i.e, i64 noundef %.0.i.i), !inline_history !994
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit: ; preds = %bb.j, %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.dn = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.do = icmp ugt i64 %i.dn, 2048
  br i1 %i.do, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1016

._crit_edge.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm.exit
  store i64 0, ptr %i.c, align 8, !tbaa !317
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %bb.g
  %.115.i.i = phi i64 [ %i.dn, %._crit_edge.i.i ], [ %i.aq, %bb.g ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dm, %._crit_edge.i.i ], [ %.077, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !317
  %i.dq = add i64 %i.dp, %.115.i.i
  store i64 %i.dq, ptr %i.c, align 8, !tbaa !317
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit: ; preds = %bb.f, %bb.i, %bb.q
  %i.dr = load i8, ptr %.2.ph, align 1, !tbaa !62 ; 2 uses
  %i.ds = sext i8 %i.dr to i32                    ; 2 uses
  switch i8 %i.dr, label %bb.ah [
    i8 0, label %._crit_edge
    i8 38, label %bb.r
    i8 60, label %bb.t
    i8 62, label %bb.v
    i8 34, label %bb.x
    i8 39, label %bb.ac
  ]

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !317 ; 3 uses
  %i.du = icmp ugt i64 %i.dt, 2043
  br i1 %i.du, label %bb.s, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.dt)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit: ; preds = %bb.r, %bb.s
  %.0.i = phi i64 [ 0, %bb.s ], [ %i.dt, %bb.r ]  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i ; 2 uses
  store <4 x i8> <i8 38, i8 97, i8 109, i8 112>, ptr %i.dv, align 1, !tbaa !62
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  store i8 59, ptr %i.dw, align 1, !tbaa !62
  %i.dx = add nuw nsw i64 %.0.i, 5
  br label %.sink.split

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.dy = load i64, ptr %i.c, align 8, !tbaa !317 ; 3 uses
  %i.dz = icmp ugt i64 %i.dy, 2044
  br i1 %i.dz, label %bb.u, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.dy)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit: ; preds = %bb.t, %bb.u
  %.0.i51 = phi i64 [ 0, %bb.u ], [ %i.dy, %bb.t ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i51
  store <4 x i8> <i8 38, i8 108, i8 116, i8 59>, ptr %i.ea, align 1, !tbaa !62
  %i.eb = add nuw nsw i64 %.0.i51, 4
  br label %.sink.split

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !317 ; 3 uses
  %i.ed = icmp ugt i64 %i.ec, 2044
  br i1 %i.ed, label %bb.w, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ec)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53: ; preds = %bb.v, %bb.w
  %.0.i52 = phi i64 [ 0, %bb.w ], [ %i.ec, %bb.v ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52
  store <4 x i8> <i8 38, i8 103, i8 116, i8 59>, ptr %i.ee, align 1, !tbaa !62
  %i.ef = add nuw nsw i64 %.0.i52, 4
  br label %.sink.split

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !317 ; 6 uses
  br i1 %.not47, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = icmp ugt i64 %i.eg, 2047
  br i1 %i.eh, label %bb.z, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.eg)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit: ; preds = %bb.y, %bb.z
  %.0.i54 = phi i64 [ 0, %bb.z ], [ %i.eg, %bb.y ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i54
  store i8 34, ptr %i.ei, align 1, !tbaa !62
  %i.ej = add nuw nsw i64 %.0.i54, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.x
  %i.ek = icmp ugt i64 %i.eg, 2042
  br i1 %i.ek, label %bb.ab, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.eg)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit: ; preds = %bb.aa, %bb.ab
  %.0.i55 = phi i64 [ 0, %bb.ab ], [ %i.eg, %bb.aa ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i55 ; 3 uses
  store <4 x i8> <i8 38, i8 113, i8 117, i8 111>, ptr %4, align 1, !tbaa !62
  %5 = getelementptr i8, ptr %4, i64 4
  store i8 116, ptr %5, align 1, !tbaa !62
  %i.el = getelementptr i8, ptr %4, i64 5
  store i8 59, ptr %i.el, align 1, !tbaa !62
  %i.em = add nuw nsw i64 %.0.i55, 6
  br label %.sink.split

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  %i.en = load i64, ptr %i.c, align 8, !tbaa !317 ; 6 uses
  br i1 %.not47, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = icmp ugt i64 %i.en, 2042
  br i1 %i.eo, label %bb.ae, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.en)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57: ; preds = %bb.ad, %bb.ae
  %.0.i56 = phi i64 [ 0, %bb.ae ], [ %i.en, %bb.ad ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i56 ; 3 uses
  store <4 x i8> <i8 38, i8 97, i8 112, i8 111>, ptr %6, align 1, !tbaa !62
  %7 = getelementptr i8, ptr %6, i64 4
  store i8 115, ptr %7, align 1, !tbaa !62
  %i.ep = getelementptr i8, ptr %6, i64 5
  store i8 59, ptr %i.ep, align 1, !tbaa !62
  %i.eq = add nuw nsw i64 %.0.i56, 6
  br label %.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.er = icmp ugt i64 %i.en, 2047
  br i1 %i.er, label %bb.ag, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.en)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59: ; preds = %bb.af, %bb.ag
  %.0.i58 = phi i64 [ 0, %bb.ag ], [ %i.en, %bb.af ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i58
  store i8 39, ptr %i.es, align 1, !tbaa !62
  %i.et = add nuw nsw i64 %.0.i58, 1
  br label %.sink.split

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit
  br i1 %.not49, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eu = udiv i32 %i.ds, 10
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = add i8 %i.ev, 48
  %i.ex = urem i32 %i.ds, 10
  %i.ey = trunc nuw nsw i32 %i.ex to i8
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !317 ; 3 uses
  %i.fb = icmp ugt i64 %i.fa, 2043
  br i1 %i.fb, label %bb.aj, label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.fa)
  br label %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61

_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61: ; preds = %bb.ai, %bb.aj
  %.0.i60 = phi i64 [ 0, %bb.aj ], [ %i.fa, %bb.ai ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i60 ; 5 uses
  store i8 38, ptr %i.fc, align 1, !tbaa !62
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  store i8 35, ptr %i.fd, align 1, !tbaa !62
  %i.fe = getelementptr i8, ptr %i.fc, i64 2
  store i8 %i.ew, ptr %i.fe, align 1, !tbaa !62
  %i.ff = getelementptr i8, ptr %i.fc, i64 3
  store i8 %i.ez, ptr %i.ff, align 1, !tbaa !62
  %i.fg = getelementptr i8, ptr %i.fc, i64 4
  store i8 59, ptr %i.fg, align 1, !tbaa !62
  %i.fh = add nuw nsw i64 %.0.i60, 5
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61
  %.sink = phi i64 [ %i.fh, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit61 ], [ %i.em, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit ], [ %i.dx, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEccccc.exit ], [ %i.ef, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit53 ], [ %i.eb, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccc.exit ], [ %i.ej, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit ], [ %i.eq, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEcccccc.exit57 ], [ %i.et, %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5writeEc.exit59 ]
  store i64 %.sink, ptr %i.c, align 8, !tbaa !317
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ah
  %.3.ph = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 2 uses
  %.pr = load i8, ptr %.3.ph, align 1, !tbaa !62
  %.not = icmp eq i8 %.pr, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !1059

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer12write_bufferEPKcm.exit, %bb.ak, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl19xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !320  ; 6 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !993, !nonnull !161, !align !518 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %1, i64 noundef %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 17 uses
  %i.l = and i32 %i.d, -2
  %or.cond.i = icmp eq i32 %i.l, 2
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne i32 %i.d, 2
  %i.n = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf16_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k) ; 4 uses
  %.not11.i.i = icmp ne ptr %i.k, %i.n
  %or.cond.not.i.i = and i1 %i.m, %.not11.i.i
  br i1 %or.cond.not.i.i, label %iter.check, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i

iter.check:                                       ; preds = %bb.e
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -2050
  %i.q = sub i64 %i.p, %i.a                       ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check12 = icmp ult i64 %i.q, 6
  br i1 %min.iters.check12, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph14

vector.ph14:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf15 = and i64 %i.s, 12
  %n.vec16 = and i64 %i.s, -16                    ; 4 uses
  %i.t = shl i64 %n.vec16, 1
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph14
  %index18 = phi i64 [ 0, %vector.ph14 ], [ %index.next22, %vector.body17 ] ; 2 uses
  %i.v = shl i64 %index18, 1
  %next.gep19 = getelementptr i8, ptr %i.k, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load20 = load <8 x i16>, ptr %next.gep19, align 8, !tbaa !995
  %wide.load21 = load <8 x i16>, ptr %i.w, align 8, !tbaa !995
  %i.x = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load20)
  %i.y = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load21)
  store <8 x i16> %i.x, ptr %next.gep19, align 8, !tbaa !995
  store <8 x i16> %i.y, ptr %i.w, align 8, !tbaa !995
  %index.next22 = add nuw i64 %index18, 16        ; 2 uses
  %i.z = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.z, label %middle.block23, label %vector.body17, !llvm.loop !1060

middle.block23:                                   ; preds = %vector.body17
  %cmp.n24 = icmp eq i64 %i.s, %n.vec16
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block23
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf15, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !997

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec16, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.s, -4                     ; 3 uses
  %i.aa = shl i64 %n.vec27, 1
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = shl i64 %index28, 1
  %next.gep29 = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %wide.load30 = load <4 x i16>, ptr %next.gep29, align 8, !tbaa !995
  %i.ad = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load30)
  store <4 x i16> %i.ad, ptr %next.gep29, align 8, !tbaa !995
  %index.next31 = add nuw i64 %index28, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next31, %n.vec27
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1061

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.s, %n.vec27
  br i1 %cmp.n32, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i16, ptr %.012.i.i, align 2, !tbaa !995
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2, !tbaa !995
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.n
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i, label %.lr.ph.i.i, !llvm.loop !1062

_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf16_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block23, %vec.epilog.middle.block, %bb.e
  %i.ah = ptrtoint ptr %i.n to i64
  %i.ai = ptrtoint ptr %i.k to i64
  %i.aj = sub i64 %i.ah, %i.ai
  br label %_ZN11OpenImageIO4v3_14pugi4impl21convert_buffer_outputEPcPhPtPjPKcmNS1_12xml_encodingE.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = add i32 %i.d, -5
  %or.cond3.i = icmp ult i32 %i.ak, 2
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ne i32 %i.d, 5
  %i.am = tail call noundef ptr @_ZN11OpenImageIO4v3_14pugi4impl12utf8_decoder7processINS2_12utf32_writerEEENT_10value_typeEPKhmS7_S6_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k) ; 4 uses
  %.not11.i22.i = icmp ne ptr %i.k, %i.am
  %or.cond.not.i23.i = and i1 %i.al, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN11OpenImageIO4v3_14pugi4impl29convert_buffer_output_genericINS2_12utf8_decoderENS2_12utf32_writerEEEmNT0_10value_typeEPKcmT_S6_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.g
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, -2052
end_hunk_1
