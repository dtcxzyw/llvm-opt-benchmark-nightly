Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_split?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9seq_split13expand_fromreEP4exprRb:bb.a
  %i.zb = add i32 %i.za, 1
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !57, !noalias !233
  br label %_ZN9seq_split8mk_emptyEv.exit332

_ZN9seq_split8mk_emptyEv.exit332:                 ; preds = %bb.dq, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i331
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !90 ; 2 uses
  %i.zf = zext i32 %i.ze to i64
  %.idx = shl nuw nsw i64 %i.zf, 3
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.idx
  %.not484 = icmp eq i32 %i.ze, 0
  br i1 %.not484, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9seq_split8mk_emptyEv.exit332
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.zj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.zk = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph, %_ZN7obj_refI4expr11ast_managerED2Ev.exit353
  %.0111485 = phi ptr [ %i.zc, %.lr.ph ], [ %i.aaz, %_ZN7obj_refI4expr11ast_managerED2Ev.exit353 ] ; 2 uses
  %i.zl = load ptr, ptr %.0111485, align 8, !tbaa !74
  %i.zm = load ptr, ptr %0, align 8, !tbaa !41    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN9seq_split9mk_fromreEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %19, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.zl)
          to label %bb.ds unwind label %bb.ea

bb.ds:                                            ; preds = %bb.dr
  %i.zn = load ptr, ptr %19, align 8, !tbaa !41   ; 8 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zp = load i32, ptr %i.zo, align 4, !noalias !234
  %i.zq = and i32 %i.zp, 65535
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333

_ZNK9seq_split11is_empty_ssEP4expr.exit.i340:     ; preds = %bb.ds
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !64, !noalias !234
  %i.zu = load ptr, ptr %i.zh, align 8, !tbaa !38, !noalias !234
  %i.zv = icmp eq ptr %i.zt, %i.zu
  br i1 %i.zv, label %bb.dt, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333

bb.dt:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340
  %.not.i.i.i341 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i.i341, label %_ZN9seq_split8mk_unionEP4exprS1_.exit343, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i340, %bb.ds
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !noalias !234
  %i.zy = and i32 %i.zx, 65535
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334

_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338:    ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !64, !noalias !234
  %i.aac = load ptr, ptr %i.zh, align 8, !tbaa !38, !noalias !234
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334

_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i333
  %i.aae = load ptr, ptr %1, align 8, !tbaa !55, !noalias !234, !nonnull !31, !align !32
  %i.aaf = load ptr, ptr %i.zi, align 8, !tbaa !38, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !234
  store ptr %i.zm, ptr %i.d, align 16, !tbaa !74, !noalias !234
  store ptr %i.zn, ptr %i.zj, align 8, !tbaa !74, !noalias !234
  %i.aag = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.aae, ptr noundef %i.aaf, i32 noundef 2, ptr noundef nonnull %i.d)
          to label %.noexc342 unwind label %bb.eb ; 2 uses

.noexc342:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !234
  %.not.i.i11.i335 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i11.i335, label %_ZN9seq_split8mk_unionEP4exprS1_.exit343, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338, %.noexc342, %bb.dt
  %.sroa.0522.0 = phi ptr [ %i.zn, %bb.dt ], [ %i.aag, %.noexc342 ], [ %i.zm, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i338 ] ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0522.0, i64 8 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !57, !noalias !234
  %i.aaj = add i32 %i.aai, 1
  store i32 %i.aaj, ptr %i.aah, align 4, !tbaa !57, !noalias !234
  br label %_ZN9seq_split8mk_unionEP4exprS1_.exit343

_ZN9seq_split8mk_unionEP4exprS1_.exit343:         ; preds = %bb.dt, %.noexc342, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336
  %.sroa.0522.1 = phi ptr [ null, %bb.dt ], [ %.sroa.0522.0, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i336 ], [ null, %.noexc342 ]
  %i.aak = load ptr, ptr %0, align 8, !tbaa !41   ; 3 uses
  %.not.i.i345 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i345, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread, label %bb.du

