Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonVectorCombine?download=true
inline.NumInlined: 6843
inline.NumDeleted: 3195
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN12_GLOBAL__N_19HvxIdioms3runEv:bb.a
  br i1 %.not.not.i79.i, label %bb.ay, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #20
  store i16 257, ptr %i.cd, align 8
  %i.zx = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %i.wa, ptr noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(34) %222, ptr null, i64 0) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #20
  %i.zy = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i81.i = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i83.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !28
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %i.zy, ptr noundef %i.zx, ptr noundef nonnull align 8 dereferenceable(34) %227, ptr %.sroa.0.0.copyload.i.i81.i, i64 %.sroa.2.0.copyload.i.i83.i) #20, !inline_history !623
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef %i.zx) #20
  br label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i

_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i: ; preds = %bb.ay, %bb.ax, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i
  %.1.i80.i = phi ptr [ %i.zw, %bb.ax ], [ %i.zx, %bb.ay ], [ %i.wa, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #20
  br label %bb.bj

bb.az:                                            ; preds = %"_ZZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpEENK3$_0clEj.exit78.i"
  %i.aac = icmp ugt i32 %.sroa.speculated128.i, %i.wo
  br i1 %i.aac, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.aad = icmp eq i64 %.sroa.7133.0.extract.shift.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #20
  br i1 %i.aad, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.bs, align 1, !tbaa !371
  store ptr @.str.48, ptr %228, align 8, !tbaa !285
  store i8 3, ptr %i.br, align 8, !tbaa !372
  %i.aae = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef 41, ptr noundef nonnull %i.vy, ptr noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(34) %228, ptr noundef null, i64 0)
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i

bb.bc:                                            ; preds = %bb.ba
  store i8 1, ptr %i.bp, align 1, !tbaa !371
  store ptr @.str.55, ptr %229, align 8, !tbaa !285
  store i8 3, ptr %i.bo, align 8, !tbaa !372
  %i.aaf = load ptr, ptr %i.wd, align 8, !tbaa !317
  %i.aag = icmp eq ptr %i.aaf, %i.zb
  br i1 %i.aag, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aah = load ptr, ptr %i.bc, align 8, !tbaa !373, !nonnull !37, !align !252 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !28
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 120
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = call noundef ptr %i.aak(ptr noundef nonnull align 8 dereferenceable(8) %i.aah, i32 noundef 40, ptr noundef nonnull %i.vy, ptr noundef %i.zb) #20, !inline_history !624 ; 2 uses
  %.not.not.i85.i = icmp eq ptr %i.aal, null
  br i1 %.not.not.i85.i, label %bb.be, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.aam = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #20
  store i16 257, ptr %i.bq, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.aam, ptr noundef nonnull %i.vy, ptr noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(34) %221, ptr null, i64 0) #20
  %i.aan = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i87.i = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i89.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !28
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 8
  call void %i.aaq(ptr noundef nonnull align 8 dereferenceable(8) %i.aan, ptr noundef nonnull %i.aam, ptr noundef nonnull align 8 dereferenceable(34) %229, ptr %.sroa.0.0.copyload.i.i87.i, i64 %.sroa.2.0.copyload.i.i89.i) #20, !inline_history !625
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.aam) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #20
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.aar = phi ptr [ %i.aae, %bb.bb ], [ %i.aal, %bb.bd ], [ %i.vy, %bb.bc ], [ %i.aam, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #20
  %i.aas = icmp eq i64 %.sroa.7.0.extract.shift.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #20
  br i1 %i.aas, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i
  store i8 1, ptr %i.bx, align 1, !tbaa !371
  store ptr @.str.48, ptr %230, align 8, !tbaa !285
  store i8 3, ptr %i.bw, align 8, !tbaa !372
  %i.aat = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef 41, ptr noundef nonnull %i.wa, ptr noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(34) %230, ptr noundef null, i64 0)
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i

bb.bg:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i
  store i8 1, ptr %i.bu, align 1, !tbaa !371
  store ptr @.str.55, ptr %231, align 8, !tbaa !285
  store i8 3, ptr %i.bt, align 8, !tbaa !372
  %i.aau = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !317
  %i.aaw = icmp eq ptr %i.aav, %i.zb
  br i1 %i.aaw, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aax = load ptr, ptr %i.bc, align 8, !tbaa !373, !nonnull !37, !align !252 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !28
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 120
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = call noundef ptr %i.aba(ptr noundef nonnull align 8 dereferenceable(8) %i.aax, i32 noundef 40, ptr noundef nonnull %i.wa, ptr noundef %i.zb) #20, !inline_history !624 ; 2 uses
  %.not.not.i90.i = icmp eq ptr %i.abb, null
  br i1 %.not.not.i90.i, label %bb.bi, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i

bb.bi:                                            ; preds = %bb.bh
  %i.abc = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #20
  store i16 257, ptr %i.bv, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.abc, ptr noundef nonnull %i.wa, ptr noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(34) %220, ptr null, i64 0) #20
  %i.abd = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i92.i = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i94.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !28
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(8) %i.abd, ptr noundef nonnull %i.abc, ptr noundef nonnull align 8 dereferenceable(34) %231, ptr %.sroa.0.0.copyload.i.i92.i, i64 %.sroa.2.0.copyload.i.i94.i) #20, !inline_history !625
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.abc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #20
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.abh = phi ptr [ %i.aat, %bb.bf ], [ %i.abb, %bb.bh ], [ %i.wa, %bb.bg ], [ %i.abc, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #20
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i, %bb.az, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i
  %.069.i = phi ptr [ %.1.i.i, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i ], [ %i.aar, %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i ], [ %i.vy, %bb.az ] ; 4 uses
  %.068.i = phi ptr [ %.1.i80.i, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit84.i ], [ %i.abh, %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit95.i ], [ %i.wa, %bb.az ] ; 4 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !332 ; 2 uses
  %i.abk = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 56
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !237, !nonnull !37, !align !252 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 432
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !197
  %i.abp = icmp sgt i32 %i.abo, 0
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 344
  %i.abr = load i8, ptr %i.abq, align 8, !range !36
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abp, i1 %i.abs, i1 false
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %.sroa.speculated128.i, i32 32)
  %.lhs.trunc.i = select i1 %i.abt, i16 512, i16 1024
  %.rhs.trunc.i = trunc nuw nsw i32 %.sroa.speculated.i to i16
  %i.abu = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i  ; 4 uses
  %.zext.i = zext nneg i16 %i.abu to i32          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #20
  store ptr %i.ce, ptr %232, align 8, !tbaa !40
  store i32 0, ptr %i.cf, align 8, !tbaa !198
  store i32 6, ptr %i.cg, align 4, !tbaa !199
  %i.abv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !331
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i16 %i.abu to i64 ; 7 uses
  %i.abx = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.abw, i64 %.sroa.0.0.insert.ext.i.i.i) #20
  %i.aby = udiv i32 %i.abj, %.zext.i
  %.not73153.i = icmp ult i32 %i.abj, %.zext.i
  br i1 %.not73153.i, label %._ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge_crit_edge.i, label %.lr.ph.i

._ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge_crit_edge.i: ; preds = %bb.bj
  %.pre168.i = load i32, ptr %i.cf, align 8, !tbaa !198
  %.pre170.pre.i = load ptr, ptr %232, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bj
  %.sroa.16758.40.extract.trunc = trunc i64 %.sroa.1342.sroa.4.1.i to i32
  %i.abz = and i64 %.sroa.1342.sroa.4.1.i, 4294967296
  %i.aca = icmp ne i64 %i.abz, 0                  ; 5 uses
  %i.acb = add nsw i32 %.sroa.4.05157.i, -1
  %i.acc = icmp ne i32 %i.acb, %.sroa.16758.40.extract.trunc
  %or.cond137.not.i = select i1 %i.aca, i1 %i.acc, i1 false
  %i.acd = add nuw nsw i32 %.sroa.4.05157.i, 1    ; 2 uses
  %.not.i102.i = icmp eq i64 %.sroa.32.0.extract.shift.i, 2
  %.not129.i.i = icmp eq i64 %.sroa.3.0.extract.shift.i, 2
  %..i.i.i = select i1 %i.aca, i32 3164, i32 3165
  %i.ace = icmp eq i64 %.sroa.32.0.extract.shift.i, 1 ; 5 uses
  %i.acf = icmp ne i64 %.sroa.3.0.extract.shift.i, 1 ; 4 uses
  %i.acg = and i64 %.sroa.1342.sroa.4.1.i, 31
  %i.ach = shl nuw nsw i64 1, %i.acg
  %i.aci = lshr i64 %.sroa.1342.sroa.4.1.i, 5
  %i.acj = and i64 %i.aci, 134217727
  %i.ack = lshr i32 %.sroa.4.05157.i, 5           ; 7 uses
  %i.acl = and i32 %.sroa.4.05157.i, 31
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = zext nneg i32 %i.ack to i64
  %.not132.i.i = icmp eq i32 %i.ack, 0
  %i.aco = icmp eq i32 %.sroa.4.05157.i, 16
  %.not166.i = xor i1 %i.acf, true                ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.ace, i1 %i.acf, i1 false ; 5 uses
  %.mux.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 3141, i32 3143
  %spec.select.i.i.i.i = select i1 %i.acf, i32 3174, i32 3141
  %.sink38.i.i.i.i = select i1 %i.ace, i32 %.mux.i.i.i.i, i32 %spec.select.i.i.i.i ; 2 uses
  %i.acp = and i64 %.sroa.1342.sroa.4.1.i, 4294967295
  %i.acq = shl nuw i64 1, %i.acp
  %i.acr = zext nneg i32 %.sroa.4.05157.i to i64
  %or.cond142.i = select i1 %i.ace, i1 true, i1 %.not166.i
  %i.acs = icmp samesign ugt i16 %i.abu, 128      ; 2 uses
  %i.act = shl nuw nsw i16 %i.abu, 2
  %.idx.i410 = zext nneg i16 %i.act to i64        ; 4 uses
  %i.acu = add nsw i64 %.idx.i410, -4             ; 2 uses
  %i.acv = lshr exact i64 %i.acu, 2
  %i.acw = add nuw nsw i64 %i.acv, 1              ; 2 uses
  %min.iters.check1390 = icmp ult i64 %i.acu, 28
  %n.vec1392 = and i64 %i.acw, 9223372036854775800 ; 4 uses
  %i.acx = trunc i64 %n.vec1392 to i32
  %i.acy = shl i64 %n.vec1392, 2
  %cmp.n1404 = icmp eq i64 %i.acw, %n.vec1392
  %i.acz = add nsw i64 %.idx.i410, -4             ; 2 uses
  %i.ada = lshr exact i64 %i.acz, 2
  %i.adb = add nuw nsw i64 %i.ada, 1              ; 2 uses
  %min.iters.check1372 = icmp ult i64 %i.acz, 28
  %n.vec1374 = and i64 %i.adb, 9223372036854775800 ; 4 uses
  %i.adc = trunc i64 %n.vec1374 to i32
  %i.add = shl i64 %n.vec1374, 2
  %cmp.n1386 = icmp eq i64 %i.adb, %n.vec1374
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i
  %.0154.i = phi i32 [ 0, %.lr.ph.i ], [ %i.btn, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.ade = mul i32 %.0154.i, %.zext.i             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  store ptr %i.fp, ptr %50, align 8, !tbaa !40
  store i32 0, ptr %i.fq, align 8, !tbaa !198
  store i32 128, ptr %i.fr, align 4, !tbaa !199
  br i1 %i.acs, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424, label %.lr.ph.preheader.i.i.i.i406

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424: ; preds = %bb.bk
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %50, ptr noundef nonnull %i.fp, i64 noundef %.sroa.0.0.insert.ext.i.i.i, i64 noundef 4) #20
  %.pre.i.i.i.i425 = load i32, ptr %i.fq, align 8, !tbaa !198
  %.pre13.i.i.i.i426 = zext i32 %.pre.i.i.i.i425 to i64 ; 2 uses
  %.not11.i.i.i.i427 = icmp samesign eq i64 %.sroa.0.0.insert.ext.i.i.i, %.pre13.i.i.i.i426
  %.pre.pre.i428 = load ptr, ptr %50, align 8, !tbaa !40 ; 2 uses
  br i1 %.not11.i.i.i.i427, label %.lr.ph.i.preheader.i408, label %.lr.ph.preheader.i.i.i.i406

.lr.ph.preheader.i.i.i.i406:                      ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424, %bb.bk
  %i.adf = phi ptr [ %i.fp, %bb.bk ], [ %.pre.pre.i428, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424 ] ; 2 uses
  %.pre-phi.i.i3.i.i407 = phi i64 [ 0, %bb.bk ], [ %.pre13.i.i.i.i426, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424 ] ; 2 uses
  %i.adg = getelementptr [4 x i8], ptr %i.adf, i64 %.pre-phi.i.i3.i.i407
  %i.adh = sub nsw i64 %.sroa.0.0.insert.ext.i.i.i, %.pre-phi.i.i3.i.i407
  %i.adi = shl nsw i64 %i.adh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.adg, i8 0, i64 %i.adi, i1 false), !tbaa !219
  br label %.lr.ph.i.preheader.i408

