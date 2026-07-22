inline.NumInlined: 27257
inline.NumDeleted: 5977
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchema:bb.a
sub_1:                                            ; preds = %sub_0
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ig = load i8, ptr %i.if, align 1
  %.not161 = icmp eq i8 %i.ig, 115
  br i1 %.not161, label %.tail, label %.tail.thread, !prof !490

.tail:                                            ; preds = %sub_1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %bb.cy, label %.tail.thread, !prof !491

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  %i.ik = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.id, ptr noundef nonnull dereferenceable(3) @.str.260) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !492
  store i32 %i.ik, ptr %7, align 16, !tbaa !139, !alias.scope !495, !noalias !492
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.il, align 16, !tbaa !139, !alias.scope !495, !noalias !492
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr nonnull @.str.32, i64 11, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !492
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr nonnull @.str.32) #47
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %.tail.thread
  unreachable

bb.cx:                                            ; preds = %.tail.thread
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %38, align 8, !tbaa !143  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.cx
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !139
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %common.resume

bb.cy:                                            ; preds = %.tail
  %i.is = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.it = load i64, ptr %i.is, align 8, !tbaa !381 ; 2 uses
  %.not56 = icmp eq i64 %i.it, 2
  br i1 %.not56, label %bb.dc, label %bb.cz, !prof !156

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !498
  store i64 %i.it, ptr %6, align 16, !tbaa !139, !alias.scope !501, !noalias !498
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 2, ptr %i.iu, align 16, !tbaa !139, !alias.scope !501, !noalias !498
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr nonnull @.str.32, i64 11, i64 19, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !498
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_5, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr nonnull @.str.32) #47
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.iv = landingpad { ptr, i32 }
          cleanup
  %i.iw = load ptr, ptr %39, align 8, !tbaa !143  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.db
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !139
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  br label %common.resume

bb.dc:                                            ; preds = %bb.cy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ic, i64 40 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !380 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !364 ; 2 uses
  %.not57 = icmp eq ptr %i.jd, null
  br i1 %.not57, label %bb.dd, label %bb.de, !prof !132

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_6) #47
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !364
  %.not58 = icmp eq ptr %i.jf, null
  br i1 %.not58, label %bb.df, label %bb.dg, !prof !132

bb.df:                                            ; preds = %bb.de
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_7) #47
  unreachable

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  call void @_ZN8facebook5velox15importFromArrowERK11ArrowSchema(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %41, ptr noundef nonnull align 8 dereferenceable(72) %i.jd)
  %i.jg = load ptr, ptr %i.jb, align 8, !tbaa !380
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !364
  invoke void @_ZN8facebook5velox15importFromArrowERK11ArrowSchema(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %42, ptr noundef nonnull align 8 dereferenceable(72) %i.ji)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN8facebook5velox3MAPESt10shared_ptrIKNS0_4TypeEES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1605") align 8 %40, ptr noundef nonnull %41, ptr noundef nonnull %42)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.jj = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.jk = load <2 x ptr>, ptr %40, align 16, !tbaa !82
  store ptr null, ptr %i.jj, align 8, !tbaa !199
  store <2 x ptr> %i.jk, ptr %0, align 8, !tbaa !82
  store ptr null, ptr %40, align 16, !tbaa !504
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7MapTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #38
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #38
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  br label %_ZN8facebook5velox12_GLOBAL__N_118parseDecimalFormatESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.dj:                                            ; preds = %bb.dg
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #38
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn59 = phi { ptr, i32 } [ %i.jm, %bb.dk ], [ %i.jl, %bb.dj ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  br label %common.resume

bb.dm:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !381
  invoke void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef %i.jo)
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !381
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %44, i64 noundef %i.jp)
          to label %.preheader unwind label %bb.do

.preheader:                                       ; preds = %bb.dn
  %i.jq = load i64, ptr %i.jn, align 8, !tbaa !381
  %.not159 = icmp eq i64 %i.jq, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  br label %bb.dp

