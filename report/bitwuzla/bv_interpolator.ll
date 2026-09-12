Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bv_interpolator?download=true
inline.NumInlined: 2270
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4bzla2bv14BvInterpolator11label_lemmaERSt13unordered_mapIlNS_3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS5_EEERS2_IlNS4_10ClauseKindES7_S9_SaISA_ISB_SG_EEERS2_INS_4NodeES5_S6_ISL_ES8_ISL_ESaISA_IKSL_S5_EEERSO_:bb.a
.lr.ph.i.i.i.i.i.i248.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i248.prol, %.lr.ph.i.i.i.i.i.i248.preheader
  %.lcssa861.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.ib, %.lr.ph.i.i.i.i.i.i248.prol ]
  %.012.i.i.i.i.i.i249.unr = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.ib, %.lr.ph.i.i.i.i.i.i248.prol ]
  %.0911.i.i.i.i.i.i250.unr = phi ptr [ %.sroa.0382.6, %.lr.ph.i.i.i.i.i.i248.preheader ], [ %i.ia, %.lr.ph.i.i.i.i.i.i248.prol ]
  %i.ic = icmp ult i64 %i.hw, 56
  br i1 %i.ic, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252, label %.lr.ph.i.i.i.i.i.i248

.lr.ph.i.i.i.i.i.i248:                            ; preds = %.lr.ph.i.i.i.i.i.i248.prol.loopexit, %.lr.ph.i.i.i.i.i.i248
  %.012.i.i.i.i.i.i249 = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i248 ], [ %.012.i.i.i.i.i.i249.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i250 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i248 ], [ %.0911.i.i.i.i.i.i250.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.id = load i64, ptr %.0911.i.i.i.i.i.i250, align 8, !alias.scope !307, !noalias !306
  store i64 %i.id, ptr %.012.i.i.i.i.i.i249, align 8, !alias.scope !306, !noalias !307
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.ig = load i64, ptr %i.ie, align 8, !alias.scope !309, !noalias !308
  store i64 %i.ig, ptr %i.if, align 8, !alias.scope !308, !noalias !309
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.ij = load i64, ptr %i.ih, align 8, !alias.scope !311, !noalias !310
  store i64 %i.ij, ptr %i.ii, align 8, !alias.scope !310, !noalias !311
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.im = load i64, ptr %i.ik, align 8, !alias.scope !313, !noalias !312
  store i64 %i.im, ptr %i.il, align 8, !alias.scope !312, !noalias !313
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ip = load i64, ptr %i.in, align 8, !alias.scope !315, !noalias !314
  store i64 %i.ip, ptr %i.io, align 8, !alias.scope !314, !noalias !315
  %i.iq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.is = load i64, ptr %i.iq, align 8, !alias.scope !317, !noalias !316
  store i64 %i.is, ptr %i.ir, align 8, !alias.scope !316, !noalias !317
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.iv = load i64, ptr %i.it, align 8, !alias.scope !319, !noalias !318
  store i64 %i.iv, ptr %i.iu, align 8, !alias.scope !318, !noalias !319
  %i.iw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 56 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.iy = load i64, ptr %i.iw, align 8, !alias.scope !321, !noalias !320
  store i64 %i.iy, ptr %i.ix, align 8, !alias.scope !320, !noalias !321
  %i.iz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i250, i64 64
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i249, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i251.7 = icmp eq ptr %i.iw, %.0.lcssa.i.i.i.i.i.i236.pn
  br i1 %.not.i.i.i.i.i.i251.7, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252, label %.lr.ph.i.i.i.i.i.i248, !llvm.loop !4

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252: ; preds = %.lr.ph.i.i.i.i.i.i248.prol.loopexit, %.lr.ph.i.i.i.i.i.i248, %.noexc257
  %.0.lcssa.i.i.i.i.i.i253 = phi ptr [ %i.ht, %.noexc257 ], [ %.lcssa861.unr, %.lr.ph.i.i.i.i.i.i248.prol.loopexit ], [ %i.ja, %.lr.ph.i.i.i.i.i.i248 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i253, i64 8
  %.not.i23.i.i.i254 = icmp eq ptr %.sroa.0382.6, null
  br i1 %.not.i23.i.i.i254, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0382.6, i64 noundef %i.hl) #21
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255: ; preds = %bb.bq, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i252
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

bb.br:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.de

.loopexit453:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i227
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit454:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i244
  %lpad.loopexit456 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp455:                            ; preds = %bb.bp
  %lpad.loopexit.split-lp457 = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.bs:                                            ; preds = %_ZNSt13unordered_mapIlN4bzla3sat12interpolants12VariableKindESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE7emplaceIJRlS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.gf, 0
  %i.je = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !68
  %i.jg = icmp eq i32 %i.jf, 3
  br i1 %i.jg, label %bb.bt, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

bb.bt:                                            ; preds = %bb.bs
  %i.jh = load i64, ptr %i.fs, align 8
  %i.ji = and i64 %i.jh, -2
  %i.jj = inttoptr i64 %i.ji to ptr               ; 2 uses
  %.0.i259 = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jk = load i64, ptr %.0.i259, align 8, !tbaa !102 ; 4 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jm = trunc i64 %i.jk to i1
  br i1 %i.jm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jn = and i64 %i.jk, -2
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !105
  %i.jr = sub nsw i64 0, %i.jq
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261

bb.bw:                                            ; preds = %bb.bu
  %i.js = inttoptr i64 %i.jk to ptr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261

_ZNK4bzla8bitblast7AigNode6get_idEv.exit261:      ; preds = %bb.bw, %bb.bv, %bb.bt
  %.0.i260 = phi i64 [ 0, %bb.bt ], [ %i.jr, %bb.bv ], [ %i.ju, %bb.bw ]
  %i.jv = call noundef i64 @llvm.abs.i64(i64 %.0.i260, i1 true) ; 4 uses
  %i.jw = load i64, ptr %i.ev, align 8, !tbaa !123
  %.not.not.i.i.i = icmp eq i64 %i.jw, 0          ; 2 uses
  br i1 %.not.not.i.i.i, label %.preheader571, label %bb.by

.preheader571:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261, %bb.bx
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.bx ], [ %i.ex, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261 ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i262 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i262, label %.loopexit.i.i, label %bb.bx

bb.bx:                                            ; preds = %.preheader571
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !29
  %i.jz = icmp eq i64 %i.jv, %i.jy
  br i1 %i.jz, label %.loopexit448, label %.preheader571, !llvm.loop !7

bb.by:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit261
  %i.ka = load i64, ptr %i.ew, align 8, !tbaa !59 ; 2 uses
  %i.kb = urem i64 %i.jv, %i.ka                   ; 2 uses
  %i.kc = load ptr, ptr %1, align 8, !tbaa !58
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kb
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !64 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !29
  %i.ki = icmp eq i64 %i.jv, %i.kh
  br i1 %i.ki, label %.loopexit448, label %.lr.ph.i.i.i.i.i

bb.ca:                                            ; preds = %bb.cb
  %i.kj = icmp eq i64 %i.jv, %i.km
  br i1 %i.kj, label %.loopexit448, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bz, %bb.ca
  %.020.i.i.i.i.i = phi ptr [ %i.kk, %bb.ca ], [ %i.kf, %bb.bz ]
  %i.kk = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !29 ; 2 uses
  %i.kn = urem i64 %i.km, %i.ka
  %.not19.i.i.i.i.i = icmp eq i64 %i.kn, %i.kb
  br i1 %.not19.i.i.i.i.i, label %bb.ca, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.cb
  br label %.loopexit.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %bb.by, %.lr.ph.i.i.i.i.i, %.preheader571, %..loopexit_crit_edge21.i.i.i.i.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.32) #22
          to label %.noexc263 unwind label %bb.cn