.lr.ph.i.preheader.i408:                          ; preds = %.lr.ph.preheader.i.i.i.i406, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424
  %.pre.i409 = phi ptr [ %i.adf, %.lr.ph.preheader.i.i.i.i406 ], [ %.pre.pre.i428, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i424 ] ; 6 uses
  store i32 %.zext.i, ptr %i.fq, align 8, !tbaa !198
  %238 = getelementptr inbounds nuw i8, ptr %.pre.i409, i64 %.idx.i410
  br i1 %min.iters.check1390, label %.lr.ph.i.i411.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %.lr.ph.i.preheader.i408
  %i.adj = add i32 %i.ade, %i.acx
  %i.adk = getelementptr i8, ptr %.pre.i409, i64 %i.acy
  %broadcast.splatinsert1393 = insertelement <4 x i32> poison, i32 %i.ade, i64 0
  %broadcast.splat1394 = shufflevector <4 x i32> %broadcast.splatinsert1393, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1395 = add nsw <4 x i32> %broadcast.splat1394, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1391
  %index1397 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1401, %vector.body1396 ] ; 2 uses
  %vec.ind1398 = phi <4 x i32> [ %induction1395, %vector.ph1391 ], [ %vec.ind.next1402, %vector.body1396 ] ; 3 uses
  %step.add1399 = add nsw <4 x i32> %vec.ind1398, splat (i32 4)
  %i.adl = shl i64 %index1397, 2
  %next.gep1400 = getelementptr i8, ptr %.pre.i409, i64 %i.adl ; 2 uses
  %i.adm = getelementptr i8, ptr %next.gep1400, i64 16
  store <4 x i32> %vec.ind1398, ptr %next.gep1400, align 4, !tbaa !219
  store <4 x i32> %step.add1399, ptr %i.adm, align 4, !tbaa !219
  %index.next1401 = add nuw i64 %index1397, 8     ; 2 uses
  %vec.ind.next1402 = add nsw <4 x i32> %vec.ind1398, splat (i32 8)
  %i.adn = icmp eq i64 %index.next1401, %n.vec1392
  br i1 %i.adn, label %middle.block1403, label %vector.body1396, !llvm.loop !626

middle.block1403:                                 ; preds = %vector.body1396
  br i1 %cmp.n1404, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i417, label %.lr.ph.i.i411.preheader

.lr.ph.i.i411.preheader:                          ; preds = %.lr.ph.i.preheader.i408, %middle.block1403
  %.08.i.i412.ph = phi i32 [ %i.ade, %.lr.ph.i.preheader.i408 ], [ %i.adj, %middle.block1403 ]
  %.057.i.i413.ph = phi ptr [ %.pre.i409, %.lr.ph.i.preheader.i408 ], [ %i.adk, %middle.block1403 ]
  br label %.lr.ph.i.i411

.lr.ph.i.i411:                                    ; preds = %.lr.ph.i.i411.preheader, %.lr.ph.i.i411
  %.08.i.i412 = phi i32 [ %i.ado, %.lr.ph.i.i411 ], [ %.08.i.i412.ph, %.lr.ph.i.i411.preheader ] ; 2 uses
  %.057.i.i413 = phi ptr [ %i.adp, %.lr.ph.i.i411 ], [ %.057.i.i413.ph, %.lr.ph.i.i411.preheader ] ; 2 uses
  store i32 %.08.i.i412, ptr %.057.i.i413, align 4, !tbaa !219
  %i.ado = add nsw i32 %.08.i.i412, 1
  %i.adp = getelementptr inbounds nuw i8, ptr %.057.i.i413, i64 4 ; 2 uses
  %.not.i.i414 = icmp eq ptr %i.adp, %238
  br i1 %.not.i.i414, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i417, label %.lr.ph.i.i411, !llvm.loop !627

_ZSt4iotaIPiiEvT_S1_T0_.exit.i417:                ; preds = %.lr.ph.i.i411, %middle.block1403
  %.pre1.i416 = load i32, ptr %i.fq, align 8, !tbaa !198
  %i.adq = zext i32 %.pre1.i416 to i64            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  store i8 1, ptr %i.ft, align 1, !tbaa !371
  store ptr @.str.47, ptr %51, align 8, !tbaa !285
  store i8 3, ptr %i.fs, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  %i.adr = load ptr, ptr %i.bc, align 8, !tbaa !373, !nonnull !37, !align !252 ; 2 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !28
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 112
  %i.adu = load ptr, ptr %i.adt, align 8
  %i.adv = call noundef ptr %i.adu(ptr noundef nonnull align 8 dereferenceable(8) %i.adr, ptr noundef %.069.i, ptr noundef %.069.i, ptr %.pre.i409, i64 %i.adq) #20, !inline_history !628 ; 2 uses
  %.not.not.i.i418 = icmp eq ptr %i.adv, null
  br i1 %.not.not.i.i418, label %bb.bl, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i419

bb.bl:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i417
  %i.adw = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store i16 257, ptr %i.fu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.adw, ptr noundef %.069.i, ptr noundef %.069.i, ptr %.pre.i409, i64 %i.adq, ptr noundef nonnull align 8 dereferenceable(34) %48, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %49) #20
  %i.adx = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i.i421 = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i.i423 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !28
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8
  call void %i.aea(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef nonnull %i.adw, ptr noundef nonnull align 8 dereferenceable(34) %51, ptr %.sroa.0.0.copyload.i.i.i421, i64 %.sroa.2.0.copyload.i.i.i423) #20, !inline_history !629
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.adw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i419

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i419: ; preds = %bb.bl, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i417
  %.1.i.i420 = phi ptr [ %i.adw, %bb.bl ], [ %i.adv, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i417 ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  %i.aeb = load ptr, ptr %50, align 8, !tbaa !40  ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.fp
  br i1 %i.aec, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i419
  call void @free(ptr noundef %i.aeb) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  store ptr %i.fv, ptr %54, align 8, !tbaa !40
  store i32 0, ptr %i.fw, align 8, !tbaa !198
  store i32 128, ptr %i.fx, align 4, !tbaa !199
  br i1 %i.acs, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400, label %.lr.ph.preheader.i.i.i.i382

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400: ; preds = %bb.bn
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %54, ptr noundef nonnull %i.fv, i64 noundef %.sroa.0.0.insert.ext.i.i.i, i64 noundef 4) #20
  %.pre.i.i.i.i401 = load i32, ptr %i.fw, align 8, !tbaa !198
  %.pre13.i.i.i.i402 = zext i32 %.pre.i.i.i.i401 to i64 ; 2 uses
  %.not11.i.i.i.i403 = icmp samesign eq i64 %.sroa.0.0.insert.ext.i.i.i, %.pre13.i.i.i.i402
  %.pre.pre.i404 = load ptr, ptr %54, align 8, !tbaa !40 ; 2 uses
  br i1 %.not11.i.i.i.i403, label %.lr.ph.i.preheader.i384, label %.lr.ph.preheader.i.i.i.i382

.lr.ph.preheader.i.i.i.i382:                      ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400, %bb.bn
  %i.aed = phi ptr [ %i.fv, %bb.bn ], [ %.pre.pre.i404, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400 ] ; 2 uses
  %.pre-phi.i.i3.i.i383 = phi i64 [ 0, %bb.bn ], [ %.pre13.i.i.i.i402, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400 ] ; 2 uses
  %i.aee = getelementptr [4 x i8], ptr %i.aed, i64 %.pre-phi.i.i3.i.i383
  %i.aef = sub nsw i64 %.sroa.0.0.insert.ext.i.i.i, %.pre-phi.i.i3.i.i383
  %i.aeg = shl nsw i64 %i.aef, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aee, i8 0, i64 %i.aeg, i1 false), !tbaa !219
  br label %.lr.ph.i.preheader.i384

