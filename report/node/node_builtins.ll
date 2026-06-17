inline.NumInlined: 4126
inline.NumDeleted: 1869
begin_hunk_0_@_ZN4node8builtins13BuiltinLoader16LookupAndCompileEN2v85LocalINS2_7ContextEEEPKNS0_13BuiltinSourceEPNS_5RealmE:bb.a

_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit97: ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.cn, label %bb.ao, label %_ZN2v820EscapableHandleScope6EscapeINS_4DataEEENS_5LocalIT_EES5_.exit

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bg, ptr %11, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <4 x i32> <i32 0, i32 0, i32 1, i32 -1>, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  call void @_ZNK2v812ScriptOrigin24VerifyHostDefinedOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %i.bj, ptr %12, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.0.0.copyload.i83 = load ptr, ptr %11, align 8
  store ptr %.sroa.0.0.copyload.i83, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cz = load <2 x i32>, ptr %i.cu, align 8
  store <2 x i32> %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.cv, align 8
  store i32 %.sroa.0.0.copyload.i85, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dc = load <2 x ptr>, ptr %i.cw, align 8
  store <2 x ptr> %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  store ptr %i.ai, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.de, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 -1, i64 16, i1 false)
  %i.dg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, i64 24), align 8
  %.not.not.i.i = icmp eq i64 %i.dg, 0
  %i.dh = load i32, ptr %i.bp, align 8            ; 4 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, i64 16), %bb.y ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.di = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.di, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dh, %i.dk
  br i1 %i.dl, label %_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit, label %.preheader, !llvm.loop !86

bb.aa:                                            ; preds = %bb.y
  %i.dm = sext i32 %i.dh to i64
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, i64 8), align 8 ; 2 uses
  %i.do = urem i64 %i.dm, %i.dn                   ; 2 uses
  %i.dp = load ptr, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i98, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.dr, align 8            ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp eq i32 %i.dh, %i.du
  br i1 %i.dv, label %_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit, label %.lr.ph.i.i.i.i

bb.ac:                                            ; preds = %bb.ad
  %i.dw = icmp eq i32 %i.dh, %i.dz
  br i1 %i.dw, label %_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !87

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i = phi ptr [ %i.dx, %bb.ac ], [ %i.ds, %bb.ab ]
  %i.dx = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = urem i64 %i.ea, %i.dn
  %.not19.i.i.i.i = icmp eq i64 %i.eb, %i.do
  br i1 %.not19.i.i.i.i, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !87

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ad
  br label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.aa
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node8builtins13BuiltinLoader16LookupAndCompileEN2v85LocalINS2_7ContextEEEPKNS0_13BuiltinSourceEPNS_5RealmEE20error_and_abort_args) #25
  call void @abort() #27
  unreachable