bb.du:                                            ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit343
  %i.aal = load ptr, ptr %i.yw, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !57
  %i.aao = add i32 %i.aan, -1                     ; 2 uses
  store i32 %i.aao, ptr %i.aam, align 4, !tbaa !57
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.dv, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aal, ptr noundef nonnull %i.aak)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread unwind label %bb.dw

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread: ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit343, %bb.du, %bb.dv
  store ptr %.sroa.0522.1, ptr %0, align 8, !tbaa !41
  %.not.i.i351 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i351, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.aaq = landingpad { ptr, i32 }
          catch ptr null
  %i.aar = extractvalue { ptr, i32 } %i.aaq, 0
  call void @__clang_call_terminate(ptr %i.aar) #22
  unreachable

bb.dx:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread
  %i.aas = load ptr, ptr %i.zk, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zn, i64 8 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !57
  %i.aav = add i32 %i.aau, -1                     ; 2 uses
  store i32 %i.aav, ptr %i.aat, align 4, !tbaa !57
  %i.aaw = icmp eq i32 %i.aav, 0
  br i1 %i.aaw, label %bb.dy, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aas, ptr noundef nonnull %i.zn)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit353 unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aax = landingpad { ptr, i32 }
          catch ptr null
  %i.aay = extractvalue { ptr, i32 } %i.aax, 0
  call void @__clang_call_terminate(ptr %i.aay) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit353:      ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit347.thread, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0111485, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aaz, %i.zg
  br i1 %.not, label %.loopexit, label %bb.dr

bb.ea:                                            ; preds = %bb.dr
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.eb:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i334
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #20
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.pn165 = phi { ptr, i32 } [ %i.abb, %bb.eb ], [ %i.aba, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  br label %bb.hs

_ZNK8seq_util3rex9is_concatEPK4expr.exit:         ; preds = %_ZNK8seq_util3rex8is_unionEPK4expr.exit
  %i.abc = load i32, ptr %i.yo, align 8, !tbaa !73
  %i.abd = icmp eq i32 %i.abc, %i.yh
  %i.abe = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  %i.abf = load i32, ptr %i.abe, align 4
  %i.abg = icmp eq i32 %i.abf, 28
  %i.abh = select i1 %i.abd, i1 %i.abg, i1 false
  br i1 %i.abh, label %bb.ed, label %_ZNK8seq_util3rex9is_concatEPK4expr.exit.thread

bb.ed:                                            ; preds = %_ZNK8seq_util3rex9is_concatEPK4expr.exit
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !90 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abn = load <2 x ptr>, ptr %i.abk, align 8, !tbaa !60, !noalias !235
  %i.abo = load ptr, ptr %i.abk, align 8, !tbaa !41, !noalias !235 ; 2 uses
  store <2 x ptr> %i.abn, ptr %0, align 8, !tbaa !60, !alias.scope !235
  %.not.i.i.i355 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i355, label %_ZN9seq_split8mk_emptyEv.exit357, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356:     ; preds = %bb.ed
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !57, !noalias !235
  %i.abr = add i32 %i.abq, 1
  store i32 %i.abr, ptr %i.abp, align 4, !tbaa !57, !noalias !235
  br label %_ZN9seq_split8mk_emptyEv.exit357

_ZN9seq_split8mk_emptyEv.exit357:                 ; preds = %bb.ed, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i356
  %.not493 = icmp eq i32 %i.abj, 0
  br i1 %.not493, label %.loopexit, label %.lr.ph490

.lr.ph490:                                        ; preds = %_ZN9seq_split8mk_emptyEv.exit357
  %i.abs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.abw = add i32 %i.abj, -1
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.abz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aca = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.acc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.acg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ach = zext i32 %i.abw to i64
  %wide.trip.count516 = zext i32 %i.abj to i64
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph490, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426
  %indvars.iv513 = phi i64 [ 0, %.lr.ph490 ], [ %indvars.iv.next514, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426 ] ; 7 uses
  %indvars.iv507 = phi i32 [ 2, %.lr.ph490 ], [ %indvars.iv.next508, %_ZN7obj_refI4expr11ast_managerED2Ev.exit426 ] ; 2 uses
  %indvars515 = trunc i64 %indvars.iv513 to i32
  %i.aci = zext i32 %indvars.iv507 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.acj = load ptr, ptr %1, align 8, !tbaa !55, !nonnull !31, !align !32 ; 2 uses
  store ptr null, ptr %20, align 8, !tbaa !41
  store ptr %i.acj, ptr %i.abs, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store ptr null, ptr %21, align 8, !tbaa !41
  store ptr %i.acj, ptr %i.abt, align 8, !tbaa !33
  %i.ack = icmp eq i64 %indvars.iv513, 0
  br i1 %i.ack, label %bb.ef, label %.preheader

bb.ef:                                            ; preds = %bb.ee
  %i.acl = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.acm = invoke noundef ptr @_ZN8seq_util3rex10mk_epsilonEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef %i.acl)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef
  %i.acn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.acm)
          to label %.loopexit466 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.ee, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371
  %i.aco = phi ptr [ %.sroa.0.0460, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 ], [ null, %bb.ee ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 ], [ 0, %bb.ee ] ; 2 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %indvars.iv
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !74 ; 3 uses
  %.not463 = icmp eq ptr %i.aco, null
  br i1 %.not463, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.preheader
  %i.acr = load ptr, ptr %i.abv, align 8, !tbaa !53, !nonnull !31, !align !32
  %i.acs = load i32, ptr %i.x, align 8, !tbaa !54
  %i.act = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.acr, i32 noundef %i.acs, i32 noundef 28, ptr noundef nonnull %i.aco, ptr noundef %i.acq)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit:        ; preds = %bb.eh
  %.not.i.i359 = icmp eq ptr %i.act, null
  br i1 %.not.i.i359, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split

