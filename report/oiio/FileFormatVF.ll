inline.NumInlined: 935
inline.NumDeleted: 375
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %bb.ab
  %.pn102.pn = phi { ptr, i32 } [ %i.hd, %bb.ab ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ] ; 2 uses
  %i.hn = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.da
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.hp = load i64, ptr %i.da, align 8, !tbaa !16
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.aa
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.aa ], [ %.pn102.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !13 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.ad
  %i.hu = load ptr, ptr %i.gz, align 8, !tbaa !26
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !16
  %i.hw = icmp eq i8 %i.hv, 35
  br i1 %i.hw, label %.backedge.backedge, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit.thread

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit.thread: ; preds = %bb.ad, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  br i1 %.048.ph, label %bb.bn, label %bb.ae

bb.ae:                                            ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit.thread
  switch i64 %i.hs, label %.outer.backedge [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ae
  %i.hx = load ptr, ptr %i.gz, align 8, !tbaa !26 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 1
  %i.hz = xor i64 %i.hy, 8820708198725546599
  %i.ia = getelementptr i8, ptr %i.hx, i64 8
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i64
  %i.id = xor i64 %i.ic, 101
  %i.ie = or i64 %i.hz, %i.id
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.outer.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ii = ptrtoint ptr %i.ha to i64
  %i.ij = ptrtoint ptr %i.gz to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %.not112 = icmp eq i64 %i.ik, 128
  br i1 %.not112, label %bb.af, label %.noexc.i209

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !26
  %i.in = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.i, ptr noundef %i.im, i1 noundef zeroext false)
          to label %bb.ag unwind label %.loopexit.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.in, label %bb.ah, label %.noexc.i209

bb.ah:                                            ; preds = %bb.ag
  %i.io = load ptr, ptr %12, align 16, !tbaa !53
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !26
  %i.ir = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.dl, ptr noundef %i.iq, i1 noundef zeroext false)
          to label %bb.ai unwind label %.loopexit.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ir, label %bb.aj, label %.noexc.i209

bb.aj:                                            ; preds = %bb.ai
  %i.is = load ptr, ptr %12, align 16, !tbaa !53
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !26
  %i.iv = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.dm, ptr noundef %i.iu, i1 noundef zeroext false)
          to label %bb.ak unwind label %.loopexit.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.iv, label %bb.an, label %.noexc.i209

.noexc.i209:                                      ; preds = %bb.ak, %bb.ai, %bb.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.iw, ptr %18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 24, ptr %i.e, align 8, !tbaa !36
  %i.ix = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc210 unwind label %bb.al ; 2 uses

.noexc210:                                        ; preds = %.noexc.i209
  store ptr %i.ix, ptr %18, align 8, !tbaa !26
  %i.iy = load i64, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ix, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, i64 24, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !13
  %i.ja = load ptr, ptr %18, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy
  store i8 0, ptr %i.jb, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable423 unwind label %bb.am

.unreachable423:                                  ; preds = %.noexc210
  unreachable

bb.al:                                            ; preds = %.noexc.i209
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

bb.am:                                            ; preds = %.noexc210
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.iw
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.am
  %i.jg = load i64, ptr %i.iw, align 8, !tbaa !16
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215, %bb.al
  %.pn113 = phi { ptr, i32 } [ %i.jc, %bb.al ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215 ], [ %i.jd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.loopexit

bb.an:                                            ; preds = %bb.ak
  %i.ji = load i32, ptr %i.i, align 8, !tbaa !3   ; 5 uses
  %i.jj = load i32, ptr %i.dl, align 4, !tbaa !3
  %.not115 = icmp eq i32 %i.ji, %i.jj
  %i.jk = load i32, ptr %i.dm, align 8
  %.not116 = icmp eq i32 %i.ji, %i.jk
  %or.cond = select i1 %.not115, i1 %.not116, i1 false
  br i1 %or.cond, label %bb.bb, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.8, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ap
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.9, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jn = load i32, ptr %i.i, align 8, !tbaa !3
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.jn)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef nonnull @.str.10, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %bb.aq
  %i.jq = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.jq)
          to label %bb.ar unwind label %bb.ax     ; 2 uses

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull @.str.10, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %bb.ar
  %i.jt = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, i32 noundef %i.jt)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.jw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.jw, ptr %20, align 8, !tbaa !9, !alias.scope !67
  %i.jx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.jx, align 8, !tbaa !13, !alias.scope !67
  store i8 0, ptr %i.jw, align 8, !tbaa !16, !alias.scope !67
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = load ptr, ptr %29, align 8, !tbaa !68, !noalias !67 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %30, null
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !67 ; 2 uses
  %31 = icmp ugt ptr %30, %i.jz
  %.08.i.i.i = select i1 %31, ptr %30, ptr %i.jz  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i227 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i227, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.ka = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !70, !noalias !67 ; 2 uses
  %i.kc = ptrtoint ptr %.08.i.i.i to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.kb, i64 noundef %i.ke)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %20, align 8, !tbaa !26, !alias.scope !67 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.jw
  br i1 %i.ki, label %.body, label %.body.sink.split

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.kj = getelementptr inbounds nuw i8, ptr %19, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.kj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.au

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.av, %bb.at
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable424 unwind label %bb.ay