.noexc263:                                        ; preds = %.loopexit.i.i
  unreachable

.loopexit448:                                     ; preds = %bb.ca, %bb.bx, %bb.bz
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.bx ], [ %i.kf, %bb.bz ], [ %i.kk, %bb.ca ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !69 ; 3 uses
  %.0.i264 = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.kq = load i64, ptr %.0.i264, align 8, !tbaa !102 ; 4 uses
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266, label %bb.cc

bb.cc:                                            ; preds = %.loopexit448
  %i.ks = trunc i64 %i.kq to i1
  br i1 %i.ks, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kt = and i64 %i.kq, -2
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !105
  %i.kx = sub nsw i64 0, %i.kw
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266

bb.ce:                                            ; preds = %bb.cc
  %i.ky = inttoptr i64 %i.kq to ptr
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266

_ZNK4bzla8bitblast7AigNode6get_idEv.exit266:      ; preds = %bb.ce, %bb.cd, %.loopexit448
  %.0.i265 = phi i64 [ 0, %.loopexit448 ], [ %i.kx, %bb.cd ], [ %i.la, %bb.ce ]
  %i.lb = call noundef i64 @llvm.abs.i64(i64 %.0.i265, i1 true) ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader568, label %bb.cg

.preheader568:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266, %bb.cf
  %.sroa.06.0.in.i.i.i276 = phi ptr [ %.sroa.06.0.i.i.i277, %bb.cf ], [ %i.ex, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266 ]
  %.sroa.06.0.i.i.i277 = load ptr, ptr %.sroa.06.0.in.i.i.i276, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i278 = icmp eq ptr %.sroa.06.0.i.i.i277, null
  br i1 %.not.i.i.i278, label %.loopexit.i.i274, label %bb.cf

bb.cf:                                            ; preds = %.preheader568
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i277, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !29
  %i.le = icmp eq i64 %i.lb, %i.ld
  br i1 %i.le, label %.loopexit445, label %.preheader568, !llvm.loop !7

bb.cg:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit266
  %i.lf = load i64, ptr %i.ew, align 8, !tbaa !59 ; 2 uses
  %i.lg = urem i64 %i.lb, %i.lf                   ; 2 uses
  %i.lh = load ptr, ptr %1, align 8, !tbaa !58
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i268 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i.i268, label %.loopexit.i.i274, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !64 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !29
  %i.ln = icmp eq i64 %i.lb, %i.lm
  br i1 %i.ln, label %.loopexit445, label %.lr.ph.i.i.i.i.i269

bb.ci:                                            ; preds = %bb.cj
  %i.lo = icmp eq i64 %i.lb, %i.lr
  br i1 %i.lo, label %.loopexit445, label %.lr.ph.i.i.i.i.i269, !llvm.loop !8

.lr.ph.i.i.i.i.i269:                              ; preds = %bb.ch, %bb.ci
  %.020.i.i.i.i.i270 = phi ptr [ %i.lp, %bb.ci ], [ %i.lk, %bb.ch ]
  %i.lp = load ptr, ptr %.020.i.i.i.i.i270, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i271 = icmp eq ptr %i.lp, null
  br i1 %.not18.i.i.i.i.i271, label %.loopexit.i.i274, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i269
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !29 ; 2 uses
  %i.ls = urem i64 %i.lr, %i.lf
  %.not19.i.i.i.i.i272 = icmp eq i64 %i.ls, %i.lg
  br i1 %.not19.i.i.i.i.i272, label %bb.ci, label %..loopexit_crit_edge21.i.i.i.i.i273, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i273:              ; preds = %bb.cj
  br label %.loopexit.i.i274, !llvm.loop !8

.loopexit.i.i274:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i269, %.preheader568, %..loopexit_crit_edge21.i.i.i.i.i273
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.32) #22
          to label %.noexc279 unwind label %bb.co