._crit_edge:                                      ; preds = %bb.ed, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  %i.jv = load <2 x ptr>, ptr %44, align 16, !tbaa !507
  store <2 x ptr> %i.jv, ptr %47, align 16, !tbaa !507
  %i.jw = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.jy = load ptr, ptr %i.jx, align 16, !tbaa !197
  store ptr %i.jy, ptr %i.jw, align 16, !tbaa !197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  %i.jz = load <2 x ptr>, ptr %43, align 16, !tbaa !508
  store <2 x ptr> %i.jz, ptr %48, align 16, !tbaa !508
  %i.ka = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.kc = load ptr, ptr %i.kb, align 16, !tbaa !203
  store ptr %i.kc, ptr %i.ka, align 16, !tbaa !203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox3ROWESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES1_ISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.38") align 8 %46, ptr noundef nonnull %47, ptr noundef nonnull %48)
          to label %bb.ei unwind label %bb.ej

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.dp:                                            ; preds = %.lr.ph, %bb.ed
  %.0158 = phi i64 [ 0, %.lr.ph ], [ %i.lm, %bb.ed ] ; 3 uses
  %i.ke = load ptr, ptr %i.jr, align 8, !tbaa !380
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.0158
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !364 ; 3 uses
  %.not47 = icmp eq ptr %i.kg, null
  br i1 %.not47, label %bb.dq, label %bb.dt, !prof !132

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_8) #47
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.dt:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !359, !noalias !509 ; 2 uses
  %.not.i123 = icmp eq ptr %i.kj, null
  %..i = select i1 %.not.i123, ptr %i.kg, ptr %i.kj ; 2 uses
  %i.kk = load ptr, ptr %..i, align 8, !tbaa !360, !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %..i, i64 72, i1 false), !tbaa.struct !445, !noalias !509
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchema(ptr dead_on_unwind noalias nonnull writable align 8 %45, ptr noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.du unwind label %bb.ee, !inline_history !512

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !509
  %i.kl = load ptr, ptr %i.js, align 8, !tbaa !204 ; 5 uses
  %i.km = load ptr, ptr %i.jt, align 16, !tbaa !203
  %.not.i124 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i124, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr null, ptr %i.kn, align 8, !tbaa !199
  %i.ko = load <2 x ptr>, ptr %45, align 16, !tbaa !82
  store ptr null, ptr %i.ju, align 8, !tbaa !199
  store <2 x ptr> %i.ko, ptr %i.kl, align 8, !tbaa !82
  store ptr null, ptr %45, align 16, !tbaa !291
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store ptr %i.kp, ptr %i.js, align 8, !tbaa !204
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.dw:                                            ; preds = %bb.du
  invoke void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %45)
          to label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.ef

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.dw, %bb.dv
  %i.kq = load ptr, ptr %i.ju, align 8, !tbaa !199 ; 8 uses
  %.not.i.i125 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i125, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.ks = load atomic i64, ptr %i.kr acquire, align 8 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 4294967297
  %i.ku = trunc i64 %i.ks to i32                  ; 2 uses
  br i1 %i.kt, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.kr, align 8, !tbaa !212
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 0, ptr %i.kv, align 4, !tbaa !214
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !124
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #38, !inline_history !396
  %i.kz = load ptr, ptr %i.kq, align 8, !tbaa !124
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #38, !inline_history !396
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dz:                                            ; preds = %bb.dx
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i126 = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i126, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127

bb.eb:                                            ; preds = %bb.dz
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i128 = phi i32 [ %i.ku, %bb.ea ], [ %i.le, %bb.eb ]
  %i.lf = icmp eq i32 %.0.i.i.i.i128, 1
  br i1 %i.lf, label %bb.ec, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !132

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #38
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.lg = load ptr, ptr %i.jr, align 8, !tbaa !380
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.0158
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !364
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !369 ; 2 uses
  %.not49 = icmp eq ptr %i.lk, null
  %spec.select = select i1 %.not49, ptr @.str.13, ptr %i.lk
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !446
  %i.ll = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ed unwind label %bb.eh     ; 0 uses

bb.ed:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  %i.lm = add nuw i64 %.0158, 1                   ; 2 uses
  %i.ln = load i64, ptr %i.jn, align 8, !tbaa !381
  %i.lo = icmp ult i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.dp, label %._crit_edge, !llvm.loop !513

