inline.NumInlined: 4303
inline.NumDeleted: 1845
begin_hunk_0_@_ZN6duckdb11Transformer17TransformFuncCallERN17duckdb_libpgquery10PGFuncCallE:bb.a
  %.0174 = phi i1 [ false, %bb.cd ], [ true, %bb.cc ] ; 2 uses
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.it = load ptr, ptr %43, align 8, !tbaa !126  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.ce
  call void @_ZdlPv(ptr noundef %i.it) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br i1 %.0174, label %bb.cf, label %.body350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br i1 %.0174, label %bb.cf, label %.body350

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %.pn296820 = phi { ptr, i32 } [ %i.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ]
  call void @__cxa_free_exception(ptr %i.iq) #21
  br label %.body350

bb.cg:                                            ; preds = %bb.ca
  %i.iw = icmp ne i8 %i.gr, 110
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %.not258 = icmp eq i32 %i.iy, 0
  %or.cond320 = select i1 %i.iw, i1 true, i1 %.not258
  br i1 %or.cond320, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.iz = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.ci unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  invoke void @__cxa_throw(ptr nonnull %i.iz, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.os unwind label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread: ; preds = %bb.ch
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.0172 = phi i1 [ false, %bb.cj ], [ true, %bb.ci ] ; 2 uses
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jc = load ptr, ptr %45, align 8, !tbaa !126  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %bb.ck
  call void @_ZdlPv(ptr noundef %i.jc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br i1 %.0172, label %bb.cl, label %.body350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br i1 %.0172, label %bb.cl, label %.body350

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.pn294823 = phi { ptr, i32 } [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ]
  call void @__cxa_free_exception(ptr %i.iz) #21
  br label %.body350

bb.cm:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  invoke void @_ZN6duckdb9make_uniqINS_16WindowExpressionEJRKNS_14ExpressionTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RSA_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.234") align 8 %47, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.cn unwind label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  %i.jf = load i32, ptr %i.ix, align 4, !tbaa !242
  %i.jg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.co unwind label %bb.cu

bb.co:                                            ; preds = %bb.cn
  %i.jh = icmp eq i32 %i.jf, 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 232
  %i.jj = zext i1 %i.jh to i8
  store i8 %i.jj, ptr %i.ji, align 8, !tbaa !243
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 43
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !238, !range !229, !noundef !132
  %i.jm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.cp unwind label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 233
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !257
  %i.jo = load ptr, ptr %i.if, align 8, !tbaa !258 ; 2 uses
  %.not259 = icmp eq ptr %i.jo, null
  br i1 %.not259, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.jo, ptr %14, align 8, !noalias !259
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc364 unwind label %bb.cv, !inline_history !22

.noexc364:                                        ; preds = %bb.cq
  %i.jp = load ptr, ptr %14, align 8, !tbaa !20, !noalias !259
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %48, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.jp)
          to label %bb.cr unwind label %bb.cv, !inline_history !22

bb.cr:                                            ; preds = %.noexc364
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.jq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 224 ; 2 uses
  %i.js = load ptr, ptr %48, align 8, !tbaa !19
  store ptr null, ptr %48, align 8, !tbaa !19
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !19 ; 3 uses
  store ptr %i.js, ptr %i.jr, align 8, !tbaa !19
  %.not.i.i.i.i.i366 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i366, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.cs
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !23
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(56) %i.jt) #21, !inline_history !25
  %.pr824 = load ptr, ptr %48, align 8, !tbaa !19 ; 3 uses
  %.not.i367 = icmp eq ptr %.pr824, null
  br i1 %.not.i367, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.jx = load ptr, ptr %.pr824, align 8, !tbaa !23
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(56) %.pr824) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cs, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cm
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496

bb.cu:                                            ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i394, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.eh, %bb.eg, %bb.dx, %bb.dw, %bb.du, %bb.dt, %bb.dn, %bb.dm, %bb.di, %bb.co, %bb.cn
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.cv:                                            ; preds = %.noexc364, %bb.cq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370

bb.cw:                                            ; preds = %bb.cr
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %48, align 8, !tbaa !19   ; 3 uses
  %.not.i368 = icmp eq ptr %i.ke, null
  br i1 %.not.i368, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i369

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i369: ; preds = %bb.cw
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !23
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(56) %i.ke) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i369, %bb.cw, %bb.cv
  %.pn260 = phi { ptr, i32 } [ %i.kc, %bb.cv ], [ %i.kd, %bb.cw ], [ %i.kd, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  br label %bb.hy

bb.cx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.cp
  %i.ki = load ptr, ptr %i.hi, align 8, !tbaa !239 ; 2 uses
  %.not262 = icmp eq ptr %i.ki, null
  br i1 %.not262, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.kj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.cz unwind label %bb.df     ; 4 uses

bb.cz:                                            ; preds = %bb.cy
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i8 2, ptr %i.kk, align 8, !tbaa !265, !noalias !262
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb13OrderModifierE, i32 0, i32 0, i32 2), ptr %i.kj, align 8, !tbaa !23, !noalias !262
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, i8 0, i64 24, i1 false), !noalias !262
  store ptr %i.kj, ptr %49, align 8, !tbaa !268, !alias.scope !262
  %i.km = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = invoke noundef zeroext i1 @_ZN6duckdb11Transformer16TransformOrderByEPN17duckdb_libpgquery6PGListERNS_6vectorINS_11OrderByNodeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %i.kn)
          to label %bb.db unwind label %bb.dg     ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.kp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.dc unwind label %bb.dg     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.kq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dd unwind label %bb.dg     ; 3 uses

bb.dd:                                            ; preds = %bb.dc
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 272 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !270 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 280
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !271 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 288
  %i.kx = load <2 x ptr>, ptr %i.kr, align 8, !tbaa !272
  store <2 x ptr> %i.kx, ptr %i.ks, align 8, !tbaa !272
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !273
  store ptr %i.kz, ptr %i.kw, align 8, !tbaa !273
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.kt, %i.kv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dd, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.lf, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i ], [ %i.kt, %bb.dd ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !23
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(56) %i.lb) #21, !inline_history !274
  br label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lf, %i.kv
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !275

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, %bb.dd
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kt) #23
  br label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.de
  %i.lg = load ptr, ptr %49, align 8, !tbaa !268  ; 3 uses
  %.not.i372 = icmp eq ptr %i.lg, null
  br i1 %.not.i372, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i: ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !23
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(40) %i.lg) #21, !inline_history !276
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.dh

bb.df:                                            ; preds = %bb.cy
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375

bb.dg:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %49, align 8, !tbaa !268  ; 3 uses
  %.not.i373 = icmp eq ptr %i.lm, null
  br i1 %.not.i373, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i374

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i374: ; preds = %bb.dg
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !23
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(40) %i.lm) #21, !inline_history !276
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i374, %bb.dg, %bb.df
  %.pn263 = phi { ptr, i32 } [ %i.lk, %bb.df ], [ %i.ll, %bb.dg ], [ %i.ll, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.hy

bb.dh:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %bb.cx
  %i.lq = load i8, ptr %i.d, align 1, !tbaa !237
  %i.lr = icmp eq i8 %i.lq, 110
  br i1 %i.lr, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ls = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dj unwind label %bb.cu     ; 3 uses

bb.dj:                                            ; preds = %bb.di
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 152 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !36 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 160
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !39 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 168
  %i.ly = load <2 x ptr>, ptr %31, align 16, !tbaa !127
  store <2 x ptr> %i.ly, ptr %i.lt, align 8, !tbaa !127
  %i.lz = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ma = load ptr, ptr %i.lz, align 16, !tbaa !40
  store ptr %i.ma, ptr %i.lx, align 8, !tbaa !40
  %.not4.i.i.i.i.i.i376 = icmp eq ptr %i.lu, %i.lw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i376, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i377

.lr.ph.i.i.i.i.i.i377:                            ; preds = %bb.dj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i378 = phi ptr [ %i.mf, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.lu, %bb.dj ] ; 2 uses
  %i.mb = load ptr, ptr %.05.i.i.i.i.i.i378, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i377
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !23
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(56) %i.mb) #21, !inline_history !277
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i377
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i378, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i379 = icmp eq ptr %i.mf, %i.lw
  br i1 %.not.i.i.i.i.i.i379, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i377, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.dj
  %.not.i.i1.i.i.i.i380 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i1.i.i.i.i380, label %bb.ex, label %bb.dk