.noexc279:                                        ; preds = %.loopexit.i.i274
  unreachable

.loopexit445:                                     ; preds = %bb.ci, %bb.cf, %bb.ch
  %.sroa.06.1.i.i.i275 = phi ptr [ %.sroa.06.0.i.i.i277, %bb.cf ], [ %i.lk, %bb.ch ], [ %i.lp, %bb.ci ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i275, i64 16
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !69 ; 3 uses
  %i.lv = icmp ne i32 %i.kp, %i.lu
  %i.lw = icmp ne i32 %i.kp, 2                    ; 2 uses
  %19 = icmp ne i32 %i.lu, 2
  %20 = and i1 %i.lv, %19
  %or.cond5 = and i1 %20, %i.lw
  br i1 %or.cond5, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %.loopexit445
  %i.lx = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4bzla11UnsupportedC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_throw(ptr nonnull %i.lx, ptr nonnull @_ZTIN4bzla11UnsupportedE, ptr nonnull @_ZN4bzla11UnsupportedD2Ev) #22
          to label %bb.en unwind label %bb.cp

bb.cn:                                            ; preds = %.loopexit.i.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.co:                                            ; preds = %.loopexit.i.i274
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread: ; preds = %bb.ck
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm, %bb.cl
  %.0132 = phi i1 [ false, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mc = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.cp
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !32
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %.0132, label %bb.cq, label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %.0132, label %bb.cq, label %bb.de

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %.pn166428 = phi { ptr, i32 } [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ]
  call void @__cxa_free_exception(ptr %i.lx) #20
  br label %bb.de

bb.cr:                                            ; preds = %.loopexit445
  %i.mh = select i1 %i.lw, i32 %i.kp, i32 %i.lu
  store i32 %i.mh, ptr %i.je, align 8, !tbaa !68
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258

_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258: ; preds = %bb.cr, %bb.bs, %bb.bn, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255, %bb.bh
  %.sroa.0382.2 = phi ptr [ %.sroa.0382.6, %bb.bn ], [ %.sroa.0382.1, %bb.bh ], [ %i.ht, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255 ], [ %.sroa.0382.1, %bb.bs ], [ %.sroa.0382.1, %bb.cr ] ; 9 uses
  %.sroa.13.2 = phi ptr [ %i.hi, %bb.bn ], [ %.sroa.13.1, %bb.bh ], [ %i.jb, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255 ], [ %i.fr, %bb.bs ], [ %i.fr, %bb.cr ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.6, %bb.bn ], [ %.sroa.29.1, %bb.bh ], [ %i.jc, %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i255 ], [ %.sroa.29.1, %bb.bs ], [ %.sroa.29.1, %bb.cr ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.mi = icmp eq ptr %.sroa.0382.2, %.sroa.13.2
  br i1 %i.mi, label %bb.cs, label %bb.bd, !llvm.loop !297

bb.cs:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla8bitblast7AigNodeEESaIS5_EE9push_backEOS5_.exit258
  %i.mj = load ptr, ptr %i.em, align 8, !tbaa !323
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !102 ; 4 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mm = trunc i64 %i.mk to i1
  br i1 %i.mm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.mn = and i64 %i.mk, -2
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !105
  %i.mr = sub nsw i64 0, %i.mq
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285

bb.cv:                                            ; preds = %bb.ct
  %i.ms = inttoptr i64 %i.mk to ptr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !105
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285

_ZNK4bzla8bitblast7AigNode6get_idEv.exit285:      ; preds = %bb.cv, %bb.cu, %bb.cs
  %.0.i284 = phi i64 [ 0, %bb.cs ], [ %i.mr, %bb.cu ], [ %i.mu, %bb.cv ]
  %i.mv = call noundef i64 @llvm.abs.i64(i64 %.0.i284, i1 true) ; 4 uses
  %i.mw = load i64, ptr %i.ev, align 8, !tbaa !123
  %.not.not.i.i.i286 = icmp eq i64 %i.mw, 0
  br i1 %.not.not.i.i.i286, label %.preheader764, label %bb.cx

.preheader764:                                    ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285, %bb.cw
  %.sroa.06.0.in.i.i.i295 = phi ptr [ %.sroa.06.0.i.i.i296, %bb.cw ], [ %i.ex, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285 ]
  %.sroa.06.0.i.i.i296 = load ptr, ptr %.sroa.06.0.in.i.i.i295, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i297 = icmp eq ptr %.sroa.06.0.i.i.i296, null
  br i1 %.not.i.i.i297, label %.loopexit.i.i293, label %bb.cw

bb.cw:                                            ; preds = %.preheader764
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i296, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !29
  %i.mz = icmp eq i64 %i.mv, %i.my
  br i1 %i.mz, label %.loopexit442, label %.preheader764, !llvm.loop !7

bb.cx:                                            ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit285
  %i.na = load i64, ptr %i.ew, align 8, !tbaa !59 ; 2 uses
  %i.nb = urem i64 %i.mv, %i.na                   ; 2 uses
  %i.nc = load ptr, ptr %1, align 8, !tbaa !58
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nb
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i287 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i.i287, label %.loopexit.i.i293, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !64 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !29
  %i.ni = icmp eq i64 %i.mv, %i.nh
  br i1 %i.ni, label %.loopexit442, label %.lr.ph.i.i.i.i.i288

bb.cz:                                            ; preds = %bb.da
  %i.nj = icmp eq i64 %i.mv, %i.nm
  br i1 %i.nj, label %.loopexit442, label %.lr.ph.i.i.i.i.i288, !llvm.loop !8

.lr.ph.i.i.i.i.i288:                              ; preds = %bb.cy, %bb.cz
  %.020.i.i.i.i.i289 = phi ptr [ %i.nk, %bb.cz ], [ %i.nf, %bb.cy ]
  %i.nk = load ptr, ptr %.020.i.i.i.i.i289, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i.i290 = icmp eq ptr %i.nk, null
  br i1 %.not18.i.i.i.i.i290, label %.loopexit.i.i293, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i288
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !29 ; 2 uses
  %i.nn = urem i64 %i.nm, %i.na
  %.not19.i.i.i.i.i291 = icmp eq i64 %i.nn, %i.nb
  br i1 %.not19.i.i.i.i.i291, label %bb.cz, label %..loopexit_crit_edge21.i.i.i.i.i292, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i292:              ; preds = %bb.da
  br label %.loopexit.i.i293, !llvm.loop !8

.loopexit.i.i293:                                 ; preds = %.lr.ph.i.i.i.i.i288, %.preheader764, %..loopexit_crit_edge21.i.i.i.i.i292, %bb.cx
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.32) #22
          to label %.noexc298 unwind label %bb.df

.noexc298:                                        ; preds = %.loopexit.i.i293
  unreachable

.loopexit442:                                     ; preds = %bb.cz, %bb.cw, %bb.cy
  %.sroa.06.1.i.i.i294 = phi ptr [ %.sroa.06.0.i.i.i296, %bb.cw ], [ %i.nf, %bb.cy ], [ %i.nk, %bb.cz ]
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i294, i64 16
  %i.np = load i32, ptr %i.no, align 4, !tbaa !69 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !77, !nonnull !49, !align !50
  %i.ns = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.nr, i64 noundef 2)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %.loopexit442
  br i1 %i.ns, label %bb.dc, label %bb.ec

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.nt = load ptr, ptr %i.em, align 8, !tbaa !100 ; 2 uses
  %i.nu = load ptr, ptr %i.et, align 8, !tbaa !100 ; 2 uses
  %.not441562 = icmp eq ptr %i.nt, %i.nu
  br i1 %.not441562, label %._crit_edge, label %.lr.ph564

.lr.ph564:                                        ; preds = %bb.dd
  %i.nv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.di

._crit_edge:                                      ; preds = %bb.dj, %bb.dd
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !77, !nonnull !49, !align !50
  %i.nx = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.nw, i64 noundef 2)
          to label %bb.dl unwind label %bb.du