bb.ee:                                            ; preds = %bb.dt
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.dw
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %45) #38
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn = phi { ptr, i32 } [ %i.lq, %bb.ef ], [ %i.lp, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %bb.ek

bb.eh:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  br label %bb.ek

bb.ei:                                            ; preds = %._crit_edge
  %i.ls = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.lt = load <2 x ptr>, ptr %46, align 16, !tbaa !82
  store ptr null, ptr %i.ls, align 8, !tbaa !199
  store <2 x ptr> %i.lt, ptr %0, align 8, !tbaa !82
  store ptr null, ptr %46, align 16, !tbaa !206
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %46) #38
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #38
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %47) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %43) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  br label %_ZN8facebook5velox12_GLOBAL__N_118parseDecimalFormatESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.ej:                                            ; preds = %._crit_edge
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #38
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %47) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ds, %bb.eg, %bb.eh, %bb.ej, %bb.do
  %.pn50.pn = phi { ptr, i32 } [ %i.kd, %bb.do ], [ %i.lu, %bb.ej ], [ %i.kh, %bb.ds ], [ %i.lr, %bb.eh ], [ %.pn, %bb.eg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %43) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  br label %common.resume

bb.el:                                            ; preds = %bb.cg
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !381 ; 2 uses
  %.not45 = icmp eq i64 %i.lw, 2
  br i1 %.not45, label %bb.ep, label %bb.em, !prof !156

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !514
  store i64 %i.lw, ptr %4, align 16, !tbaa !139, !alias.scope !517, !noalias !514
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 2, ptr %i.lx, align 16, !tbaa !139, !alias.scope !517, !noalias !514
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr nonnull @.str.32, i64 11, i64 19, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !514
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs_9, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr nonnull @.str.32) #47
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %bb.em
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.ly = landingpad { ptr, i32 }
          cleanup
  %i.lz = load ptr, ptr %49, align 8, !tbaa !143  ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.eo
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !139
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #38
  br label %common.resume

bb.ep:                                            ; preds = %bb.el
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !380
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !364 ; 2 uses
  %.not46 = icmp eq ptr %i.mh, null
  br i1 %.not46, label %bb.eq, label %bb.er, !prof !132

bb.eq:                                            ; preds = %bb.ep
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchemaE18veloxCheckFailArgs__10_) #47
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEE:bb.a
  %61 = alloca %"class.std::vector.92", align 8   ; 16 uses
  %62 = alloca %"class.boost::intrusive_ptr", align 8 ; 9 uses
  %63 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %64 = alloca %"class.std::optional.198", align 8 ; 6 uses
  %65 = alloca %"struct.fmt::v11::detail::format_arg_store.1644", align 16 ; 5 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %66 = alloca %"struct.fmt::v11::detail::format_arg_store.1644", align 16 ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %68 = alloca %"class.std::vector.92", align 8   ; 14 uses
  %69 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %70 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %71 = alloca %"class.std::optional.283", align 8 ; 5 uses
  %72 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %73 = alloca %"class.std::optional.198", align 8 ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %77 = alloca %"class.std::shared_ptr", align 16 ; 10 uses
  %78 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.t = alloca i8, align 1                       ; 5 uses
  %i.u = alloca i8, align 1                       ; 5 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %82 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %83 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %84 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %85 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %86 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %89 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %90 = alloca %"class.std::shared_ptr.0", align 8 ; 6 uses
  %91 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %92 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %93 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %94 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %95 = alloca %struct.ArrowSchema, align 8       ; 4 uses
  %96 = alloca %"struct.fmt::v11::detail::format_arg_store.1644", align 16 ; 5 uses
  %97 = alloca %"struct.fmt::v11::detail::format_arg_store.1644", align 16 ; 5 uses
  %i.z = alloca ptr, align 8                      ; 14 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %100 = alloca %"class.std::shared_ptr.0", align 8 ; 22 uses
  %101 = alloca %"class.boost::intrusive_ptr", align 8 ; 20 uses
  %102 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %103 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %104 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %105 = alloca %"class.std::function.1651", align 8 ; 11 uses
  %106 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %107 = alloca %"class.std::function.1651", align 8 ; 11 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %109 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %110 = alloca %"class.std::function.1651", align 8 ; 11 uses
  %111 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %112 = alloca %"class.std::function.1651", align 8 ; 11 uses
  %113 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %114 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %115 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %116 = alloca %"class.std::function.1651", align 8 ; 8 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %118 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %120 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %121 = alloca %"class.std::function.1651", align 8 ; 8 uses
  %122 = alloca %"class.std::shared_ptr.50", align 16 ; 8 uses
  %123 = alloca %"class.std::shared_ptr.38", align 8 ; 7 uses
  %124 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %125 = alloca %"class.std::shared_ptr.1659", align 16 ; 8 uses
  %126 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %127 = alloca %"class.std::function.1651", align 8 ; 8 uses
  %128 = alloca %"class.std::shared_ptr.1662", align 16 ; 8 uses
  %129 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %130 = alloca %"class.std::function.1651", align 8 ; 8 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %132 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %133 = alloca %class.anon.1665, align 8         ; 9 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %3, ptr %i.z, align 8, !tbaa !269
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !368
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !132

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.299) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !126
  %.not101 = icmp eq ptr %i.ad, null
  br i1 %.not101, label %bb.d, label %bb.e, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.301) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !100 ; 2 uses
  %.not102 = icmp eq i64 %i.af, 0
  br i1 %.not102, label %bb.i, label %bb.f, !prof !156

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #38, !noalias !7686
  store i64 %i.af, ptr %97, align 16, !tbaa !139, !alias.scope !7689, !noalias !7686
  %i.ag = getelementptr inbounds nuw i8, ptr %97, i64 16
  store i32 0, ptr %i.ag, align 16, !tbaa !139, !alias.scope !7689, !noalias !7686
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %98, ptr nonnull @.str.303, i64 66, i64 19, ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #38, !noalias !7686
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %98, ptr nonnull @.str.303) #47
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %98, align 8, !tbaa !143  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !139
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #38
  br label %bb.uf