.unreachable424:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.aw:                                            ; preds = %bb.ao
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ap, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jw
  br i1 %i.ko, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ay, %bb.au
  %.sink = phi ptr [ %i.kh, %bb.au ], [ %i.kn, %bb.ay ]
  %.pn117.ph = phi { ptr, i32 } [ %i.kg, %bb.au ], [ %i.km, %bb.ay ]
  %i.kp = load i64, ptr %i.jw, align 8, !tbaa !16
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kq) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ay, %bb.au
  %.pn117 = phi { ptr, i32 } [ %i.kg, %bb.au ], [ %i.km, %bb.ay ], [ %.pn117.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.ax
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %.body ], [ %i.kl, %bb.ax ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %bb.az ], [ %i.kk, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.loopexit

bb.bb:                                            ; preds = %bb.an
  %i.kr = mul nsw i32 %i.ji, 3
  %i.ks = mul nsw i32 %i.kr, %i.ji
  %i.kt = mul nsw i32 %i.ks, %i.ji                ; 2 uses
  %i.ku = sext i32 %i.kt to i64                   ; 3 uses
  %i.kv = icmp slt i32 %i.kt, 0
  br i1 %i.kv, label %.invoke, label %bb.bc

.invoke:                                          ; preds = %bb.ca, %bb.bw, %bb.bs, %bb.bb
  %i.kw = phi ptr [ @.str.30, %bb.bb ], [ @.str.2, %bb.bs ], [ @.str.2, %bb.bw ], [ @.str.2, %bb.ca ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.kw) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.kx = ptrtoint ptr %i.ds to i64
  %i.ky = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 2 uses
  %i.la = ashr exact i64 %i.kz, 2
  %i.lb = icmp ult i64 %i.la, %i.ku
  br i1 %i.lb, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, label %.outer.backedge

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.bc
  %i.lc = ptrtoint ptr %i.du to i64
  %i.ld = sub i64 %i.lc, %i.ky                    ; 3 uses
  %i.le = shl nuw nsw i64 %i.ku, 2
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #22
          to label %.noexc235 unwind label %.loopexit.loopexit.split-lp ; 6 uses

.noexc235:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.lg = icmp sgt i64 %i.ld, 0
  br i1 %i.lg, label %bb.bd, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.bd:                                            ; preds = %.noexc235
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %i.dr, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.bd, %.noexc235
  %.not.i8.i = icmp eq ptr %i.dr, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.kz) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.be, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.lf, ptr %10, align 8, !tbaa !71
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld ; 2 uses
  store ptr %i.lh, ptr %i.do, align 8, !tbaa !74
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ku ; 3 uses
  store ptr %i.li, ptr %i.dn, align 8, !tbaa !75
  br label %.outer.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237: ; preds = %bb.ae
  %i.lj = load ptr, ptr %i.gz, align 8, !tbaa !26
  %i.lk = load i128, ptr %i.lj, align 1
  %i.ll = icmp ne i128 %i.lk, 145480032846891600437022433906212695143
  %i.lm = zext i1 %i.ll to i32
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412, label %.outer.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237
  %i.lo = ptrtoint ptr %i.ha to i64
  %i.lp = ptrtoint ptr %i.gz to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %.not106 = icmp eq i64 %i.lq, 544
  br i1 %.not106, label %bb.bh, label %.noexc.i239

