Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_split?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9seq_split13expand_fromreEP4exprRb:bb.a
  %i.zd = add i32 %i.zc, 1
  store i32 %i.zd, ptr %i.zb, align 4, !tbaa !57, !noalias !233
  br label %_ZN9seq_split8mk_emptyEv.exit332

_ZN9seq_split8mk_emptyEv.exit332:                 ; preds = %bb.dv, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i331
  %i.ze = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !90 ; 2 uses
  %i.zh = zext i32 %i.zg to i64
  %.idx = shl nuw nsw i64 %i.zh, 3
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 %.idx
  %.not472 = icmp eq i32 %i.zg, 0
  br i1 %.not472, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9seq_split8mk_emptyEv.exit332
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.zl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph, %_ZN7obj_refI4expr11ast_managerED2Ev.exit353
  %.0111473 = phi ptr [ %i.ze, %.lr.ph ], [ %i.abb, %_ZN7obj_refI4expr11ast_managerED2Ev.exit353 ] ; 2 uses
  %i.zn = load ptr, ptr %.0111473, align 8, !tbaa !74
  %i.zo = load ptr, ptr %0, align 8, !tbaa !41    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN9seq_split9mk_fromreEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %19, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.zn)
          to label %bb.dx unwind label %bb.ef

bb.dx:                                            ; preds = %bb.dw
  %i.zp = load ptr, ptr %19, align 8, !tbaa !41   ; 8 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !noalias !234
  %i.zs = and i32 %i.zr, 65535
  %i.zt = icmp eq i32 %i.zs, 0
  br i1 %i.zt, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333

_ZNK9seq_split11is_empty_ssEP4expr.exit.i340:     ; preds = %bb.dx
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !64, !noalias !234
  %i.zw = load ptr, ptr %i.zj, align 8, !tbaa !38, !noalias !234
  %i.zx = icmp eq ptr %i.zv, %i.zw
  br i1 %i.zx, label %bb.dy, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333

bb.dy:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340
  %.not.i.i.i341 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i341, label %_ZN9seq_split8mk_unionEP4exprS1_.exit343, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340, %bb.dx
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !noalias !234
  %i.aaa = and i32 %i.zz, 65535
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334

_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338:    ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !64, !noalias !234
  %i.aae = load ptr, ptr %i.zj, align 8, !tbaa !38, !noalias !234
  %i.aaf = icmp eq ptr %i.aad, %i.aae
  br i1 %i.aaf, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334

_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333
  %i.aag = load ptr, ptr %1, align 8, !tbaa !55, !noalias !234, !nonnull !31, !align !32
  %i.aah = load ptr, ptr %i.zk, align 8, !tbaa !38, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !234
  store ptr %i.zo, ptr %i.d, align 16, !tbaa !74, !noalias !234
  store ptr %i.zp, ptr %i.zl, align 8, !tbaa !74, !noalias !234
  %i.aai = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.aag, ptr noundef %i.aah, i32 noundef 2, ptr noundef nonnull %i.d)
          to label %.noexc342 unwind label %bb.eg ; 2 uses

.noexc342:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !234
  %.not.i.i11.i335 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i11.i335, label %_ZN9seq_split8mk_unionEP4exprS1_.exit343, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, %.noexc342, %bb.dy
  %.sroa.0501.0 = phi ptr [ %i.zp, %bb.dy ], [ %i.aai, %.noexc342 ], [ %i.zo, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338 ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.0501.0, i64 8 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !57, !noalias !234
  %i.aal = add i32 %i.aak, 1
  store i32 %i.aal, ptr %i.aaj, align 4, !tbaa !57, !noalias !234
  br label %_ZN9seq_split8mk_unionEP4exprS1_.exit343

_ZN9seq_split8mk_unionEP4exprS1_.exit343:         ; preds = %bb.dy, %.noexc342, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336
  %.sroa.0501.1 = phi ptr [ null, %bb.dy ], [ %.sroa.0501.0, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336 ], [ null, %.noexc342 ]
  %i.aam = load ptr, ptr %0, align 8, !tbaa !41   ; 3 uses
  %.not.i.i345 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i345, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread, label %bb.dz

bb.dz:                                            ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit343
  %i.aan = load ptr, ptr %i.yy, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 8 ; 2 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !57
  %i.aaq = add i32 %i.aap, -1                     ; 2 uses
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !57
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %bb.ea, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aan, ptr noundef nonnull %i.aam)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread unwind label %bb.eb

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread: ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit343, %bb.dz, %bb.ea
  store ptr %.sroa.0501.1, ptr %0, align 8, !tbaa !41
  %.not.i.i351 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i351, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  %i.aat = extractvalue { ptr, i32 } %i.aas, 0
  call void @__clang_call_terminate(ptr %i.aat) #22
  unreachable