.lr.ph.i.preheader.i384:                          ; preds = %.lr.ph.preheader.i.i.i.i382, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400
  %.pre.i385 = phi ptr [ %i.aed, %.lr.ph.preheader.i.i.i.i382 ], [ %.pre.pre.i404, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i400 ] ; 6 uses
  store i32 %.zext.i, ptr %i.fw, align 8, !tbaa !198
  %239 = getelementptr inbounds nuw i8, ptr %.pre.i385, i64 %.idx.i410
  br i1 %min.iters.check1372, label %.lr.ph.i.i387.preheader, label %vector.ph1373

vector.ph1373:                                    ; preds = %.lr.ph.i.preheader.i384
  %i.aeh = add i32 %i.ade, %i.adc
  %i.aei = getelementptr i8, ptr %.pre.i385, i64 %i.add
  %broadcast.splatinsert1375 = insertelement <4 x i32> poison, i32 %i.ade, i64 0
  %broadcast.splat1376 = shufflevector <4 x i32> %broadcast.splatinsert1375, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1377 = add nsw <4 x i32> %broadcast.splat1376, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1373
  %index1379 = phi i64 [ 0, %vector.ph1373 ], [ %index.next1383, %vector.body1378 ] ; 2 uses
  %vec.ind1380 = phi <4 x i32> [ %induction1377, %vector.ph1373 ], [ %vec.ind.next1384, %vector.body1378 ] ; 3 uses
  %step.add1381 = add nsw <4 x i32> %vec.ind1380, splat (i32 4)
  %i.aej = shl i64 %index1379, 2
  %next.gep1382 = getelementptr i8, ptr %.pre.i385, i64 %i.aej ; 2 uses
  %i.aek = getelementptr i8, ptr %next.gep1382, i64 16
  store <4 x i32> %vec.ind1380, ptr %next.gep1382, align 4, !tbaa !219
  store <4 x i32> %step.add1381, ptr %i.aek, align 4, !tbaa !219
  %index.next1383 = add nuw i64 %index1379, 8     ; 2 uses
  %vec.ind.next1384 = add nsw <4 x i32> %vec.ind1380, splat (i32 8)
  %i.ael = icmp eq i64 %index.next1383, %n.vec1374
  br i1 %i.ael, label %middle.block1385, label %vector.body1378, !llvm.loop !630

middle.block1385:                                 ; preds = %vector.body1378
  br i1 %cmp.n1386, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i393, label %.lr.ph.i.i387.preheader

.lr.ph.i.i387.preheader:                          ; preds = %.lr.ph.i.preheader.i384, %middle.block1385
  %.08.i.i388.ph = phi i32 [ %i.ade, %.lr.ph.i.preheader.i384 ], [ %i.aeh, %middle.block1385 ]
  %.057.i.i389.ph = phi ptr [ %.pre.i385, %.lr.ph.i.preheader.i384 ], [ %i.aei, %middle.block1385 ]
  br label %.lr.ph.i.i387

.lr.ph.i.i387:                                    ; preds = %.lr.ph.i.i387.preheader, %.lr.ph.i.i387
  %.08.i.i388 = phi i32 [ %i.aem, %.lr.ph.i.i387 ], [ %.08.i.i388.ph, %.lr.ph.i.i387.preheader ] ; 2 uses
  %.057.i.i389 = phi ptr [ %i.aen, %.lr.ph.i.i387 ], [ %.057.i.i389.ph, %.lr.ph.i.i387.preheader ] ; 2 uses
  store i32 %.08.i.i388, ptr %.057.i.i389, align 4, !tbaa !219
  %i.aem = add nsw i32 %.08.i.i388, 1
  %i.aen = getelementptr inbounds nuw i8, ptr %.057.i.i389, i64 4 ; 2 uses
  %.not.i.i390 = icmp eq ptr %i.aen, %239
  br i1 %.not.i.i390, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i393, label %.lr.ph.i.i387, !llvm.loop !631

_ZSt4iotaIPiiEvT_S1_T0_.exit.i393:                ; preds = %.lr.ph.i.i387, %middle.block1385
  %.pre1.i392 = load i32, ptr %i.fw, align 8, !tbaa !198
  %i.aeo = zext i32 %.pre1.i392 to i64            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  store i8 1, ptr %i.fz, align 1, !tbaa !371
  store ptr @.str.47, ptr %55, align 8, !tbaa !285
  store i8 3, ptr %i.fy, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  %i.aep = load ptr, ptr %i.bc, align 8, !tbaa !373, !nonnull !37, !align !252 ; 2 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !28
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 112
  %i.aes = load ptr, ptr %i.aer, align 8
  %i.aet = call noundef ptr %i.aes(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef %.068.i, ptr noundef %.068.i, ptr %.pre.i385, i64 %i.aeo) #20, !inline_history !628 ; 2 uses
  %.not.not.i.i394 = icmp eq ptr %i.aet, null
  br i1 %.not.not.i.i394, label %bb.bo, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i395

bb.bo:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i393
  %i.aeu = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  store i16 257, ptr %i.ga, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.aeu, ptr noundef %.068.i, ptr noundef %.068.i, ptr %.pre.i385, i64 %i.aeo, ptr noundef nonnull align 8 dereferenceable(34) %52, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %53) #20
  %i.aev = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i.i397 = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i.i399 = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !28
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.aey = load ptr, ptr %i.aex, align 8
  call void %i.aey(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, ptr noundef nonnull %i.aeu, ptr noundef nonnull align 8 dereferenceable(34) %55, ptr %.sroa.0.0.copyload.i.i.i397, i64 %.sroa.2.0.copyload.i.i.i399) #20, !inline_history !629
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.aeu) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i395

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i395: ; preds = %bb.bo, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i393
  %.1.i.i396 = phi ptr [ %i.aeu, %bb.bo ], [ %i.aet, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i393 ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  %i.aez = load ptr, ptr %54, align 8, !tbaa !40  ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.fv
  br i1 %i.afa, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine15getElementRangeERN4llvm13IRBuilderBaseEPNS1_5ValueES5_ii.exit405, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i395
  call void @free(ptr noundef %i.aez) #20
  br label %_ZNK12_GLOBAL__N_120HexagonVectorCombine15getElementRangeERN4llvm13IRBuilderBaseEPNS1_5ValueES5_ii.exit405

_ZNK12_GLOBAL__N_120HexagonVectorCombine15getElementRangeERN4llvm13IRBuilderBaseEPNS1_5ValueES5_ii.exit405: ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit.i395, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %217)
  %i.afb = getelementptr inbounds nuw i8, ptr %.1.i.i420, i64 8 ; 3 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !317 ; 6 uses
  %i.afd = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afc) #24 ; 3 uses
  %i.afe = icmp ne i32 %i.afd, %i.acd
  %or.cond139.not145.i = select i1 %or.cond137.not.i, i1 true, i1 %i.afe
  %or.cond140.i = select i1 %or.cond139.not145.i, i1 true, i1 %.not.i102.i
  %or.cond141.i = select i1 %or.cond140.i, i1 true, i1 %.not129.i.i
  br i1 %or.cond141.i, label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.thread.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine15getElementRangeERN4llvm13IRBuilderBaseEPNS1_5ValueES5_ii.exit405
  switch i32 %i.acd, label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.thread.i.i [
    i32 16, label %bb.br
    i32 32, label %bb.bt
  ]