bb.dk:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.lu) #23
  br label %bb.ex

bb.dl:                                            ; preds = %bb.dh
  %i.mg = load ptr, ptr %31, align 16, !tbaa !127
  %i.mh = load ptr, ptr %i.ew, align 8, !tbaa !127
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dn unwind label %bb.cu     ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 0)
          to label %bb.do unwind label %bb.cu     ; 4 uses

bb.do:                                            ; preds = %bb.dn
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 152 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 160 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !39 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 168 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.mn, %i.mp
  br i1 %.not.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mq = load i64, ptr %i.mk, align 8, !tbaa !19
  store i64 %i.mq, ptr %i.mn, align 8, !tbaa !19
  store ptr null, ptr %i.mk, align 8, !tbaa !19
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.mr, ptr %i.mm, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.dq:                                            ; preds = %bb.do
  %i.ms = load ptr, ptr %i.ml, align 8, !tbaa !36 ; 10 uses
  %i.mt = ptrtoint ptr %i.mn to i64               ; 3 uses
  %i.mu = ptrtoint ptr %i.ms to i64               ; 3 uses
  %i.mv = sub i64 %i.mt, %i.mu                    ; 3 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dq
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer17TransformFuncCallERN17duckdb_libpgquery10PGFuncCallE:bb.a
  %i.yb = load ptr, ptr %56, align 8, !tbaa !304
  %.not895 = icmp eq ptr %i.ya, %i.yb
  br i1 %.not895, label %bb.hr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGWindowDefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.hp unwind label %bb.gs

bb.hp:                                            ; preds = %bb.ho
  %i.yc = load ptr, ptr %56, align 8, !tbaa !304
  %i.yd = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.hq unwind label %bb.gs

bb.hq:                                            ; preds = %bb.hp
  invoke void @_ZN6duckdb11Transformer18TransformWindowDefERN17duckdb_libpgquery11PGWindowDefERNS_16WindowExpressionEPKc(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.yc, ptr noundef nonnull align 8 dereferenceable(296) %i.yd, ptr noundef %i.uw)
          to label %bb.hr unwind label %bb.gs

bb.hr:                                            ; preds = %bb.hq, %bb.hn
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGWindowDefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.hs unwind label %bb.gs

bb.hs:                                            ; preds = %bb.hr
  %i.ye = load ptr, ptr %56, align 8, !tbaa !304
  %i.yf = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.ht unwind label %bb.gs

bb.ht:                                            ; preds = %bb.hs
  invoke void @_ZN6duckdb11Transformer20TransformWindowFrameERN17duckdb_libpgquery11PGWindowDefERNS_16WindowExpressionE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.ye, ptr noundef nonnull align 8 dereferenceable(296) %i.yf)
          to label %bb.hu unwind label %bb.gs

bb.hu:                                            ; preds = %bb.ht
  store i8 0, ptr %i.gb, align 8, !tbaa !234
  %i.yg = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.hv unwind label %bb.gs

bb.hv:                                            ; preds = %bb.hu
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !321
  invoke void @_ZN6duckdb11Transformer16SetQueryLocationERNS_16ParsedExpressionEi(ptr noundef nonnull align 8 dereferenceable(56) %i.yg, i32 noundef %i.yi)
          to label %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.gs

_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.hv
  %i.yj = load ptr, ptr %47, align 8, !tbaa !322
  store ptr %i.yj, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.oo

bb.hw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, %bb.hh, %bb.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, %bb.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485, %bb.gs
  %.pn284.pn.pn = phi { ptr, i32 } [ %i.wt, %bb.gs ], [ %.pn284840, %bb.gw ], [ %i.wz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476 ], [ %.pn282843, %bb.hj ], [ %i.xu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ], [ %i.xs, %bb.hh ], [ %.pn276.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473 ], [ %i.wz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474 ], [ %i.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  br label %bb.hx

bb.hx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %bb.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433, %bb.hw, %bb.fr
  %.pn288.pn.pn = phi { ptr, i32 } [ %i.ug, %bb.fr ], [ %.pn284.pn.pn, %bb.hw ], [ %.pn288837, %bb.fv ], [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %.pn272.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %i.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.hy

bb.hy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %bb.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %bb.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, %bb.ed, %bb.hx, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370, %bb.cu
  %.pn288.pn.pn.pn = phi { ptr, i32 } [ %.pn288.pn.pn, %bb.hx ], [ %i.kb, %bb.cu ], [ %.pn269828, %bb.ed ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %.pn267831, %bb.eq ], [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.pn265834, %bb.ew ], [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ], [ %.pn263, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit375 ], [ %.pn260, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit370 ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390 ], [ %i.ry, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %i.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412 ] ; 2 uses
  %i.yk = load ptr, ptr %47, align 8, !tbaa !322  ; 3 uses
  %.not.i494 = icmp eq ptr %i.yk, null
  br i1 %.not.i494, label %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496, label %_ZNKSt14default_deleteIN6duckdb16WindowExpressionEEclEPS1_.exit.i495

_ZNKSt14default_deleteIN6duckdb16WindowExpressionEEclEPS1_.exit.i495: ; preds = %bb.hy
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !23
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(296) %i.yk) #21, !inline_history !324
  br label %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496

_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496: ; preds = %_ZNKSt14default_deleteIN6duckdb16WindowExpressionEEclEPS1_.exit.i495, %bb.hy, %bb.ct
  %.pn288.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ka, %bb.ct ], [ %.pn288.pn.pn.pn, %bb.hy ], [ %.pn288.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16WindowExpressionEEclEPS1_.exit.i495 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.body350

.body350:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %bb.bb, %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496
  %.pn302.pn = phi { ptr, i32 } [ %.pn302807, %bb.bb ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn300810, %bb.bh ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pn298817, %bb.bz ], [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %.pn296820, %bb.cf ], [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %.pn294823, %bb.cl ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.pn288.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16WindowExpressionESt14default_deleteIS1_EED2Ev.exit496 ], [ %.pn254814, %bb.bu ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ], [ %i.gt, %bb.az ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %.pn.pn18.i, %bb.bp ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.oq

bb.hz:                                            ; preds = %bb.an
  %i.yo = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !242
  %.not193 = icmp eq i32 %i.yp, 0
  br i1 %.not193, label %bb.if, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.yq = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.ib unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.yq, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.ic unwind label %bb.id

bb.ic:                                            ; preds = %bb.ib
  invoke void @__cxa_throw(ptr nonnull %i.yq, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.os unwind label %bb.id

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread: ; preds = %bb.ia
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  br label %bb.ie

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.0156 = phi i1 [ false, %bb.ic ], [ true, %bb.ib ] ; 2 uses
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.yt = load ptr, ptr %66, align 8, !tbaa !126  ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497: ; preds = %bb.id
  call void @_ZdlPv(ptr noundef %i.yt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  br i1 %.0156, label %bb.ie, label %bb.oq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  br i1 %.0156, label %bb.ie, label %bb.oq

bb.ie:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
  %.pn250846 = phi { ptr, i32 } [ %i.yr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.thread ], [ %i.ys, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499 ], [ %i.ys, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497 ]
  call void @__cxa_free_exception(ptr %i.yq) #21
  br label %bb.oq

bb.if:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  store ptr null, ptr %68, align 8, !tbaa !7
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !258 ; 2 uses
  %.not194 = icmp eq ptr %i.yx, null
  br i1 %.not194, label %bb.ij, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.yx, ptr %13, align 8, !noalias !325
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc500 unwind label %bb.ii, !inline_history !22

.noexc500:                                        ; preds = %bb.ig
  %i.yy = load ptr, ptr %13, align 8, !tbaa !20, !noalias !325
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %69, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.yy)
          to label %bb.ih unwind label %bb.ii, !inline_history !22

bb.ih:                                            ; preds = %.noexc500
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.yz = load ptr, ptr %69, align 8, !tbaa !19
  store ptr null, ptr %69, align 8, !tbaa !19
  %i.za = load ptr, ptr %68, align 8, !tbaa !19   ; 3 uses
  store ptr %i.yz, ptr %68, align 8, !tbaa !19
  %.not.i.i.i.i.i503 = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i.i.i503, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit508, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit505

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit505: ; preds = %bb.ih
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !23
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dereferenceable(56) %i.za) #21, !inline_history !25
  %.pr847 = load ptr, ptr %69, align 8, !tbaa !19 ; 3 uses
  %.not.i506 = icmp eq ptr %.pr847, null
  br i1 %.not.i506, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit508, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i507

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i507: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit505
  %i.ze = load ptr, ptr %.pr847, align 8, !tbaa !23
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(56) %.pr847) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit508

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit508: ; preds = %bb.ih, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit505, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i507
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %bb.ij

bb.ii:                                            ; preds = %.noexc500, %bb.ig
  %i.zh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %bb.on

bb.ij:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit508, %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.zi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.ik unwind label %bb.is     ; 4 uses

bb.ik:                                            ; preds = %bb.ij
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  store i8 2, ptr %i.zj, align 8, !tbaa !265, !noalias !328
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN6duckdb13OrderModifierE, i32 0, i32 0, i32 2), ptr %i.zi, align 8, !tbaa !23, !noalias !328
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zk, i8 0, i64 24, i1 false), !noalias !328
  store ptr %i.zi, ptr %70, align 8, !tbaa !268, !alias.scope !328
  %i.zl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !239
  %i.zn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.il unwind label %bb.it