.noexc.i239:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.lr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.lr, ptr %21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 51, ptr %i.d, align 8, !tbaa !36
  %i.ls = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc240 unwind label %bb.bf ; 3 uses

.noexc240:                                        ; preds = %.noexc.i239
  store ptr %i.ls, ptr %21, align 8, !tbaa !26
  %i.lt = load i64, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ls, ptr noundef nonnull align 1 dereferenceable(51) @.str.13, i64 51, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  store i8 0, ptr %i.lv, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable421 unwind label %bb.bg

.unreachable421:                                  ; preds = %.noexc240
  unreachable

bb.bf:                                            ; preds = %.noexc.i239
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bg:                                            ; preds = %.noexc240
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ly = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.lr
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.bg
  %i.ma = load i64, ptr %i.lr, align 8, !tbaa !16
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bf
  %.pn107 = phi { ptr, i32 } [ %i.lw, %bb.bf ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.lx, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.loopexit

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412
  %i.mc = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nonnull %i.gz)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %bb.bk ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %bb.bh
  %i.md = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bi unwind label %.loopexit.loopexit.split-lp

bb.bi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  br i1 %i.md, label %bb.bj, label %.noexc.i250

bb.bj:                                            ; preds = %bb.bi
  %i.me = load ptr, ptr %i.dk, align 8, !tbaa !74
  %i.mf = load ptr, ptr %11, align 8, !tbaa !71
  %i.mg = ptrtoint ptr %i.me to i64
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269: ; preds = %bb.bx, %.noexc273
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 4 ; 2 uses
  %.not.i17.i.i270 = icmp eq ptr %i.od, null
  br i1 %.not.i17.i.i270, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.ok) #24
  %.pre480.pre = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271: ; preds = %bb.by, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269
  %.pre480 = phi ptr [ %.pre480.pre, %bb.by ], [ %i.oc, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269 ]
  store ptr %i.os, ptr %10, align 8, !tbaa !71
  store ptr %i.ow, ptr %i.do, align 8, !tbaa !74
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.oq ; 2 uses
  store ptr %i.ox, ptr %i.dn, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274

_ZNSt6vectorIfSaIfEE9push_backERKf.exit274:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271, %bb.bv
  %i.oy = phi ptr [ %i.ox, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.nz, %bb.bv ] ; 4 uses
  %i.oz = phi ptr [ %i.ow, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.oh, %bb.bv ] ; 3 uses
  %i.pa = phi ptr [ %.pre480, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.oc, %bb.bv ]
  %i.pb = phi ptr [ %i.os, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.od, %bb.bv ] ; 5 uses
  %i.pc = phi ptr [ %i.os, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.oe, %bb.bv ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 2 uses
  %.not.i275 = icmp eq ptr %i.oz, %i.oy
  br i1 %.not.i275, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !76
  store float %i.pe, ptr %i.oz, align 4, !tbaa !76
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 4 ; 2 uses
  store ptr %i.pf, ptr %i.do, align 8, !tbaa !74
  br label %.outer.backedge

bb.ca:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274
  %i.pg = ptrtoint ptr %i.oy to i64
  %i.ph = ptrtoint ptr %i.pb to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 6 uses
  %i.pj = icmp eq i64 %i.pi, 9223372036854775804
  br i1 %i.pj, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276: ; preds = %bb.ca
  %i.pk = ashr exact i64 %i.pi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.pk, i64 1)
  %i.pl = add nsw i64 %.sroa.speculated.i.i.i277, %i.pk ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %i.pk
  %i.pn = call i64 @llvm.umin.i64(i64 %i.pl, i64 2305843009213693951)
  %i.po = select i1 %i.pm, i64 2305843009213693951, i64 %i.pn ; 3 uses
  %.not.i.i.i278 = icmp ne i64 %i.po, 0
  call void @llvm.assume(i1 %.not.i.i.i278)
  %i.pp = shl nuw nsw i64 %i.po, 2
  %i.pq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pp) #22
          to label %.noexc283 unwind label %.loopexit.loopexit.split-lp ; 6 uses