bb.ei:                                            ; preds = %.preheader
  %.not.i.i362 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i362, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split: ; preds = %bb.ei, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %.sink638 = phi ptr [ %i.act, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit ], [ %i.acq, %bb.ei ] ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.sink638, i64 8 ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !57
  %i.acw = add i32 %i.acv, 1
  store i32 %i.acw, ptr %i.acu, align 4, !tbaa !57
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit
  %.sroa.0.0.ph = phi ptr [ null, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit ], [ %.sink638, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361.sink.split ] ; 3 uses
  %.pr455 = load ptr, ptr %20, align 8, !tbaa !41 ; 3 uses
  %.not.i.i366 = icmp eq ptr %.pr455, null
  br i1 %.not.i.i366, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, label %bb.ej

bb.ej:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361
  %i.acx = load ptr, ptr %i.abs, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.acy = getelementptr inbounds nuw i8, ptr %.pr455, i64 8 ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !57
  %i.ada = add i32 %i.acz, -1                     ; 2 uses
  store i32 %i.ada, ptr %i.acy, align 4, !tbaa !57
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.ek, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.acx, ptr noundef nonnull %.pr455)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit371 unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.adc = landingpad { ptr, i32 }
          catch ptr null
  %i.add = extractvalue { ptr, i32 } %i.adc, 0
  call void @__clang_call_terminate(ptr %i.add) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit371:      ; preds = %bb.ei, %bb.ek, %bb.ej, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361
  %.sroa.0.0460 = phi ptr [ %.sroa.0.0.ph, %bb.ek ], [ %.sroa.0.0.ph, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit361 ], [ %.sroa.0.0.ph, %bb.ej ], [ null, %bb.ei ] ; 2 uses
  store ptr %.sroa.0.0460, ptr %20, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv513
  br i1 %exitcond.not, label %.loopexit466, label %.preheader, !llvm.loop !203