bb.il:                                            ; preds = %bb.ik
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zp = invoke noundef zeroext i1 @_ZN6duckdb11Transformer16TransformOrderByEPN17duckdb_libpgquery6PGListERNS_6vectorINS_11OrderByNodeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %i.zm, ptr noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %bb.im unwind label %bb.it     ; 0 uses

bb.im:                                            ; preds = %bb.il
  %i.zq = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !331, !range !229, !noundef !132
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %bb.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit518

bb.in:                                            ; preds = %bb.im
  %i.zt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.io unwind label %bb.it     ; 2 uses

bb.io:                                            ; preds = %bb.in
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !271
  %i.zx = load ptr, ptr %i.zu, align 8, !tbaa !270
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %.not195 = icmp eq i64 %i.aaa, 16
  br i1 %.not195, label %bb.iw, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aab = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %72)
          to label %bb.iq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aab, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %bb.ir unwind label %bb.iu

bb.ir:                                            ; preds = %bb.iq
  invoke void @__cxa_throw(ptr nonnull %i.aab, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.os unwind label %bb.iu

bb.is:                                            ; preds = %bb.ij
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit728

bb.it:                                            ; preds = %.invoke1110, %bb.jq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1159.thread, %bb.lw, %bb.lv, %bb.lu, %bb.in, %bb.il, %bb.ik
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body1169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread: ; preds = %bb.ip
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  br label %bb.iv

bb.iu:                                            ; preds = %bb.ir, %bb.iq
  %.0154 = phi i1 [ false, %bb.ir ], [ true, %bb.iq ] ; 2 uses
  %i.aaf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aag = load ptr, ptr %71, align 8, !tbaa !126 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.aai = icmp eq ptr %i.aag, %i.aah
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511: ; preds = %bb.iu
  call void @_ZdlPv(ptr noundef %i.aag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  br i1 %.0154, label %bb.iv, label %.body1169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513: ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  br i1 %.0154, label %bb.iv, label %.body1169

bb.iv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513
  %.pn245851 = phi { ptr, i32 } [ %i.aae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513.thread ], [ %i.aaf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513 ], [ %i.aaf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ]
  call void @__cxa_free_exception(ptr %i.aab) #21
  br label %.body1169

bb.iw:                                            ; preds = %bb.io
  %i.aaj = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !168 ; 2 uses
  switch i64 %i.aak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit527.thread860 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit527
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.iw
  %i.aal = load ptr, ptr %32, align 8, !tbaa !126 ; 4 uses
  %i.aam = load i64, ptr %i.aal, align 1
  %i.aan = xor i64 %i.aam, 7598819853020063088
  %i.aao = getelementptr i8, ptr %i.aal, i64 7
  %i.aap = load i64, ptr %i.aao, align 1
  %i.aaq = xor i64 %i.aap, 8389765628430740585
  %i.aar = or i64 %i.aan, %i.aaq
  %i.aas = icmp ne i64 %i.aar, 0
  %i.aat = zext i1 %i.aas to i32
  %i.aau = icmp eq i32 %i.aat, 0
  br i1 %i.aau, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aav = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.aaw = load ptr, ptr %31, align 16, !tbaa !36
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %.not203 = icmp eq i64 %i.aaz, 8
  br i1 %.not203, label %.invoke1110, label %bb.ix

bb.ix:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aba = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %bb.iy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aba, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.iz unwind label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  invoke void @__cxa_throw(ptr nonnull %i.aba, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.os unwind label %bb.ja

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread: ; preds = %bb.ix
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %.0152 = phi i1 [ false, %bb.iz ], [ true, %bb.iy ] ; 2 uses
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abd = load ptr, ptr %73, align 8, !tbaa !126 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.abf = icmp eq ptr %i.abd, %i.abe
  br i1 %i.abf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %bb.ja
  call void @_ZdlPv(ptr noundef %i.abd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  br i1 %.0152, label %bb.jb, label %.body1169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  br i1 %.0152, label %bb.jb, label %.body1169

bb.jb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516
  %.pn243855 = phi { ptr, i32 } [ %i.abb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516.thread ], [ %i.abc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ], [ %i.abc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514 ]
  call void @__cxa_free_exception(ptr %i.aba) #21
  br label %.body1169

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.abg = load i64, ptr %i.aal, align 1
  %i.abh = xor i64 %i.abg, 7598819853020063088
  %i.abi = getelementptr i8, ptr %i.aal, i64 7
  %i.abj = load i64, ptr %i.abi, align 1
  %i.abk = xor i64 %i.abj, 7166187311894719593
  %i.abl = or i64 %i.abh, %i.abk
  %i.abm = icmp ne i64 %i.abl, 0
  %i.abn = zext i1 %i.abm to i32
  %i.abo = icmp eq i32 %i.abn, 0
  br i1 %i.abo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit527.thread860

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520
  %i.abp = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.abq = load ptr, ptr %31, align 16, !tbaa !36
  %i.abr = ptrtoint ptr %i.abp to i64
  %i.abs = ptrtoint ptr %i.abq to i64
  %i.abt = sub i64 %i.abr, %i.abs
  %.not200 = icmp eq i64 %i.abt, 8
  br i1 %.not200, label %.invoke1110, label %bb.jc

bb.jc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit520.thread
  %i.abu = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %76)
          to label %bb.jd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523.thread

bb.jd:                                            ; preds = %bb.jc
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, ptr noundef nonnull align 8 dereferenceable(32) %75)
          to label %bb.je unwind label %bb.jf

end_hunk_1
begin_hunk_2_@_ZN6duckdb11Transformer17TransformSubqueryERN17duckdb_libpgquery9PGSubLinkE:bb.a
  %min.iters.check744 = icmp ult i64 %i.tq, 152
  br i1 %min.iters.check744, label %.lr.ph.i.i.i.i.i.i.i350.preheader759, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph.i.i.i.i.i.i.i350.preheader
  %i.tt = add i64 %i.tc, -8
  %i.tu = sub i64 %i.tt, %i.td
  %i.tv = and i64 %i.tu, -8
  %i.tw = add i64 %i.tv, 8                        ; 2 uses
  %scevgep738 = getelementptr i8, ptr %i.tm, i64 %i.tw
  %scevgep739 = getelementptr i8, ptr %i.tb, i64 %i.tw
  %bound0740 = icmp ult ptr %i.tm, %scevgep739
  %bound1741 = icmp ult ptr %i.tb, %scevgep738
  %found.conflict742 = and i1 %bound0740, %bound1741
  br i1 %found.conflict742, label %.lr.ph.i.i.i.i.i.i.i350.preheader759, label %vector.ph745

vector.ph745:                                     ; preds = %vector.memcheck737
  %n.vec747 = and i64 %i.ts, 4611686018427387900  ; 3 uses
  %i.tx = shl i64 %n.vec747, 3                    ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tm, i64 %i.tx  ; 2 uses
  %i.tz = getelementptr i8, ptr %i.tb, i64 %i.tx
  br label %vector.body748

vector.body748:                                   ; preds = %vector.body748, %vector.ph745
  %index749 = phi i64 [ 0, %vector.ph745 ], [ %index.next754, %vector.body748 ] ; 2 uses
  %i.ua = shl i64 %index749, 3                    ; 2 uses
  %next.gep750 = getelementptr i8, ptr %i.tm, i64 %i.ua ; 2 uses
  %next.gep751 = getelementptr i8, ptr %i.tb, i64 %i.ua ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.ub = getelementptr i8, ptr %next.gep751, i64 16
  %wide.load752 = load <2 x i64>, ptr %next.gep751, align 8, !tbaa !19, !alias.scope !779, !noalias !774
  %wide.load753 = load <2 x i64>, ptr %i.ub, align 8, !tbaa !19, !alias.scope !779, !noalias !774
  %i.uc = getelementptr i8, ptr %next.gep750, i64 16
  store <2 x i64> %wide.load752, ptr %next.gep750, align 8, !tbaa !19, !alias.scope !782, !noalias !779
  store <2 x i64> %wide.load753, ptr %i.uc, align 8, !tbaa !19, !alias.scope !782, !noalias !779
  %i.ud = getelementptr i8, ptr %next.gep751, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep751, align 8, !tbaa !19, !alias.scope !779, !noalias !774
  store <2 x ptr> splat (ptr null), ptr %i.ud, align 8, !tbaa !19, !alias.scope !779, !noalias !774
  %index.next754 = add nuw i64 %index749, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next754, %n.vec747
  br i1 %i.ue, label %middle.block755, label %vector.body748, !llvm.loop !784

middle.block755:                                  ; preds = %vector.body748
  %cmp.n756 = icmp eq i64 %i.ts, %n.vec747
  br i1 %cmp.n756, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354, label %.lr.ph.i.i.i.i.i.i.i350.preheader759

.lr.ph.i.i.i.i.i.i.i350.preheader759:             ; preds = %vector.memcheck737, %.lr.ph.i.i.i.i.i.i.i350.preheader, %middle.block755
  %.012.i.i.i.i.i.i.i351.ph = phi ptr [ %i.tm, %vector.memcheck737 ], [ %i.tm, %.lr.ph.i.i.i.i.i.i.i350.preheader ], [ %i.ty, %middle.block755 ]
  %.0911.i.i.i.i.i.i.i352.ph = phi ptr [ %i.tb, %vector.memcheck737 ], [ %i.tb, %.lr.ph.i.i.i.i.i.i.i350.preheader ], [ %i.tz, %middle.block755 ]
  br label %.lr.ph.i.i.i.i.i.i.i350

.lr.ph.i.i.i.i.i.i.i350:                          ; preds = %.lr.ph.i.i.i.i.i.i.i350.preheader759, %.lr.ph.i.i.i.i.i.i.i350
  %.012.i.i.i.i.i.i.i351 = phi ptr [ %i.uh, %.lr.ph.i.i.i.i.i.i.i350 ], [ %.012.i.i.i.i.i.i.i351.ph, %.lr.ph.i.i.i.i.i.i.i350.preheader759 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i352 = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i.i350 ], [ %.0911.i.i.i.i.i.i.i352.ph, %.lr.ph.i.i.i.i.i.i.i350.preheader759 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.uf = load i64, ptr %.0911.i.i.i.i.i.i.i352, align 8, !tbaa !19, !alias.scope !777, !noalias !774
  store i64 %i.uf, ptr %.012.i.i.i.i.i.i.i351, align 8, !tbaa !19, !alias.scope !774, !noalias !777
  store ptr null, ptr %.0911.i.i.i.i.i.i.i352, align 8, !tbaa !19, !alias.scope !777, !noalias !774
  %i.ug = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i352, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i351, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i353 = icmp eq ptr %i.ug, %i.sw
  br i1 %.not.i.i.i.i.i.i.i353, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354, label %.lr.ph.i.i.i.i.i.i.i350, !llvm.loop !785

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354: ; preds = %.lr.ph.i.i.i.i.i.i.i350, %middle.block755, %.noexc359
  %.0.lcssa.i.i.i.i.i.i.i355 = phi ptr [ %i.tm, %.noexc359 ], [ %i.ty, %middle.block755 ], [ %i.uh, %.lr.ph.i.i.i.i.i.i.i350 ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i355, i64 8
  %.not.i23.i.i.i356 = icmp eq ptr %i.tb, null
  br i1 %.not.i23.i.i.i356, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354
  call void @_ZdlPv(ptr noundef nonnull %i.tb) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357: ; preds = %bb.gf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354
  store ptr %i.tm, ptr %i.st, align 8, !tbaa !36
  store ptr %i.ui, ptr %i.sv, align 8, !tbaa !39
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.tk
  store ptr %i.uj, ptr %i.sx, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363: ; preds = %bb.gc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357
  %i.uk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.gg unwind label %bb.gx

bb.gg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ul = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #22
          to label %.noexc367 unwind label %bb.gx ; 5 uses

.noexc367:                                        ; preds = %bb.gg
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 56 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !695, !noalias !786
  store i64 %i.un, ptr %3, align 8, !tbaa !695, !noalias !786
  store ptr null, ptr %i.um, align 8, !tbaa !695, !noalias !786
  %i.uo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.uo, ptr %4, align 8, !tbaa !166, !noalias !786
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.up, align 8, !tbaa !168, !noalias !786
  store i8 0, ptr %i.uo, align 8, !tbaa !30, !noalias !786
  invoke void @_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ul, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.gh unwind label %bb.gi, !noalias !786

bb.gh:                                            ; preds = %.noexc367
  %i.uq = load ptr, ptr %4, align 8, !tbaa !126, !noalias !786 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.uo
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364: ; preds = %bb.gh
  call void @_ZdlPv(ptr noundef %i.uq) #23, !noalias !786
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364
  %i.us = load ptr, ptr %3, align 8, !tbaa !695, !noalias !786 ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.us, null
  br i1 %.not.i.i365, label %bb.gj, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !23, !noalias !786
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !786
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(128) %i.us) #21, !noalias !786, !inline_history !789
  br label %bb.gj

bb.gi:                                            ; preds = %.noexc367
  %i.uw = landingpad { ptr, i32 }
          cleanup
  %i.ux = load ptr, ptr %4, align 8, !tbaa !126, !noalias !786 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.uo
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.gi
  call void @_ZdlPv(ptr noundef %i.ux) #23, !noalias !786
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.uz = load ptr, ptr %3, align 8, !tbaa !695, !noalias !786 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.uz, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !23, !noalias !786
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !786
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(128) %i.uz) #21, !noalias !786, !inline_history !789
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  call void @_ZdlPv(ptr noundef nonnull %i.ul) #23, !noalias !786
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit416

bb.gj:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.vd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.gk unwind label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit422

bb.gk:                                            ; preds = %bb.gj
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 144 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !790 ; 3 uses
  store ptr %i.ul, ptr %i.ve, align 8, !tbaa !790
  %.not.i.i.i.i.i370 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i370, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.gk
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !23
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.vf) #21, !inline_history !792
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.vj = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %bb.gl unwind label %bb.gy     ; 14 uses

bb.gl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  store i8 1, ptr %i.vk, align 8, !tbaa !796, !noalias !793
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i8 0, i64 16, i1 false), !noalias !793
  store ptr %i.vn, ptr %i.vm, align 8, !tbaa !799, !noalias !793
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  store i64 1, ptr %i.vo, align 8, !tbaa !800, !noalias !793
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false), !noalias !793
  store float 1.000000e+00, ptr %i.vq, align 8, !tbaa !801, !noalias !793
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, i8 0, i64 16, i1 false), !noalias !793
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 88
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vj, i64 104 ; 2 uses
  store ptr %i.vt, ptr %i.vs, align 8, !tbaa !166, !noalias !793
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vj, i64 96
  store i64 0, ptr %i.vu, align 8, !tbaa !168, !noalias !793
  store i8 0, ptr %i.vt, align 8, !tbaa !30, !noalias !793
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), ptr %i.vj, align 8, !tbaa !23, !noalias !793
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vj, i64 120
  store ptr null, ptr %i.vv, align 8, !tbaa !802, !noalias !793
  store ptr %i.vj, ptr %41, align 8, !tbaa !695, !alias.scope !793
  %i.vw = load ptr, ptr %20, align 8, !tbaa !711  ; 4 uses
  store ptr null, ptr %20, align 8, !tbaa !711
  %i.vx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.gm unwind label %bb.gz