bb.ec:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread
  %i.aau = load ptr, ptr %i.zm, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !57
  %i.aax = add i32 %i.aaw, -1                     ; 2 uses
  store i32 %i.aax, ptr %i.aav, align 4, !tbaa !57
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %bb.ed, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aau, ptr noundef nonnull %i.zp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353 unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aaz = landingpad { ptr, i32 }
          catch ptr null
  %i.aba = extractvalue { ptr, i32 } %i.aaz, 0
  call void @__clang_call_terminate(ptr %i.aba) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit353:      ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread, %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.abb = getelementptr inbounds nuw i8, ptr %.0111473, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.abb, %i.zi
  br i1 %.not, label %.loopexit, label %bb.dw

bb.ef:                                            ; preds = %bb.dw
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #20
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn165 = phi { ptr, i32 } [ %i.abd, %bb.eg ], [ %i.abc, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  br label %bb.ib

_ZNK8seq_util3rex9is_concatEPK4expr.exit:         ; preds = %_ZNK8seq_util3rex8is_unionEPK4expr.exit
  %i.abe = load i32, ptr %i.yq, align 8, !tbaa !73
  %i.abf = icmp eq i32 %i.abe, %i.yj
  %i.abg = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.abh = load i32, ptr %i.abg, align 4
  %i.abi = icmp eq i32 %i.abh, 28
  %i.abj = select i1 %i.abf, i1 %i.abi, i1 false
  br i1 %i.abj, label %bb.ei, label %_ZNK8seq_util3rex9is_concatEPK4expr.exit.thread

bb.ei:                                            ; preds = %_ZNK8seq_util3rex9is_concatEPK4expr.exit
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !90 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abp = load <2 x ptr>, ptr %i.abm, align 8, !tbaa !60, !noalias !235
  %i.abq = load ptr, ptr %i.abm, align 8, !tbaa !41, !noalias !235 ; 2 uses
  store <2 x ptr> %i.abp, ptr %0, align 8, !tbaa !60, !alias.scope !235
  %.not.i.i.i355 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i355, label %_ZN9seq_split8mk_emptyEv.exit357, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356:     ; preds = %bb.ei
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !57, !noalias !235
  %i.abt = add i32 %i.abs, 1
  store i32 %i.abt, ptr %i.abr, align 4, !tbaa !57, !noalias !235
  br label %_ZN9seq_split8mk_emptyEv.exit357

_ZN9seq_split8mk_emptyEv.exit357:                 ; preds = %bb.ei, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356
  %.not481 = icmp eq i32 %i.abl, 0
  br i1 %.not481, label %.loopexit, label %.lr.ph478

.lr.ph478:                                        ; preds = %_ZN9seq_split8mk_emptyEv.exit357
  %i.abu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.aby = add i32 %i.abl, -1
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.acb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ace = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.acj = zext i32 %i.aby to i64
  %wide.trip.count495 = zext i32 %i.abl to i64
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph478, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426
  %indvars.iv492 = phi i64 [ 0, %.lr.ph478 ], [ %indvars.iv.next493, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426 ] ; 7 uses
  %indvars.iv486 = phi i32 [ 2, %.lr.ph478 ], [ %indvars.iv.next487, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426 ] ; 2 uses
  %indvars494 = trunc i64 %indvars.iv492 to i32
  %i.ack = zext i32 %indvars.iv486 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.acl = load ptr, ptr %1, align 8, !tbaa !55, !nonnull !31, !align !32 ; 2 uses
  store ptr null, ptr %20, align 8, !tbaa !41
  store ptr %i.acl, ptr %i.abu, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store ptr null, ptr %21, align 8, !tbaa !41
  store ptr %i.acl, ptr %i.abv, align 8, !tbaa !33
  %i.acm = icmp eq i64 %indvars.iv492, 0
  br i1 %i.acm, label %bb.ek, label %.preheader

bb.ek:                                            ; preds = %bb.ej
  %i.acn = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.aco = invoke noundef ptr @_ZN8seq_util3rex10mk_epsilonEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef %i.acn)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.acp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.aco)
          to label %.loopexit465 unwind label %bb.em ; 0 uses