bb.de:                                            ; preds = %.loopexit454, %.loopexit.split-lp455, %.loopexit453, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.co, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %bb.cn, %bb.br
  %.sroa.0382.3 = phi ptr [ %.sroa.0382.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %.sroa.0382.1, %.loopexit.split-lp ], [ %.sroa.0382.1, %bb.cn ], [ %.sroa.0382.1, %bb.co ], [ %.sroa.0382.1, %bb.cq ], [ %.sroa.0382.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %.sroa.0382.1, %bb.br ], [ %.sroa.0382.1, %.loopexit453 ], [ %.sroa.0382.6, %.loopexit454 ], [ %.sroa.0382.6, %.loopexit.split-lp455 ]
  %.sroa.29.3 = phi ptr [ %.sroa.29.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %.sroa.13.1, %.loopexit.split-lp ], [ %.sroa.29.1, %bb.cn ], [ %.sroa.29.1, %bb.co ], [ %.sroa.29.1, %bb.cq ], [ %.sroa.29.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %.sroa.29.1, %bb.br ], [ %.sroa.13.1, %.loopexit453 ], [ %.sroa.29.6, %.loopexit454 ], [ %.sroa.29.6, %.loopexit.split-lp455 ]
  %.pn170.pn = phi { ptr, i32 } [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ly, %bb.cn ], [ %i.lz, %bb.co ], [ %.pn166428, %bb.cq ], [ %i.mb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.jd, %bb.br ], [ %lpad.loopexit, %.loopexit453 ], [ %lpad.loopexit456, %.loopexit454 ], [ %lpad.loopexit.split-lp457, %.loopexit.split-lp455 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.el

bb.df:                                            ; preds = %.loopexit.i.i293
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dg:                                            ; preds = %.loopexit442
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dh:                                            ; preds = %bb.dc
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.di:                                            ; preds = %.lr.ph564, %bb.dj
  %.sroa.0362.0563 = phi ptr [ %i.nt, %.lr.ph564 ], [ %i.od, %bb.dj ] ; 2 uses
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.di
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8bitblastlsERSoRKNS0_7AigNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0362.0563)
          to label %bb.dj unwind label %bb.dk     ; 0 uses

bb.dj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0362.0563, i64 8 ; 2 uses
  %.not441 = icmp eq ptr %i.od, %i.nu
  br i1 %.not441, label %._crit_edge, label %bb.di

bb.dk:                                            ; preds = %bb.di, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dl:                                            ; preds = %._crit_edge
  br i1 %i.nx, label %bb.dm, label %.critedge192

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.of = load ptr, ptr %i.nq, align 8, !tbaa !77, !nonnull !49, !align !50
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.of, i64 noundef 2)
          to label %bb.dn unwind label %bb.dv

bb.dn:                                            ; preds = %bb.dm
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.do unwind label %bb.dw     ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull @.str.7, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302 unwind label %bb.dw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302: ; preds = %bb.do
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzlalsERSoRKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.dp unwind label %bb.dw     ; 2 uses

bb.dp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.dw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %bb.dp
  %i.ok = and i32 %i.np, -3
  %i.ol = icmp ne i32 %i.ok, 0
  %i.om = zext i1 %i.ol to i32
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla3sat12interpolantslsERSoNS1_10ClauseKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, i32 noundef %i.om)
end_hunk_0