bb.gm:                                            ; preds = %bb.gl
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 120 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !805 ; 3 uses
  store ptr %i.vw, ptr %i.vy, align 8, !tbaa !805
  %.not.i.i.i.i.i373 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i.i373, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.gm
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !23
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8
  call void %i.wc(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.vz) #21, !inline_history !806
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.gm
  %i.wd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.gn unwind label %bb.ha

bb.gn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 56 ; 2 uses
  %i.wf = load ptr, ptr %41, align 8, !tbaa !695
  store ptr null, ptr %41, align 8, !tbaa !695
  %i.wg = load ptr, ptr %i.we, align 8, !tbaa !695 ; 3 uses
  store ptr %i.wf, ptr %i.we, align 8, !tbaa !695
  %.not.i.i.i.i.i375 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i.i.i375, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit377, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i376

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i376: ; preds = %bb.gn
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !23
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8
  call void %i.wj(ptr noundef nonnull align 8 dereferenceable(128) %i.wg) #21, !inline_history !696
  br label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit377

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit377: ; preds = %bb.gn, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i376
  %i.wk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.go unwind label %bb.ha

bb.go:                                            ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit377
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 64
  store i8 1, ptr %i.wl, align 8, !tbaa !683
  %i.wm = load ptr, ptr %41, align 8, !tbaa !695  ; 3 uses
  %.not.i378 = icmp eq ptr %i.wm, null
  br i1 %.not.i378, label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i379

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i379: ; preds = %bb.go
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !23
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8
  call void %i.wp(ptr noundef nonnull align 8 dereferenceable(128) %i.wm) #21, !inline_history !697
  br label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i379, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.wq = load ptr, ptr %i.sa, align 8, !tbaa !19 ; 3 uses
  %.not.i.i382 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i382, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i384, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i383

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i383: ; preds = %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !23
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(56) %i.wq) #21, !inline_history !341
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i384

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i384: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i383, %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit
  %i.wu = load ptr, ptr %40, align 8, !tbaa !19   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.wu, null
  br i1 %.not.i1.i, label %_ZN6duckdb9CaseCheckD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i2.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i384
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !23
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(56) %i.wu) #21, !inline_history !341
  br label %_ZN6duckdb9CaseCheckD2Ev.exit