bb.i:                                             ; preds = %bb.e
  %i.an = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.m, !prof !132

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #38, !noalias !7692
  store i64 %i.an, ptr %96, align 16, !tbaa !139, !alias.scope !7695, !noalias !7692
  %i.ap = getelementptr inbounds nuw i8, ptr %96, i64 16
  store i32 0, ptr %i.ap, align 16, !tbaa !139, !alias.scope !7695, !noalias !7692
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %99, ptr nonnull @.str.305, i64 50, i64 19, ptr nonnull %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #38, !noalias !7692
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEEE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %99, ptr nonnull @.str.305) #47
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %99, align 8, !tbaa !143  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !139
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #38
  br label %bb.uf

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #38
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !359, !noalias !7698 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  %..i = select i1 %.not.i, ptr %1, ptr %i.ax     ; 2 uses
  %i.ay = load ptr, ptr %..i, align 8, !tbaa !360, !noalias !7698
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #38, !noalias !7698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %95, ptr noundef nonnull align 8 dereferenceable(72) %..i, i64 72, i1 false), !tbaa.struct !445, !noalias !7698
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchema(ptr dead_on_unwind noalias nonnull writable align 8 %100, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %95) #51, !inline_history !512
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #38, !noalias !7698
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #38
  store ptr null, ptr %101, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !549
  %.not103 = icmp eq i64 %i.ba, 0
  br i1 %.not103, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %.not104 = icmp eq ptr %i.bd, null
  br i1 %.not104, label %bb.o, label %bb.r, !prof !132

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_119importFromArrowImplER11ArrowSchemaR10ArrowArrayPNS0_6memory10MemoryPoolEbSt8functionIFN5boost13intrusive_ptrINS0_6BufferEEEPKvmEEE18veloxCheckFailArgs_3, ptr noundef nonnull @.str.307) #47
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #38
  %i.bf = load i64, ptr %2, align 8, !tbaa !99
  %i.bg = add i64 %i.bf, 7
  %i.bh = lshr i64 %i.bg, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !82, !noalias !7701
  store i64 %i.bh, ptr %i.y, align 8, !tbaa !397, !noalias !7701
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !529, !noalias !7701
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt25__throw_bad_function_callv() #47
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !526, !noalias !7701
  invoke void %i.bl(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %102, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.u unwind label %bb.z, !inline_history !7704

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.bm = load ptr, ptr %102, align 8, !tbaa !85
  store ptr null, ptr %102, align 8, !tbaa !85
  %i.bn = load ptr, ptr %101, align 8, !tbaa !85  ; 7 uses
  store ptr %i.bm, ptr %101, align 8, !tbaa !85
  %.not.i.i153 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i153, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = atomicrmw sub ptr %i.bo, i32 1 acq_rel, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.v
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !124
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %.noexc.i.i unwind label %bb.w, !inline_history !186

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !187
  %.not.i.i.i = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !124
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %..i.i.i
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.w, !inline_history !186

bb.w:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.v, %.noexc.i.i
  %.pr = load ptr, ptr %102, align 8, !tbaa !85   ; 7 uses
  %.not.i154 = icmp eq ptr %.pr, null
  br i1 %.not.i154, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.x
  %i.ce = load ptr, ptr %.pr, align 8, !tbaa !124
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.y, !inline_history !186

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !187
  %.not.i.i155 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %.pr, align 8, !tbaa !124
  %..i.i = select i1 %.not.i.i155, i64 8, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %..i.i
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.y, !inline_history !186

bb.y:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.u, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.x, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #38
  br label %bb.aa

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #38
  br label %.body188

bb.aa:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.m
  %i.cp = load ptr, ptr %i.aw, align 8, !tbaa !359
  %.not105 = icmp eq ptr %i.cp, null
  br i1 %.not105, label %bb.co, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #38
  %i.cq = load ptr, ptr %1, align 8, !tbaa !360
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_119importFromArrowImplEPKcRK11ArrowSchema(ptr dead_on_unwind noalias nonnull writable align 8 %103, ptr noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.ac unwind label %bb.cj

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.z, align 8, !tbaa !269
  %i.cs = load ptr, ptr %101, align 8, !tbaa !85  ; 3 uses
  store ptr %i.cs, ptr %104, align 8, !tbaa !85
  %.not.i156 = icmp eq ptr %i.cs, null
  br i1 %.not.i156, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = atomicrmw add ptr %i.ct, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.ac, %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %105, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %105, i8 0, i64 32, i1 false)
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !529 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !526 ; 2 uses
  store ptr %i.db, ptr %i.cw, align 8, !tbaa !526
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !529 ; 2 uses
  store ptr %i.dc, ptr %i.cv, align 8, !tbaa !529
  %i.dd = icmp eq ptr %i.dc, null
  br label %_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !529 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.df, null
  br i1 %.not.i.i157, label %.body, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull align 8 dereferenceable(32) %105, i32 noundef 3)
          to label %.body unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #48
  unreachable