_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit: ; preds = %bb.ac, %bb.z, %bb.ab
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.z ], [ %i.ds, %bb.ab ], [ %i.dx, %bb.ac ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = load ptr, ptr %i.ec, align 8            ; 3 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 2 uses
  %i.ej = ashr exact i64 %i.ei, 5                 ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, 1152921504606846975
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #27
  unreachable

bb.af:                                            ; preds = %_ZNKSt13unordered_mapIN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_SB_EEE4findERSH_.exit
  %.not183 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not183, label %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.af
  %i.el = ashr exact i64 %i.ei, 2
  %i.em = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #26 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ej
  %.pre208 = load ptr, ptr %i.ec, align 8
  %.pre209 = load ptr, ptr %i.ed, align 8
  br label %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit

_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit:  ; preds = %bb.af, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %i.eo = phi ptr [ %.pre209, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %i.ee, %bb.af ] ; 2 uses
  %i.ep = phi ptr [ %.pre208, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %i.ef, %bb.af ] ; 2 uses
  %.sroa.0128.1 = phi ptr [ %i.em, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.af ] ; 4 uses
  %.sroa.17.1 = phi ptr [ %i.en, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.af ] ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.eo
  br i1 %i.eq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit
  %.sroa.0128.0.lcssa = phi ptr [ %.sroa.0128.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ], [ %.sroa.0128.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.0128.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ]
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ]
  %i.er = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.es = ptrtoint ptr %.sroa.0128.0.lcssa to i64 ; 2 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = call ptr @_ZN2v814ScriptCompiler15CompileFunctionENS_5LocalINS_7ContextEEEPNS0_6SourceEmPNS1_INS_6StringEEEmPNS1_INS_6ObjectEEENS0_14CompileOptionsENS0_13NoCacheReasonE(ptr %1, ptr noundef nonnull %12, i64 noundef %i.eu, ptr noundef %.sroa.0128.0.lcssa, i64 noundef 0, ptr noundef null, i32 noundef %.0177, i32 noundef 0) #25 ; 2 uses
  %.not184 = icmp ne ptr %i.ev, null              ; 2 uses
  %brmerge.not = select i1 %.not184, i1 %.not, i1 false
  br i1 %brmerge.not, label %bb.al, label %bb.am

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit
  %.sroa.0121.0197 = phi ptr [ %i.ge, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ %i.ep, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ] ; 3 uses
  %.sroa.17.0196 = phi ptr [ %.sroa.17.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ %.sroa.17.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ] ; 5 uses
  %.sroa.10.0195 = phi ptr [ %.sroa.10.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ %.sroa.0128.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ] ; 3 uses
  %.sroa.0128.0194 = phi ptr [ %.sroa.0128.2, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ %.sroa.0128.1, %_ZN2v811LocalVectorINS_6StringEE7reserveEm.exit ] ; 8 uses
  %i.ew = load ptr, ptr %.sroa.0121.0197, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0121.0197, i64 8
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.d, ptr noundef %i.ew, i32 noundef 0, i32 noundef %i.ez) #25 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ag, label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit102, !prof !5

bb.ag:                                            ; preds = %.lr.ph
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit102

_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit102: ; preds = %.lr.ph, %bb.ag
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.10.0195, %.sroa.17.0196
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit102
  store i64 %i.fc, ptr %.sroa.10.0195, align 8
  br label %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit

bb.ai:                                            ; preds = %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit102
  %i.fd = ptrtoint ptr %.sroa.17.0196 to i64      ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.0128.0194 to i64    ; 3 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.aj, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ai
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i.i.i.i103 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i103)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #26 ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  store i64 %i.fc, ptr %i.fo, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0128.0194, %.sroa.17.0196
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fp = ptrtoaddr ptr %i.fn to i64
  %13 = add i64 %i.fd, -8
  %14 = sub i64 %13, %i.fe                        ; 2 uses
  %i.fq = lshr i64 %14, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 24
  %i.fs = sub i64 %i.fp, %i.fe
  %diff.check = icmp ult i64 %i.fs, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader256, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fr, 4611686018427387900     ; 3 uses
  %i.ft = shl i64 %n.vec, 3                       ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fn, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %.sroa.0128.0194, i64 %i.ft
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fn, i64 %i.fw ; 2 uses
  %next.gep253 = getelementptr i8, ptr %.sroa.0128.0194, i64 %i.fw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.fx = getelementptr i8, ptr %next.gep253, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep253, align 8, !alias.scope !91, !noalias !88
  %wide.load254 = load <2 x i64>, ptr %i.fx, align 8, !alias.scope !91, !noalias !88
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !88, !noalias !91
  store <2 x i64> %wide.load254, ptr %i.fy, align 8, !alias.scope !88, !noalias !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader256