_ZN6duckdb9CaseCheckD2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i384, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.wy = load ptr, ptr %39, align 8, !tbaa !335  ; 3 uses
  %.not.i385 = icmp eq ptr %i.wy, null
  br i1 %.not.i385, label %_ZNSt10unique_ptrIN6duckdb14CaseExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14CaseExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14CaseExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb9CaseCheckD2Ev.exit
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !23
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(88) %i.wy) #21, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb14CaseExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14CaseExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9CaseCheckD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14CaseExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.xc = load ptr, ptr %38, align 8, !tbaa !391  ; 3 uses
  %.not.i386 = icmp eq ptr %i.xc, null
  br i1 %.not.i386, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14CaseExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !23
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(209) %i.xc) #21, !inline_history !393
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14CaseExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.xg = load ptr, ptr %37, align 8, !tbaa !36   ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.xg, %i.xi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.xn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.xg, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.xj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i387 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i.i.i387, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i388

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i388: ; preds = %.lr.ph.i.i.i
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !23
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(56) %i.xj) #21, !inline_history !398
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i388, %.lr.ph.i.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.xn, %i.xi
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %37, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.xo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.xg, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.xo, null
  br i1 %.not.i.i1.i, label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit391, label %bb.gp

bb.gp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.xo) #23
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit391

_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit391: ; preds = %bb.gp, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.xp = load ptr, ptr %27, align 8, !tbaa !391  ; 3 uses
  %.not.i392 = icmp eq ptr %i.xp, null
  br i1 %.not.i392, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i393

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i393: ; preds = %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit391
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !23
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(209) %i.xp) #21, !inline_history !393
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394: ; preds = %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit391, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.xt = load ptr, ptr %26, align 8, !tbaa !36   ; 3 uses
  %i.xu = load ptr, ptr %i.ix, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i395 = icmp eq ptr %i.xt, %i.xu
  br i1 %.not4.i.i.i395, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i404, label %.lr.ph.i.i.i396

.lr.ph.i.i.i396:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400
  %.05.i.i.i397 = phi ptr [ %i.xz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400 ], [ %i.xt, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394 ] ; 2 uses
  %i.xv = load ptr, ptr %.05.i.i.i397, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i398 = icmp eq ptr %i.xv, null
  br i1 %.not.i.i.i.i.i398, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i399

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i399: ; preds = %.lr.ph.i.i.i396
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !23
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(56) %i.xv) #21, !inline_history !398
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i399, %.lr.ph.i.i.i396
  %i.xz = getelementptr inbounds nuw i8, ptr %.05.i.i.i397, i64 8 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %i.xz, %i.xu
  br i1 %.not.i.i.i401, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i402, label %.lr.ph.i.i.i396, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i402: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i400
  %.pr.i403 = load ptr, ptr %26, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i404

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i404: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i402, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394
  %i.ya = phi ptr [ %.pr.i403, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i402 ], [ %i.xt, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit394 ] ; 2 uses
  %.not.i.i1.i405 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i1.i405, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit409, label %bb.gq

bb.gq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i404
  call void @_ZdlPv(ptr noundef nonnull %i.ya) #23
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit409
end_hunk_2
begin_hunk_3_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::allocator.53", align 1 ; 5 uses
  %42 = alloca %"class.duckdb::vector.28", align 8 ; 18 uses
  %43 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %44 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %45 = alloca %"class.duckdb::unique_ptr.194", align 8 ; 5 uses
  %46 = alloca %"class.duckdb::optional_ptr.126", align 8 ; 14 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::allocator.53", align 1 ; 5 uses
  %49 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %50 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %51 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %52 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %53 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %54 = alloca %"class.duckdb::vector.28", align 8 ; 13 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::allocator.53", align 1 ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %58 = alloca %"class.std::allocator.53", align 1 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %59 = alloca %"class.duckdb::unique_ptr.194", align 8 ; 9 uses
  %60 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %61 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %62 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %63 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %64 = alloca %"class.duckdb::unique_ptr", align 8 ; 11 uses
  %65 = alloca %"class.duckdb::unique_ptr", align 8 ; 11 uses
  %66 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %68 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %70 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %71 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1086
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store ptr %i.g, ptr %32, align 8
  call void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery7PGValueELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %i.h = load ptr, ptr %32, align 8, !tbaa !192
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 10 uses
  store ptr %i.k, ptr %31, align 8, !tbaa !166
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.120) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.m, ptr %i.a, align 8, !tbaa !167
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %31, align 8, !tbaa !126
  %i.p = load i64, ptr %i.a, align 8, !tbaa !167
  store i64 %i.p, ptr %i.k, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !30
  store i8 %i.r, ptr %i.q, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !168
  %i.u = load ptr, ptr %31, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1087
  switch i32 %i.x, label %bb.fy [
    i32 2, label %bb.f
    i32 1, label %bb.f
    i32 7, label %bb.bd
    i32 5, label %bb.bf
    i32 12, label %bb.by
    i32 13, label %bb.by
    i32 11, label %bb.dh
    i32 4, label %bb.fa
    i32 3, label %bb.fm
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !531  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store ptr %i.z, ptr %30, align 8, !noalias !1088
  %.not654 = icmp eq ptr %i.z, null
  br i1 %.not654, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %33, align 8, !tbaa !7, !alias.scope !1088
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %.noexc133 unwind label %bb.ai, !inline_history !22

.noexc133:                                        ; preds = %bb.h
  %i.aa = load ptr, ptr %30, align 8, !tbaa !20, !noalias !1088
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.aa)
          to label %bb.i unwind label %bb.ai, !inline_history !22