bb.em:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.el, %bb.ek
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.preheader:                                       ; preds = %bb.ej, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371
  %i.acr = phi ptr [ %.sroa.0.0460, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 ], [ null, %bb.ej ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 ], [ 0, %bb.ej ] ; 2 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !74 ; 3 uses
  %.not463 = icmp eq ptr %i.acr, null
  br i1 %.not463, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.preheader
  %i.acu = load ptr, ptr %i.abx, align 8, !tbaa !53, !nonnull !31, !align !32
  %i.acv = load i32, ptr %i.x, align 8, !tbaa !54
  %i.acw = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.acu, i32 noundef %i.acv, i32 noundef 28, ptr noundef nonnull %i.acr, ptr noundef %i.act)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit unwind label %bb.es ; 2 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit:        ; preds = %bb.en
  %.not.i.i359 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i359, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split

bb.eo:                                            ; preds = %.preheader
  %.not.i.i362 = icmp eq ptr %i.act, null
  br i1 %.not.i.i362, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split: ; preds = %bb.eo, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %.sink619 = phi ptr [ %i.acw, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit ], [ %i.act, %bb.eo ] ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.sink619, i64 8 ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !57
  %i.acz = add i32 %i.acy, 1
  store i32 %i.acz, ptr %i.acx, align 4, !tbaa !57
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %.sroa.0.0.ph = phi ptr [ null, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit ], [ %.sink619, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split ] ; 3 uses
  %.pr455 = load ptr, ptr %20, align 8, !tbaa !41 ; 3 uses
  %.not.i.i366 = icmp eq ptr %.pr455, null
  br i1 %.not.i.i366, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, label %bb.ep

bb.ep:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361
  %i.ada = load ptr, ptr %i.abu, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.adb = getelementptr inbounds nuw i8, ptr %.pr455, i64 8 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !57
  %i.add = add i32 %i.adc, -1                     ; 2 uses
  store i32 %i.add, ptr %i.adb, align 4, !tbaa !57
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %bb.eq, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ada, ptr noundef nonnull %.pr455)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.adf = landingpad { ptr, i32 }
          catch ptr null
  %i.adg = extractvalue { ptr, i32 } %i.adf, 0
  call void @__clang_call_terminate(ptr %i.adg) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit371:      ; preds = %bb.eo, %bb.eq, %bb.ep, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361
  %.sroa.0.0460 = phi ptr [ %.sroa.0.0.ph, %bb.eq ], [ %.sroa.0.0.ph, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361 ], [ %.sroa.0.0.ph, %bb.ep ], [ null, %bb.eo ] ; 2 uses
  store ptr %.sroa.0.0460, ptr %20, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv492
  br i1 %exitcond.not, label %.loopexit465, label %.preheader, !llvm.loop !203

bb.es:                                            ; preds = %bb.en
  %i.adh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit465:                                     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, %bb.el
  %i.adi = icmp eq i64 %indvars.iv492, %i.acj
  br i1 %i.adi, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %.loopexit465
  %i.adj = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.adk = invoke noundef ptr @_ZN8seq_util3rex10mk_epsilonEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef %i.adj)
          to label %bb.eu unwind label %bb.em