.lr.ph.i.i.i.i.i.i.i.preheader256:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0128.0194, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader256, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader256 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader256 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ga = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !91, !noalias !88
  store i64 %i.ga, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !88, !noalias !91
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gb, %.sroa.17.0196
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fn, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.fu, %middle.block ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0128.0194, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0194, i64 noundef %i.ff) #28
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  br label %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.ah, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.0128.2 = phi ptr [ %i.fn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0128.0194, %bb.ah ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.0195, %bb.ah ]
  %.sroa.17.2 = phi ptr [ %i.gd, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.0196, %bb.ah ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0121.0197, i64 32 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.eo
  br i1 %i.gf, label %._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %._crit_edge
  %i.gg = load ptr, ptr %i.dd, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = load i8, ptr %i.gh, align 4, !range !26, !noundef !77
  %i.gj = xor i8 %i.gi, 1
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.al
  %.1 = phi i8 [ %i.gj, %bb.al ], [ 0, %._crit_edge ]
  %.not.i.i.i.i104 = icmp eq ptr %.sroa.0128.0.lcssa, null
  br i1 %.not.i.i.i.i104, label %_ZN2v811LocalVectorINS_6StringEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gk = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.gl = sub i64 %i.gk, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0.lcssa, i64 noundef %i.gl) #28
  br label %_ZN2v811LocalVectorINS_6StringEED2Ev.exit

_ZN2v811LocalVectorINS_6StringEED2Ev.exit:        ; preds = %bb.am, %bb.an
  %i.gm = load ptr, ptr %i.de, align 8            ; 3 uses
  %.not.i105 = icmp eq ptr %i.gm, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit107, label %_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i106

_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i106: ; preds = %_ZN2v811LocalVectorINS_6StringEED2Ev.exit
  call void @_ZN2v814ScriptCompiler20ConsumeCodeCacheTaskD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gm) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef 8) #28
  br label %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit107

_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit107: ; preds = %_ZN2v811LocalVectorINS_6StringEED2Ev.exit, %_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i106
  %i.gn = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i108 = icmp eq ptr %i.gn, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110, label %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i109

_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i109: ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit107
  call void @_ZN2v814ScriptCompiler10CachedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.gn) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef 24) #28
  br label %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110

_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110: ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit107, %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %.not184, label %bb.ao, label %_ZN2v820EscapableHandleScope6EscapeINS_4DataEEENS_5LocalIT_EES5_.exit

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110, %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit97
  %.sroa.0149.2 = phi ptr [ %i.cm, %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit97 ], [ %i.ev, %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110 ] ; 2 uses
  %.2 = phi i8 [ %.071, %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit97 ], [ %.1, %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit110 ]
  %i.go = trunc nuw i8 %.2 to i1                  ; 3 uses
  %i.gp = icmp eq ptr %3, null                    ; 2 uses
  br i1 %i.gp, label %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.go, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.gr = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.gs = extractvalue { ptr, ptr } %i.gr, 1      ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i111, label %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gt = extractvalue { ptr, ptr } %i.gr, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.gq, ptr %5, align 8
  %i.gu = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef %i.gt, ptr noundef nonnull %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit

bb.as:                                            ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.gw = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.gx = extractvalue { ptr, ptr } %i.gw, 1      ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i6.i, label %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gy = extractvalue { ptr, ptr } %i.gw, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.gv, ptr %4, align 8
  %i.gz = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.gv, ptr noundef %i.gy, ptr noundef nonnull %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit

_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit: ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  br i1 %.not, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr %i.bo, ptr %i.c, align 8
  %i.ha = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process18enabled_debug_listE, i64 76), align 1, !range !26, !noundef !77
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.av, label %_ZN4node5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRA12_S9_EEEvPNS_16EnabledDebugListENS_13DebugCategoryESA_DpOT_.exit, !prof !34

bb.av:                                            ; preds = %bb.au
  %.str.40..str.41 = select i1 %i.go, ptr @.str.40, ptr @.str.41
  %i.hc = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRA12_S9_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.hc, i64 25, ptr nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %.str.40..str.41) #32
  br label %_ZN4node5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRA12_S9_EEEvPNS_16EnabledDebugListENS_13DebugCategoryESA_DpOT_.exit