bb.i:                                             ; preds = %bb.g, %.noexc133
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1065 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %i.ac, ptr %29, align 8, !noalias !1091
  %.not655 = icmp eq ptr %i.ac, null
  br i1 %.not655, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %34, align 8, !tbaa !7, !alias.scope !1091
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %.noexc135 unwind label %bb.aj, !inline_history !22

.noexc135:                                        ; preds = %bb.k
  %i.ad = load ptr, ptr %29, align 8, !tbaa !20, !noalias !1091
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %34, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
          to label %bb.l unwind label %bb.aj, !inline_history !22

bb.l:                                             ; preds = %bb.j, %.noexc135
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.ae = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
          to label %.noexc138 unwind label %bb.ak ; 4 uses

.noexc138:                                        ; preds = %bb.l
  invoke void @_ZN6duckdb18SubqueryExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(81) %i.ae)
          to label %bb.n unwind label %bb.m, !noalias !1094

bb.m:                                             ; preds = %.noexc138
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #23, !noalias !1094
  br label %.body

bb.n:                                             ; preds = %.noexc138
  store ptr %i.ae, ptr %35, align 8, !tbaa !677, !alias.scope !1094
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.ag = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %bb.o unwind label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ; 15 uses

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.ah, align 8, !tbaa !796, !noalias !1097
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !noalias !1097
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !799, !noalias !1097
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 1, ptr %i.al, align 8, !tbaa !800, !noalias !1097
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !1097
  store float 1.000000e+00, ptr %i.an, align 8, !tbaa !801, !noalias !1097
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !noalias !1097
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 104 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !166, !noalias !1097
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i64 0, ptr %i.ar, align 8, !tbaa !168, !noalias !1097
  store i8 0, ptr %i.aq, align 8, !tbaa !30, !noalias !1097
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), ptr %i.ag, align 8, !tbaa !23, !noalias !1097
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  store ptr null, ptr %i.as, align 8, !tbaa !802, !noalias !1097
  store ptr %i.ag, ptr %36, align 8, !tbaa !695, !alias.scope !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.at = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #22
          to label %.noexc140 unwind label %.body141.thread ; 3 uses

.noexc140:                                        ; preds = %bb.o
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.at)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.p, !noalias !1100

bb.p:                                             ; preds = %.noexc140
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.at) #23, !noalias !1100
  br label %.body141

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %.noexc140
  store ptr %i.at, ptr %37, align 8, !tbaa !711, !alias.scope !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc144 unwind label %bb.al ; 3 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ay = load i64, ptr %34, align 8, !tbaa !19
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !19
  store ptr null, ptr %34, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.aw, ptr %38, align 8, !tbaa !36
  store ptr %i.az, ptr %i.av, align 8, !tbaa !39
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !40
  %i.ba = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.q unwind label %bb.al      ; 3 uses

bb.q:                                             ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA7_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %39, ptr noundef nonnull align 1 dereferenceable(7) @.str.94, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.r unwind label %bb.am

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 3 uses
  %i.bc = load ptr, ptr %39, align 8, !tbaa !391  ; 5 uses
  store ptr null, ptr %39, align 8, !tbaa !391
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %.not.i.i145 = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i.i145, label %bb.s, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.r
  %i.bh = ptrtoint ptr %i.bc to i64
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 10 uses
  %i.bk = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc158 unwind label %bb.an

.noexc158:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146: ; preds = %bb.s
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i147, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 4 uses
  %.not.i.i.i.i148 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i148)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #22
          to label %.noexc159 unwind label %bb.an ; 12 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = ptrtoint ptr %i.bc to i64
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i149 = icmp eq ptr %i.bj, %i.be
  br i1 %.not10.i.i.i.i.i.i.i149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150.preheader

.lr.ph.i.i.i.i.i.i.i150.preheader:                ; preds = %.noexc159
  %i.bx = add i64 %i.bk, -8
  %i.by = sub i64 %i.bx, %i.bl                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check866 = icmp ult i64 %i.by, 152
  br i1 %min.iters.check866, label %.lr.ph.i.i.i.i.i.i.i150.preheader881, label %vector.memcheck859

vector.memcheck859:                               ; preds = %.lr.ph.i.i.i.i.i.i.i150.preheader
  %i.cb = add i64 %i.bk, -8
  %i.cc = sub i64 %i.cb, %i.bl
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %scevgep860 = getelementptr i8, ptr %i.bu, i64 %i.ce
  %scevgep861 = getelementptr i8, ptr %i.bj, i64 %i.ce
  %bound0862 = icmp ult ptr %i.bu, %scevgep861
  %bound1863 = icmp ult ptr %i.bj, %scevgep860
  %found.conflict864 = and i1 %bound0862, %bound1863
  br i1 %found.conflict864, label %.lr.ph.i.i.i.i.i.i.i150.preheader881, label %vector.ph867

vector.ph867:                                     ; preds = %vector.memcheck859
  %n.vec869 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec869, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bj, i64 %i.cf
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph867
  %index871 = phi i64 [ 0, %vector.ph867 ], [ %index.next876, %vector.body870 ] ; 2 uses
  %i.ci = shl i64 %index871, 3                    ; 2 uses
  %next.gep872 = getelementptr i8, ptr %i.bu, i64 %i.ci ; 2 uses
  %next.gep873 = getelementptr i8, ptr %i.bj, i64 %i.ci ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.cj = getelementptr i8, ptr %next.gep873, i64 16
  %wide.load874 = load <2 x i64>, ptr %next.gep873, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %wide.load875 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %i.ck = getelementptr i8, ptr %next.gep872, i64 16
  store <2 x i64> %wide.load874, ptr %next.gep872, align 8, !tbaa !19, !alias.scope !1111, !noalias !1108
  store <2 x i64> %wide.load875, ptr %i.ck, align 8, !tbaa !19, !alias.scope !1111, !noalias !1108
  %i.cl = getelementptr i8, ptr %next.gep873, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep873, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  store <2 x ptr> splat (ptr null), ptr %i.cl, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %index.next876 = add nuw i64 %index871, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next876, %n.vec869
  br i1 %i.cm, label %middle.block877, label %vector.body870, !llvm.loop !1113

middle.block877:                                  ; preds = %vector.body870
  %cmp.n878 = icmp eq i64 %i.ca, %n.vec869
  br i1 %cmp.n878, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150.preheader881

.lr.ph.i.i.i.i.i.i.i150.preheader881:             ; preds = %vector.memcheck859, %.lr.ph.i.i.i.i.i.i.i150.preheader, %middle.block877
  %.012.i.i.i.i.i.i.i151.ph = phi ptr [ %i.bu, %vector.memcheck859 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i150.preheader ], [ %i.cg, %middle.block877 ]
  %.0911.i.i.i.i.i.i.i152.ph = phi ptr [ %i.bj, %vector.memcheck859 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i150.preheader ], [ %i.ch, %middle.block877 ]
  br label %.lr.ph.i.i.i.i.i.i.i150