.loopexit466:                                     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit371, %bb.eg
  %i.ade = icmp eq i64 %indvars.iv513, %i.ach
  br i1 %i.ade, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %.loopexit466
  %i.adf = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.adg = invoke noundef ptr @_ZN8seq_util3rex10mk_epsilonEP4sort(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef %i.adf)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.en:                                            ; preds = %bb.em
  %i.adh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.adg)
          to label %.loopexit464 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eo:                                            ; preds = %.loopexit466
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %indvars.iv513
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !74
  %i.adl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.adk)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  %i.adm = add i32 %indvars515, 2
  %i.adn = icmp ult i32 %i.adm, %i.abj
  br i1 %i.adn, label %.lr.ph488.preheader, label %.loopexit464

.lr.ph488.preheader:                              ; preds = %bb.ep
  %.pre533 = load ptr, ptr %21, align 8, !tbaa !41
  br label %.lr.ph488

.lr.ph488:                                        ; preds = %.lr.ph488.preheader, %bb.et
  %i.ado = phi ptr [ %.pre533, %.lr.ph488.preheader ], [ %i.adt, %bb.et ]
  %indvars.iv509 = phi i64 [ %i.aci, %.lr.ph488.preheader ], [ %indvars.iv.next510, %bb.et ] ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %indvars.iv509
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !74
  %i.adr = load ptr, ptr %i.abv, align 8, !tbaa !53, !nonnull !31, !align !32
  %i.ads = load i32, ptr %i.x, align 8, !tbaa !54
  %i.adt = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.adr, i32 noundef %i.ads, i32 noundef 28, ptr noundef %i.ado, ptr noundef %i.adq)
          to label %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373:     ; preds = %.lr.ph488
  %.not.i374 = icmp eq ptr %i.adt, null
  br i1 %.not.i374, label %bb.eq, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 8 ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !57
  %i.adw = add i32 %i.adv, 1
  store i32 %i.adw, ptr %i.adu, align 4, !tbaa !57
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN8seq_util3rex9mk_concatEP4exprS2_.exit373
  %i.adx = load ptr, ptr %21, align 8, !tbaa !41  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.adx, null
  br i1 %.not.i4.i, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ady = load ptr, ptr %i.abt, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !57
  %i.aeb = add i32 %i.aea, -1                     ; 2 uses
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !57
  %i.aec = icmp eq i32 %i.aeb, 0
  br i1 %i.aec, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ady, ptr noundef nonnull %i.adx)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %bb.er, %bb.eq, %bb.es
  store ptr %i.adt, ptr %21, align 8, !tbaa !41
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next510 to i32
  %exitcond512.not = icmp eq i32 %i.abj, %lftr.wideiv
  br i1 %exitcond512.not, label %.loopexit464, label %.lr.ph488, !llvm.loop !204

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.es, %.lr.ph488, %bb.eh, %bb.ef, %bb.eg, %bb.em, %bb.en, %bb.eo
  %lpad.loopexit.split-lp675 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit464:                                     ; preds = %bb.et, %bb.ep, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.aed = load ptr, ptr %20, align 8, !tbaa !41  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %indvars.iv513
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !74
  invoke void @_ZN9seq_split9mk_fromreEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %24, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.aef)
          to label %bb.eu unwind label %bb.fq

bb.eu:                                            ; preds = %.loopexit464
  %i.aeg = load ptr, ptr %24, align 8, !tbaa !41  ; 6 uses
  %i.aeh = load ptr, ptr %21, align 8, !tbaa !41  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aej = load i32, ptr %i.aei, align 4, !noalias !236
  %i.aek = and i32 %i.aej, 65535
  %i.ael = icmp eq i32 %i.aek, 0
  br i1 %i.ael, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377

_ZNK9seq_split11is_empty_ssEP4expr.exit.i380:     ; preds = %bb.eu
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !64, !noalias !236
  %i.aeo = load ptr, ptr %i.abx, align 8, !tbaa !38, !noalias !236
  %i.aep = icmp eq ptr %i.aen, %i.aeo
  br i1 %i.aep, label %bb.ev, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377