bb.br:                                            ; preds = %bb.bq
  br i1 %i.aca, label %bb.bs, label %.thread.i.i

bb.bs:                                            ; preds = %bb.br
  %i.aff = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 56
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !237, !nonnull !37, !align !252
  %i.afi = call noundef i32 @_ZNK4llvm16HexagonSubtarget14getIntrinsicIdEj(ptr noundef nonnull align 8 dereferenceable(519600) %i.afh, i32 noundef 3145) #20
  %i.afj = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.afk = load ptr, ptr %i.afb, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #20
  store ptr %.1.i.i420, ptr %i.ak, align 8, !tbaa !377
  store ptr %.1.i.i396, ptr %i.ck, align 8, !tbaa !377
  %i.afl = call fastcc noundef ptr @_ZNK12_GLOBAL__N_120HexagonVectorCombine18createHvxIntrinsicERN4llvm13IRBuilderBaseEjPNS1_4TypeENS1_8ArrayRefIPNS1_5ValueEEENS6_IS5_EES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.afj, ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef %i.afi, ptr noundef %i.afk, ptr nonnull %i.ak, i64 2, ptr null, i64 0, ptr null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #20
  br label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.afm = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 56
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !237, !nonnull !37, !align !252
  %i.afp = call noundef i32 @_ZNK4llvm16HexagonSubtarget14getIntrinsicIdEj(ptr noundef nonnull align 8 dereferenceable(519600) %i.afo, i32 noundef 3134) #20
  %i.afq = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 56
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !237, !nonnull !37, !align !252
  %i.aft = call noundef i32 @_ZNK4llvm16HexagonSubtarget14getIntrinsicIdEj(ptr noundef nonnull align 8 dereferenceable(519600) %i.afs, i32 noundef %..i.i.i) #20
  %i.afu = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #20
  store ptr %.1.i.i420, ptr %i.ai, align 8, !tbaa !377
  store ptr %.1.i.i396, ptr %i.ch, align 8, !tbaa !377
  %i.afv = call fastcc noundef ptr @_ZNK12_GLOBAL__N_120HexagonVectorCombine18createHvxIntrinsicERN4llvm13IRBuilderBaseEjPNS1_4TypeENS1_8ArrayRefIPNS1_5ValueEEENS6_IS5_EES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.afu, ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef %i.afp, ptr noundef nonnull %i.afc, ptr nonnull %i.ai, i64 2, ptr null, i64 0, ptr null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #20
  %i.afw = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #20
  store ptr %i.afv, ptr %i.aj, align 8, !tbaa !377
  store ptr %.1.i.i420, ptr %i.ci, align 8, !tbaa !377
  store ptr %.1.i.i396, ptr %i.cj, align 8, !tbaa !377
  %i.afx = call fastcc noundef ptr @_ZNK12_GLOBAL__N_120HexagonVectorCombine18createHvxIntrinsicERN4llvm13IRBuilderBaseEjPNS1_4TypeENS1_8ArrayRefIPNS1_5ValueEEENS6_IS5_EES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.afw, ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef %i.aft, ptr noundef nonnull %i.afc, ptr nonnull %i.aj, i64 3, ptr null, i64 0, ptr null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #20
  br label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i

_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i: ; preds = %bb.bt, %bb.bs
  %.0119.i.i = phi ptr [ %i.afl, %bb.bs ], [ %i.afx, %bb.bt ] ; 2 uses
  %.not130.i.i = icmp eq ptr %.0119.i.i, null
  br i1 %.not130.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.thread.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i

_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.thread.i.i: ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i, %bb.bq, %_ZNK12_GLOBAL__N_120HexagonVectorCombine15getElementRangeERN4llvm13IRBuilderBaseEPNS1_5ValueES5_ii.exit405
  %i.afy = icmp ult i32 %i.afd, 32
  br i1 %i.afy, label %bb.bu, label %bb.ds

bb.bu:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.thread.i.i
  %i.afz = icmp samesign ult i32 %i.afd, 16
  br i1 %i.afz, label %_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bu, %bb.br
  br i1 %i.aco, label %bb.bv, label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit._crit_edge.i.i

bb.bv:                                            ; preds = %.thread.i.i
  %i.aga = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252 ; 2 uses
  %.val34.i.i.i = load ptr, ptr %i.aga, align 8, !tbaa !298
  %i.agb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %.val34.i.i.i) #20
  %i.agc = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.agb, i32 noundef 16) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #20
  %i.agd = call { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef %i.agc, i1 noundef zeroext false) #20 ; 2 uses
  %i.age = extractvalue { i16, ptr } %i.agd, 0    ; 3 uses
  store i16 %i.age, ptr %203, align 8
  %i.agf = extractvalue { i16, ptr } %i.agd, 1
  store ptr %i.agf, ptr %i.eo, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aga, i64 56
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !237, !nonnull !37, !align !252 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 432
  %i.agj = load i32, ptr %i.agi, align 8, !tbaa !197
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 344
  %i.agl = load i8, ptr %i.agk, align 8, !range !36
  %.not.i.i.i.i.i = icmp eq i16 %i.age, 0
  br i1 %.not.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.agm = zext i16 %i.age to i64
  %i.agn = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.agm ; 2 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ago, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr i8, ptr %i.agn, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.agp = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %203) #24
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i:      ; preds = %bb.bx, %bb.bw
  %.pn.i.i.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i.i.i, %bb.bw ], [ %i.agp, %bb.bx ] ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i.i, 1
  %i.agq = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.agq, label %bb.by, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine8getHvxTyEPN4llvm4TypeEb.exit.i.i.i

bb.by:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.54) #21
  unreachable

_ZNK12_GLOBAL__N_120HexagonVectorCombine8getHvxTyEPN4llvm4TypeEb.exit.i.i.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i.i, 0
  %i.agr = icmp sgt i32 %i.agj, 0
  %i.ags = trunc nuw i8 %i.agl to i1
  %i.agt = select i1 %i.agr, i1 %i.ags, i1 false
  %i.agu = select i1 %i.agt, i64 512, i64 1024
  %i.agv = udiv i64 %i.agu, %.fca.0.extract.i.i.i.i
  %i.agw = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.agc, i64 %i.agv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #20
  %i.agx = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 56 ; 2 uses
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !237, !nonnull !37, !align !252 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 432
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !197
  %i.ahc = icmp slt i32 %i.ahb, 10
  %i.ahd = select i1 %i.ahc, i1 true, i1 %i.ace
  %brmerge.i = select i1 %i.ahd, i1 true, i1 %.not166.i
  br i1 %brmerge.i, label %bb.bz, label %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit.i.i