.noexc283:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 %i.pi ; 2 uses
  %i.ps = load float, ptr %i.pd, align 4, !tbaa !76
  store float %i.ps, ptr %i.pr, align 4, !tbaa !76
  %i.pt = icmp sgt i64 %i.pi, 0
  br i1 %i.pt, label %bb.cb, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279

bb.cb:                                            ; preds = %.noexc283
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pq, ptr align 4 %i.pb, i64 %i.pi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279: ; preds = %bb.cb, %.noexc283
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 4 ; 2 uses
  %.not.i17.i.i280 = icmp eq ptr %i.pb, null
  br i1 %.not.i17.i.i280, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pi) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281: ; preds = %bb.cc, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279
  store ptr %i.pq, ptr %10, align 8, !tbaa !71
  store ptr %i.pu, ptr %i.do, align 8, !tbaa !74
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.po ; 3 uses
  store ptr %i.pv, ptr %i.dn, align 8, !tbaa !75
  br label %.outer.backedge

bb.cd:                                            ; preds = %bb.p
  %i.pw = load ptr, ptr %13, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i285 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i285, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.px = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !75
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.pw to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef %i.qb) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.qc = load ptr, ptr %12, align 16, !tbaa !53  ; 3 uses
  %i.qd = load ptr, ptr %i.dg, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i286 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not4.i.i.i286, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294, label %.lr.ph.i.i.i287

.lr.ph.i.i.i287:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290
  %.05.i.i.i288 = phi ptr [ %i.qj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290 ], [ %i.qc, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.qe = load ptr, ptr %.05.i.i.i288, align 8, !tbaa !26 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.05.i.i.i288, i64 16 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289: ; preds = %.lr.ph.i.i.i287
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !16
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290: ; preds = %.lr.ph.i.i.i287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i288, i64 32 ; 2 uses
  %.not.i.i.i291 = icmp eq ptr %i.qj, %i.qd
  br i1 %.not.i.i.i291, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292, label %.lr.ph.i.i.i287, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290
  %.pr.i293 = load ptr, ptr %12, align 16, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.qk = phi ptr [ %.pr.i293, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292 ], [ %i.qc, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i295 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i1.i295, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294
  %i.ql = load ptr, ptr %i.dh, align 16, !tbaa !57
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qo) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.qp = load <2 x i32>, ptr %i.i, align 8, !tbaa !3 ; 3 uses
  %i.qq = extractelement <2 x i32> %i.qp, i64 0
  %i.qr = extractelement <2 x i32> %i.qp, i64 1
  %i.qs = mul nsw i32 %i.qr, %i.qq
  %i.qt = load i32, ptr %i.dm, align 8, !tbaa !3  ; 2 uses
  %i.qu = mul nsw i32 %i.qs, %i.qt                ; 2 uses
  %i.qv = ptrtoint ptr %i.du to i64
  %i.qw = ptrtoint ptr %i.dt to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 2
  %i.qz = udiv i64 %i.qy, 3                       ; 2 uses
  %i.ra = trunc i64 %i.qz to i32
  %.not = icmp eq i32 %i.qu, %i.ra
  br i1 %.not, label %bb.cx, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.ch unwind label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.16, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299: ; preds = %bb.ch
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299
  %i.rd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %i.qz)
          to label %_ZNSolsEm.exit unwind label %bb.cs ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301
  %i.re = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rd, ptr noundef nonnull @.str.18, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %_ZNSolsEm.exit
  %i.rf = load i32, ptr %i.i, align 8, !tbaa !3
  %i.rg = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.rh = mul nsw i32 %i.rg, %i.rf
  %i.ri = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.rj = mul nsw i32 %i.rh, %i.ri
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.rd, i32 noundef %i.rj)
          to label %bb.ci unwind label %bb.cs