_ZN4node5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRA12_S9_EEEvPNS_16EnabledDebugListENS_13DebugCategoryESA_DpOT_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4node5DebugIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRA12_S9_EEEvPNS_16EnabledDebugListENS_13DebugCategoryESA_DpOT_.exit, %_ZN4node8builtins13BuiltinLoader12RecordResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6ResultEPNS_5RealmE.exit
  %or.cond.not = or i1 %i.gp, %i.go
  br i1 %or.cond.not, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 216
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4736
  %i.hi = load i8, ptr %i.hh, align 8, !range !26, !noundef !77
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4node8builtins13BuiltinLoader13SaveCodeCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v85LocalINSA_4DataEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0149.2)
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.hk = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %.sroa.0149.2) #25
  br label %_ZN2v820EscapableHandleScope6EscapeINS_4DataEEENS_5LocalIT_EES5_.exit

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRPKcSB_EEES6_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.bk = extractvalue { i8, i64 } %i.bh, 1
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bk)
  %i.bl = load i64, ptr %i.z, align 8
  %i.bm = urem i64 %i.y, %i.bl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge18
  %.0.i19 = phi i64 [ %i.bm, %bb.i ], [ %i.ab, %.critedge18 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.y, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %0, align 8               ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0.i19 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.a, align 8
  %i.bs = load ptr, ptr %i.bp, align 8
  store ptr %i.a, ptr %i.bs, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  store ptr %i.bu, ptr %i.a, align 8
  store ptr %i.a, ptr %i.bt, align 8
  %.not11.i.i = icmp eq ptr %i.bu, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %i.z, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = urem i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.by
  store ptr %i.a, ptr %i.bz, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = phi ptr [ %.pre, %bb.m ], [ %i.bo, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i19
  store ptr %i.bt, ptr %i.cb, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.cc = load i64, ptr %i.c, align 8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.c, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.e
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.052.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.e ], [ %.sroa.025.052, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.cf) #25
  store ptr null, ptr %i.ce, align 8
  br label %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i

_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i: ; preds = %bb.p, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N2v86GlobalINS9_6ModuleEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  %i.ch = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8
  %i.cl = add i64 %i.ck, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN2v814PersistentBaseINS_6ModuleEE5ResetEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #28
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2v86GlobalINS8_6ModuleEEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.o, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.sroa.4.044 = phi i8 [ 1, %bb.o ], [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ]
  %.sroa.032.042 = phi ptr [ %i.a, %bb.o ], [ %.sroa.032.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINSA_6ModuleEEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.032.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2v86GlobalINS7_6ModuleEEEEC2IRPKcSA_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISG_SH_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.88) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  store i64 %i.d, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.a, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %2, align 8                ; 2 uses
  store ptr %i.o, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  tail call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #25
  store ptr null, ptr %2, align 8
  br label %_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit

_ZN2v86GlobalINS_6ModuleEEC2EOS2_.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %bb.j
  ret void
}

declare void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not46 = icmp ult i64 %i.l, %i.d
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %5, 56
  %i.t = sub i64 %i.b, %i.c
  %diff.check152 = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec157, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.z, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.aa, label %middle.block165, label %vector.body158, !llvm.loop !397

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.s, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.v, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.w, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.08.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %i.i
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !398

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.e, 6
  %i.ar = sub i64 %i.m, %i.c
  %diff.check170 = icmp ult i64 %i.ar, 32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.as = and i64 %i.e, 3
  %i.at = shl i64 %n.vec175, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.ay, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.az, label %middle.block183, label %vector.body176, !llvm.loop !399

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.e, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.as, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.au, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.ba = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ba, ptr %.0811.i.i.i.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !400