bb.bz:                                            ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine8getHvxTyEPN4llvm4TypeEb.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.agx, align 8, !tbaa !298
  %i.ahe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %.val.i.i.i) #20
  %i.ahf = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ahe, i32 noundef 16) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #20
  %i.ahg = call { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef %i.ahf, i1 noundef zeroext false) #20 ; 2 uses
  %i.ahh = extractvalue { i16, ptr } %i.ahg, 0    ; 3 uses
  store i16 %i.ahh, ptr %202, align 8
  %i.ahi = extractvalue { i16, ptr } %i.ahg, 1
  store ptr %i.ahi, ptr %i.ep, align 8
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19HvxIdioms3runEv:bb.a
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !323
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.brl, i64 8
  %.pre.i.i.i.i238.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i: ; preds = %bb.gv, %bb.gu
  %i.brm = phi i32 [ %.pre.i.i.i.i238.i.i, %bb.gv ], [ %i.brh, %bb.gu ] ; 2 uses
  %trunc.i.i.i.i.i.i.i.i = trunc i32 %i.brm to i8
  switch i8 %trunc.i.i.i.i.i.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i.i.i [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i
  %i.brn = and i32 %i.brm, 253
  %spec.select.i.i.i.i.i.i.i68 = icmp eq i32 %i.brn, 4
  br i1 %spec.select.i.i.i.i.i.i.i68, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i.i.i
  %trunc.i.i.i.i.i = trunc i32 %i.brh to i8
  switch i8 %trunc.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i [
    i8 16, label %bb.gx
    i8 17, label %.preheader.i.i.i.i.i.i
  ]

bb.gx:                                            ; preds = %bb.gw
  %i.bro = and i32 %i.brh, 1024
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.bro, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.brp = call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.brf) #20
  br i1 %i.brp, label %bb.gz, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i

bb.gz:                                            ; preds = %bb.gy
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brf, i64 16
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !322
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !323 ; 2 uses
  %.phi.trans.insert.i2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.brs, i64 8
  %.pre.i3.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i2.i.i.i.i.i, align 8
  br label %.loopexit.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.gw, %.preheader.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bru, %.preheader.i.i.i.i.i.i ], [ %i.brf, %bb.gw ]
  %i.brt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !387 ; 4 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 8
  %i.brw = load i32, ptr %i.brv, align 8          ; 2 uses
  %i.brx = and i32 %i.brw, 255
  %i.bry = icmp ne i32 %i.brx, 17
  %.not1828.i.i.i.i.i.i = icmp eq ptr %i.bru, null
  %.not18.i.i.i.i.i.i = or i1 %.not1828.i.i.i.i.i.i, %i.bry
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !4

.loopexit.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i, %bb.gz, %bb.gw
  %i.brz = phi i32 [ %i.brh, %bb.gw ], [ %.pre.i3.i.i.i.i.i, %bb.gz ], [ %i.brw, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.2.ph.i.i.i.i.i.i = phi ptr [ %i.brf, %bb.gw ], [ %i.brs, %bb.gz ], [ %i.bru, %.preheader.i.i.i.i.i.i ]
  %i.bsa = and i32 %i.brz, 254
  %spec.select.i.i.i.i.i.i.i.i99.i = icmp eq i32 %i.bsa, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i99.i, label %bb.ha, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i

bb.ha:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.bsb = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i.i.i, i64 16
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !322
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !323
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bsd, i64 8
  %.pre.i.i.i.i37.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ha, %.loopexit.i.i.i.i.i.i
  %i.bse = phi i32 [ %.pre.i.i.i.i37.i.i.i, %bb.ha ], [ %i.brz, %.loopexit.i.i.i.i.i.i ] ; 2 uses
  %trunc.i.i.i.i.i.i.i.i.i = trunc i32 %i.bse to i8
  switch i8 %trunc.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.i.i.i [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
  ]

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.i.i.i: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i
  %i.bsf = and i32 %i.bse, 253
  %spec.select.i.i21.i.i.i.i.i.i = icmp eq i32 %i.bsf, 4
  br i1 %spec.select.i.i21.i.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i: ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i.i.i, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt, %bb.gt
  %.sroa.0.0.copyload.i.i237.i.i = load i32, ptr %i.bf, align 8, !tbaa !219
  %i.bsg = load ptr, ptr %i.be, align 8           ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.bsg, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.brb, i32 noundef 3, ptr noundef nonnull %i.bsg) #20
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i.i.i.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i.i.i.i: ; preds = %bb.hb, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i.i.i
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.brb, i32 %.sroa.0.0.copyload.i.i237.i.i) #20
  br label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i: ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i.i.i.i, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.i.i.i, %bb.gy, %bb.gx, %bb.gt, %bb.gs
  %i.bsh = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i33.i.i.i = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i35.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.bsi = load ptr, ptr %i.bsh, align 8, !tbaa !28
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 16
  %i.bsk = load ptr, ptr %i.bsj, align 8
  call void %i.bsk(ptr noundef nonnull align 8 dereferenceable(8) %i.bsh, ptr noundef nonnull %i.brb, ptr noundef nonnull align 8 dereferenceable(34) %187, ptr %.sroa.0.0.copyload.i.i33.i.i.i, i64 %.sroa.2.0.copyload.i.i35.i.i.i) #20, !inline_history !692
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.brb) #20
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i.i.i

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i.i.i: ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i, %bb.gr, %_ZNK12_GLOBAL__N_120HexagonVectorCombine6vshuffERN4llvm13IRBuilderBaseEPNS1_5ValueES5_.exit.i.i.i
  %.1.i32.i.i.i = phi ptr [ %i.bra, %bb.gr ], [ %i.brb, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread40.i.i.i ], [ %.1.i.i.i235.i.i, %_ZNK12_GLOBAL__N_120HexagonVectorCombine6vshuffERN4llvm13IRBuilderBaseEPNS1_5ValueES5_.exit.i.i.i ]
  %i.bsl = lshr exact i64 %indvars.iv.i230.i.i, 1
  %i.bsm = load ptr, ptr %185, align 8, !tbaa !40 ; 2 uses
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %i.bsm, i64 %i.bsl
  store ptr %.1.i32.i.i.i, ptr %i.bsn, align 8, !tbaa !377
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #20
  %indvars.iv.next.i236.i.i = add nuw nsw i64 %indvars.iv.i230.i.i, 2 ; 2 uses
  %i.bso = trunc nuw i64 %indvars.iv.next.i236.i.i to i32
  %i.bsp = icmp sgt i32 %i.boy, %i.bso
  br i1 %i.bsp, label %.lr.ph.i229.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !693

._crit_edge46.i.i.i:                              ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit.i.i.i, %._crit_edge.i227.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEmS2_.exit.i.i.i
  %i.bsq = load ptr, ptr %185, align 8, !tbaa !40 ; 3 uses
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !377
  %i.bss = icmp eq ptr %i.bsq, %i.dz
  br i1 %i.bss, label %_ZNK12_GLOBAL__N_120HexagonVectorCombine18joinVectorElementsERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEEPNS1_10VectorTypeE.exit.i.i, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge46.i.i.i
  call void @free(ptr noundef nonnull %i.bsq) #20
  br label %_ZNK12_GLOBAL__N_120HexagonVectorCombine18joinVectorElementsERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEEPNS1_10VectorTypeE.exit.i.i

_ZNK12_GLOBAL__N_120HexagonVectorCombine18joinVectorElementsERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEEPNS1_10VectorTypeE.exit.i.i: ; preds = %bb.hc, %._crit_edge46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #20
  %i.bst = load ptr, ptr %213, align 8, !tbaa !40 ; 2 uses
  %i.bsu = icmp eq ptr %i.bst, %i.dh
  br i1 %i.bsu, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit246.i.i, label %bb.hd