.lr.ph.i.i.i.i.i.i.i150:                          ; preds = %.lr.ph.i.i.i.i.i.i.i150.preheader881, %.lr.ph.i.i.i.i.i.i.i150
  %.012.i.i.i.i.i.i.i151 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i150 ], [ %.012.i.i.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i.i.i150.preheader881 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i152 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i150 ], [ %.0911.i.i.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i.i.i150.preheader881 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i.i.i152, align 8, !tbaa !19, !alias.scope !1106, !noalias !1103
  store i64 %i.cn, ptr %.012.i.i.i.i.i.i.i151, align 8, !tbaa !19, !alias.scope !1103, !noalias !1106
  store ptr null, ptr %.0911.i.i.i.i.i.i.i152, align 8, !tbaa !19, !alias.scope !1106, !noalias !1103
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i152, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i151, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq ptr %i.co, %i.be
  br i1 %.not.i.i.i.i.i.i.i153, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150, !llvm.loop !1114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154: ; preds = %.lr.ph.i.i.i.i.i.i.i150, %middle.block877, %.noexc159
  %.0.lcssa.i.i.i.i.i.i.i155 = phi ptr [ %i.bu, %.noexc159 ], [ %i.cg, %middle.block877 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i150 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i155, i64 8 ; 2 uses
  %.not.i23.i.i.i156 = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i156, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !36
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cr, ptr %i.bf, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #23
  %.pre669.pre = load ptr, ptr %39, align 8, !tbaa !391 ; 3 uses
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !36
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cs, ptr %i.bf, align 8, !tbaa !40
  %.not.i161 = icmp eq ptr %.pre669.pre, null
  br i1 %.not.i161, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ct = load ptr, ptr %.pre669.pre, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(209) %.pre669.pre) #21, !inline_history !393
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.cw = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #22
          to label %bb.u unwind label %bb.ao      ; 11 uses

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 8, ptr %i.cx, align 8, !tbaa !1115, !noalias !1134
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !166, !noalias !1134
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 0, ptr %i.da, align 8, !tbaa !168, !noalias !1134
  store i8 0, ptr %i.cz, align 8, !tbaa !30, !noalias !1134
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr null, ptr %i.db, align 8, !tbaa !1137, !noalias !1134
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i64 -1, ptr %i.dc, align 8, !tbaa !513, !noalias !1134
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, i8 0, i64 40, i1 false), !noalias !1134
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb13EmptyTableRefE, i32 0, i32 0, i32 2), ptr %i.cw, align 8, !tbaa !23, !noalias !1134
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.v unwind label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !790 ; 3 uses
  store ptr %i.cw, ptr %i.df, align 8, !tbaa !790
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.dg) #21, !inline_history !792
  br label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  %i.dk = load ptr, ptr %37, align 8, !tbaa !711  ; 4 uses
  store ptr null, ptr %37, align 8, !tbaa !711
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !805 ; 3 uses
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !805
  %.not.i.i.i.i.i165 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i165, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.w
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dn) #21, !inline_history !806
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.w
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %i.dt = load ptr, ptr %36, align 8, !tbaa !695
  store ptr null, ptr %36, align 8, !tbaa !695
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !695 ; 3 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !695
  %.not.i.i.i.i.i167 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i167, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.x
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(128) %i.du) #21, !inline_history !696
  br label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  store i8 4, ptr %i.dz, align 8, !tbaa !683
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.z unwind label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72 ; 2 uses
  %i.ec = load ptr, ptr %33, align 8, !tbaa !19
  store ptr null, ptr %33, align 8, !tbaa !19
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !19
  %.not.i.i.i.i.i168 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i168, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.z
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(56) %i.ed) #21, !inline_history !25
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.eh = invoke noundef zeroext i8 @_ZN6duckdb24OperatorToExpressionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ei = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store i8 %i.eh, ptr %i.ej, align 8, !tbaa !703
  %i.ek = invoke noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.em = load i32, ptr %i.el, align 8, !tbaa !666
  invoke void @_ZN6duckdb11Transformer16SetQueryLocationERNS_16ParsedExpressionEi(ptr noundef nonnull align 8 dereferenceable(56) %i.ek, i32 noundef %i.em)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.en = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !703
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.er = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.95, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gw unwind label %bb.aq

bb.ai:                                            ; preds = %.noexc133, %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214

bb.aj:                                            ; preds = %.noexc135, %bb.k
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211

bb.ak:                                            ; preds = %bb.l
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread: ; preds = %bb.n
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207

.body141.thread:                                  ; preds = %bb.o
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204

bb.al:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av, %bb.au, %bb.at, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.y, %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %.noexc144
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183

bb.am:                                            ; preds = %bb.q
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174

bb.an:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146, %bb.t
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i169 = icmp eq ptr %i.bc, null
  br i1 %.not.i169, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170: ; preds = %bb.an
  %i.fa = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(56) %i.bc) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171: ; preds = %bb.an, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170
  %i.fd = load ptr, ptr %39, align 8, !tbaa !391  ; 3 uses
  %.not.i172 = icmp eq ptr %i.fd, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i173

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i173: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(209) %i.fd) #21, !inline_history !393
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174: ; preds = %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i173, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171, %bb.am
  %.pn112 = phi { ptr, i32 } [ %i.ey, %bb.am ], [ %i.ez, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171 ], [ %i.ez, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183

end_hunk_3
begin_hunk_4_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %bb.ax
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !23, !noalias !1138
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1138
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(56) %i.gf) #21, !noalias !1138, !inline_history !707
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %bb.ax
  %i.gj = load ptr, ptr %27, align 8, !tbaa !19, !noalias !1138 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.gj, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !23, !noalias !1138
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !1138
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(56) %i.gj) #21, !noalias !1138, !inline_history !707
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ay:                                            ; preds = %.noexc185
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %28, align 8, !tbaa !19, !noalias !1138 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.go, null
  br i1 %.not.i7.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i: ; preds = %bb.ay
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !23, !noalias !1138
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !1138
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(56) %i.go) #21, !noalias !1138, !inline_history !707
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i, %bb.ay
  %i.gs = load ptr, ptr %27, align 8, !tbaa !19, !noalias !1138 ; 3 uses
  %.not.i10.i = icmp eq ptr %i.gs, null
  br i1 %.not.i10.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !23, !noalias !1138
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !1138
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(56) %i.gs) #21, !noalias !1138, !inline_history !707
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i
  call void @_ZdlPv(ptr noundef nonnull %i.gd) #23, !noalias !1138
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183

_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183

bb.ba:                                            ; preds = %bb.as
  %i.gx = load ptr, ptr %35, align 8, !tbaa !677
  store ptr null, ptr %35, align 8, !tbaa !677
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit
  %storemerge656 = phi ptr [ %i.gx, %bb.ba ], [ %i.gd, %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit ]
  store ptr %storemerge656, ptr %0, align 8, !tbaa !7
  %i.gy = load ptr, ptr %38, align 8, !tbaa !36   ; 3 uses
  %i.gz = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gy, %i.gz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.he, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.gy, %bb.bb ] ; 2 uses
  %i.ha = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i189 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i189, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i190

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i190: ; preds = %.lr.ph.i.i.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(56) %i.ha) #21, !inline_history !398
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i190, %.lr.ph.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.he, %i.gz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %38, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.bb
  %i.hf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gy, %bb.bb ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hf) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.hg = load ptr, ptr %37, align 8, !tbaa !711  ; 3 uses
  %.not.i191 = icmp eq ptr %i.hg, null
  br i1 %.not.i191, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(240) %i.hg) #21, !inline_history !807
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.hk = load ptr, ptr %36, align 8, !tbaa !695  ; 3 uses
  %.not.i192 = icmp eq ptr %i.hk, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !23
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(128) %i.hk) #21, !inline_history !697
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.ho = load ptr, ptr %35, align 8, !tbaa !677  ; 3 uses
  %.not.i193 = icmp eq ptr %i.ho, null
  br i1 %.not.i193, label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !23
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(81) %i.ho) #21, !inline_history !810
  br label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.hs = load ptr, ptr %34, align 8, !tbaa !19   ; 3 uses
  %.not.i194 = icmp eq ptr %i.hs, null
  br i1 %.not.i194, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195: ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(56) %i.hs) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196: ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.hw = load ptr, ptr %33, align 8, !tbaa !19   ; 3 uses
  %.not.i197 = icmp eq ptr %i.hw, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !23
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(56) %i.hw) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gu

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183: ; preds = %bb.az, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182, %bb.ap, %bb.ao, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174, %bb.al
  %.pn116.pn = phi { ptr, i32 } [ %.pn116614, %bb.ar ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ex, %bb.al ], [ %i.fh, %bb.ao ], [ %.pn112, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174 ], [ %i.fi, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180 ], [ %i.fm, %bb.ap ], [ %i.fm, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182 ], [ %i.gw, %bb.az ], [ %i.gn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.ia = load ptr, ptr %37, align 8, !tbaa !711  ; 3 uses
  %.not.i200 = icmp eq ptr %i.ia, null
  br i1 %.not.i200, label %.body141, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !23
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(240) %i.ia) #21, !inline_history !807
  br label %.body141