bb.eu:                                            ; preds = %bb.et
  %i.adl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.adk)
          to label %.loopexit464 unwind label %bb.em ; 0 uses

bb.ev:                                            ; preds = %.loopexit465
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv492
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !74
  %i.adp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.ado)
          to label %bb.ew unwind label %bb.em     ; 0 uses

bb.ew:                                            ; preds = %bb.ev
  %i.adq = add i32 %indvars494, 2
  %i.adr = icmp ult i32 %i.adq, %i.abl
  br i1 %i.adr, label %.lr.ph476.preheader, label %.loopexit464

.lr.ph476.preheader:                              ; preds = %bb.ew
  %.pre512 = load ptr, ptr %21, align 8, !tbaa !41
  br label %.lr.ph476

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %bb.fa
  %i.ads = phi ptr [ %.pre512, %.lr.ph476.preheader ], [ %i.adx, %bb.fa ]
  %indvars.iv488 = phi i64 [ %i.ack, %.lr.ph476.preheader ], [ %indvars.iv.next489, %bb.fa ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv488
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !74
  %i.adv = load ptr, ptr %i.abx, align 8, !tbaa !53, !nonnull !31, !align !32
  %i.adw = load i32, ptr %i.x, align 8, !tbaa !54
  %i.adx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.adv, i32 noundef %i.adw, i32 noundef 28, ptr noundef %i.ads, ptr noundef %i.adu)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373 unwind label %bb.fb ; 4 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373:     ; preds = %.lr.ph476
  %.not.i374 = icmp eq ptr %i.adx, null
  br i1 %.not.i374, label %bb.ex, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !57
  %i.aea = add i32 %i.adz, 1
  store i32 %i.aea, ptr %i.ady, align 4, !tbaa !57
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373
  %i.aeb = load ptr, ptr %21, align 8, !tbaa !41  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.aeb, null
  br i1 %.not.i4.i, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aec = load ptr, ptr %i.abv, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8 ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !57
  %i.aef = add i32 %i.aee, -1                     ; 2 uses
  store i32 %i.aef, ptr %i.aed, align 4, !tbaa !57
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aec, ptr noundef nonnull %i.aeb)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ey, %bb.ex, %bb.ez
  store ptr %i.adx, ptr %21, align 8, !tbaa !41
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next489 to i32
  %exitcond491.not = icmp eq i32 %i.abl, %lftr.wideiv
  br i1 %exitcond491.not, label %.loopexit464, label %.lr.ph476, !llvm.loop !204

bb.fb:                                            ; preds = %bb.ez, %.lr.ph476
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit464:                                     ; preds = %bb.fa, %bb.ew, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.aei = load ptr, ptr %20, align 8, !tbaa !41  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv492
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !74
  invoke void @_ZN9seq_split9mk_fromreEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %24, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.aek)
          to label %bb.fc unwind label %bb.fy

bb.fc:                                            ; preds = %.loopexit464
  %i.ael = load ptr, ptr %24, align 8, !tbaa !41  ; 6 uses
  %i.aem = load ptr, ptr %21, align 8, !tbaa !41  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aeo = load i32, ptr %i.aen, align 4, !noalias !236
  %i.aep = and i32 %i.aeo, 65535
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377

_ZNK9seq_split11is_empty_ssEP4expr.exit.i380:     ; preds = %bb.fc
  %i.aer = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !64, !noalias !236
  %i.aet = load ptr, ptr %i.abz, align 8, !tbaa !38, !noalias !236
  %i.aeu = icmp eq ptr %i.aes, %i.aet
  br i1 %i.aeu, label %bb.fd, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377