_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.bg, -8
  %6 = add i64 %i.k, %i.c
  %7 = sub i64 %i.bh, %6                          ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.m, %i.c
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bo ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bs, ptr %.011.i.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !402

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKN2v85LocalINS0_4NameEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub nuw nsw i64 %i.e, %i.o
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx ; 6 uses
  store ptr %i.by, ptr %i.h, align 8
  %i.bz = icmp eq ptr %1, %i.i
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %8 = add i64 %i.k, -8
  %9 = sub i64 %8, %i.m                           ; 2 uses
  %i.ca = lshr i64 %9, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %9, 104
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.cc = add i64 %i.d, %i.bw
  %i.cd = sub i64 %i.cc, %i.k
  %diff.check115 = icmp ult i64 %i.cd, 32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec120, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.cj, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ck, label %middle.block128, label %vector.body121, !llvm.loop !403

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cb, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.by, %vector.memcheck114 ], [ %i.by, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cf, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cg, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cl, ptr %.08.i.i.i.i.i49, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.co = icmp eq ptr %i.cm, %i.i
  br i1 %i.co, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !404

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cp = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.by, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cr, 6
  %i.ct = sub i64 %i.m, %i.c
  %diff.check133 = icmp ult i64 %i.ct, 32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cu = and i64 %i.cr, 3
  %i.cv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cy = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cy ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.da, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.db, label %middle.block146, label %vector.body139, !llvm.loop !405

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cu, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cw, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dc, ptr %.0811.i.i.i.i.i56, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !406

bb.h:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8               ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #26
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dt = phi ptr [ %i.ds, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = icmp eq ptr %i.dh, %1
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit
  %i.dv = ptrtoaddr ptr %i.dt to i64
  %i.dw = add i64 %i.a, -8
  %i.dx = sub i64 %i.dw, %i.di                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.dx, 56
  %i.ea = sub i64 %i.dv, %i.di
  %diff.check189 = icmp ult i64 %i.ea, 32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec194, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ee = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.eg, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.eh, label %middle.block202, label %vector.body195, !llvm.loop !407

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dz, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ec, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ed, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.ei, ptr %.08.i.i.i.i.i60, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %1
  br i1 %i.el, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !408

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block202 ], [ %i.ek, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %10 = add i64 %i.b, -8
  %11 = sub i64 %10, %i.c                         ; 2 uses
  %i.em = lshr i64 %11, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eo = sub i64 %.0.lcssa.i.i.i.i.i62207, %i.c
  %diff.check208 = icmp ult i64 %i.eo, 32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec213, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.es = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.es ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.eu, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ev, label %middle.block221, label %vector.body214, !llvm.loop !409

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.en, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eq, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.er, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.ew = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.ew, ptr %.011.i.i.i.i65, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !410

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.eq, %middle.block221 ], [ %i.ey, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ez = icmp eq ptr %1, %i.i
  br i1 %i.ez, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %i.fa = add i64 %i.k, -8
  %i.fb = sub i64 %i.fa, %i.a                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fb, 56
  %i.fe = sub i64 %.lcssa109226, %i.a
  %diff.check227 = icmp ult i64 %i.fe, 32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %.lcssa109, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.ff
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fi = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fi ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fk, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fl, label %middle.block240, label %vector.body233, !llvm.loop !411

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fd, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fg, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fh, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fm, ptr %.08.i.i.i.i.i71, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.i
  br i1 %i.fp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !412

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_4NameEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fg, %middle.block240 ], [ %i.fo, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fq = load ptr, ptr %i.f, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.fs) #28
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dt, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ft, ptr %i.f, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_4NameEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_4NameEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_4NameEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not46 = icmp ult i64 %i.l, %i.d
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %5, 56
  %i.t = sub i64 %i.b, %i.c
  %diff.check152 = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec157, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.z, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.aa, label %middle.block165, label %vector.body158, !llvm.loop !413

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.s, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.v, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.w, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.08.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %i.i
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !414

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.e, 6
  %i.ar = sub i64 %i.m, %i.c
  %diff.check170 = icmp ult i64 %i.ar, 32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.as = and i64 %i.e, 3
  %i.at = shl i64 %n.vec175, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.ay, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.az, label %middle.block183, label %vector.body176, !llvm.loop !415

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.e, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.as, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.au, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.ba = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ba, ptr %.0811.i.i.i.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !416

_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.bg, -8
  %6 = add i64 %i.k, %i.c
  %7 = sub i64 %i.bh, %6                          ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.m, %i.c
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bo ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bs, ptr %.011.i.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !418

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub nuw nsw i64 %i.e, %i.o
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx ; 6 uses
  store ptr %i.by, ptr %i.h, align 8
  %i.bz = icmp eq ptr %1, %i.i
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %8 = add i64 %i.k, -8
  %9 = sub i64 %8, %i.m                           ; 2 uses
  %i.ca = lshr i64 %9, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %9, 104
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.cc = add i64 %i.d, %i.bw
  %i.cd = sub i64 %i.cc, %i.k
  %diff.check115 = icmp ult i64 %i.cd, 32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec120, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.cj, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ck, label %middle.block128, label %vector.body121, !llvm.loop !419

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cb, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.by, %vector.memcheck114 ], [ %i.by, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cf, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cg, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cl, ptr %.08.i.i.i.i.i49, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.co = icmp eq ptr %i.cm, %i.i
  br i1 %i.co, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !420

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cp = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.by, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cr, 6
  %i.ct = sub i64 %i.m, %i.c
  %diff.check133 = icmp ult i64 %i.ct, 32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cu = and i64 %i.cr, 3
  %i.cv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cy = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cy ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.da, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.db, label %middle.block146, label %vector.body139, !llvm.loop !421

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cu, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cw, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dc, ptr %.0811.i.i.i.i.i56, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !422

bb.h:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8               ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #27
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #26
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dt = phi ptr [ %i.ds, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = icmp eq ptr %i.dh, %1
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %i.dv = ptrtoaddr ptr %i.dt to i64
  %i.dw = add i64 %i.a, -8
  %i.dx = sub i64 %i.dw, %i.di                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.dx, 56
  %i.ea = sub i64 %i.dv, %i.di
  %diff.check189 = icmp ult i64 %i.ea, 32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec194, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ee = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.eg, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.eh, label %middle.block202, label %vector.body195, !llvm.loop !423

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dz, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ec, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ed, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.ei, ptr %.08.i.i.i.i.i60, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %1
  br i1 %i.el, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !424

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block202 ], [ %i.ek, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %10 = add i64 %i.b, -8
  %11 = sub i64 %10, %i.c                         ; 2 uses
  %i.em = lshr i64 %11, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eo = sub i64 %.0.lcssa.i.i.i.i.i62207, %i.c
  %diff.check208 = icmp ult i64 %i.eo, 32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec213, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.es = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.es ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.eu, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ev, label %middle.block221, label %vector.body214, !llvm.loop !425

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.en, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eq, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.er, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.ew = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.ew, ptr %.011.i.i.i.i65, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !426

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.eq, %middle.block221 ], [ %i.ey, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ez = icmp eq ptr %1, %i.i
  br i1 %i.ez, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %i.fa = add i64 %i.k, -8
  %i.fb = sub i64 %i.fa, %i.a                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fb, 56
  %i.fe = sub i64 %.lcssa109226, %i.a
  %diff.check227 = icmp ult i64 %i.fe, 32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %.lcssa109, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.ff
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fi = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fi ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fk, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fl, label %middle.block240, label %vector.body233, !llvm.loop !427

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fd, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fg, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fh, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fm, ptr %.08.i.i.i.i.i71, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.i
  br i1 %i.fp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !428

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fg, %middle.block240 ], [ %i.fo, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fq = load ptr, ptr %i.f, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.fs) #28
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dt, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ft, ptr %i.f, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_node_builtins.cc() #0 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @uv_mutex_init(ptr noundef nonnull @_ZN4node8builtins12_GLOBAL__N_127externalized_builtins_mutexE) #25
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %__cxx_global_var_init.21.exit, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #25
  tail call void @abort() #27
  unreachable

__cxx_global_var_init.21.exit:                    ; preds = %bb.a
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4node9MutexBaseINS_16LibuvMutexTraitsEED2Ev, ptr nonnull @_ZN4node8builtins12_GLOBAL__N_127externalized_builtins_mutexE, ptr nonnull @__dso_handle) #25 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 48), ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, align 8
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, i64 40), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN4node26StaticExternalByteResourceIttN2v86String22ExternalStringResourceEEESt14default_deleteISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SF_EEED2Ev, ptr nonnull @_ZN4node8builtins12_GLOBAL__N_128externalized_builtin_sourcesB5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