.body141:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183, %bb.p
  %.pn116.pn.pn.ph = phi { ptr, i32 } [ %.pn116.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201 ], [ %.pn116.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183 ], [ %i.au, %bb.p ] ; 2 uses
  %.pr = load ptr, ptr %36, align 8, !tbaa !695   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %.not.i203 = icmp eq ptr %.pr, null
  br i1 %.not.i203, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, label %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge

.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge: ; preds = %.body141
  %.pre670 = load ptr, ptr %.pr, align 8, !tbaa !23
  br label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204: ; preds = %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge, %.body141.thread
  %i.ie = phi ptr [ getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), %.body141.thread ], [ %.pre670, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %.pn116.pn.pn617 = phi { ptr, i32 } [ %i.ew, %.body141.thread ], [ %.pn116.pn.pn.ph, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %i.if = phi ptr [ %i.ag, %.body141.thread ], [ %.pr, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #21, !inline_history !697
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204, %.body141
  %.pn116.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn116.pn.pn617, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204 ], [ %.pn116.pn.pn.ph, %.body141 ] ; 2 uses
  %.pr619 = load ptr, ptr %35, align 8, !tbaa !677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %.not.i206 = icmp eq ptr %.pr619, null
  br i1 %.not.i206, label %.body, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205
  %.pn116.pn.pn.pn622 = phi { ptr, i32 } [ %i.ev, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ], [ %.pn116.pn.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ]
  %i.ii = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ], [ %.pr619, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ] ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(81) %i.ii) #21, !inline_history !810
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, %bb.ak, %bb.m
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.eu, %bb.ak ], [ %.pn116.pn.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ], [ %.pn116.pn.pn.pn622, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.im = load ptr, ptr %34, align 8, !tbaa !19   ; 3 uses
  %.not.i209 = icmp eq ptr %i.im, null
  br i1 %.not.i209, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210: ; preds = %.body
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(56) %i.im) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210, %.body, %bb.aj
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.aj ], [ %.pn116.pn.pn.pn.pn, %.body ], [ %.pn116.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.iq = load ptr, ptr %33, align 8, !tbaa !19   ; 3 uses
  %.not.i212 = icmp eq ptr %i.iq, null
  br i1 %.not.i212, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !23
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(56) %i.iq) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, %bb.ai
  %.pn116.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.ai ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211 ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gv

bb.bd:                                            ; preds = %bb.e
  invoke void @_ZN6duckdb11Transformer21TransformInExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN17duckdb_libpgquery7PGAExprE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.gu unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.bf:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !531 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %i.iw, ptr %26, align 8, !noalias !1141
  %.not652 = icmp eq ptr %i.iw, null
  br i1 %.not652, label %.thread803, label %bb.bg

.thread803:                                       ; preds = %bb.bf
  store ptr null, ptr %43, align 8, !tbaa !7, !alias.scope !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.ix = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %.noexc215 unwind label %bb.bs, !inline_history !22

.noexc215:                                        ; preds = %bb.bg
  %i.iz = load ptr, ptr %26, align 8, !tbaa !20, !noalias !1141
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.iz)
          to label %bb.bh unwind label %bb.bs, !inline_history !22

bb.bh:                                            ; preds = %.noexc215
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %42, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 3 uses
  %.phi.trans.insert667 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %.pre668 = load ptr, ptr %.phi.trans.insert667, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %.not.i.i218 = icmp eq ptr %.pre, %.pre668
  br i1 %.not.i.i218, label %bb.bi, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread: ; preds = %bb.bh
  %i.jc = load i64, ptr %43, align 8, !tbaa !19
  store i64 %i.jc, ptr %.pre, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.jd, ptr %i.ja, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236

bb.bi:                                            ; preds = %.thread803, %bb.bh
  %i.je = phi ptr [ %i.iy, %.thread803 ], [ %i.jb, %bb.bh ] ; 3 uses
  %i.jf = phi ptr [ %i.ix, %.thread803 ], [ %i.ja, %bb.bh ] ; 3 uses
  %i.jg = phi ptr [ null, %.thread803 ], [ %.pre668, %bb.bh ] ; 3 uses
  %i.jh = load ptr, ptr %42, align 8, !tbaa !36   ; 10 uses
  %i.ji = ptrtoint ptr %i.jg to i64               ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.bj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc231 unwind label %bb.bt

.noexc231:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219: ; preds = %bb.bi
  %i.jm = ashr exact i64 %i.jk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i220 = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i220, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 1152921504606846975)
  %i.jq = select i1 %i.jo, i64 1152921504606846975, i64 %i.jp ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.jr = shl nuw nsw i64 %i.jq, 3
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #22
          to label %.noexc232 unwind label %bb.bt ; 10 uses

.noexc232:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jk
  %i.ju = load i64, ptr %43, align 8, !tbaa !19
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !19
  store ptr null, ptr %43, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i222 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not10.i.i.i.i.i.i.i222, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader

.lr.ph.i.i.i.i.i.i.i223.preheader:                ; preds = %.noexc232
  %i.jv = add i64 %i.ji, -8
  %i.jw = sub i64 %i.jv, %i.jj                    ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check822 = icmp ult i64 %i.jw, 152
  br i1 %min.iters.check822, label %.lr.ph.i.i.i.i.i.i.i223.preheader884, label %vector.memcheck815

vector.memcheck815:                               ; preds = %.lr.ph.i.i.i.i.i.i.i223.preheader
  %i.jz = add i64 %i.ji, -8
  %i.ka = sub i64 %i.jz, %i.jj
  %i.kb = and i64 %i.ka, -8
  %i.kc = add i64 %i.kb, 8                        ; 2 uses
  %scevgep816 = getelementptr i8, ptr %i.js, i64 %i.kc
  %scevgep817 = getelementptr i8, ptr %i.jh, i64 %i.kc
  %bound0818 = icmp ult ptr %i.js, %scevgep817
  %bound1819 = icmp ult ptr %i.jh, %scevgep816
  %found.conflict820 = and i1 %bound0818, %bound1819
  br i1 %found.conflict820, label %.lr.ph.i.i.i.i.i.i.i223.preheader884, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck815
  %n.vec825 = and i64 %i.jy, 4611686018427387900  ; 3 uses
  %i.kd = shl i64 %n.vec825, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.js, i64 %i.kd  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jh, i64 %i.kd
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph823
  %index827 = phi i64 [ 0, %vector.ph823 ], [ %index.next832, %vector.body826 ] ; 2 uses
  %i.kg = shl i64 %index827, 3                    ; 2 uses
  %next.gep828 = getelementptr i8, ptr %i.js, i64 %i.kg ; 2 uses
  %next.gep829 = getelementptr i8, ptr %i.jh, i64 %i.kg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.kh = getelementptr i8, ptr %next.gep829, i64 16
  %wide.load830 = load <2 x i64>, ptr %next.gep829, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %wide.load831 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %i.ki = getelementptr i8, ptr %next.gep828, i64 16
  store <2 x i64> %wide.load830, ptr %next.gep828, align 8, !tbaa !19, !alias.scope !1152, !noalias !1149
  store <2 x i64> %wide.load831, ptr %i.ki, align 8, !tbaa !19, !alias.scope !1152, !noalias !1149
  %i.kj = getelementptr i8, ptr %next.gep829, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep829, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  store <2 x ptr> splat (ptr null), ptr %i.kj, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %index.next832 = add nuw i64 %index827, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next832, %n.vec825
  br i1 %i.kk, label %middle.block833, label %vector.body826, !llvm.loop !1154

middle.block833:                                  ; preds = %vector.body826
  %cmp.n834 = icmp eq i64 %i.jy, %n.vec825
  br i1 %cmp.n834, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader884
end_hunk_4