bb.hd:                                            ; preds = %_ZNK12_GLOBAL__N_120HexagonVectorCombine18joinVectorElementsERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEEPNS1_10VectorTypeE.exit.i.i
  call void @free(ptr noundef %i.bst) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit246.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit246.i.i: ; preds = %bb.hd, %_ZNK12_GLOBAL__N_120HexagonVectorCombine18joinVectorElementsERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEEPNS1_10VectorTypeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #20
  %i.bsv = load ptr, ptr %212, align 8, !tbaa !40 ; 2 uses
  %i.bsw = icmp eq ptr %i.bsv, %i.cr
  br i1 %i.bsw, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit247.i.i, label %bb.he

bb.he:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit246.i.i
  call void @free(ptr noundef %i.bsv) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit247.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit247.i.i: ; preds = %bb.he, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit246.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #20
  %i.bsx = load ptr, ptr %211, align 8, !tbaa !40 ; 2 uses
  %i.bsy = icmp eq ptr %i.bsx, %i.cl
  br i1 %i.bsy, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit248.i.i, label %bb.hf

bb.hf:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit247.i.i
  call void @free(ptr noundef %i.bsx) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit248.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit248.i.i: ; preds = %bb.hf, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit247.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #20
  br label %_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i

_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit248.i.i, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit.i.i, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit.thread.i.i, %bb.bu, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i
  %.3.i.i = phi ptr [ %.0119.i.i, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulQ15ERN4llvm13IRBuilderBaseENS0_6SValueES4_b.exit.i.i ], [ %.1.i148.i.i, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i.i ], [ %i.ari, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit.i.i ], [ %i.bsr, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit248.i.i ], [ null, %bb.bu ], [ %.1.i.i.i.i, %_ZNK12_GLOBAL__N_19HvxIdioms12createMulH16ERN4llvm13IRBuilderBaseENS0_6SValueES4_.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %217)
  %i.bsz = load i32, ptr %i.cf, align 8, !tbaa !198 ; 2 uses
  %i.bta = load i32, ptr %i.cg, align 4, !tbaa !199
  %.not.i103.i = icmp ult i32 %i.bsz, %i.bta
  br i1 %.not.i103.i, label %bb.hh, label %bb.hg, !prof !221

bb.hg:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %232, ptr noundef %.3.i.i)
  %.pre.i = load i32, ptr %i.cf, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.hh:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms20processFxpMulChoppedERN4llvm13IRBuilderBaseERNS1_11InstructionERKNS0_5FxpOpE.exit.i
  %i.btb = zext i32 %i.bsz to i64
  %i.btc = load ptr, ptr %232, align 8, !tbaa !40
  %i.btd = getelementptr inbounds nuw [8 x i8], ptr %i.btc, i64 %i.btb
  store ptr %.3.i.i, ptr %i.btd, align 1
  %i.bte = load i32, ptr %i.cf, align 8, !tbaa !198
  %i.btf = add i32 %i.bte, 1                      ; 2 uses
  store i32 %i.btf, ptr %i.cf, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.hh, %bb.hg
  %i.btg = phi i32 [ %.pre.i, %bb.hg ], [ %i.btf, %bb.hh ] ; 2 uses
  %i.bth = load ptr, ptr %232, align 8, !tbaa !40 ; 2 uses
  %i.bti = zext i32 %i.btg to i64
  %i.btj = getelementptr inbounds nuw [8 x i8], ptr %i.bth, i64 %i.bti
  %i.btk = getelementptr inbounds i8, ptr %i.btj, i64 -8
  %i.btl = load ptr, ptr %i.btk, align 8, !tbaa !377
  %i.btm = icmp eq ptr %i.btl, null
  %i.btn = add nuw i32 %.0154.i, 1                ; 2 uses
  %.not73.i = icmp eq i32 %i.btn, %i.aby
  %or.cond257.i = select i1 %i.btm, i1 true, i1 %.not73.i
  br i1 %or.cond257.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i, label %bb.bk, !llvm.loop !694

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i, %._ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge_crit_edge.i
  %.pre170.i = phi ptr [ %.pre170.pre.i, %._ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge_crit_edge.i ], [ %i.bth, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ] ; 4 uses
  %i.bto = phi i32 [ %.pre168.i, %._ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge_crit_edge.i ], [ %i.btg, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i ] ; 2 uses
  %.not.i104.i = icmp eq i32 %i.bto, 0
  br i1 %.not.i104.i, label %bb.ho, label %bb.hi

bb.hi:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i
  %i.btp = zext i32 %i.bto to i64                 ; 2 uses
  %i.btq = getelementptr inbounds nuw [8 x i8], ptr %.pre170.i, i64 %i.btp
  %i.btr = getelementptr inbounds i8, ptr %i.btq, i64 -8
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !377
  %i.btt = icmp eq ptr %i.bts, null
  br i1 %i.btt, label %bb.ho, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.btu = call fastcc noundef ptr @_ZNK12_GLOBAL__N_120HexagonVectorCombine6concatERN4llvm13IRBuilderBaseENS1_8ArrayRefIPNS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr nonnull %.pre170.i, i64 %i.btp) ; 5 uses
  %i.btv = icmp eq i64 %.sroa.7133.0.extract.shift.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #20
  %i.btw = icmp eq i64 %.sroa.7.0.extract.shift.i, 1
  %or.cond143.i = select i1 %i.btv, i1 true, i1 %i.btw
  br i1 %or.cond143.i, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store i8 1, ptr %i.ic, align 1, !tbaa !371
  store ptr @.str.48, ptr %233, align 8, !tbaa !285
  store i8 3, ptr %i.ib, align 8, !tbaa !372
  %i.btx = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %224, i32 noundef 41, ptr noundef %i.btu, ptr noundef nonnull %i.we, ptr noundef nonnull align 8 dereferenceable(34) %233, ptr noundef null, i64 0)
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.hl:                                            ; preds = %bb.hj
  store i8 1, ptr %i.hz, align 1, !tbaa !371
  store ptr @.str.55, ptr %234, align 8, !tbaa !285
  store i8 3, ptr %i.hy, align 8, !tbaa !372
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btu, i64 8
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !317
  %i.bua = icmp eq ptr %i.btz, %i.we
  br i1 %i.bua, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bub = load ptr, ptr %i.bc, align 8, !tbaa !373, !nonnull !37, !align !252 ; 2 uses
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !28
  %i.bud = getelementptr inbounds nuw i8, ptr %i.buc, i64 120
  %i.bue = load ptr, ptr %i.bud, align 8
  %i.buf = call noundef ptr %i.bue(ptr noundef nonnull align 8 dereferenceable(8) %i.bub, i32 noundef 40, ptr noundef nonnull %i.btu, ptr noundef nonnull %i.we) #20, !inline_history !695 ; 2 uses
  %.not.not.i = icmp eq ptr %i.buf, null
  br i1 %.not.not.i, label %bb.hn, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.hn:                                            ; preds = %bb.hm
  %i.bug = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #20
  store i16 257, ptr %i.ia, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.bug, ptr noundef nonnull %i.btu, ptr noundef nonnull %i.we, ptr noundef nonnull align 8 dereferenceable(34) %89, ptr null, i64 0) #20
  %i.buh = load ptr, ptr %i.bd, align 8, !tbaa !374, !nonnull !37, !align !252 ; 2 uses
  %.sroa.0.0.copyload.i.i192 = load ptr, ptr %i.bn, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !28
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 16
  %i.buk = load ptr, ptr %i.buj, align 8
  call void %i.buk(ptr noundef nonnull align 8 dereferenceable(8) %i.buh, ptr noundef nonnull %i.bug, ptr noundef nonnull align 8 dereferenceable(34) %234, ptr %.sroa.0.0.copyload.i.i192, i64 %.sroa.2.0.copyload.i.i) #20, !inline_history !696
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %224, ptr noundef nonnull %i.bug) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #20
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit: ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %i.bul = phi ptr [ %i.btx, %bb.hk ], [ %i.buf, %bb.hm ], [ %i.btu, %bb.hl ], [ %i.bug, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #20
  %.pre169.i = load ptr, ptr %232, align 8, !tbaa !40
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, %bb.hi, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i
  %i.bum = phi ptr [ %.pre169.i, %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit ], [ %.pre170.i, %bb.hi ], [ %.pre170.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i ] ; 2 uses
  %.067.i = phi ptr [ %i.bul, %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit ], [ null, %bb.hi ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit._crit_edge.i ] ; 4 uses
  %i.bun = icmp eq ptr %i.bum, %i.ce
  br i1 %i.bun, label %_ZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpE.exit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @free(ptr noundef %i.bum) #20
  br label %_ZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpE.exit

_ZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpE.exit.thread: ; preds = %bb.aj, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %225)
  br label %_ZNSt14_Function_baseD2Ev.exit93

_ZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpE.exit: ; preds = %bb.ho, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #20
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bk) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.az) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %225)
  %.not.not62 = icmp eq ptr %.067.i, null
  br i1 %.not.not62, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.hq

bb.hq:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms13processFxpMulERN4llvm11InstructionERKNS0_5FxpOpE.exit
  %i.buo = load i8, ptr %.067.i, align 8, !tbaa !295
  %i.bup = icmp ugt i8 %i.buo, 29
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.rs, ptr noundef nonnull %.067.i) #20
  %i.buq = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 48
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !388, !nonnull !37, !align !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %235, i8 0, i64 32, i1 false)
  %i.but = call noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef nonnull %i.rs, ptr noundef nonnull %i.bus, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(32) %235) #20 ; 0 uses
  %i.buu = load ptr, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not.i69 = icmp eq ptr %i.buu, null
  br i1 %.not.i69, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.buv = call noundef zeroext i1 %i.buu(ptr noundef nonnull align 8 dereferenceable(32) %235, ptr noundef nonnull align 8 dereferenceable(32) %235, i32 noundef 3) #20, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.hq, %bb.hr
  br i1 %i.bup, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.buw = load ptr, ptr %i.rq, align 8, !tbaa !316
  br label %_ZNSt14_Function_baseD2Ev.exit93

bb.ht:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bux = getelementptr inbounds nuw i8, ptr %.067.i, i64 24
  br label %_ZNSt14_Function_baseD2Ev.exit93

bb.hu:                                            ; preds = %.lr.ph, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZN4llvm13isPowerOf2_64Em.exit.i, %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch14BinaryOp_matchINS0_10match_bindINS_5ValueEEENS2_20bind_const_intval_tyELj27ELb0EEENS3_IS6_S7_Lj28ELb0EEEEE5matchIS5_EEbPT_.exit, %.critedge.i, %bb.ag, %bb.af
  %i.buy = load i8, ptr %i.rs, align 8, !tbaa !295
  %i.buz = icmp eq i8 %i.buy, 88
  br i1 %i.buz, label %bb.hv, label %_ZNSt14_Function_baseD2Ev.exit93

bb.hv:                                            ; preds = %bb.hu
  %i.bva = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -56 ; 3 uses
  %i.bvb = load ptr, ptr %i.bva, align 8, !tbaa !327 ; 13 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bvc = load i8, ptr %i.bvb, align 8, !tbaa !295
  %i.bvd = icmp eq i8 %i.bvc, 14
  br i1 %i.bvd, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit93

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i: ; preds = %bb.hw
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvb, i64 32
  %i.bvf = load i32, ptr %i.bve, align 8
  %i.bvg = and i32 %i.bvf, 8192
  %.not.i.i.i73 = icmp eq i32 %i.bvg, 0
  br i1 %.not.i.i.i73, label %bb.oi, label %_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit

_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvb, i64 36
  %i.bvi = load i32, ptr %i.bvh, align 4, !tbaa !389
  %i.bvj = icmp eq i32 %i.bvi, 240
  br i1 %i.bvj, label %bb.hx, label %bb.oi

bb.hx:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %133)
  call void @llvm.lifetime.start.p0(ptr nonnull %137)
  call void @llvm.lifetime.start.p0(ptr nonnull %140)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  call void @llvm.lifetime.start.p0(ptr nonnull %146)
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  call void @llvm.lifetime.start.p0(ptr nonnull %152)
  call void @llvm.lifetime.start.p0(ptr nonnull %156)
  call void @llvm.lifetime.start.p0(ptr nonnull %162)
  call void @llvm.lifetime.start.p0(ptr nonnull %166)
  call void @llvm.lifetime.start.p0(ptr nonnull %171)
  call void @llvm.lifetime.start.p0(ptr nonnull %177)
  %i.bvk = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20
  %i.bvl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bvk) #20 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #20
  %i.bvm = getelementptr inbounds nuw i8, ptr %.sroa.0760.0939, i64 16
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !266 ; 3 uses
  %i.bvo = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 8
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !333, !nonnull !37, !align !252 ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %133, align 16, !tbaa !28
  store ptr %i.bvq, ptr %i.if, align 16, !tbaa !59
  store ptr %i.bvq, ptr %i.ig, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ih, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ii, align 16, !tbaa !335
  store i8 1, ptr %i.ij, align 1, !tbaa !339
  store i8 0, ptr %i.ik, align 2, !tbaa !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  %i.bvr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bvn) #20
  store ptr null, ptr %132, align 8, !tbaa !343
  store ptr %i.bvr, ptr %i.io, align 8, !tbaa !344
  store ptr %i.im, ptr %i.ip, align 8, !tbaa !346
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !348
  store ptr null, ptr %i.ir, align 8, !tbaa !358
  store i32 0, ptr %i.is, align 8, !tbaa !359
  store i8 0, ptr %i.it, align 4, !tbaa !360
  store i8 2, ptr %i.iu, align 1, !tbaa !361
  store i8 7, ptr %i.iv, align 2, !tbaa !362
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %i.im, align 8, !tbaa !28
  store ptr %i.bvq, ptr %i.iy, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %i.ig, i64 64, i1 false), !tbaa.struct !366
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.in, align 8, !tbaa !28
  store ptr %i.bvn, ptr %i.iw, align 8, !tbaa !367
end_hunk_1