bb.ci:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rk, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.rm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.rm, ptr %25, align 8, !tbaa !9, !alias.scope !84
  %i.rn = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.rn, align 8, !tbaa !13, !alias.scope !84
  store i8 0, ptr %i.rm, align 8, !tbaa !16, !alias.scope !84
  %32 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %33 = load ptr, ptr %32, align 8, !tbaa !68, !noalias !84 ; 3 uses
  %.not.i.not.i.i307 = icmp eq ptr %33, null
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !84 ; 2 uses
  %34 = icmp ugt ptr %33, %i.rp
  %.08.i.i.i308 = select i1 %34, ptr %33, ptr %i.rp ; 2 uses
  %.not5.i.i309 = icmp eq ptr %.08.i.i.i308, null
  %.not.i.i310 = select i1 %.not.i.not.i.i307, i1 true, i1 %.not5.i.i309
  br i1 %.not.i.i310, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.rq = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !70, !noalias !84 ; 2 uses
  %i.rs = ptrtoint ptr %.08.i.i.i308 to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef %i.rr, i64 noundef %i.ru)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %i.rw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rx = load ptr, ptr %25, align 8, !tbaa !26, !alias.scope !84 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.rm
  br i1 %i.ry, label %.body314, label %.body314.sink.split

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.rz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.ck

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316: ; preds = %bb.cl, %bb.cj
  %i.sa = load ptr, ptr %25, align 8, !tbaa !26   ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  store ptr %i.sb, ptr %24, align 8, !tbaa !9
  %i.sc = icmp eq ptr %i.sa, null
  br i1 %i.sc, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #25
          to label %.noexc319 unwind label %bb.ct

.noexc319:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  %i.sd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sa) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.sd, ptr %i.b, align 8, !tbaa !36
  %i.se = icmp ugt i64 %i.sd, 15
  br i1 %i.se, label %.noexc.i318, label %._crit_edge.i.i317

.noexc.i318:                                      ; preds = %bb.cn
  %i.sf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc320 unwind label %bb.ct ; 2 uses

.noexc320:                                        ; preds = %.noexc.i318
  store ptr %i.sf, ptr %24, align 8, !tbaa !26
  %i.sg = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.sg, ptr %i.sb, align 8, !tbaa !16
  br label %._crit_edge.i.i317

._crit_edge.i.i317:                               ; preds = %.noexc320, %bb.cn
  %i.sh = phi ptr [ %i.sf, %.noexc320 ], [ %i.sb, %bb.cn ] ; 2 uses
  switch i64 %i.sd, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %._crit_edge.i.i322
  ]

bb.co:                                            ; preds = %._crit_edge.i.i317
  %i.si = load i8, ptr %i.sa, align 1, !tbaa !16
  store i8 %i.si, ptr %i.sh, align 1, !tbaa !16
  br label %._crit_edge.i.i322

bb.cp:                                            ; preds = %._crit_edge.i.i317
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sh, ptr nonnull align 1 %i.sa, i64 %i.sd, i1 false)
  br label %._crit_edge.i.i322

._crit_edge.i.i322:                               ; preds = %bb.cp, %bb.co, %._crit_edge.i.i317
  %i.sj = load i64, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.sj, ptr %i.sk, align 8, !tbaa !13
  %i.sl = load ptr, ptr %24, align 8, !tbaa !26
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sj
  store i8 0, ptr %i.sm, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.sn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.sn, ptr %26, align 8, !tbaa !9
  %i.so = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.so, align 8, !tbaa !13
  store i8 0, ptr %i.sn, align 8, !tbaa !16
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.unreachable419 unwind label %bb.cu

.unreachable419:                                  ; preds = %._crit_edge.i.i322
  unreachable

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %.pn121 = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn117.pn.pn, %bb.ba ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.mo, %bb.bk ], [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit426, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp427, %.loopexit.loopexit.split-lp ]
  %i.sp = load ptr, ptr %13, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i338 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i.i338, label %_ZNSt6vectorIfSaIfEED2Ev.exit339, label %bb.cq

bb.cq:                                            ; preds = %.loopexit
  %i.sq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !75
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sp to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.su) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit339

_ZNSt6vectorIfSaIfEED2Ev.exit339:                 ; preds = %.loopexit, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body369