bb.fd:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.aev = load ptr, ptr %i.abm, align 8, !tbaa !41, !noalias !238, !nonnull !31, !noundef !31 ; 2 uses
  store ptr %i.aev, ptr %23, align 8, !tbaa !41, !alias.scope !238
  %i.aew = load ptr, ptr %i.abo, align 8, !tbaa !59, !noalias !238, !nonnull !31, !align !32 ; 2 uses
  store ptr %i.aew, ptr %i.acc, align 8, !tbaa !33, !alias.scope !238
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380, %bb.fc
  %i.aex = load ptr, ptr %i.q, align 8, !tbaa !47, !noalias !236, !nonnull !31, !align !32
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 56
  %i.aez = invoke noundef zeroext i1 @_ZNK8seq_util3rex10is_epsilonEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %i.aey, ptr noundef %i.aem)
          to label %.noexc382 unwind label %bb.fz

.noexc382:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377
  %i.afa = load ptr, ptr %1, align 8, !tbaa !55, !noalias !236, !nonnull !31, !align !32 ; 3 uses
  br i1 %i.aez, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i, label %bb.fe

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %.noexc382
  store ptr %i.ael, ptr %23, align 8, !tbaa !41, !alias.scope !236
  store ptr %i.afa, ptr %i.acc, align 8, !tbaa !33, !alias.scope !236
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

bb.fe:                                            ; preds = %.noexc382
  %i.afb = load ptr, ptr %i.aca, align 8, !tbaa !38, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !236
  store ptr %i.ael, ptr %i.c, align 16, !tbaa !74, !noalias !236
  store ptr %i.aem, ptr %i.acb, align 8, !tbaa !74, !noalias !236
  %i.afc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.afa, ptr noundef %i.afb, i32 noundef 2, ptr noundef nonnull %i.c)
          to label %.noexc383 unwind label %bb.fz ; 3 uses

.noexc383:                                        ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !236
  %i.afd = load ptr, ptr %1, align 8, !tbaa !55, !noalias !236, !nonnull !31, !align !32 ; 2 uses
  store ptr %i.afc, ptr %23, align 8, !tbaa !41, !alias.scope !236
  store ptr %i.afd, ptr %i.acc, align 8, !tbaa !33, !alias.scope !236
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afc) ]
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

_ZN9seq_split8mk_emptyEv.exit.sink.split.i378:    ; preds = %bb.fd, %.noexc383, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  %i.afe = phi ptr [ %i.aew, %bb.fd ], [ %i.afa, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i ], [ %i.afd, %.noexc383 ]
  %.sink12.i379 = phi ptr [ %i.aev, %bb.fd ], [ %i.ael, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i ], [ %i.afc, %.noexc383 ] ; 8 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 8 ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !57, !noalias !236
  %i.afh = add i32 %i.afg, 1
  store i32 %i.afh, ptr %i.aff, align 4, !tbaa !57, !noalias !236
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.afi = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 4
  %i.afj = load i32, ptr %i.afi, align 4, !noalias !239
  %i.afk = and i32 %i.afj, 65535
  %i.afl = icmp eq i32 %i.afk, 0
  br i1 %i.afl, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384

_ZNK9seq_split11is_empty_ssEP4expr.exit.i389:     ; preds = %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378
  %i.afm = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !64, !noalias !239
  %i.afo = load ptr, ptr %i.abz, align 8, !tbaa !38, !noalias !239
  %i.afp = icmp eq ptr %i.afn, %i.afo
  br i1 %i.afp, label %bb.ff, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384

bb.ff:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.afq = load <2 x ptr>, ptr %i.abm, align 8, !tbaa !60, !noalias !241
  %i.afr = load ptr, ptr %i.abm, align 8, !tbaa !41, !noalias !241 ; 2 uses
  store <2 x ptr> %i.afq, ptr %22, align 16, !tbaa !60, !alias.scope !241
  %.not.i.i.i.i390 = icmp eq ptr %i.afr, null
  br i1 %.not.i.i.i.i390, label %_ZN9seq_split7mk_lcatEP4exprS1_.exit, label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389, %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378
  %i.afs = load ptr, ptr %i.q, align 8, !tbaa !47, !noalias !239, !nonnull !31, !align !32
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 56
  %i.afu = invoke noundef zeroext i1 @_ZNK8seq_util3rex10is_epsilonEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %i.aft, ptr noundef %i.aei)
          to label %.noexc391 unwind label %bb.ga