bb.ev:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.aeq = load ptr, ptr %i.abk, align 8, !tbaa !41, !noalias !238, !nonnull !31, !noundef !31 ; 2 uses
  store ptr %i.aeq, ptr %23, align 8, !tbaa !41, !alias.scope !238
  %i.aer = load ptr, ptr %i.abm, align 8, !tbaa !59, !noalias !238, !nonnull !31, !align !32 ; 2 uses
  store ptr %i.aer, ptr %i.aca, align 8, !tbaa !33, !alias.scope !238
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i380, %bb.eu
  %i.aes = load ptr, ptr %i.q, align 8, !tbaa !47, !noalias !236, !nonnull !31, !align !32
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 56
  %i.aeu = invoke noundef zeroext i1 @_ZNK8seq_util3rex10is_epsilonEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %i.aet, ptr noundef %i.aeh)
          to label %.noexc382 unwind label %bb.fr

.noexc382:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i377
  %i.aev = load ptr, ptr %1, align 8, !tbaa !55, !noalias !236, !nonnull !31, !align !32 ; 3 uses
  br i1 %i.aeu, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i, label %bb.ew

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %.noexc382
  store ptr %i.aeg, ptr %23, align 8, !tbaa !41, !alias.scope !236
  store ptr %i.aev, ptr %i.aca, align 8, !tbaa !33, !alias.scope !236
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

bb.ew:                                            ; preds = %.noexc382
  %i.aew = load ptr, ptr %i.aby, align 8, !tbaa !38, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !236
  store ptr %i.aeg, ptr %i.c, align 16, !tbaa !74, !noalias !236
  store ptr %i.aeh, ptr %i.abz, align 8, !tbaa !74, !noalias !236
  %i.aex = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.aev, ptr noundef %i.aew, i32 noundef 2, ptr noundef nonnull %i.c)
          to label %.noexc383 unwind label %bb.fr ; 3 uses

.noexc383:                                        ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !236
  %i.aey = load ptr, ptr %1, align 8, !tbaa !55, !noalias !236, !nonnull !31, !align !32 ; 2 uses
  store ptr %i.aex, ptr %23, align 8, !tbaa !41, !alias.scope !236
  store ptr %i.aey, ptr %i.aca, align 8, !tbaa !33, !alias.scope !236
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aex) ]
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378

_ZN9seq_split8mk_emptyEv.exit.sink.split.i378:    ; preds = %bb.ev, %.noexc383, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  %i.aez = phi ptr [ %i.aer, %bb.ev ], [ %i.aev, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i ], [ %i.aey, %.noexc383 ]
  %.sink12.i379 = phi ptr [ %i.aeq, %bb.ev ], [ %i.aeg, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i ], [ %i.aex, %.noexc383 ] ; 8 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 8 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !57, !noalias !236
  %i.afc = add i32 %i.afb, 1
  store i32 %i.afc, ptr %i.afa, align 4, !tbaa !57, !noalias !236
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.afd = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 4
  %i.afe = load i32, ptr %i.afd, align 4, !noalias !239
  %i.aff = and i32 %i.afe, 65535
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384

_ZNK9seq_split11is_empty_ssEP4expr.exit.i389:     ; preds = %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378
  %i.afh = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !64, !noalias !239
  %i.afj = load ptr, ptr %i.abx, align 8, !tbaa !38, !noalias !239
  %i.afk = icmp eq ptr %i.afi, %i.afj
  br i1 %i.afk, label %bb.ex, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384

bb.ex:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.afl = load <2 x ptr>, ptr %i.abk, align 8, !tbaa !60, !noalias !241
  %i.afm = load ptr, ptr %i.abk, align 8, !tbaa !41, !noalias !241 ; 2 uses
  store <2 x ptr> %i.afl, ptr %22, align 16, !tbaa !60, !alias.scope !241
  %.not.i.i.i.i390 = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i.i390, label %_ZN9seq_split7mk_lcatEP4exprS1_.exit, label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i389, %_ZN9seq_split8mk_emptyEv.exit.sink.split.i378
  %i.afn = load ptr, ptr %i.q, align 8, !tbaa !47, !noalias !239, !nonnull !31, !align !32
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 56
  %i.afp = invoke noundef zeroext i1 @_ZNK8seq_util3rex10is_epsilonEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %i.afo, ptr noundef %i.aed)
          to label %.noexc391 unwind label %bb.fs