bb.cr:                                            ; preds = %bb.cg
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cs:                                            ; preds = %bb.ci, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ct:                                            ; preds = %.noexc.i318, %bb.cm
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.cu:                                            ; preds = %._crit_edge.i.i322
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sz = load ptr, ptr %26, align 8, !tbaa !26   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.sn
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a: ; preds = %bb.cu
  %i.tb = load i64, ptr %i.sn, align 8, !tbaa !16
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.td = load ptr, ptr %24, align 8, !tbaa !26   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sb
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a
  %i.tf = load i64, ptr %i.sb, align 8, !tbaa !16
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.ct
  %.pn90.pn = phi { ptr, i32 } [ %i.sx, %bb.ct ], [ %i.sy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.sy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.a ] ; 2 uses
  %i.th = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.rm
  br i1 %i.ti, label %.body314, label %.body314.sink.split

.body314.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %bb.ck
  %.sink700 = phi ptr [ %i.rx, %bb.ck ], [ %i.th, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ]
  %.pn90.pn.pn.ph = phi { ptr, i32 } [ %i.rw, %bb.ck ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ]
  %i.tj = load i64, ptr %i.rm, align 8, !tbaa !16
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %.sink700, i64 noundef %i.tk) #24
  br label %.body314

.body314:                                         ; preds = %.body314.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %bb.ck
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.rw, %bb.ck ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn90.pn.pn.ph, %.body314.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.cv

bb.cv:                                            ; preds = %.body314, %bb.cs
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %.pn90.pn.pn, %.body314 ], [ %i.sw, %bb.cs ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23) #23
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cr
  %.pn90.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn90.pn.pn.pn, %bb.cv ], [ %i.sv, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %.body369

bb.cx:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297
  %i.tl = icmp eq i32 %i.qu, 0
  br i1 %i.tl, label %.noexc.i350, label %bb.da

.noexc.i350:                                      ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.tm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.tm, ptr %27, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 24, ptr %i.a, align 8, !tbaa !36
  %i.tn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc351 unwind label %bb.cy ; 2 uses

.noexc351:                                        ; preds = %.noexc.i350
  store ptr %i.tn, ptr %27, align 8, !tbaa !26
  %i.to = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.tn, ptr noundef nonnull align 1 dereferenceable(24) @.str.20, i64 24, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.to, ptr %i.tp, align 8, !tbaa !13
  %i.tq = load ptr, ptr %27, align 8, !tbaa !26
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.to
  store i8 0, ptr %i.tr, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_:bb.a

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !26
  %i.i = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.i, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = load ptr, ptr %0, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.u, ptr %i.a, align 8, !tbaa !36
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.w, ptr %i.p, align 8, !tbaa !26
  %i.x = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.x, ptr %i.r, align 8, !tbaa !16
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.z = load i8, ptr %i.s, align 1, !tbaa !16
  store i8 %i.z, ptr %i.y, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ae, align 8
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.24, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.26, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.27, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17 unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.28, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.c, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19 unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !9, !alias.scope !171
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !13, !alias.scope !171
  store i8 0, ptr %i.u, align 8, !tbaa !16, !alias.scope !171
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !68, !noalias !171 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !171 ; 2 uses
  %8 = icmp ugt ptr %7, %i.x
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.x     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70, !noalias !171 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %5, align 8, !tbaa !26, !alias.scope !171 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !16, !alias.scope !171
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %.body.thread

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ak = load ptr, ptr %5, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.ak)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.h ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.u
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.j, label %bb.k

.body.thread:                                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

.body:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn22 = phi { ptr, i32 } [ %i.ae, %.body.thread ], [ %i.al, %.body ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.t) #23
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn22, %bb.j ], [ %i.al, %.body ], [ %i.o, %bb.d ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !7
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %4, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %3 = alloca %"class.std::istream_iterator", align 8 ; 7 uses
  %4 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 24)
  store ptr %2, ptr %3, align 8, !tbaa !172
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !175
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %i.l = and i32 %i.k, 5
  %.not1.i.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i.i, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEC2ERSi.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  store ptr null, ptr %3, align 8, !tbaa !172
  store i8 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEC2ERSi.exit

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %.body, label %.body.sink.split

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEC2ERSi.exit: ; preds = %bb.b, %.noexc.i
  store ptr null, ptr %4, align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !13
  store i8 0, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.s, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt16istream_iteratorIS5_cS3_lEvEET_SB_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEC2ERSi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.d
  %i.v = load i64, ptr %i.q, align 8, !tbaa !16
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #24
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit
  %i.z = load i64, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit10

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit10: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !7
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !7
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lED2Ev.exit10
end_hunk_2