.noexc391:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384
  %i.afv = load ptr, ptr %1, align 8, !tbaa !55, !noalias !239, !nonnull !31, !align !32 ; 2 uses
  br i1 %i.afu, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388, label %bb.fg

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388: ; preds = %.noexc391
  store ptr %.sink12.i379, ptr %22, align 16, !tbaa !41, !alias.scope !239
  store ptr %i.afv, ptr %i.acf, align 8, !tbaa !33, !alias.scope !239
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

bb.fg:                                            ; preds = %.noexc391
  %i.afw = load ptr, ptr %i.acd, align 8, !tbaa !38, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !239
  store ptr %i.aei, ptr %i.b, align 16, !tbaa !74, !noalias !239
  store ptr %.sink12.i379, ptr %i.ace, align 8, !tbaa !74, !noalias !239
  %i.afx = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.afv, ptr noundef %i.afw, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %.noexc392 unwind label %bb.ga ; 3 uses

.noexc392:                                        ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !239
  %i.afy = load ptr, ptr %1, align 8, !tbaa !55, !noalias !239, !nonnull !31, !align !32
  store ptr %i.afx, ptr %22, align 16, !tbaa !41, !alias.scope !239
  store ptr %i.afy, ptr %i.acf, align 8, !tbaa !33, !alias.scope !239
  %.not.i.i6.i385 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i6.i385, label %_ZN9seq_split7mk_lcatEP4exprS1_.exit, label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

_ZN9seq_split8mk_emptyEv.exit.sink.split.i386:    ; preds = %.noexc392, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388, %bb.ff
  %.sink12.i387 = phi ptr [ %i.afr, %bb.ff ], [ %.sink12.i379, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388 ], [ %i.afx, %.noexc392 ]
  %i.afz = getelementptr inbounds nuw i8, ptr %.sink12.i387, i64 8 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !57, !noalias !239
  %i.agb = add i32 %i.aga, 1
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !57, !noalias !239
  br label %_ZN9seq_split7mk_lcatEP4exprS1_.exit

_ZN9seq_split7mk_lcatEP4exprS1_.exit:             ; preds = %bb.ff, %.noexc392, %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386
  %i.agc = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 8 ; 2 uses
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !57
  %i.age = add i32 %i.agd, -1                     ; 2 uses
  store i32 %i.age, ptr %i.agc, align 4, !tbaa !57
  %i.agf = icmp eq i32 %i.age, 0
  br i1 %i.agf, label %bb.fh, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread

bb.fh:                                            ; preds = %_ZN9seq_split7mk_lcatEP4exprS1_.exit
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.afe, ptr noundef nonnull %.sink12.i379)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.agg = landingpad { ptr, i32 }
          catch ptr null
  %i.agh = extractvalue { ptr, i32 } %i.agg, 0
  call void @__clang_call_terminate(ptr %i.agh) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit395:      ; preds = %bb.fh
  %.pre513 = load ptr, ptr %24, align 8, !tbaa !41 ; 2 uses
  %.not.i.i396 = icmp eq ptr %.pre513, null
  br i1 %.not.i.i396, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread

_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread: ; preds = %_ZN9seq_split7mk_lcatEP4exprS1_.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395
  %i.agi = phi ptr [ %.pre513, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395 ], [ %i.ael, %_ZN9seq_split7mk_lcatEP4exprS1_.exit ] ; 2 uses
  %i.agj = load ptr, ptr %i.acg, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 8 ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !57
  %i.agm = add i32 %i.agl, -1                     ; 2 uses
  store i32 %i.agm, ptr %i.agk, align 4, !tbaa !57
  %i.agn = icmp eq i32 %i.agm, 0
  br i1 %i.agn, label %bb.fj, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398