.noexc391:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i384
  %i.afq = load ptr, ptr %1, align 8, !tbaa !55, !noalias !239, !nonnull !31, !align !32 ; 2 uses
  br i1 %i.afp, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388, label %bb.ey

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388: ; preds = %.noexc391
  store ptr %.sink12.i379, ptr %22, align 16, !tbaa !41, !alias.scope !239
  store ptr %i.afq, ptr %i.acd, align 8, !tbaa !33, !alias.scope !239
  br label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

bb.ey:                                            ; preds = %.noexc391
  %i.afr = load ptr, ptr %i.acb, align 8, !tbaa !38, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !239
  store ptr %i.aed, ptr %i.b, align 16, !tbaa !74, !noalias !239
  store ptr %.sink12.i379, ptr %i.acc, align 8, !tbaa !74, !noalias !239
  %i.afs = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.afq, ptr noundef %i.afr, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %.noexc392 unwind label %bb.fs ; 3 uses

.noexc392:                                        ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !239
  %i.aft = load ptr, ptr %1, align 8, !tbaa !55, !noalias !239, !nonnull !31, !align !32
  store ptr %i.afs, ptr %22, align 16, !tbaa !41, !alias.scope !239
  store ptr %i.aft, ptr %i.acd, align 8, !tbaa !33, !alias.scope !239
  %.not.i.i6.i385 = icmp eq ptr %i.afs, null
  br i1 %.not.i.i6.i385, label %_ZN9seq_split7mk_lcatEP4exprS1_.exit, label %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386

_ZN9seq_split8mk_emptyEv.exit.sink.split.i386:    ; preds = %.noexc392, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388, %bb.ex
  %.sink12.i387 = phi ptr [ %i.afm, %bb.ex ], [ %.sink12.i379, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i388 ], [ %i.afs, %.noexc392 ]
  %i.afu = getelementptr inbounds nuw i8, ptr %.sink12.i387, i64 8 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !57, !noalias !239
  %i.afw = add i32 %i.afv, 1
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !57, !noalias !239
  br label %_ZN9seq_split7mk_lcatEP4exprS1_.exit

_ZN9seq_split7mk_lcatEP4exprS1_.exit:             ; preds = %bb.ex, %.noexc392, %_ZN9seq_split8mk_emptyEv.exit.sink.split.i386
  %i.afx = getelementptr inbounds nuw i8, ptr %.sink12.i379, i64 8 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !57
  %i.afz = add i32 %i.afy, -1                     ; 2 uses
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !57
  %i.aga = icmp eq i32 %i.afz, 0
  br i1 %i.aga, label %bb.ez, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread

bb.ez:                                            ; preds = %_ZN9seq_split7mk_lcatEP4exprS1_.exit
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aez, ptr noundef nonnull %.sink12.i379)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.agb = landingpad { ptr, i32 }
          catch ptr null
  %i.agc = extractvalue { ptr, i32 } %i.agb, 0
  call void @__clang_call_terminate(ptr %i.agc) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit395:      ; preds = %bb.ez
  %.pre534 = load ptr, ptr %24, align 8, !tbaa !41 ; 2 uses
  %.not.i.i396 = icmp eq ptr %.pre534, null
  br i1 %.not.i.i396, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread

_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread: ; preds = %_ZN9seq_split7mk_lcatEP4exprS1_.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395
  %i.agd = phi ptr [ %.pre534, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395 ], [ %i.aeg, %_ZN9seq_split7mk_lcatEP4exprS1_.exit ] ; 2 uses
  %i.age = load ptr, ptr %i.ace, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 8 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !57
  %i.agh = add i32 %i.agg, -1                     ; 2 uses
  store i32 %i.agh, ptr %i.agf, align 4, !tbaa !57
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %bb.fb, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398