_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit: ; preds = %bb.af, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.dj = phi ptr [ %i.db, %bb.af ], [ null, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit ]
  %.not.i.i500 = phi i1 [ %i.dd, %bb.af ], [ true, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %92)
  call void @llvm.lifetime.start.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %94)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !103, !noalias !7705 ; 2 uses
  %.not.i158 = icmp eq i64 %i.dl, 2
  br i1 %.not.i158, label %bb.al, label %.noexc159, !prof !156

.noexc159:                                        ; preds = %_ZNSt8functionIFN5boost13intrusive_ptrIN8facebook5velox6BufferEEEPKvmEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #38, !noalias !7705
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38, !noalias !7708
  store i64 %i.dl, ptr %31, align 16, !tbaa !139, !alias.scope !7711, !noalias !7708
  %i.dm = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 2, ptr %i.dm, align 16, !tbaa !139, !alias.scope !7711, !noalias !7708
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr nonnull @.str.32, i64 11, i64 19, ptr nonnull %31)
          to label %.noexc160 unwind label %bb.ck

.noexc160:                                        ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38, !noalias !7708
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_122createDictionaryVectorEPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEERK11ArrowSchemaRK10ArrowArraybSt8functionIFSE_PKvmEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %87, ptr nonnull @.str.32) #47
          to label %bb.aj unwind label %bb.ak, !noalias !7705, !inline_history !7714

bb.aj:                                            ; preds = %.noexc160
  unreachable

bb.ak:                                            ; preds = %.noexc160
  %i.dn = landingpad { ptr, i32 }
          cleanup
end_hunk_1