bb.fj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.agj, ptr noundef nonnull %i.agi)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit398:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit395, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.agq = load ptr, ptr %0, align 8, !tbaa !41   ; 4 uses
  %i.agr = load ptr, ptr %22, align 16, !tbaa !41 ; 8 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  %i.agt = load i32, ptr %i.ags, align 4, !noalias !242
  %i.agu = and i32 %i.agt, 65535
  %i.agv = icmp eq i32 %i.agu, 0
  br i1 %i.agv, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399

_ZNK9seq_split11is_empty_ssEP4expr.exit.i407:     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit398
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !64, !noalias !242
  %i.agy = load ptr, ptr %i.abz, align 8, !tbaa !38, !noalias !242
  %i.agz = icmp eq ptr %i.agx, %i.agy
  br i1 %i.agz, label %bb.fl, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399

bb.fl:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407
  %.not.i.i.i408 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i408, label %_ZN9seq_split8mk_unionEP4exprS1_.exit410, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407, %_ZN7obj_refI4expr11ast_managerED2Ev.exit398
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  %i.ahb = load i32, ptr %i.aha, align 4, !noalias !242
  %i.ahc = and i32 %i.ahb, 65535
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400

_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405:    ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !64, !noalias !242
  %i.ahg = load ptr, ptr %i.abz, align 8, !tbaa !38, !noalias !242
  %i.ahh = icmp eq ptr %i.ahf, %i.ahg
  br i1 %i.ahh, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400

_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405
  %i.ahi = load ptr, ptr %1, align 8, !tbaa !55, !noalias !242
  %i.ahj = load ptr, ptr %i.ach, align 8, !tbaa !38, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !242
  store ptr %i.agq, ptr %i.a, align 16, !tbaa !74, !noalias !242
  store ptr %i.agr, ptr %i.aci, align 8, !tbaa !74, !noalias !242
  %i.ahk = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ahi, ptr noundef %i.ahj, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %.noexc409 unwind label %bb.gd ; 2 uses

.noexc409:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !242
  %.not.i.i11.i401 = icmp eq ptr %i.ahk, null
  br i1 %.not.i.i11.i401, label %_ZN9seq_split8mk_unionEP4exprS1_.exit410, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405, %.noexc409, %bb.fl
  %.sroa.0.0 = phi ptr [ %i.agr, %bb.fl ], [ %i.ahk, %.noexc409 ], [ %i.agq, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405 ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !57, !noalias !242
  %i.ahn = add i32 %i.ahm, 1
  store i32 %i.ahn, ptr %i.ahl, align 4, !tbaa !57, !noalias !242
  br label %_ZN9seq_split8mk_unionEP4exprS1_.exit410

_ZN9seq_split8mk_unionEP4exprS1_.exit410:         ; preds = %bb.fl, %.noexc409, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402
  %.sroa.0.1 = phi ptr [ null, %bb.fl ], [ %.sroa.0.0, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402 ], [ null, %.noexc409 ]
  %i.aho = load ptr, ptr %0, align 8, !tbaa !41   ; 3 uses
  %.not.i.i412 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i412, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread, label %bb.fm

bb.fm:                                            ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit410
  %i.ahp = load ptr, ptr %i.abn, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 8 ; 2 uses
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !57
  %i.ahs = add i32 %i.ahr, -1                     ; 2 uses
  store i32 %i.ahs, ptr %i.ahq, align 4, !tbaa !57
  %i.aht = icmp eq i32 %i.ahs, 0
  br i1 %i.aht, label %bb.fn, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ahp, ptr noundef nonnull %i.aho)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread unwind label %bb.fo

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread: ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit410, %bb.fm, %bb.fn
  store ptr %.sroa.0.1, ptr %0, align 8, !tbaa !41
  %.not.i.i418 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i418, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit420, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ahu = landingpad { ptr, i32 }
          catch ptr null
  %i.ahv = extractvalue { ptr, i32 } %i.ahu, 0
  call void @__clang_call_terminate(ptr %i.ahv) #22
  unreachable

bb.fp:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread
end_hunk_0