bb.fb:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.age, ptr noundef nonnull %i.agd)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit398 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.agj = landingpad { ptr, i32 }
          catch ptr null
  %i.agk = extractvalue { ptr, i32 } %i.agj, 0
  call void @__clang_call_terminate(ptr %i.agk) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit398:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit395, %_ZN7obj_refI4expr11ast_managerED2Ev.exit395.thread, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.agl = load ptr, ptr %0, align 8, !tbaa !41   ; 4 uses
  %i.agm = load ptr, ptr %22, align 16, !tbaa !41 ; 8 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.ago = load i32, ptr %i.agn, align 4, !noalias !242
  %i.agp = and i32 %i.ago, 65535
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399

_ZNK9seq_split11is_empty_ssEP4expr.exit.i407:     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit398
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !64, !noalias !242
  %i.agt = load ptr, ptr %i.abx, align 8, !tbaa !38, !noalias !242
  %i.agu = icmp eq ptr %i.ags, %i.agt
  br i1 %i.agu, label %bb.fd, label %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399

bb.fd:                                            ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407
  %.not.i.i.i408 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i.i408, label %_ZN9seq_split8mk_unionEP4exprS1_.exit410, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402

_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.i407, %_ZN7obj_refI4expr11ast_managerED2Ev.exit398
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.agw = load i32, ptr %i.agv, align 4, !noalias !242
  %i.agx = and i32 %i.agw, 65535
  %i.agy = icmp eq i32 %i.agx, 0
  br i1 %i.agy, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400

_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405:    ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !64, !noalias !242
  %i.ahb = load ptr, ptr %i.abx, align 8, !tbaa !38, !noalias !242
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402, label %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400

_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit.thread.i399, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405
  %i.ahd = load ptr, ptr %1, align 8, !tbaa !55, !noalias !242
  %i.ahe = load ptr, ptr %i.acf, align 8, !tbaa !38, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !242
  store ptr %i.agl, ptr %i.a, align 16, !tbaa !74, !noalias !242
  store ptr %i.agm, ptr %i.acg, align 8, !tbaa !74, !noalias !242
  %i.ahf = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ahd, ptr noundef %i.ahe, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %.noexc409 unwind label %bb.fv ; 2 uses

.noexc409:                                        ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.thread.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !242
  %.not.i.i11.i401 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i11.i401, label %_ZN9seq_split8mk_unionEP4exprS1_.exit410, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402: ; preds = %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405, %.noexc409, %bb.fd
  %.sroa.0.0 = phi ptr [ %i.agm, %bb.fd ], [ %i.ahf, %.noexc409 ], [ %i.agl, %_ZNK9seq_split11is_empty_ssEP4expr.exit7.i405 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !57, !noalias !242
  %i.ahi = add i32 %i.ahh, 1
  store i32 %i.ahi, ptr %i.ahg, align 4, !tbaa !57, !noalias !242
  br label %_ZN9seq_split8mk_unionEP4exprS1_.exit410

_ZN9seq_split8mk_unionEP4exprS1_.exit410:         ; preds = %bb.fd, %.noexc409, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402
  %.sroa.0.1 = phi ptr [ null, %bb.fd ], [ %.sroa.0.0, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i402 ], [ null, %.noexc409 ]
  %i.ahj = load ptr, ptr %0, align 8, !tbaa !41   ; 3 uses
  %.not.i.i412 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i412, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread, label %bb.fe

bb.fe:                                            ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit410
  %i.ahk = load ptr, ptr %i.abl, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8 ; 2 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !57
  %i.ahn = add i32 %i.ahm, -1                     ; 2 uses
  store i32 %i.ahn, ptr %i.ahl, align 4, !tbaa !57
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %bb.ff, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ahk, ptr noundef nonnull %i.ahj)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread unwind label %bb.fg

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread: ; preds = %_ZN9seq_split8mk_unionEP4exprS1_.exit410, %bb.fe, %bb.ff
  store ptr %.sroa.0.1, ptr %0, align 8, !tbaa !41
  %.not.i.i418 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i418, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit420, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #22
  unreachable

bb.fh:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit414.thread
end_hunk_0
