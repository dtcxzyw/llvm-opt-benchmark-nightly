inline.NumInlined: 2755
inline.NumDeleted: 1034
begin_hunk_0_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.de:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.aap = load ptr, ptr %.4, align 8, !tbaa !398
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.aar = load i32, ptr %i.aaq, align 1, !tbaa !81
  %i.aas = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !81
  %i.aau = zext i8 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aau
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.aaw = getelementptr inbounds i8, ptr %.32602, i64 -64
  %i.aax = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !69, !noalias !452
  %i.aaz = trunc i64 %i.aay to i32
  %i.aba = getelementptr inbounds i8, ptr %.32602, i64 -48
  store ptr %i.aaw, ptr %7, align 8, !tbaa !66, !alias.scope !452
  store i32 %i.aaz, ptr %i.aj, align 8, !tbaa !340, !alias.scope !452
  store ptr %i.aba, ptr %i.ak, align 8, !tbaa !342, !alias.scope !452
  %i.abb = call ptr @_ZN6hermes2vm11Interpreter19createGenerator_RJSERNS0_7RuntimeEPNS0_13RuntimeModuleEjNS0_6HandleINS0_11EnvironmentEEENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %i.aap, i32 noundef %i.aar, ptr %i.aav, ptr noundef nonnull dead_on_return %7) ; 2 uses
  %i.abc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3719 = icmp eq ptr %i.abb, inttoptr (i64 -1 to ptr)
  br i1 %.not3719, label %.loopexitthread-pre-split.loopexit4201, label %bb.df, !prof !65

bb.df:                                            ; preds = %bb.de
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = or i64 %i.abd, -281474976710656
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 1
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !81
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.abh
  store i64 %i.abe, ptr %i.abi, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abc, i64 7
  br label %.backedge.backedge

bb.dg:                                            ; preds = %.backedge
  %i.abk = getelementptr inbounds i8, ptr %.32602, i64 -56
  %.sroa.0.0.copyload.i2832 = load i64, ptr %i.abk, align 8, !tbaa !61
  %i.abl = and i64 %.sroa.0.0.copyload.i2832, 281474976710655
  %i.abm = inttoptr i64 %i.abl to ptr
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 20
  %.sroa.0.0.copyload.i.i.i2833 = load i32, ptr %i.abn, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i2834 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2833, 0
  %i.abo = zext i32 %.sroa.0.0.copyload.i.i.i2833 to i64
  %i.abp = add i64 %i.abo, %i.an
  %i.abq = inttoptr i64 %i.abp to ptr             ; 3 uses
  %i.abr = select i1 %.not.i.i.i.i.i2834, ptr null, ptr %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !81 ; 3 uses
  %.not26633849 = icmp eq i8 %i.abt, 0
  br i1 %.not26633849, label %._crit_edge3854, label %.lr.ph3853.preheader

.lr.ph3853.preheader:                             ; preds = %bb.dg
  %i.abu = zext i8 %i.abt to i32                  ; 3 uses
  %xtraiter.a = and i32 %i.abu, 7                 ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph3853.prol.loopexit, label %.lr.ph3853.prol

.lr.ph3853.prol:                                  ; preds = %.lr.ph3853.preheader, %.lr.ph3853.prol
  %.026313851.prol = phi ptr [ %i.aby, %.lr.ph3853.prol ], [ %i.abq, %.lr.ph3853.preheader ]
  %.026323850.prol = phi i32 [ %i.abz, %.lr.ph3853.prol ], [ %i.abu, %.lr.ph3853.preheader ]
  %prol.iter.a = phi i32 [ %prol.iter.next.a, %.lr.ph3853.prol ], [ 0, %.lr.ph3853.preheader ]
  %i.abv = getelementptr inbounds nuw i8, ptr %.026313851.prol, i64 4
  %.sroa.0.0.copyload.i.i.i2835.prol = load i32, ptr %i.abv, align 4, !tbaa !3 ; 2 uses
  %i.abw = zext i32 %.sroa.0.0.copyload.i.i.i2835.prol to i64
  %i.abx = add i64 %i.abw, %i.an
  %i.aby = inttoptr i64 %i.abx to ptr             ; 3 uses
  %i.abz = add nsw i32 %.026323850.prol, -1       ; 2 uses
  %prol.iter.next.a = add i32 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i32 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph3853.prol.loopexit, label %.lr.ph3853.prol, !llvm.loop !455

.lr.ph3853.prol.loopexit:                         ; preds = %.lr.ph3853.prol, %.lr.ph3853.preheader
  %.sroa.0.0.copyload.i.i.i2835.lcssa.unr = phi i32 [ poison, %.lr.ph3853.preheader ], [ %.sroa.0.0.copyload.i.i.i2835.prol, %.lr.ph3853.prol ]
  %.lcssa4216.unr = phi ptr [ poison, %.lr.ph3853.preheader ], [ %i.aby, %.lr.ph3853.prol ]
  %.026313851.unr = phi ptr [ %i.abq, %.lr.ph3853.preheader ], [ %i.aby, %.lr.ph3853.prol ]
  %.026323850.unr = phi i32 [ %i.abu, %.lr.ph3853.preheader ], [ %i.abz, %.lr.ph3853.prol ]
  %i.aca = icmp ult i8 %i.abt, 8
  br i1 %i.aca, label %._crit_edge3854.loopexit, label %.lr.ph3853

.lr.ph3853:                                       ; preds = %.lr.ph3853.prol.loopexit, %.lr.ph3853
  %.026313851 = phi ptr [ %i.adg, %.lr.ph3853 ], [ %.026313851.unr, %.lr.ph3853.prol.loopexit ]
  %.026323850 = phi i32 [ %i.adh, %.lr.ph3853 ], [ %.026323850.unr, %.lr.ph3853.prol.loopexit ]
  %i.acb = getelementptr inbounds nuw i8, ptr %.026313851, i64 4
  %.sroa.0.0.copyload.i.i.i2835 = load i32, ptr %i.acb, align 4, !tbaa !3
  %i.acc = zext i32 %.sroa.0.0.copyload.i.i.i2835 to i64
  %i.acd = add i64 %i.acc, %i.an
  %i.ace = inttoptr i64 %i.acd to ptr
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  %.sroa.0.0.copyload.i.i.i2835.1 = load i32, ptr %i.acf, align 4, !tbaa !3
  %i.acg = zext i32 %.sroa.0.0.copyload.i.i.i2835.1 to i64
  %i.ach = add i64 %i.acg, %i.an
  %i.aci = inttoptr i64 %i.ach to ptr
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %.sroa.0.0.copyload.i.i.i2835.2 = load i32, ptr %i.acj, align 4, !tbaa !3
  %i.ack = zext i32 %.sroa.0.0.copyload.i.i.i2835.2 to i64
  %i.acl = add i64 %i.ack, %i.an
  %i.acm = inttoptr i64 %i.acl to ptr
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %.sroa.0.0.copyload.i.i.i2835.3 = load i32, ptr %i.acn, align 4, !tbaa !3
  %i.aco = zext i32 %.sroa.0.0.copyload.i.i.i2835.3 to i64
  %i.acp = add i64 %i.aco, %i.an
  %i.acq = inttoptr i64 %i.acp to ptr
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  %.sroa.0.0.copyload.i.i.i2835.4 = load i32, ptr %i.acr, align 4, !tbaa !3
  %i.acs = zext i32 %.sroa.0.0.copyload.i.i.i2835.4 to i64
  %i.act = add i64 %i.acs, %i.an
  %i.acu = inttoptr i64 %i.act to ptr
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %.sroa.0.0.copyload.i.i.i2835.5 = load i32, ptr %i.acv, align 4, !tbaa !3
  %i.acw = zext i32 %.sroa.0.0.copyload.i.i.i2835.5 to i64
  %i.acx = add i64 %i.acw, %i.an
  %i.acy = inttoptr i64 %i.acx to ptr
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %.sroa.0.0.copyload.i.i.i2835.6 = load i32, ptr %i.acz, align 4, !tbaa !3
  %i.ada = zext i32 %.sroa.0.0.copyload.i.i.i2835.6 to i64
  %i.adb = add i64 %i.ada, %i.an
  %i.adc = inttoptr i64 %i.adb to ptr
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  %.sroa.0.0.copyload.i.i.i2835.7 = load i32, ptr %i.add, align 4, !tbaa !3 ; 2 uses
  %i.ade = zext i32 %.sroa.0.0.copyload.i.i.i2835.7 to i64
  %i.adf = add i64 %i.ade, %i.an
  %i.adg = inttoptr i64 %i.adf to ptr             ; 2 uses
  %i.adh = add nsw i32 %.026323850, -8            ; 2 uses
  %.not2663.7 = icmp eq i32 %i.adh, 0
  br i1 %.not2663.7, label %._crit_edge3854.loopexit, label %.lr.ph3853, !llvm.loop !457

._crit_edge3854.loopexit:                         ; preds = %.lr.ph3853, %.lr.ph3853.prol.loopexit
  %.sroa.0.0.copyload.i.i.i2835.lcssa = phi i32 [ %.sroa.0.0.copyload.i.i.i2835.lcssa.unr, %.lr.ph3853.prol.loopexit ], [ %.sroa.0.0.copyload.i.i.i2835.7, %.lr.ph3853 ]
  %.lcssa4216 = phi ptr [ %.lcssa4216.unr, %.lr.ph3853.prol.loopexit ], [ %i.adg, %.lr.ph3853 ]
  %.not.i.i.i.i.i2836 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2835.lcssa, 0
  %i.adi = select i1 %.not.i.i.i.i.i2836, ptr null, ptr %.lcssa4216
  br label %._crit_edge3854

._crit_edge3854:                                  ; preds = %._crit_edge3854.loopexit, %bb.dg
  %.02631.lcssa = phi ptr [ %i.abr, %bb.dg ], [ %i.adi, %._crit_edge3854.loopexit ]
  %i.adj = ptrtoint ptr %.02631.lcssa to i64
  %i.adk = or i64 %i.adj, -281474976710656
  %i.adl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !81
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.adn
  store i64 %i.adk, ptr %i.ado, align 8, !tbaa !69
  %i.adp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.dh:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.adq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !81
  %i.ads = zext i8 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.adv = load i32, ptr %i.adu, align 1, !tbaa !81 ; 4 uses
  %i.adw = shl i32 %i.adv, 3
  %i.adx = add i32 %i.adw, 23                     ; 2 uses
  %i.ady = and i32 %i.adx, -8                     ; 2 uses
  %i.adz = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.aea = zext i32 %i.ady to i64
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aea ; 2 uses
  %i.aec = load ptr, ptr %i.bc, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.aeb, %i.aec
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.di, label %bb.dj, !prof !65

bb.di:                                            ; preds = %bb.dh
  %i.aed = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 noundef %i.ady) #10
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  store ptr %i.aeb, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i: ; preds = %bb.dj, %bb.di
  %i.aee = phi ptr [ %i.aed, %bb.di ], [ %i.adz, %bb.dj ] ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 4 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.adt, align 8, !tbaa !61 ; 2 uses
  %i.aeg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeg, 0
  %i.aeh = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.an
  %i.aei = trunc i64 %i.aeh to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.aei
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aef, align 4, !tbaa !3
  %i.aej = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aek = ptrtoint ptr %i.aef to i64
  %i.ael = and i64 %i.aek, -4194304
  %i.aem = inttoptr i64 %i.ael to ptr
  %i.aen = icmp eq ptr %i.aej, %i.aem
  br i1 %i.aen, label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i, label %bb.dk, !prof !60

bb.dk:                                            ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
  %i.aeo = inttoptr i64 %i.aeg to ptr
  call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.aef, ptr noundef %i.aeo) #10
  br label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i

_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i: ; preds = %bb.dk, %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store i32 %i.adv, ptr %i.aep, align 4, !tbaa !458
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 4 uses
  %i.aer = zext i32 %i.adv to i64
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aer, 3 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %.idx.i.i.i.i.i.i.i
  %.not1421.i.i.i.i.i.i.i.i = icmp eq i32 %i.adv, 0
  br i1 %.not1421.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i
  %i.aet = add nsw i64 %.idx.i.i.i.i.i.i.i, -8    ; 2 uses
  %i.aeu = lshr exact i64 %i.aet, 3
  %i.aev = add nuw nsw i64 %i.aeu, 1              ; 2 uses
  %min.iters.check4188 = icmp ult i64 %i.aet, 24
  br i1 %min.iters.check4188, label %.lr.ph.i.i.i.i.i.i.i.i.preheader4200, label %vector.ph4189

vector.ph4189:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec4191 = and i64 %i.aev, 4611686018427387900 ; 3 uses
  %17 = shl i64 %n.vec4191, 3
  %18 = getelementptr i8, ptr %i.aeq, i64 %17
  br label %vector.body4192

vector.body4192:                                  ; preds = %vector.body4192, %vector.ph4189
  %index4193 = phi i64 [ 0, %vector.ph4189 ], [ %index.next4195, %vector.body4192 ] ; 2 uses
  %19 = shl i64 %index4193, 3
  %next.gep4194 = getelementptr i8, ptr %i.aeq, i64 %19 ; 2 uses
  %20 = getelementptr i8, ptr %next.gep4194, i64 16
  store <2 x i64> splat (i64 -1688849860263936), ptr %next.gep4194, align 8, !tbaa !61
  store <2 x i64> splat (i64 -1688849860263936), ptr %20, align 8, !tbaa !61
  %index.next4195 = add nuw i64 %index4193, 4     ; 2 uses
  %i.aew = icmp eq i64 %index.next4195, %n.vec4191
  br i1 %i.aew, label %middle.block4196, label %vector.body4192, !llvm.loop !460

middle.block4196:                                 ; preds = %vector.body4192
  %cmp.n4197 = icmp eq i64 %i.aev, %n.vec4191
  br i1 %cmp.n4197, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader4200

.lr.ph.i.i.i.i.i.i.i.i.preheader4200:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block4196
  %.01320.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %18, %middle.block4196 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader4200, %.lr.ph.i.i.i.i.i.i.i.i
  %.01320.i.i.i.i.i.i.i.i = phi ptr [ %i.aex, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01320.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader4200 ] ; 2 uses
  store i64 -1688849860263936, ptr %.01320.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.aex = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aex, %i.aes
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !463

_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block4196, %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i
  %i.aey = and i32 %i.adx, 16777208
  %i.aez = or disjoint i32 %i.aey, 352321536
  store i32 %i.aez, ptr %i.aee, align 4, !tbaa !81
  %i.afa = ptrtoint ptr %i.aee to i64
  %i.afb = or i64 %i.afa, -281474976710656
  %i.afc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !81
  %i.afe = zext i8 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.afe
  store i64 %i.afb, ptr %i.aff, align 8, !tbaa !69
  %i.afg = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 7
  br label %.backedge.backedge

bb.dl:                                            ; preds = %.backedge
  %i.afi = getelementptr inbounds i8, ptr %.32602, i64 -56
  %.sroa.0.0.copyload.i2839 = load i64, ptr %i.afi, align 8, !tbaa !61
  %i.afj = and i64 %.sroa.0.0.copyload.i2839, 281474976710655
  %i.afk = inttoptr i64 %i.afj to ptr
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 20
  %.sroa.0.0.copyload.i.i.i2840 = load i32, ptr %i.afl, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i2841 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2840, 0
  %i.afm = zext i32 %.sroa.0.0.copyload.i.i.i2840 to i64
  %i.afn = add i64 %i.afm, %i.an
  %i.afo = or i64 %i.afn, -281474976710656
  %i.afp = select i1 %.not.i.i.i.i.i2841, i64 -281474976710656, i64 %i.afo ; 2 uses
  store i64 %i.afp, ptr %i.o, align 8, !tbaa !69
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.afq = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !430 ; 3 uses
  %i.afs = ptrtoint ptr %i.afr to i64
  %i.aft = trunc i64 %i.afs to i1
  br i1 %i.aft, label %bb.dm, label %bb.dn, !prof !65

bb.dm:                                            ; preds = %bb.dl
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 23
  %i.afv = load i32, ptr %i.afu, align 1, !tbaa !464
  br label %_ZNK6hermes2vm9CodeBlock18getEnvironmentSizeEv.exit

bb.dn:                                            ; preds = %bb.dl
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afr, i64 12
  %i.afx = load i16, ptr %i.afw, align 1
  %i.afy = and i16 %i.afx, 255
  %i.afz = zext nneg i16 %i.afy to i32
  br label %_ZNK6hermes2vm9CodeBlock18getEnvironmentSizeEv.exit

_ZNK6hermes2vm9CodeBlock18getEnvironmentSizeEv.exit: ; preds = %bb.dm, %bb.dn
  %.0.i.i2842 = phi i32 [ %i.afv, %bb.dm ], [ %i.afz, %bb.dn ] ; 4 uses
  %i.aga = shl i32 %.0.i.i2842, 3
  %i.agb = add i32 %i.aga, 23                     ; 2 uses
  %i.agc = and i32 %i.agb, -8                     ; 2 uses
  %i.agd = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.age = zext i32 %i.agc to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.age ; 2 uses
  %i.agg = load ptr, ptr %i.bc, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i2843 = icmp ugt ptr %i.agf, %i.agg
  br i1 %.not.i.not.i.i.i.i.i.i2843, label %bb.do, label %bb.dp, !prof !65

bb.do:                                            ; preds = %_ZNK6hermes2vm9CodeBlock18getEnvironmentSizeEv.exit
  %i.agh = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 noundef %i.agc) #10
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i2845.pre = load i64, ptr %i.o, align 8, !tbaa !61
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i2844

bb.dp:                                            ; preds = %_ZNK6hermes2vm9CodeBlock18getEnvironmentSizeEv.exit
  store ptr %i.agf, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i2844

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i2844: ; preds = %bb.dp, %bb.do
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i2845 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i2845.pre, %bb.do ], [ %i.afp, %bb.dp ] ; 2 uses
  %i.agi = phi ptr [ %i.agh, %bb.do ], [ %i.agd, %bb.dp ] ; 5 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4 ; 3 uses
  %i.agk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i2845, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2846 = icmp eq i64 %i.agk, 0
  %i.agl = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i2845, %i.an
  %i.agm = trunc i64 %i.agl to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i2847 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2846, i32 0, i32 %i.agm
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i2847, ptr %i.agj, align 4, !tbaa !3
  %i.agn = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.ago = ptrtoint ptr %i.agj to i64
  %i.agp = and i64 %i.ago, -4194304
  %i.agq = inttoptr i64 %i.agp to ptr
  %i.agr = icmp eq ptr %i.agn, %i.agq
  br i1 %i.agr, label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i2848, label %bb.dq, !prof !60

bb.dq:                                            ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i2844
  %i.ags = inttoptr i64 %i.agk to ptr
  call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.agj, ptr noundef %i.ags) #10
  br label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i2848

_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i2848: ; preds = %bb.dq, %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i2844
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  store i32 %.0.i.i2842, ptr %i.agt, align 4, !tbaa !458
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agi, i64 16 ; 4 uses
  %i.agv = zext i32 %.0.i.i2842 to i64
  %.idx.i.i.i.i.i.i.i2849 = shl nuw nsw i64 %i.agv, 3 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 %.idx.i.i.i.i.i.i.i2849
  %.not1421.i.i.i.i.i.i.i.i2850 = icmp eq i32 %.0.i.i2842, 0
  br i1 %.not1421.i.i.i.i.i.i.i.i2850, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854, label %.lr.ph.i.i.i.i.i.i.i.i2851.preheader

.lr.ph.i.i.i.i.i.i.i.i2851.preheader:             ; preds = %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i2848
  %i.agx = add nsw i64 %.idx.i.i.i.i.i.i.i2849, -8 ; 2 uses
  %i.agy = lshr exact i64 %i.agx, 3
  %i.agz = add nuw nsw i64 %i.agy, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.agx, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i2851.preheader4199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i2851.preheader
  %n.vec = and i64 %i.agz, 4611686018427387900    ; 3 uses
  %21 = shl i64 %n.vec, 3
  %22 = getelementptr i8, ptr %i.agu, i64 %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %23 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.agu, i64 %23 ; 2 uses
  %24 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -1688849860263936), ptr %next.gep, align 8, !tbaa !61
  store <2 x i64> splat (i64 -1688849860263936), ptr %24, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aha = icmp eq i64 %index.next, %n.vec
  br i1 %i.aha, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.agz, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854, label %.lr.ph.i.i.i.i.i.i.i.i2851.preheader4199

.lr.ph.i.i.i.i.i.i.i.i2851.preheader4199:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i2851.preheader, %middle.block
  %.01320.i.i.i.i.i.i.i.i2852.ph = phi ptr [ %i.agu, %.lr.ph.i.i.i.i.i.i.i.i2851.preheader ], [ %22, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i2851

.lr.ph.i.i.i.i.i.i.i.i2851:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i2851.preheader4199, %.lr.ph.i.i.i.i.i.i.i.i2851
  %.01320.i.i.i.i.i.i.i.i2852 = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i.i.i.i2851 ], [ %.01320.i.i.i.i.i.i.i.i2852.ph, %.lr.ph.i.i.i.i.i.i.i.i2851.preheader4199 ] ; 2 uses
  store i64 -1688849860263936, ptr %.01320.i.i.i.i.i.i.i.i2852, align 8, !tbaa !61
  %i.ahb = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i.i.i2852, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i2853 = icmp eq ptr %i.ahb, %i.agw
  br i1 %.not.i.i.i.i.i.i.i.i2853, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854, label %.lr.ph.i.i.i.i.i.i.i.i2851, !llvm.loop !466

_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854: ; preds = %.lr.ph.i.i.i.i.i.i.i.i2851, %middle.block, %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i2848
  %i.ahc = and i32 %i.agb, 16777208
  %i.ahd = or disjoint i32 %i.ahc, 352321536
  store i32 %i.ahd, ptr %i.agi, align 4, !tbaa !81
  %i.ahe = ptrtoint ptr %i.agi to i64
  %i.ahf = or i64 %i.ahe, -281474976710656
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !81
  %i.ahi = zext i8 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ahi
  store i64 %i.ahf, ptr %i.ahj, align 8, !tbaa !69
  %i.ahk = load ptr, ptr %i.a, align 8, !tbaa !108
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 2
  br label %.backedge.backedge

bb.dr:                                            ; preds = %.backedge
  %i.ahm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !81
  %i.aho = zext i8 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aho
  %.sroa.0247.0.copyload = load i64, ptr %i.ahp, align 8, !tbaa !61
  %i.ahq = and i64 %.sroa.0247.0.copyload, 281474976710655
  %i.ahr = inttoptr i64 %i.ahq to ptr
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !81
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  %i.ahv = zext i8 %i.aht to i64
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %i.ahv ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !81
  %i.ahz = zext i8 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ahz
  %.sroa.0246.0.copyload = load i64, ptr %i.aia, align 8, !tbaa !61 ; 2 uses
  %i.aib = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aic = ptrtoint ptr %i.ahw to i64
  %i.aid = and i64 %i.aic, 1125899902648320
  %i.aie = inttoptr i64 %i.aid to ptr
  %i.aif = icmp eq ptr %i.aib, %i.aie
  br i1 %i.aif, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, label %bb.ds, !prof !60

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ahw, i64 %.sroa.0246.0.copyload) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit: ; preds = %bb.dr, %bb.ds
  store i64 %.sroa.0246.0.copyload, ptr %i.ahw, align 8, !tbaa !69
  %i.aig = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.dt:                                            ; preds = %.backedge
  %i.aih = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !81
  %i.aij = zext i8 %i.aii to i64
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aij
  %.sroa.0245.0.copyload = load i64, ptr %i.aik, align 8, !tbaa !61
  %i.ail = and i64 %.sroa.0245.0.copyload, 281474976710655
  %i.aim = inttoptr i64 %i.ail to ptr
  %i.ain = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.aio = load i16, ptr %i.ain, align 1, !tbaa !81
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aim, i64 16
  %i.aiq = zext i16 %i.aio to i64
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %i.aiq ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !81
  %i.aiu = zext i8 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aiu
  %.sroa.0244.0.copyload = load i64, ptr %i.aiv, align 8, !tbaa !61 ; 2 uses
  %i.aiw = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aix = ptrtoint ptr %i.air to i64
  %i.aiy = and i64 %i.aix, 1125899902648320
  %i.aiz = inttoptr i64 %i.aiy to ptr
  %i.aja = icmp eq ptr %i.aiw, %i.aiz
  br i1 %i.aja, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856, label %bb.du, !prof !60

bb.du:                                            ; preds = %bb.dt
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.air, i64 %.sroa.0244.0.copyload) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856: ; preds = %bb.dt, %bb.du
  store i64 %.sroa.0244.0.copyload, ptr %i.air, align 8, !tbaa !69
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  br label %.backedge.backedge

bb.dv:                                            ; preds = %.backedge
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !81
  %i.aje = zext i8 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aje
  %.sroa.0243.0.copyload = load i64, ptr %i.ajf, align 8, !tbaa !61
  %i.ajg = and i64 %.sroa.0243.0.copyload, 281474976710655
  %i.ajh = inttoptr i64 %i.ajg to ptr
  %i.aji = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !81
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajl = zext i8 %i.ajj to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %i.ajl ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !81
  %i.ajp = zext i8 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ajp
  %.sroa.0242.0.copyload = load i64, ptr %i.ajq, align 8, !tbaa !61
  %i.ajr = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.ajs = ptrtoint ptr %i.ajm to i64
  %i.ajt = and i64 %i.ajs, 1125899902648320
  %i.aju = inttoptr i64 %i.ajt to ptr
  %i.ajv = icmp ne ptr %i.ajr, %i.aju
  %i.ajw = load i8, ptr %i.ap, align 1, !range !428
  %i.ajx = trunc nuw i8 %i.ajw to i1
  %i.ajy = select i1 %i.ajv, i1 %i.ajx, i1 false
  br i1 %i.ajy, label %bb.dw, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit, !prof !65

bb.dw:                                            ; preds = %bb.dv
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ajm, align 8, !tbaa !61
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i64 %.sroa.0.0.copyload.i.i) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit: ; preds = %bb.dv, %bb.dw
  store i64 %.sroa.0242.0.copyload, ptr %i.ajm, align 8, !tbaa !69
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.dx:                                            ; preds = %.backedge
  %i.aka = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !81
  %i.akc = zext i8 %i.akb to i64
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.akc
  %.sroa.0241.0.copyload = load i64, ptr %i.akd, align 8, !tbaa !61
  %i.ake = and i64 %.sroa.0241.0.copyload, 281474976710655
  %i.akf = inttoptr i64 %i.ake to ptr
  %i.akg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.akh = load i16, ptr %i.akg, align 1, !tbaa !81
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akj = zext i16 %i.akh to i64
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %i.akj ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !81
  %i.akn = zext i8 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.akn
  %.sroa.0240.0.copyload = load i64, ptr %i.ako, align 8, !tbaa !61
  %i.akp = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.akq = ptrtoint ptr %i.akk to i64
  %i.akr = and i64 %i.akq, 1125899902648320
  %i.aks = inttoptr i64 %i.akr to ptr
  %i.akt = icmp ne ptr %i.akp, %i.aks
  %i.aku = load i8, ptr %i.ap, align 1, !range !428
  %i.akv = trunc nuw i8 %i.aku to i1
  %i.akw = select i1 %i.akt, i1 %i.akv, i1 false
  br i1 %i.akw, label %bb.dy, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2858, !prof !65

bb.dy:                                            ; preds = %bb.dx
  %.sroa.0.0.copyload.i.i2857 = load i64, ptr %i.akk, align 8, !tbaa !61
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i64 %.sroa.0.0.copyload.i.i2857) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2858

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2858: ; preds = %bb.dx, %bb.dy
  store i64 %.sroa.0240.0.copyload, ptr %i.akk, align 8, !tbaa !69
  %i.akx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  br label %.backedge.backedge

bb.dz:                                            ; preds = %.backedge
  %i.aky = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !81
  %i.ala = zext i8 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ala
  %.sroa.0239.0.copyload = load i64, ptr %i.alb, align 8, !tbaa !61
  %i.alc = and i64 %.sroa.0239.0.copyload, 281474976710655
  %i.ald = inttoptr i64 %i.alc to ptr
  %i.ale = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !81
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alh = zext i8 %i.alf to i64
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !81
  %i.all = zext i8 %i.alk to i64
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.all
  %.sroa.0.0.copyload.i2859 = load i64, ptr %i.ali, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2859, ptr %i.alm, align 8, !tbaa !69
  %i.aln = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.ea:                                            ; preds = %.backedge
  %i.alo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !81
  %i.alq = zext i8 %i.alp to i64
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.alq
  %.sroa.0238.0.copyload = load i64, ptr %i.alr, align 8, !tbaa !61
  %i.als = and i64 %.sroa.0238.0.copyload, 281474976710655
  %i.alt = inttoptr i64 %i.als to ptr
  %i.alu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.alv = load i16, ptr %i.alu, align 1, !tbaa !81
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alx = zext i16 %i.alv to i64
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !81
  %i.amb = zext i8 %i.ama to i64
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.amb
  %.sroa.0.0.copyload.i2860 = load i64, ptr %i.aly, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2860, ptr %i.amc, align 8, !tbaa !69
  %i.amd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  br label %.backedge.backedge

bb.eb:                                            ; preds = %.backedge
  %i.ame = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !81
  %i.amg = zext i8 %i.amf to i64
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.amg
  %.sroa.0.0.copyload.i2861 = load i64, ptr %i.at, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2861, ptr %i.amh, align 8, !tbaa !69
  %i.ami = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.ec:                                            ; preds = %.backedge
  %i.amj = getelementptr inbounds i8, ptr %.32602, i64 -48
  %i.amk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !81
  %i.amm = zext i8 %i.aml to i64
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.amm
  %.sroa.0.0.copyload.i2862 = load i64, ptr %i.amj, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2862, ptr %i.amn, align 8, !tbaa !69
  %i.amo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.ed:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.amp = call noundef i32 @_ZN6hermes2vm11Interpreter20declareGlobalVarImplERNS0_7RuntimeEPNS0_9CodeBlockEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.amq = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.amr = icmp eq i32 %i.amp, 0
  br i1 %i.amr, label %.loopexitthread-pre-split.loopexit4201, label %bb.ee, !prof !65

bb.ee:                                            ; preds = %bb.ed
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 5
  br label %.backedge.backedge

bb.ef:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.amt = call noundef i32 @_ZN6hermes2vm11Interpreter38throwIfHasRestrictedGlobalPropertyImplERNS0_7RuntimeEPNS0_9CodeBlockEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.amu = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.amv = icmp eq i32 %i.amt, 0
  br i1 %i.amv, label %.loopexitthread-pre-split.loopexit4201, label %bb.eg, !prof !65

bb.eg:                                            ; preds = %bb.ef
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 5
  br label %.backedge.backedge

bb.eh:                                            ; preds = %.backedge
  %i.amx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.amy = load i32, ptr %i.amx, align 1, !tbaa !81
  br label %bb.em

bb.ei:                                            ; preds = %.backedge
  %i.amz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.ana = load i32, ptr %i.amz, align 1, !tbaa !81
  br label %bb.em

bb.ej:                                            ; preds = %.backedge
  %i.anb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !81
  %i.and = zext i8 %i.anc to i32
  br label %bb.em

bb.ek:                                            ; preds = %.backedge
  %i.ane = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.anf = load i16, ptr %i.ane, align 1, !tbaa !81
  %i.ang = zext i16 %i.anf to i32
  br label %bb.em

bb.el:                                            ; preds = %.backedge
  %i.anh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.ani = load i16, ptr %i.anh, align 1, !tbaa !81
  %i.anj = zext i16 %i.ani to i32
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh
  %.sink4087 = phi i64 [ 6, %bb.el ], [ 6, %bb.ek ], [ 5, %bb.ej ], [ 8, %bb.ei ], [ 8, %bb.eh ]
  %.02627 = phi i1 [ false, %bb.el ], [ true, %bb.ek ], [ false, %bb.ej ], [ false, %bb.ei ], [ true, %bb.eh ]
  %.32621 = phi i32 [ %i.anj, %bb.el ], [ %i.ang, %bb.ek ], [ %i.and, %bb.ej ], [ %i.ana, %bb.ei ], [ %i.amy, %bb.eh ] ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 %.sink4087 ; 4 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !81
  %i.ann = zext i8 %i.anm to i64
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ann
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !69 ; 2 uses
  %i.anq = icmp ugt i64 %i.anp, -281474976710657
  br i1 %i.anq, label %bb.en, label %bb.fo, !prof !60

bb.en:                                            ; preds = %bb.em
  %i.anr = and i64 %i.anp, 281474976710655
  %i.ans = inttoptr i64 %i.anr to ptr             ; 8 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !81 ; 3 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.4, i64 40
  %i.anw = zext i8 %i.anu to i64
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.anw ; 7 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.ans, i64 12
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !3 ; 3 uses
  %i.aoa = load i32, ptr %i.anx, align 4, !tbaa !7
  %i.aob = icmp eq i32 %i.aoa, %i.anz
  br i1 %i.aob, label %bb.eo, label %bb.fa, !prof !60

bb.eo:                                            ; preds = %bb.en
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !467 ; 3 uses
  %i.aoe = icmp ult i32 %i.aod, 5
  br i1 %i.aoe, label %bb.ep, label %bb.eq, !prof !60

bb.ep:                                            ; preds = %bb.eo
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ans, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit

bb.eq:                                            ; preds = %bb.eo
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  %.sroa.0.0.copyload.i.i.i2864 = load i32, ptr %i.aog, align 4, !tbaa !3
  %i.aoh = zext i32 %.sroa.0.0.copyload.i.i.i2864 to i64
  %i.aoi = add i64 %i.aoh, %i.an
  %i.aoj = inttoptr i64 %i.aoi to ptr
  %i.aok = add i32 %i.aod, -5
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit: ; preds = %bb.ep, %bb.eq
  %.sink6.i = phi i32 [ %i.aok, %bb.eq ], [ %i.aod, %bb.ep ]
  %.sink.i = phi ptr [ %i.aol, %bb.eq ], [ %i.aof, %bb.ep ]
  %i.aom = zext i32 %.sink6.i to i64
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %i.aom
  %.sroa.0.0.i = load i32, ptr %i.aon, align 4, !tbaa !3 ; 9 uses
  %i.aoo = trunc i32 %.sroa.0.0.i to i8
  %i.aop = and i8 %i.aoo, 15
  switch i8 %i.aop, label %default.unreachable [
    i8 0, label %bb.er
    i8 8, label %bb.er
    i8 1, label %bb.es
    i8 9, label %bb.es
    i8 2, label %bb.et
    i8 10, label %bb.et
    i8 3, label %bb.eu
    i8 11, label %bb.eu
    i8 4, label %bb.ev
    i8 12, label %bb.ev
    i8 5, label %bb.ew
    i8 13, label %bb.ew
    i8 6, label %bb.ex
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869
    i8 7, label %bb.ey
    i8 15, label %bb.ez
  ]

bb.er:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %.not.i.i.i.i.i2867 = icmp eq i32 %.sroa.0.0.i, 0
  %i.aoq = zext i32 %.sroa.0.0.i to i64
  %i.aor = add i64 %i.aoq, %i.an
  %i.aos = or i64 %i.aor, -281474976710656
  %i.aot = select i1 %.not.i.i.i.i.i2867, i64 -281474976710656, i64 %i.aos
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.es:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.aou = and i32 %.sroa.0.0.i, -8
  %i.aov = zext i32 %i.aou to i64
  %i.aow = add i64 %i.aov, %i.an
  %i.aox = or i64 %i.aow, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.et:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.aoy = and i32 %.sroa.0.0.i, -8
  %i.aoz = zext i32 %i.aoy to i64
  %i.apa = add i64 %i.aoz, %i.an
  %i.apb = or i64 %i.apa, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.eu:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.apc = and i32 %.sroa.0.0.i, -8
  %i.apd = zext i32 %i.apc to i64
  %i.ape = add i64 %i.apd, %i.an
  %i.apf = inttoptr i64 %i.ape to ptr
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  %i.aph = load double, ptr %i.apg, align 8, !tbaa !77 ; 2 uses
  %i.api = fcmp uno double %i.aph, 0.000000e+00
  %i.apj = bitcast double %i.aph to i64
  %.sroa.0.0.i.i2866 = select i1 %i.api, i64 9221120237041090560, i64 %i.apj, !prof !65
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.ev:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.apk = ashr i32 %.sroa.0.0.i, 3
  %i.apl = sitofp i32 %i.apk to double
  %i.apm = bitcast double %i.apl to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.ew:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.apn = lshr i32 %.sroa.0.0.i, 3
  %i.apo = zext nneg i32 %i.apn to i64
  %i.app = or disjoint i64 %i.apo, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.ex:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  %i.apq = icmp ugt i32 %.sroa.0.0.i, 15
  %i.apr = zext i1 %i.apq to i64
  %i.aps = or disjoint i64 %i.apr, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.ey:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

bb.ez:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2869: ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez
  %.sroa.05.0.i2865 = phi i64 [ %i.aot, %bb.er ], [ %i.aox, %bb.es ], [ %i.apb, %bb.et ], [ %.sroa.0.0.i.i2866, %bb.eu ], [ %i.apm, %bb.ev ], [ %i.app, %bb.ew ], [ %i.aps, %bb.ex ], [ -1548112371908608, %bb.ez ], [ -1970324836974592, %bb.ey ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit ]
  %i.apt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !81
  %i.apv = zext i8 %i.apu to i64
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.apv
  store i64 %.sroa.05.0.i2865, ptr %i.apw, align 8, !tbaa !69
  br label %.backedge.backedge

bb.fa:                                            ; preds = %bb.en
  %i.apx = load ptr, ptr %.4, align 8, !tbaa !398
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = zext i32 %.32621 to i64
  %i.aqa = load ptr, ptr %i.apy, align 8, !tbaa !408
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.aqa, i64 %i.apz
  %.sroa.0.0.copyload.i2871 = load i32, ptr %i.aqb, align 4, !tbaa !3 ; 2 uses
  store i32 0, ptr %8, align 8, !tbaa !81
  store i32 -1, ptr %i.be, align 4, !tbaa !98
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.aqc = call i32 @_ZN6hermes2vm8JSObject28tryGetOwnNamedDescriptorFastEPS1_RNS0_7RuntimeENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE(ptr noundef nonnull %i.ans, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2871, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 2 uses
  %i.aqd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.aqe = icmp sgt i32 %i.aqc, -1
  br i1 %i.aqe, label %bb.fb, label %.critedge2666, !prof !60

bb.fb:                                            ; preds = %bb.fa
  %.not3741 = icmp eq i32 %i.aqc, 0
  br i1 %.not3741, label %bb.fi, label %bb.fc, !prof !65

bb.fc:                                            ; preds = %bb.fb
  %i.aqf = load i16, ptr %8, align 8
  %i.aqg = and i16 %i.aqf, 16
  %.not2659 = icmp eq i16 %i.aqg, 0
  br i1 %.not2659, label %bb.fd, label %.critedge2666

bb.fd:                                            ; preds = %bb.fc
  %i.aqh = zext i32 %i.anz to i64
  %i.aqi = add i64 %i.aqh, %i.an
  %i.aqj = inttoptr i64 %i.aqi to ptr
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 10
  %i.aql = load i8, ptr %i.aqk, align 2
  %i.aqm = and i8 %i.aql, 2
  %i.aqn = icmp ne i8 %i.aqm, 0
  %.not2660 = icmp eq i8 %i.anu, 0
  %or.cond = or i1 %.not2660, %i.aqn
  br i1 %or.cond, label %bb.ff, label %bb.fe, !prof !470

bb.fe:                                            ; preds = %bb.fd
  store i32 %i.anz, ptr %i.anx, align 4, !tbaa !3
  %i.aqo = load i32, ptr %i.be, align 4, !tbaa !98
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  store i32 %i.aqo, ptr %i.aqp, align 4, !tbaa !467
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %.sroa.0212.0.copyload = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.0212.0.copyload, 32 ; 2 uses
  %i.aqq = icmp ult i64 %.sroa.0212.0.copyload, 21474836480
  br i1 %i.aqq, label %bb.fg, label %bb.fh, !prof !60

bb.fg:                                            ; preds = %bb.ff
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.ans, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.fh:                                            ; preds = %bb.ff
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.aqs, align 4, !tbaa !3
  %i.aqt = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.aqu = add i64 %i.aqt, %i.an
  %i.aqv = inttoptr i64 %i.aqu to ptr
  %i.aqw = add nuw nsw i64 %.sroa.1.0.extract.shift.i, 4294967291
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.aqy = and i64 %i.aqw, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.fg, %bb.fh
  %.sink6.i.i = phi i64 [ %i.aqy, %bb.fh ], [ %.sroa.1.0.extract.shift.i, %bb.fg ]
  %.sink.i.i2873 = phi ptr [ %i.aqx, %bb.fh ], [ %i.aqr, %bb.fg ]
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i2873, i64 %.sink6.i.i
  %.sroa.0.0.i.i2874 = load i32, ptr %i.aqz, align 4, !tbaa !3
  store i32 %.sroa.0.0.i.i2874, ptr %9, align 4
  %i.ara = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqd, i64 1
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !81
  %i.ard = zext i8 %i.arc to i64
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ard
  store i64 %i.ara, ptr %i.are, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %.backedge.backedge

bb.fi:                                            ; preds = %bb.fb
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.arg = load i32, ptr %i.arf, align 4          ; 2 uses
  %i.arh = and i32 %i.arg, 128
  %.not3742 = icmp eq i32 %i.arh, 0
  br i1 %.not3742, label %bb.fj, label %.critedge2666, !prof !60

bb.fj:                                            ; preds = %bb.fi
  %i.ari = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %.sroa.0.0.copyload.i.i.i2876 = load i32, ptr %i.ari, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i2877 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2876, 0
  %i.arj = zext i32 %.sroa.0.0.copyload.i.i.i2876 to i64
  %i.ark = add i64 %i.arj, %i.an                  ; 2 uses
  %i.arl = inttoptr i64 %i.ark to ptr             ; 3 uses
  %.not26613743 = icmp eq i64 %i.ark, 0
  %.not2661 = or i1 %.not.i.i.i.i.i2877, %.not26613743
  br i1 %.not2661, label %.critedge2666, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 12
  %.sroa.0.0.copyload.i2878 = load i32, ptr %i.arm, align 4, !tbaa !3
  %i.arn = load i32, ptr %i.anx, align 4, !tbaa !7
  %i.aro = icmp ne i32 %i.arn, %.sroa.0.0.copyload.i2878
  %i.arp = and i32 %i.arg, 64
  %i.arq = icmp ne i32 %i.arp, 0
  %or.cond3672 = or i1 %i.arq, %i.aro
  br i1 %or.cond3672, label %.critedge2666, label %bb.fl, !prof !71

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.arr = getelementptr inbounds nuw i8, ptr %i.anx, i64 4
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !467 ; 3 uses
  %i.art = icmp ult i32 %i.ars, 5
  br i1 %i.art, label %bb.fm, label %bb.fn, !prof !60

bb.fm:                                            ; preds = %bb.fl
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arl, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit

bb.fn:                                            ; preds = %bb.fl
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %.sroa.0.0.copyload.i.i.i2879 = load i32, ptr %i.arv, align 4, !tbaa !3
  %i.arw = zext i32 %.sroa.0.0.copyload.i.i.i2879 to i64
  %i.arx = add i64 %i.arw, %i.an
  %i.ary = inttoptr i64 %i.arx to ptr
  %i.arz = add i32 %i.ars, -5
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit: ; preds = %bb.fm, %bb.fn
  %.sink6.i2880 = phi i32 [ %i.arz, %bb.fn ], [ %i.ars, %bb.fm ]
  %.sink.i2881 = phi ptr [ %i.asa, %bb.fn ], [ %i.aru, %bb.fm ]
  %i.asb = zext i32 %.sink6.i2880 to i64
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i2881, i64 %i.asb
  %.sroa.0.0.i2882 = load i32, ptr %i.asc, align 4, !tbaa !3
  store i32 %.sroa.0.0.i2882, ptr %10, align 4
  %i.asd = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqd, i64 1
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !81
  %i.asg = zext i8 %i.asf to i64
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.asg
  store i64 %i.asd, ptr %i.ash, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %.backedge.backedge

.critedge2666:                                    ; preds = %bb.fc, %bb.fa, %bb.fj, %bb.fk, %bb.fi
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aqd, i64 2
  %i.asj = load i8, ptr %i.asi, align 1, !tbaa !81
  %i.ask = zext i8 %i.asj to i64
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ask ; 2 uses
  %i.asm = or disjoint i8 %.sroa.03590.1, 2
  %.sroa.0203.0.in = select i1 %.02627, i8 %i.asm, i8 %.sroa.03590.1
  %.sroa.0203.0 = zext nneg i8 %.sroa.0203.0.in to i32
  %.not2662 = icmp eq i8 %i.anu, 0
  %i.asn = select i1 %.not2662, ptr null, ptr %i.anx
  %i.aso = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.asl, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2871, ptr %i.asl, i32 %.sroa.0203.0, ptr noundef %i.asn) #10 ; 2 uses
  %i.asp = extractvalue { i32, i64 } %i.aso, 0
  %i.asq = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.asr = icmp eq i32 %i.asp, 0
  br i1 %i.asr, label %.loopexitthread-pre-split.loopexit4201, label %bb.fp, !prof !65

bb.fo:                                            ; preds = %bb.em
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ass = load i8, ptr %i.anl, align 1, !tbaa !81
  %i.ast = zext i8 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ast
  %i.asv = load ptr, ptr %.4, align 8, !tbaa !398
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 24
  %i.asx = zext i32 %.32621 to i64
  %i.asy = load ptr, ptr %i.asw, align 8, !tbaa !408
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %i.asx
  %.sroa.0.0.copyload.i2891 = load i32, ptr %i.asz, align 4, !tbaa !3
  %i.ata = call { i32, i64 } @_ZN6hermes2vm11Interpreter20getByIdTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.asu, i32 %.sroa.0.0.copyload.i2891) ; 2 uses
  %i.atb = extractvalue { i32, i64 } %i.ata, 0
  %i.atc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.atd = icmp eq i32 %i.atb, 0
  br i1 %i.atd, label %.loopexitthread-pre-split.loopexit4201, label %bb.fp, !prof !65

bb.fp:                                            ; preds = %bb.fo, %.critedge2666
  %.pn3744 = phi { i32, i64 } [ %i.aso, %.critedge2666 ], [ %i.ata, %bb.fo ]
  %.42598 = phi ptr [ %i.asq, %.critedge2666 ], [ %i.atc, %bb.fo ]
  %.sroa.21.0 = extractvalue { i32, i64 } %.pn3744, 1
  %i.ate = getelementptr inbounds nuw i8, ptr %.42598, i64 1
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !81
  %i.atg = zext i8 %i.atf to i64
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.atg
  store i64 %.sroa.21.0, ptr %i.ath, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.fq:                                            ; preds = %.backedge
  %i.ati = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.atj = load i32, ptr %i.ati, align 1, !tbaa !81
  br label %bb.fu

bb.fr:                                            ; preds = %.backedge
  %i.atk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.atl = load i32, ptr %i.atk, align 1, !tbaa !81
  br label %bb.fu

bb.fs:                                            ; preds = %.backedge
  %i.atm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.atn = load i16, ptr %i.atm, align 1, !tbaa !81
  %i.ato = zext i16 %i.atn to i32
  br label %bb.fu

bb.ft:                                            ; preds = %.backedge
  %i.atp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.atq = load i16, ptr %i.atp, align 1, !tbaa !81
  %i.atr = zext i16 %i.atq to i32
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.sink4088 = phi i64 [ 6, %bb.ft ], [ 6, %bb.fs ], [ 8, %bb.fr ], [ 8, %bb.fq ]
  %.12628 = phi i1 [ false, %bb.ft ], [ true, %bb.fs ], [ false, %bb.fr ], [ true, %bb.fq ]
  %.42622 = phi i32 [ %i.atr, %bb.ft ], [ %i.ato, %bb.fs ], [ %i.atl, %bb.fr ], [ %i.atj, %bb.fq ] ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 %.sink4088 ; 4 uses
  %i.att = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1 ; 2 uses
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !81
  %i.atv = zext i8 %i.atu to i64
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.atv
  %i.atx = load i64, ptr %i.atw, align 8, !tbaa !69
  %i.aty = icmp ugt i64 %i.atx, -281474976710657
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  br i1 %i.aty, label %bb.fv, label %bb.gs, !prof !60

bb.fv:                                            ; preds = %bb.fu
  %i.atz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.aua = load i8, ptr %i.atz, align 1, !tbaa !81
  %i.aub = zext i8 %i.aua to i64
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aub
  %.sroa.0196.0.copyload = load i64, ptr %i.auc, align 8, !tbaa !61 ; 9 uses
  %i.aud = ashr i64 %.sroa.0196.0.copyload, 47
  switch i64 %i.aud, label %bb.gd [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.fw
    i64 -11, label %bb.fx
    i64 -10, label %bb.fy
    i64 -9, label %bb.fz
    i64 -6, label %bb.ga
    i64 -5, label %bb.ga
    i64 -4, label %bb.gb
    i64 -3, label %bb.gb
    i64 -2, label %bb.gc
    i64 -1, label %bb.gc
  ]

bb.fw:                                            ; preds = %bb.fv
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fx:                                            ; preds = %bb.fv
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fy:                                            ; preds = %bb.fv
  %i.aue = trunc i64 %.sroa.0196.0.copyload to i1
  %i.auf = select i1 %i.aue, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fz:                                            ; preds = %bb.fv
  %i.aug = trunc i64 %.sroa.0196.0.copyload to i32
  %i.auh = shl i32 %i.aug, 3
  %i.aui = or disjoint i32 %i.auh, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.ga:                                            ; preds = %bb.fv, %bb.fv
  %i.auj = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.auk = trunc i64 %i.auj to i32
  %i.aul = or i32 %i.auk, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gb:                                            ; preds = %bb.fv, %bb.fv
  %i.aum = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.aun = trunc i64 %i.aum to i32
  %i.auo = or i32 %i.aun, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gc:                                            ; preds = %bb.fv, %bb.fv
  %i.aup = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.auq = trunc i64 %i.aup to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gd:                                            ; preds = %bb.fv
  %i.aur = bitcast i64 %.sroa.0196.0.copyload to double
  %i.aus = fptosi double %i.aur to i32
  %i.aut = shl i32 %i.aus, 3                      ; 2 uses
  %i.auu = ashr exact i32 %i.aut, 3
  %i.auv = sitofp i32 %i.auu to double
  %i.auw = bitcast double %i.auv to i64
  %i.aux = icmp eq i64 %.sroa.0196.0.copyload, %i.auw
  br i1 %i.aux, label %bb.ge, label %bb.gf, !prof !60

bb.ge:                                            ; preds = %bb.gd
  %i.auy = or disjoint i32 %i.aut, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gf:                                            ; preds = %bb.gd
  %i.auz = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 16 ; 2 uses
  %i.avb = load ptr, ptr %i.bc, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ava, %i.avb
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.gg, label %bb.gh, !prof !65

bb.gg:                                            ; preds = %bb.gf
  %i.avc = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.gh:                                            ; preds = %bb.gf
  store ptr %i.ava, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.gh, %bb.gg
  %i.avd = phi ptr [ %i.avc, %bb.gg ], [ %i.auz, %bb.gh ] ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  store i64 %.sroa.0196.0.copyload, ptr %i.ave, align 8, !tbaa !77
  store i32 402653200, ptr %i.avd, align 8, !tbaa !81
  %i.avf = ptrtoint ptr %i.avd to i64
  %i.avg = sub i64 %i.avf, %i.an
  %i.avh = trunc i64 %i.avg to i32
  %i.avi = or i32 %i.avh, 3
  %.pre3928 = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.ge, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %i.avj = phi ptr [ %.sink4081.sink.in, %bb.fv ], [ %.sink4081.sink.in, %bb.gc ], [ %.sink4081.sink.in, %bb.fw ], [ %.sink4081.sink.in, %bb.fx ], [ %.sink4081.sink.in, %bb.fy ], [ %.sink4081.sink.in, %bb.fz ], [ %.sink4081.sink.in, %bb.ga ], [ %.sink4081.sink.in, %bb.gb ], [ %.sink4081.sink.in, %bb.ge ], [ %.pre3928, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.fv ], [ %i.auq, %bb.gc ], [ 14, %bb.fw ], [ 15, %bb.fx ], [ %i.auf, %bb.fy ], [ %i.aui, %bb.fz ], [ %i.aul, %bb.ga ], [ %i.auo, %bb.gb ], [ %i.auy, %bb.ge ], [ %i.avi, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 5 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 1
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !81
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.avm
  %.sroa.0191.0.copyload = load i64, ptr %i.avn, align 8, !tbaa !61
  %i.avo = and i64 %.sroa.0191.0.copyload, 281474976710655
  %i.avp = inttoptr i64 %i.avo to ptr             ; 5 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avj, i64 3
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !81 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.4, i64 40
  %i.avt = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.avu = load i32, ptr %i.avt, align 8, !tbaa !471
  %i.avv = zext i8 %i.avr to i32
  %i.avw = add i32 %i.avu, %i.avv
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.avs, i64 %i.avx ; 4 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avp, i64 12
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !3 ; 3 uses
  %i.awb = load i32, ptr %i.avy, align 4, !tbaa !7
  %i.awc = icmp eq i32 %i.awb, %i.awa
  br i1 %i.awc, label %bb.gi, label %bb.gn, !prof !60

bb.gi:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !467 ; 3 uses
  %i.awf = icmp ult i32 %i.awe, 5
  br i1 %i.awf, label %bb.gj, label %bb.gl, !prof !60

bb.gj:                                            ; preds = %bb.gi
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avp, i64 20
  %i.awh = zext nneg i32 %i.awe to i64
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.awh ; 3 uses
  %i.awj = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.awk = ptrtoint ptr %i.awi to i64
  %i.awl = and i64 %i.awk, 1125899902648320
  %i.awm = inttoptr i64 %i.awl to ptr
  %i.awn = icmp eq ptr %i.awj, %i.awm
  br i1 %i.awn, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.gk, !prof !60

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.awi, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.gk, %bb.gj
  store i32 %.sroa.04.0.i, ptr %i.awi, align 4, !tbaa !91
  br label %.backedge.backedge

bb.gl:                                            ; preds = %bb.gi
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avp, i64 16
  %.sroa.0.0.copyload.i.i.i2895 = load i32, ptr %i.awo, align 4, !tbaa !3
  %i.awp = zext i32 %.sroa.0.0.copyload.i.i.i2895 to i64
  %i.awq = add i64 %i.awp, %i.an
  %i.awr = inttoptr i64 %i.awq to ptr
  %i.aws = add i32 %i.awe, -5
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.awu = zext i32 %i.aws to i64
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.awt, i64 %i.awu ; 3 uses
  %i.aww = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.awx = ptrtoint ptr %i.awv to i64
  %i.awy = and i64 %i.awx, -4194304
  %i.awz = inttoptr i64 %i.awy to ptr
  %i.axa = icmp eq ptr %i.aww, %i.awz
  br i1 %i.axa, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i, label %bb.gm, !prof !60

bb.gm:                                            ; preds = %bb.gl
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.awv, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.gm, %bb.gl
  store i32 %.sroa.04.0.i, ptr %i.awv, align 4, !tbaa !91
  br label %.backedge.backedge

bb.gn:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.axb = load ptr, ptr %.4, align 8, !tbaa !398
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 24
  %i.axd = zext i32 %.42622 to i64
  %i.axe = load ptr, ptr %i.axc, align 8, !tbaa !408
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %i.axd
  %.sroa.0.0.copyload.i2896 = load i32, ptr %i.axf, align 4, !tbaa !3 ; 2 uses
  store i32 0, ptr %11, align 4, !tbaa !81
  store i32 -1, ptr %i.bd, align 4, !tbaa !98
  %i.axg = call i32 @_ZN6hermes2vm8JSObject28tryGetOwnNamedDescriptorFastEPS1_RNS0_7RuntimeENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE(ptr noundef nonnull %i.avp, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2896, ptr noundef nonnull align 4 dereferenceable(8) %11)
  %i.axh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %or.cond3673 = icmp sgt i32 %i.axg, 0
  br i1 %or.cond3673, label %bb.go, label %.critedge2668, !prof !107

bb.go:                                            ; preds = %bb.gn
  %i.axi = load i16, ptr %11, align 4
  %i.axj = and i16 %i.axi, 84
  %or.cond2670 = icmp eq i16 %i.axj, 4
  br i1 %or.cond2670, label %bb.gp, label %.critedge2668

bb.gp:                                            ; preds = %bb.go
  %i.axk = zext i32 %i.awa to i64
  %i.axl = add i64 %i.axk, %i.an
  %i.axm = inttoptr i64 %i.axl to ptr
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 10
  %i.axo = load i8, ptr %i.axn, align 2
  %i.axp = trunc i8 %i.axo to i1
  %.not2658 = icmp eq i8 %i.avr, 0
  %or.cond2671 = or i1 %.not2658, %i.axp
  br i1 %or.cond2671, label %._crit_edge3929, label %bb.gq, !prof !470

._crit_edge3929:                                  ; preds = %bb.gp
  %.pre3930 = load i32, ptr %i.bd, align 4, !tbaa !98
  br label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i32 %i.awa, ptr %i.avy, align 4, !tbaa !3
  %i.axq = load i32, ptr %i.bd, align 4, !tbaa !98 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  store i32 %i.axq, ptr %i.axr, align 4, !tbaa !467
  br label %bb.gr

bb.gr:                                            ; preds = %._crit_edge3929, %bb.gq
  %i.axs = phi i32 [ %.pre3930, %._crit_edge3929 ], [ %i.axq, %bb.gq ]
  call void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_(ptr noundef nonnull %i.avp, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.axs, i32 %.sroa.04.0.i)
  br label %.backedge.backedge

.critedge2668:                                    ; preds = %bb.gn, %bb.go
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axh, i64 1
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !81
  %i.axv = zext i8 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.axv ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axh, i64 2
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !81
  %i.axz = zext i8 %i.axy to i64
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.axz
  %i.ayb = or disjoint i8 %.sroa.03590.1, 2
  %.sroa.0175.0.in = select i1 %.12628, i8 %i.ayb, i8 %.sroa.03590.1
  %.sroa.0175.0 = zext nneg i8 %.sroa.0175.0.in to i32
  %i.ayc = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.axw, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2896, ptr %i.aya, ptr %i.axw, i32 %.sroa.0175.0) #10
  %i.ayd = load ptr, ptr %i.a, align 8, !tbaa !108
  %.mask3740 = and i32 %i.ayc, 255
  %i.aye = icmp eq i32 %.mask3740, 0
  br i1 %i.aye, label %.loopexitthread-pre-split.loopexit4201, label %bb.gt, !prof !65

bb.gs:                                            ; preds = %bb.fu
  %i.ayf = load i8, ptr %i.att, align 1, !tbaa !81
  %i.ayg = zext i8 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ayg
  %i.ayi = load ptr, ptr %.4, align 8, !tbaa !398
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 24
  %i.ayk = zext i32 %.42622 to i64
  %i.ayl = load ptr, ptr %i.ayj, align 8, !tbaa !408
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.ayk
  %.sroa.0.0.copyload.i2905 = load i32, ptr %i.aym, align 4, !tbaa !3
  %i.ayn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !81
  %i.ayp = zext i8 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ayp
  %i.ayr = trunc nuw i8 %.12604 to i1
  %i.ays = call noundef i32 @_ZN6hermes2vm11Interpreter20putByIdTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDES6_b(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ayh, i32 %.sroa.0.0.copyload.i2905, ptr %i.ayq, i1 noundef zeroext %i.ayr)
  %i.ayt = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ayu = icmp eq i32 %i.ays, 0
  br i1 %i.ayu, label %.loopexitthread-pre-split.loopexit4201, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.critedge2668
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.gu:                                            ; preds = %.backedge
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !81
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ayx
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !69
  %i.aza = icmp ugt i64 %i.ayz, -281474976710657
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.azb = load i8, ptr %i.ayv, align 1, !tbaa !81
  %i.azc = zext i8 %i.azb to i64
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azc ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !81
  %i.azg = zext i8 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azg ; 2 uses
  br i1 %i.aza, label %bb.gv, label %bb.gw, !prof !60

bb.gv:                                            ; preds = %bb.gu
  %i.azi = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %i.azd, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.azh, ptr %i.azd) #10 ; 2 uses
  %i.azj = extractvalue { i32, i64 } %i.azi, 0
  %i.azk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.azl = icmp eq i32 %i.azj, 0
  br i1 %i.azl, label %.loopexitthread-pre-split.loopexit4201, label %bb.gx, !prof !65

bb.gw:                                            ; preds = %bb.gu
  %i.azm = call { i32, i64 } @_ZN6hermes2vm11Interpreter21getByValTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.azd, ptr %i.azh) ; 2 uses
  %i.azn = extractvalue { i32, i64 } %i.azm, 0
  %i.azo = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.azp = icmp eq i32 %i.azn, 0
  br i1 %i.azp, label %.loopexitthread-pre-split.loopexit4201, label %bb.gx, !prof !65

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn3734 = phi { i32, i64 } [ %i.azi, %bb.gv ], [ %i.azm, %bb.gw ]
  %.5 = phi ptr [ %i.azk, %bb.gv ], [ %i.azo, %bb.gw ] ; 2 uses
  %.sroa.21.1 = extractvalue { i32, i64 } %.pn3734, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.azq = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !81
  %i.azs = zext i8 %i.azr to i64
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azs
  store i64 %.sroa.21.1, ptr %i.azt, align 8, !tbaa !69
  %i.azu = getelementptr inbounds nuw i8, ptr %.5, i64 4
  br label %.backedge.backedge

bb.gy:                                            ; preds = %.backedge
  %i.azv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1 ; 2 uses
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !81
  %i.azx = zext i8 %i.azw to i64
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azx
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !69
  %i.baa = icmp ugt i64 %i.azz, -281474976710657
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bab = load i8, ptr %i.azv, align 1, !tbaa !81
  %i.bac = zext i8 %i.bab to i64
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bac ; 3 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !81
  %i.bag = zext i8 %i.baf to i64
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bag ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.baj = load i8, ptr %i.bai, align 1, !tbaa !81
  %i.bak = zext i8 %i.baj to i64
  %i.bal = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bak ; 2 uses
  br i1 %i.baa, label %bb.gz, label %bb.ha, !prof !60

bb.gz:                                            ; preds = %bb.gy
  %.sroa.03590.0.insert.ext3600 = zext nneg i8 %.sroa.03590.1 to i32
  %i.bam = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.bad, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bah, ptr %i.bal, ptr %i.bad, i32 %.sroa.03590.0.insert.ext3600) #10
  %i.ban = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3733 = and i32 %i.bam, 255
  %i.bao = icmp eq i32 %.mask3733, 0
  br i1 %i.bao, label %.loopexitthread-pre-split.loopexit4201, label %bb.hb, !prof !65

bb.ha:                                            ; preds = %bb.gy
  %i.bap = trunc nuw i8 %.12604 to i1
  %i.baq = call noundef i32 @_ZN6hermes2vm11Interpreter21putByValTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_S6_b(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bad, ptr %i.bah, ptr %i.bal, i1 noundef zeroext %i.bap)
  %i.bar = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bas = icmp eq i32 %i.baq, 0
  br i1 %i.bas, label %.loopexitthread-pre-split.loopexit4201, label %bb.hb, !prof !65

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.6 = phi ptr [ %i.ban, %bb.gz ], [ %i.bar, %bb.ha ]
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bat = getelementptr inbounds nuw i8, ptr %.6, i64 4
  br label %.backedge.backedge

bb.hc:                                            ; preds = %.backedge
  %i.bau = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  %i.bav = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.baw = load i32, ptr %i.bav, align 1, !tbaa !81
  br label %bb.he

bb.hd:                                            ; preds = %.backedge
  %i.bax = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.bay = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !81
  %i.bba = zext i8 %i.baz to i32
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.52623 = phi i32 [ %i.bba, %bb.hd ], [ %i.baw, %bb.hc ]
  %.82614 = phi ptr [ %i.bax, %bb.hd ], [ %i.bau, %bb.hc ]
  %i.bbb = uitofp i32 %.52623 to double
  store double %i.bbb, ptr %i.o, align 8, !tbaa !69
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bbc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !81
  %i.bbe = zext i8 %i.bbd to i64
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbe
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !81
  %i.bbi = zext i8 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbi
  %i.bbk = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.bbf, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o, i32 319, ptr %i.bbj, i32 0) #10 ; 0 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %.backedge.backedge

bb.hf:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bbl = call noundef i32 @_ZN6hermes2vm11Interpreter16caseGetPNameListERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.bbm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bbn = icmp eq i32 %i.bbl, 0
  br i1 %i.bbn, label %.loopexitthread-pre-split.loopexit4201, label %bb.hg, !prof !65

bb.hg:                                            ; preds = %bb.hf
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbm, i64 5
  br label %.backedge.backedge

bb.hh:                                            ; preds = %.backedge
  %i.bbp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !81
  %i.bbr = zext i8 %i.bbq to i64
  %i.bbs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbr
  %i.bbt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !81
  %i.bbv = zext i8 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbv
  %i.bbx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !81
  %i.bbz = zext i8 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbz
  %i.bcb = load double, ptr %i.bca, align 8, !tbaa !69
  %i.bcc = fptoui double %i.bcb to i32            ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !81
  %i.bcf = zext i8 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bcf
  %i.bch = load double, ptr %i.bcg, align 8, !tbaa !69
  %i.bci = fptoui double %i.bch to i32            ; 2 uses
  %i.bcj = load ptr, ptr %i.l, align 8, !tbaa !46 ; 4 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 192 ; 2 uses
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !49 ; 4 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 200
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !59 ; 2 uses
  %i.bco = icmp ult ptr %i.bcl, %i.bcn
  br i1 %i.bco, label %bb.hi, label %bb.hj, !prof !60

bb.hi:                                            ; preds = %bb.hh
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8 ; 2 uses
  store ptr %i.bcp, ptr %i.bck, align 8, !tbaa !49
  store i64 -281474976710656, ptr %i.bcl, align 8, !tbaa !61
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.hj:                                            ; preds = %bb.hh
  %i.bcq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bcj, i64 -281474976710656) #10
  %.pre3924 = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre3924, i64 192
  %.pre3925 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert3926 = getelementptr inbounds nuw i8, ptr %.pre3924, i64 200
  %.pre3927 = load ptr, ptr %.phi.trans.insert3926, align 8, !tbaa !59
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.hi, %bb.hj
  %i.bcr = phi ptr [ %i.bcn, %bb.hi ], [ %.pre3927, %bb.hj ]
  %i.bcs = phi ptr [ %i.bcp, %bb.hi ], [ %.pre3925, %bb.hj ] ; 4 uses
  %i.bct = phi ptr [ %i.bcj, %bb.hi ], [ %.pre3924, %bb.hj ] ; 2 uses
  %.0.i.i.i.i.i.i2909 = phi ptr [ %i.bcl, %bb.hi ], [ %i.bcq, %bb.hj ]
  store ptr %.0.i.i.i.i.i.i2909, ptr %12, align 8, !tbaa !96
  %i.bcu = icmp ult ptr %i.bcs, %i.bcr
  br i1 %i.bcu, label %bb.hk, label %bb.hl, !prof !60

bb.hk:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bct, i64 192
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcs, i64 8
  store ptr %i.bcw, ptr %i.bcv, align 8, !tbaa !49
  store i64 -1266636858327041, ptr %i.bcs, align 8, !tbaa !61
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.hl:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bcx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bct, i64 -1266636858327041) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.hk, %bb.hl
  %.0.i.i.i.i.i.i2910 = phi ptr [ %i.bcs, %bb.hk ], [ %i.bcx, %bb.hl ]
  store ptr %.0.i.i.i.i.i.i2910, ptr %13, align 8, !tbaa !96
  %i.bcy = icmp ult i32 %i.bcc, %i.bci
  br i1 %i.bcy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.ho
  %.73848 = phi ptr [ %i.bdp, %bb.ho ], [ %.sink4081.sink.in, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.026333847 = phi i32 [ %i.bdx, %bb.ho ], [ %i.bcc, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i.i2911 = load i64, ptr %i.bbw, align 8, !tbaa !61
  %i.bcz = and i64 %.sroa.0.0.copyload.i.i2911, 281474976710655
  %i.bda = inttoptr i64 %i.bcz to ptr             ; 2 uses
  %i.bdb = icmp ult i32 %.026333847, 4096
  br i1 %i.bdb, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph
  %i.bdc = add i32 %.026333847, -4096
  %i.bdd = lshr i32 %i.bdc, 10
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bda, i64 32776
  %i.bdf = zext nneg i32 %i.bdd to i64
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.bde, i64 %i.bdf
  %i.bdh = load i64, ptr %i.bdg, align 8, !tbaa !69
  %i.bdi = and i64 %i.bdh, 281474976710655
  %i.bdj = inttoptr i64 %i.bdi to ptr
  %i.bdk = and i32 %.026333847, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit: ; preds = %.lr.ph, %bb.hm
  %.sink8.i = phi ptr [ %i.bdj, %bb.hm ], [ %i.bda, %.lr.ph ]
  %.sink7.i = phi i32 [ %i.bdk, %bb.hm ], [ %.026333847, %.lr.ph ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %.sink8.i, i64 8
  %i.bdm = zext nneg i32 %.sink7.i to i64
  %i.bdn = getelementptr inbounds nuw [8 x i8], ptr %i.bdl, i64 %i.bdm
  %.sroa.0.0.i2912 = load i64, ptr %i.bdn, align 8, !tbaa !61
  store i64 %.sroa.0.0.i2912, ptr %i.o, align 8, !tbaa !69
  store i32 0, ptr %14, align 4, !tbaa !81
  store i32 -1, ptr %i.ba, align 4, !tbaa !98
  store ptr %.73848, ptr %i.a, align 8, !tbaa !108
  %i.bdo = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %i.bbs, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14) #10
  %i.bdp = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.bdq = icmp eq i32 %i.bdo, 0
  br i1 %i.bdq, label %.loopexitthread-pre-split, label %bb.hn, !prof !65

bb.hn:                                            ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit
  %i.bdr = load ptr, ptr %12, align 8, !tbaa !96
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !69 ; 2 uses
  %i.bdt = icmp ugt i64 %i.bds, -844424930131969
  %i.bdu = and i64 %i.bds, 281474976710655
  %i.bdv = icmp ne i64 %i.bdu, 0
  %i.bdw = and i1 %i.bdt, %i.bdv
  br i1 %i.bdw, label %bb.hp, label %bb.ho, !prof !60

bb.ho:                                            ; preds = %bb.hn
  %i.bdx = add nuw i32 %.026333847, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bdx, %i.bci
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !472

bb.hp:                                            ; preds = %bb.hn
  %i.bdy = load i64, ptr %i.o, align 8, !tbaa !69
  %i.bdz = icmp ult i64 %i.bdy, -1970324836974592
  br i1 %i.bdz, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bea = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10
  %i.beb = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bec = ptrtoint ptr %i.bea to i64
  %i.bed = or i64 %i.bec, -844424930131968
  store i64 %i.bed, ptr %i.o, align 8, !tbaa !69
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.9 = phi ptr [ %i.beb, %bb.hq ], [ %i.bdp, %bb.hp ] ; 2 uses
  %i.bee = add nuw i32 %.026333847, 1
  %i.bef = uitofp i32 %i.bee to double
  %i.beg = getelementptr inbounds nuw i8, ptr %.9, i64 4
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !81
  %i.bei = zext i8 %i.beh to i64
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bei
  store double %i.bef, ptr %i.bej, align 8, !tbaa !69
  %.sroa.0.0.copyload.i.i2914 = load i64, ptr %i.o, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ho, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.hr
  %.7.lcssa.sink = phi ptr [ %.9, %bb.hr ], [ %.sink4081.sink.in, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.bdp, %bb.ho ] ; 2 uses
  %.sink4089 = phi i64 [ %.sroa.0.0.copyload.i.i2914, %bb.hr ], [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ -1688849860263936, %bb.ho ]
  %i.bek = getelementptr inbounds nuw i8, ptr %.7.lcssa.sink, i64 1
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !81
  %i.bem = zext i8 %i.bel to i64
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bem
  store i64 %.sink4089, ptr %i.ben, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.beo = getelementptr inbounds nuw i8, ptr %.7.lcssa.sink, i64 6
  br label %.backedge.backedge

bb.hs:                                            ; preds = %.backedge
  %i.bep = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 1, !tbaa !81
  %i.ber = zext i8 %i.beq to i64
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ber
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !69 ; 2 uses
  %i.beu = icmp ult i64 %i.bet, -1970324836974592
  br i1 %i.beu, label %bb.hv, label %bb.ht, !prof !60

bb.ht:                                            ; preds = %bb.hs
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bev = load i8, ptr %i.bep, align 1, !tbaa !81
  %i.bew = zext i8 %i.bev to i64
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bew
  %i.bey = call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bex) #10 ; 2 uses
  %i.bez = extractvalue { i32, i64 } %i.bey, 0
  %i.bfa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bfb = icmp eq i32 %i.bez, 0
  br i1 %i.bfb, label %.loopexitthread-pre-split.loopexit4201, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bfc = extractvalue { i32, i64 } %i.bey, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hs, %bb.hu
  %.sink4099 = phi ptr [ %i.bfa, %bb.hu ], [ %.sink4081.sink.in, %bb.hs ] ; 2 uses
  %.sink4094 = phi i64 [ %i.bfc, %bb.hu ], [ %i.bet, %bb.hs ]
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sink4099, i64 1
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !81
  %i.bff = zext i8 %i.bfe to i64
  %i.bfg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bff
  store i64 %.sink4094, ptr %i.bfg, align 8, !tbaa !69
  %.11 = getelementptr inbounds nuw i8, ptr %.sink4099, i64 3
  br label %.backedge.backedge

bb.hw:                                            ; preds = %.backedge
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !81
  %i.bfj = zext i8 %i.bfi to i64
  %i.bfk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfj
  %i.bfl = load i64, ptr %i.bfk, align 8, !tbaa !69 ; 2 uses
  %i.bfm = icmp ult i64 %i.bfl, -1970324836974592
  br i1 %i.bfm, label %bb.hz, label %bb.hx, !prof !60

bb.hx:                                            ; preds = %bb.hw
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bfn = load i8, ptr %i.bfh, align 1, !tbaa !81
  %i.bfo = zext i8 %i.bfn to i64
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfo
  %i.bfq = call { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bfp) #10 ; 2 uses
  %i.bfr = extractvalue { i32, i64 } %i.bfq, 0
  %i.bfs = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bft = icmp eq i32 %i.bfr, 0
  br i1 %i.bft, label %.loopexitthread-pre-split.loopexit4201, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bfu = extractvalue { i32, i64 } %i.bfq, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hw, %bb.hy
  %.sink4105 = phi ptr [ %i.bfs, %bb.hy ], [ %.sink4081.sink.in, %bb.hw ] ; 2 uses
  %.sink4100 = phi i64 [ %i.bfu, %bb.hy ], [ %i.bfl, %bb.hw ]
  %i.bfv = getelementptr inbounds nuw i8, ptr %.sink4105, i64 1
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !81
  %i.bfx = zext i8 %i.bfw to i64
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfx
  store i64 %.sink4100, ptr %i.bfy, align 8, !tbaa !69
  %.12 = getelementptr inbounds nuw i8, ptr %.sink4105, i64 3
  br label %.backedge.backedge

bb.ia:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bfz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !81
  %i.bgb = zext i8 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgb
  %i.bgd = call { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bgc) #10 ; 2 uses
  %i.bge = extractvalue { i32, i64 } %i.bgd, 0
  %i.bgf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bgg = icmp eq i32 %i.bge, 0
  br i1 %i.bgg, label %.loopexitthread-pre-split.loopexit4201, label %bb.ib, !prof !65

bb.ib:                                            ; preds = %bb.ia
  %i.bgh = extractvalue { i32, i64 } %i.bgd, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgf, i64 1
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !81
  %i.bgk = zext i8 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgk
  store i64 %i.bgh, ptr %i.bgl, align 8, !tbaa !69
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgf, i64 3
  br label %.backedge.backedge

bb.ic:                                            ; preds = %.backedge
  %i.bgn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !81
  %i.bgp = zext i8 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgp
  %i.bgr = load i64, ptr %i.bgq, align 8, !tbaa !69 ; 2 uses
  %.mask.i2922 = and i64 %i.bgr, -281474976710656
  %i.bgs = icmp eq i64 %.mask.i2922, -844424930131968
  br i1 %i.bgs, label %bb.ig, label %bb.id, !prof !60

bb.id:                                            ; preds = %bb.ic
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bgt = load i8, ptr %i.bgn, align 1, !tbaa !81
  %i.bgu = zext i8 %i.bgt to i64
  %i.bgv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgu
  %i.bgw = call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bgv, i32 noundef 0) #10 ; 2 uses
  %i.bgx = extractvalue { i32, i64 } %i.bgw, 0
  %i.bgy = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bgz = icmp eq i32 %i.bgx, 0
  br i1 %i.bgz, label %.loopexitthread-pre-split.loopexit4201, label %bb.ie, !prof !65

bb.ie:                                            ; preds = %bb.id
  %i.bha = extractvalue { i32, i64 } %i.bgw, 1
  store i64 %i.bha, ptr %i.o, align 8, !tbaa !69
  %i.bhb = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10 ; 2 uses
  %i.bhc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.not3723 = icmp eq ptr %i.bhb, inttoptr (i64 -1 to ptr)
  br i1 %.not3723, label %.loopexitthread-pre-split.loopexit4201, label %bb.if, !prof !65

bb.if:                                            ; preds = %bb.ie
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bhd = ptrtoint ptr %i.bhb to i64
  %i.bhe = or i64 %i.bhd, -844424930131968
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ic, %bb.if
  %.sink4111 = phi ptr [ %i.bhc, %bb.if ], [ %.sink4081.sink.in, %bb.ic ] ; 2 uses
  %.sink4106 = phi i64 [ %i.bhe, %bb.if ], [ %i.bgr, %bb.ic ]
  %i.bhf = getelementptr inbounds nuw i8, ptr %.sink4111, i64 1
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !81
  %i.bhh = zext i8 %i.bhg to i64
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bhh
  store i64 %.sink4106, ptr %i.bhi, align 8, !tbaa !69
  %.13 = getelementptr inbounds nuw i8, ptr %.sink4111, i64 3
  br label %.backedge.backedge

bb.ih:                                            ; preds = %.backedge
  %i.bhj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !81
  %i.bhl = sext i8 %i.bhk to i64
  %i.bhm = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.bhl
  br label %.backedge.backedge

bb.ii:                                            ; preds = %.backedge
  %i.bhn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
bb.ke:                                            ; preds = %bb.kd
  %.sroa.0.0.copyload.i2944 = load i64, ptr %i.bsh, align 8, !tbaa !61
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 1
  %i.bsk = load i8, ptr %i.bsj, align 1, !tbaa !81
  %i.bsl = zext i8 %i.bsk to i64
  %i.bsm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsl
  store i64 %.sroa.0.0.copyload.i2944, ptr %i.bsm, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsi, i64 2
  br label %.backedge.backedge

bb.kf:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bso = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.bsp = ptrtoint ptr %i.bso to i64
  %i.bsq = or i64 %i.bsp, -281474976710656
  %i.bsr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bss = load i8, ptr %i.bsr, align 1, !tbaa !81
  %i.bst = zext i8 %i.bss to i64
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bst
  store i64 %i.bsq, ptr %i.bsu, align 8, !tbaa !69
  %i.bsv = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 2
  br label %.backedge.backedge

bb.kg:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bsx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bsy = load i8, ptr %i.bsx, align 1, !tbaa !81
  %i.bsz = zext i8 %i.bsy to i64
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsz ; 2 uses
  %i.btb = load i64, ptr %i.bta, align 8, !tbaa !69 ; 2 uses
  %i.btc = icmp ugt i64 %i.btb, -281474976710657
  %.mask.i2947 = and i64 %i.btb, -140737488355328
  %i.btd = icmp eq i64 %.mask.i2947, -1548112371908608
  %spec.select3674 = select i1 %i.btd, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr %i.au
  %.sroa.0126.0 = select i1 %i.btc, ptr %i.bta, ptr %spec.select3674
  %i.bte = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.0126.0) #10
  %i.btf = ptrtoint ptr %i.bte to i64
  %i.btg = or i64 %i.btf, -281474976710656
  %i.bth = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bti = load i8, ptr %i.bth, align 1, !tbaa !81
  %i.btj = zext i8 %i.bti to i64
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.btj
  store i64 %i.btg, ptr %i.btk, align 8, !tbaa !69
  %i.btl = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 3
  br label %.backedge.backedge

bb.kh:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.btn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.bto = load i16, ptr %i.btn, align 1, !tbaa !81
  %i.btp = zext i16 %i.bto to i32
  %i.btq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.btr = load i16, ptr %i.btq, align 1, !tbaa !81
  %i.bts = zext i16 %i.btr to i32
  %i.btt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 8
  %i.btu = load i16, ptr %i.btt, align 1, !tbaa !81
  %i.btv = zext i16 %i.btu to i32
  %i.btw = call { i32, i64 } @_ZN6hermes2vm11Interpreter22createObjectFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.btp, i32 noundef %i.bts, i32 noundef %i.btv) ; 2 uses
  %i.btx = extractvalue { i32, i64 } %i.btw, 0
  %i.bty = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.btz = icmp eq i32 %i.btx, 0
  br i1 %i.btz, label %.loopexitthread-pre-split.loopexit4201, label %bb.ki, !prof !65

bb.ki:                                            ; preds = %bb.kh
  %i.bua = extractvalue { i32, i64 } %i.btw, 1
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bty, i64 1
  %i.buc = load i8, ptr %i.bub, align 1, !tbaa !81
  %i.bud = zext i8 %i.buc to i64
  %i.bue = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bud
  store i64 %i.bua, ptr %i.bue, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bty, i64 10
  br label %.backedge.backedge

bb.kj:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bug = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.buh = load i16, ptr %i.bug, align 1, !tbaa !81
  %i.bui = zext i16 %i.buh to i32
  %i.buj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.buk = load i32, ptr %i.buj, align 1, !tbaa !81
  %i.bul = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 10
  %i.bum = load i32, ptr %i.bul, align 1, !tbaa !81
  %i.bun = call { i32, i64 } @_ZN6hermes2vm11Interpreter22createObjectFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bui, i32 noundef %i.buk, i32 noundef %i.bum) ; 2 uses
  %i.buo = extractvalue { i32, i64 } %i.bun, 0
  %i.bup = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.buq = icmp eq i32 %i.buo, 0
  br i1 %i.buq, label %.loopexitthread-pre-split.loopexit4201, label %bb.kk, !prof !65

bb.kk:                                            ; preds = %bb.kj
  %i.bur = extractvalue { i32, i64 } %i.bun, 1
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bup, i64 1
  %i.but = load i8, ptr %i.bus, align 1, !tbaa !81
  %i.buu = zext i8 %i.but to i64
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.buu
  store i64 %i.bur, ptr %i.buv, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bup, i64 14
  br label %.backedge.backedge

bb.kl:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bux = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.buy = load i16, ptr %i.bux, align 1, !tbaa !81
  %i.buz = zext i16 %i.buy to i32                 ; 2 uses
  %i.bva = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.buz, i32 noundef %i.buz) #10 ; 2 uses
  %i.bvb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3759 = icmp eq ptr %i.bva, inttoptr (i64 -1 to ptr)
  br i1 %.not3759, label %.loopexitthread-pre-split.loopexit4201, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.sroa.0.0.copyload.i2953 = load i64, ptr %i.bva, align 8, !tbaa !61
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 1
  %i.bvd = load i8, ptr %i.bvc, align 1, !tbaa !81
  %i.bve = zext i8 %i.bvd to i64
  %i.bvf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bve
  store i64 %.sroa.0.0.copyload.i2953, ptr %i.bvf, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvb, i64 4
  br label %.backedge.backedge

bb.kn:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bvh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bvi = load i16, ptr %i.bvh, align 1, !tbaa !81
  %i.bvj = zext i16 %i.bvi to i32
  %i.bvk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.bvl = load i16, ptr %i.bvk, align 1, !tbaa !81
  %i.bvm = zext i16 %i.bvl to i32
  %i.bvn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.bvo = load i16, ptr %i.bvn, align 1, !tbaa !81
  %i.bvp = zext i16 %i.bvo to i32
  %i.bvq = call { i32, i64 } @_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bvj, i32 noundef %i.bvm, i32 noundef %i.bvp) ; 2 uses
  %i.bvr = extractvalue { i32, i64 } %i.bvq, 0
  %i.bvs = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bvt = icmp eq i32 %i.bvr, 0
  br i1 %i.bvt, label %.loopexitthread-pre-split.loopexit4201, label %bb.ko, !prof !65

bb.ko:                                            ; preds = %bb.kn
  %i.bvu = extractvalue { i32, i64 } %i.bvq, 1
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvs, i64 1
  %i.bvw = load i8, ptr %i.bvv, align 1, !tbaa !81
  %i.bvx = zext i8 %i.bvw to i64
  %i.bvy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bvx
  store i64 %i.bvu, ptr %i.bvy, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvs, i64 8
  br label %.backedge.backedge

bb.kp:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bwa = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bwb = load i16, ptr %i.bwa, align 1, !tbaa !81
  %i.bwc = zext i16 %i.bwb to i32
  %i.bwd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  %i.bwe = load i16, ptr %i.bwd, align 1, !tbaa !81
  %i.bwf = zext i16 %i.bwe to i32
  %i.bwg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.bwh = load i32, ptr %i.bwg, align 1, !tbaa !81
  %i.bwi = call { i32, i64 } @_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bwc, i32 noundef %i.bwf, i32 noundef %i.bwh) ; 2 uses
  %i.bwj = extractvalue { i32, i64 } %i.bwi, 0
  %i.bwk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bwl = icmp eq i32 %i.bwj, 0
  br i1 %i.bwl, label %.loopexitthread-pre-split.loopexit4201, label %bb.kq, !prof !65

bb.kq:                                            ; preds = %bb.kp
  %i.bwm = extractvalue { i32, i64 } %i.bwi, 1
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwk, i64 1
  %i.bwo = load i8, ptr %i.bwn, align 1, !tbaa !81
  %i.bwp = zext i8 %i.bwo to i64
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwp
  store i64 %i.bwm, ptr %i.bwq, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwk, i64 10
  br label %.backedge.backedge

bb.kr:                                            ; preds = %.backedge
  %i.bws = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3 ; 2 uses
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !81
  %i.bwu = zext i8 %i.bwt to i64
  %i.bwv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwu
  %.sroa.0113.0.copyload = load i64, ptr %i.bwv, align 8, !tbaa !61 ; 2 uses
  %i.bww = icmp ugt i64 %.sroa.0113.0.copyload, -844424930131969
  br i1 %i.bww, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !473

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %bb.kr
  %i.bwx = and i64 %.sroa.0113.0.copyload, 281474976710655
  %i.bwy = inttoptr i64 %i.bwx to ptr
  %i.bwz = load i32, ptr %i.bwy, align 4
  %i.bxa = add i32 %i.bwz, -1140850688
  %i.bxb = icmp ult i32 %i.bxa, 150994944
  br i1 %i.bxb, label %bb.ks, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !474

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.kr, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  store i32 1, ptr %i.bf, align 8, !tbaa !369
  store i64 27, ptr %i.bg, align 8, !tbaa !370
  store i64 0, ptr %i.bh, align 8, !tbaa !371
  store ptr @.str.15, ptr %15, align 8, !tbaa !81
  store i32 3, ptr %i.bi, align 8, !tbaa !366
  %i.bxc = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.bxd = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %.loopexitthread-pre-split

bb.ks:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bxe = load i8, ptr %i.bws, align 1, !tbaa !81
  %i.bxf = zext i8 %i.bxe to i64
  %i.bxg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxf ; 2 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bxi = load i8, ptr %i.bxh, align 1, !tbaa !81
  %i.bxj = zext i8 %i.bxi to i64
  %i.bxk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxj ; 2 uses
  %i.bxl = load i64, ptr %i.bxk, align 8, !tbaa !69
  %i.bxm = icmp ugt i64 %i.bxl, -281474976710657
  %spec.select3675 = select i1 %i.bxm, ptr %i.bxk, ptr %i.au
  %.sroa.0.0.copyload.i.i.i2961 = load i64, ptr %i.bxg, align 8, !tbaa !61
  %i.bxn = and i64 %.sroa.0.0.copyload.i.i.i2961, 281474976710655
  %i.bxo = inttoptr i64 %i.bxn to ptr
  %i.bxp = load i32, ptr %i.bxo, align 4
  %i.bxq = lshr i32 %i.bxp, 24
  %i.bxr = zext nneg i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bxr
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !100
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 96
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !475
  %i.bxw = call ptr %i.bxv(ptr nonnull %i.bxg, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %spec.select3675) #10, !inline_history !477 ; 2 uses
  %i.bxx = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3724 = icmp eq ptr %i.bxw, inttoptr (i64 -1 to ptr)
  br i1 %.not3724, label %.loopexitthread-pre-split.loopexit4201, label %bb.kt, !prof !65

bb.kt:                                            ; preds = %bb.ks
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bxy = ptrtoint ptr %i.bxw to i64
  %i.bxz = or i64 %i.bxy, -281474976710656
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxx, i64 1
  %i.byb = load i8, ptr %i.bya, align 1, !tbaa !81
  %i.byc = zext i8 %i.byb to i64
  %i.byd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byc
  store i64 %i.bxz, ptr %i.byd, align 8, !tbaa !69
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bxx, i64 4
  br label %.backedge.backedge

bb.ku:                                            ; preds = %.backedge
  %i.byf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3 ; 2 uses
  %i.byg = load i8, ptr %i.byf, align 1, !tbaa !81
  %i.byh = zext i8 %i.byg to i64
  %i.byi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byh
  %i.byj = load i64, ptr %i.byi, align 8, !tbaa !69
  %i.byk = icmp ugt i64 %i.byj, -281474976710657
  %i.byl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %.pn.in.in = select i1 %i.byk, ptr %i.byf, ptr %i.byl
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !81
  %.pn = zext i8 %.pn.in to i64
  %i.bym = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.pn
  %i.byn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !81
  %i.byp = zext i8 %i.byo to i64
  %i.byq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byp
  %.sroa.0.0.copyload.i2963 = load i64, ptr %i.bym, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2963, ptr %i.byq, align 8, !tbaa !69
  %i.byr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.kv:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bys = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.byt = load i8, ptr %i.bys, align 1, !tbaa !81
  %i.byu = zext i8 %i.byt to i64
  %i.byv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byu
  %i.byw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.byx = load i8, ptr %i.byw, align 1, !tbaa !81
  %i.byy = zext i8 %i.byx to i64
  %i.byz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byy
  %i.bza = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.byv, ptr %i.byz) #10 ; 2 uses
  %i.bzb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3757 = and i32 %i.bza, 255
  %i.bzc = icmp eq i32 %.mask3757, 0
  br i1 %i.bzc, label %.loopexitthread-pre-split.loopexit4201, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bzd = load i8, ptr %i.bzb, align 1, !tbaa !81
  %i.bze = icmp eq i8 %i.bzd, 14
  %i.bzf = and i32 %i.bza, 256
  %.not3758 = icmp eq i32 %i.bzf, 0
  %i.bzg = xor i1 %i.bze, %.not3758
  %i.bzh = zext i1 %i.bzg to i64
  %i.bzi = or disjoint i64 %i.bzh, -1407374883553280
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzb, i64 1
  %i.bzk = load i8, ptr %i.bzj, align 1, !tbaa !81
  %i.bzl = zext i8 %i.bzk to i64
  %i.bzm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzl
  store i64 %i.bzi, ptr %i.bzm, align 8, !tbaa !69
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzb, i64 4
  br label %.backedge.backedge

bb.kx:                                            ; preds = %.backedge
  %i.bzo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bzp = load i8, ptr %i.bzo, align 1, !tbaa !81
  %i.bzq = zext i8 %i.bzp to i64
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzq
  %.sroa.0110.0.copyload = load i64, ptr %i.bzr, align 8, !tbaa !61
  %i.bzs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !81
  %i.bzu = zext i8 %i.bzt to i64
  %i.bzv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzu
  %.sroa.0109.0.copyload = load i64, ptr %i.bzv, align 8, !tbaa !61
  %i.bzw = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0110.0.copyload, i64 %.sroa.0109.0.copyload) #10
  %i.bzx = zext i1 %i.bzw to i64
  %i.bzy = or disjoint i64 %i.bzx, -1407374883553280
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !81
  %i.cab = zext i8 %i.caa to i64
  %i.cac = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cab
  store i64 %i.bzy, ptr %i.cac, align 8, !tbaa !69
  %i.cad = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.ky:                                            ; preds = %.backedge
  %i.cae = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.caf = load i8, ptr %i.cae, align 1, !tbaa !81
  %i.cag = zext i8 %i.caf to i64
  %i.cah = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cag
  %.sroa.0108.0.copyload = load i64, ptr %i.cah, align 8, !tbaa !61
  %i.cai = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.caj = load i8, ptr %i.cai, align 1, !tbaa !81
  %i.cak = zext i8 %i.caj to i64
  %i.cal = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cak
  %.sroa.0107.0.copyload = load i64, ptr %i.cal, align 8, !tbaa !61
  %i.cam = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0108.0.copyload, i64 %.sroa.0107.0.copyload) #10
  %i.can = xor i1 %i.cam, true
  %i.cao = zext i1 %i.can to i64
  %i.cap = or disjoint i64 %i.cao, -1407374883553280
  %i.caq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.car = load i8, ptr %i.caq, align 1, !tbaa !81
  %i.cas = zext i8 %i.car to i64
  %i.cat = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cas
  store i64 %i.cap, ptr %i.cat, align 8, !tbaa !69
  %i.cau = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.kz:                                            ; preds = %.backedge
  %i.cav = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.caw = load i8, ptr %i.cav, align 1, !tbaa !81
  %i.cax = zext i8 %i.caw to i64
  %i.cay = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cax
  %.sroa.0106.0.copyload = load i64, ptr %i.cay, align 8, !tbaa !61
  %i.caz = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0106.0.copyload) #10
  %i.cba = xor i1 %i.caz, true
  %i.cbb = zext i1 %i.cba to i64
  %i.cbc = or disjoint i64 %i.cbb, -1407374883553280
  %i.cbd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cbe = load i8, ptr %i.cbd, align 1, !tbaa !81
  %i.cbf = zext i8 %i.cbe to i64
  %i.cbg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbf
  store i64 %i.cbc, ptr %i.cbg, align 8, !tbaa !69
  %i.cbh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.la:                                            ; preds = %.backedge
  %i.cbi = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.cbj = load i8, ptr %i.cbi, align 1, !tbaa !81
  %i.cbk = zext i8 %i.cbj to i64
  %i.cbl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbk
  %i.cbm = load i64, ptr %i.cbl, align 8          ; 2 uses
  %i.cbn = icmp ult i64 %i.cbm, -1970324836974592
  br i1 %i.cbn, label %bb.lb, label %bb.lc, !prof !60

bb.lb:                                            ; preds = %bb.la
  %i.cbo = bitcast i64 %i.cbm to double           ; 2 uses
  %i.cbp = fneg double %i.cbo
  %i.cbq = fcmp uno double %i.cbo, 0.000000e+00
  %i.cbr = bitcast double %i.cbp to i64
  %.sroa.0.0.i2968 = select i1 %i.cbq, i64 9221120237041090560, i64 %i.cbr, !prof !65
  %i.cbs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cbt = load i8, ptr %i.cbs, align 1, !tbaa !81
  %i.cbu = zext i8 %i.cbt to i64
  %i.cbv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbu
  store i64 %.sroa.0.0.i2968, ptr %i.cbv, align 8, !tbaa !69
  %i.cbw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.lc:                                            ; preds = %bb.la
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cbx = load i8, ptr %i.cbi, align 1, !tbaa !81
  %i.cby = zext i8 %i.cbx to i64
  %i.cbz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cby
  %i.cca = call { i32, i64 } @_ZN6hermes2vm16doNegateSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cbz) #10 ; 2 uses
  %i.ccb = extractvalue { i32, i64 } %i.cca, 0
  %i.ccc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.ccd = icmp eq i32 %i.ccb, 0
  br i1 %i.ccd, label %.loopexitthread-pre-split.loopexit4201, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.cce = extractvalue { i32, i64 } %i.cca, 1
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccc, i64 1
  %i.ccg = load i8, ptr %i.ccf, align 1, !tbaa !81
  %i.cch = zext i8 %i.ccg to i64
  %i.cci = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cch
  store i64 %i.cce, ptr %i.cci, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.ccc, i64 3
  br label %.backedge.backedge

bb.le:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cck = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.ccl = load i8, ptr %i.cck, align 1, !tbaa !81
  %i.ccm = zext i8 %i.ccl to i64
  %i.ccn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccm
  %i.cco = call i64 @_ZN6hermes2vm6typeOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ccn) #10
  %i.ccp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ccq = load i8, ptr %i.ccp, align 1, !tbaa !81
  %i.ccr = zext i8 %i.ccq to i64
  %i.ccs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccr
  store i64 %i.cco, ptr %i.ccs, align 8, !tbaa !69
  %i.cct = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 3
  br label %.backedge.backedge

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.euw = load i8, ptr %i.euv, align 1, !tbaa !81
  %i.eux = zext i8 %i.euw to i64
  %i.euy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eux
  %i.euz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eva = load i8, ptr %i.euz, align 1, !tbaa !81
  %i.evb = zext i8 %i.eva to i64
  %i.evc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.evb
  %i.evd = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.euy, ptr %i.evc) #10 ; 2 uses
  %i.eve = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask = and i32 %i.evd, 255
  %i.evf = icmp eq i32 %.mask, 0
  br i1 %i.evf, label %.loopexitthread-pre-split.loopexit4201, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evg = and i32 %i.evd, 256
  %.not3680 = icmp eq i32 %i.evg, 0
  br i1 %.not3680, label %bb.vt, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.evh = getelementptr inbounds nuw i8, ptr %i.eve, i64 7
  br label %.backedge.backedge

bb.vt:                                            ; preds = %bb.vr
  %i.evi = getelementptr inbounds nuw i8, ptr %i.eve, i64 1
  %i.evj = load i32, ptr %i.evi, align 1, !tbaa !81
  %i.evk = sext i32 %i.evj to i64
  %i.evl = getelementptr inbounds i8, ptr %i.eve, i64 %i.evk
  br label %.backedge.backedge

bb.vu:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evm = call noundef i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.evn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.evo = icmp eq i32 %i.evm, 0
  br i1 %i.evo, label %.loopexitthread-pre-split.loopexit4201, label %bb.vv, !prof !65

bb.vv:                                            ; preds = %bb.vu
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evp = getelementptr inbounds nuw i8, ptr %i.evn, i64 5
  br label %.backedge.backedge

bb.vw:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evq = call noundef i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.evr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.evs = icmp eq i32 %i.evq, 0
  br i1 %i.evs, label %.loopexitthread-pre-split.loopexit4201, label %bb.vx, !prof !65

bb.vx:                                            ; preds = %bb.vw
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evt = getelementptr inbounds nuw i8, ptr %i.evr, i64 6
  br label %.backedge.backedge

bb.vy:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evu = call noundef i32 @_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.evv = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.evw = icmp eq i32 %i.evu, 0
  br i1 %i.evw, label %.loopexitthread-pre-split.loopexit4201, label %bb.vz, !prof !65

bb.vz:                                            ; preds = %bb.vy
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evx = getelementptr inbounds nuw i8, ptr %i.evv, i64 4
  br label %.backedge.backedge

bb.wa:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evy = call noundef i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.evz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewa = icmp eq i32 %i.evy, 0
  br i1 %i.ewa, label %.loopexitthread-pre-split.loopexit4201, label %bb.wb, !prof !65

bb.wb:                                            ; preds = %bb.wa
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.evz, i64 3
  br label %.backedge.backedge

bb.wc:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewc = call noundef i32 @_ZN6hermes2vm11Interpreter16caseIteratorNextERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4081.sink.in) #10
  %i.ewd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewe = icmp eq i32 %i.ewc, 0
  br i1 %i.ewe, label %.loopexitthread-pre-split.loopexit4201, label %bb.wd, !prof !65

bb.wd:                                            ; preds = %bb.wc
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewf = getelementptr inbounds nuw i8, ptr %i.ewd, i64 4
  br label %.backedge.backedge

bb.we:                                            ; preds = %.backedge
  %i.ewg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1 ; 2 uses
  %i.ewh = load i8, ptr %i.ewg, align 1, !tbaa !81
  %i.ewi = zext i8 %i.ewh to i64
  %i.ewj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ewi
  %i.ewk = load i64, ptr %i.ewj, align 8, !tbaa !69
  %i.ewl = icmp ugt i64 %i.ewk, -281474976710657
  br i1 %i.ewl, label %bb.wf, label %bb.wk, !prof !65

bb.wf:                                            ; preds = %bb.we
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewm = load i8, ptr %i.ewg, align 1, !tbaa !81
  %i.ewn = zext i8 %i.ewm to i64
  %i.ewo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ewn
  %i.ewp = call noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ewo, ptr nonnull @_ZN6hermes2vm15HandleRootOwner11emptyValue_E) #10
  %i.ewq = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.ewr = icmp eq i32 %i.ewp, 0
  br i1 %i.ewr, label %bb.wg, label %bb.wj, !prof !65

bb.wg:                                            ; preds = %bb.wf
  %i.ews = getelementptr inbounds nuw i8, ptr %i.ewq, i64 2
  %i.ewt = load i8, ptr %i.ews, align 1, !tbaa !81
  %.not2646 = icmp eq i8 %i.ewt, 0
  br i1 %.not2646, label %.loopexitthread-pre-split.loopexit4201, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %.sroa.07.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !61
  %i.ewu = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.07.0.copyload) #10
  br i1 %i.ewu, label %.loopexitthread-pre-split.loopexit4201, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wf
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.we
  %.21 = phi ptr [ %i.ewq, %bb.wj ], [ %.sink4081.sink.in, %bb.we ]
  %i.ewv = getelementptr inbounds nuw i8, ptr %.21, i64 3
  br label %.backedge.backedge

bb.wl:                                            ; preds = %.backedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.18) #11
  unreachable

_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit
  store ptr %.02594, ptr %i.a, align 8, !tbaa !108
  %i.eww = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef 0) #10 ; 0 uses
  br label %bb.wm

bb.wm:                                            ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2736, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit
  %i.ewx = getelementptr inbounds i8, ptr %i.bz, i64 -24
  %i.ewy = load i64, ptr %i.ewx, align 8, !tbaa !69 ; 2 uses
  %i.ewz = inttoptr i64 %i.ewy to ptr
  %i.exa = load i64, ptr %i.cc, align 8, !tbaa !69
  %i.exb = inttoptr i64 %i.exa to ptr
  store ptr %i.bz, ptr %i.x, align 8, !tbaa !330
  %i.exc = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.exd = load i64, ptr %i.exc, align 8, !tbaa !69
  %i.exe = inttoptr i64 %i.exd to ptr             ; 2 uses
  store ptr %i.exe, ptr %i.y, align 8, !tbaa !68
  %i.exf = getelementptr inbounds nuw i8, ptr %i.exe, i64 8
  %.not = icmp eq i64 %i.ewy, 0
  br i1 %.not, label %.loopexit3761, label %.loopexitthread-pre-split

.loopexitthread-pre-split.loopexit4201:           ; preds = %bb.wh, %bb.wg, %bb.z, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit, %bb.ax, %bb.az, %bb.ce, %bb.dc, %bb.de, %bb.ed, %bb.ef, %.critedge2666, %bb.fo, %.critedge2668, %bb.gs, %bb.gv, %bb.gw, %bb.gz, %bb.ha, %bb.hf, %bb.ht, %bb.hx, %bb.ia, %bb.id, %bb.ie, %bb.jd, %bb.jh, %.critedge2673, %bb.jq, %bb.ju, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, %bb.kd, %bb.kh, %bb.kj, %bb.kl, %bb.kn, %bb.kp, %bb.ks, %bb.kv, %bb.lc, %.critedge2675, %bb.lj, %bb.lm, %bb.lr, %bb.lw, %bb.ma, %bb.me, %bb.mf, %bb.mg, %bb.ng, %.critedge2677, %.critedge2679, %.critedge2681, %.critedge2683, %.critedge2685, %.critedge2687, %.critedge2689, %.critedge2691, %.critedge2693, %.critedge2695, %.critedge2697, %.critedge2699, %.critedge2701, %.critedge2703, %.critedge2705, %.critedge2707, %.critedge2709, %.critedge2711, %.critedge2713, %.critedge2715, %.critedge2717, %.critedge2719, %.critedge2721, %.critedge2723, %.critedge2725, %.critedge2727, %.critedge2729, %.critedge2731, %.critedge2733, %bb.ve, %bb.vi, %bb.vm, %bb.vq, %bb.vu, %bb.vw, %bb.vy, %bb.wa, %bb.wc
  %.22.ph4012.ph = phi ptr [ %i.evz, %bb.wa ], [ %i.evv, %bb.vy ], [ %i.evr, %bb.vw ], [ %i.evn, %bb.vu ], [ %i.eve, %bb.vq ], [ %i.eun, %bb.vm ], [ %i.etw, %bb.vi ], [ %i.etf, %bb.ve ], [ %i.eqk, %.critedge2733 ], [ %i.eos, %.critedge2731 ], [ %i.ena, %.critedge2729 ], [ %i.eli, %.critedge2727 ], [ %i.ejq, %.critedge2725 ], [ %i.ehy, %.critedge2723 ], [ %i.egg, %.critedge2721 ], [ %i.eeo, %.critedge2719 ], [ %i.ecw, %.critedge2717 ], [ %i.ebe, %.critedge2715 ], [ %i.dzm, %.critedge2713 ], [ %i.dxu, %.critedge2711 ], [ %i.dwc, %.critedge2709 ], [ %i.duk, %.critedge2707 ], [ %i.dss, %.critedge2705 ], [ %i.dra, %.critedge2703 ], [ %i.dpg, %.critedge2701 ], [ %i.dns, %.critedge2699 ], [ %i.dme, %.critedge2697 ], [ %i.dkq, %.critedge2695 ], [ %i.dje, %.critedge2693 ], [ %i.dhc, %.critedge2691 ], [ %i.dfa, %.critedge2689 ], [ %i.dcy, %.critedge2687 ], [ %i.dax, %.critedge2685 ], [ %i.cyw, %.critedge2683 ], [ %i.cwv, %.critedge2681 ], [ %i.cvc, %.critedge2679 ], [ %i.ctj, %.critedge2677 ], [ %i.crq, %bb.ng ], [ %i.ckn, %bb.mg ], [ %i.ckf, %bb.mf ], [ %i.ckb, %bb.me ], [ %i.cje, %bb.ma ], [ %i.chz, %bb.lw ], [ %i.chc, %bb.lr ], [ %i.cfr, %bb.lm ], [ %i.cer, %bb.lj ], [ %i.cea, %.critedge2675 ], [ %i.ccc, %bb.lc ], [ %i.bzb, %bb.kv ], [ %i.bxx, %bb.ks ], [ %i.bwk, %bb.kp ], [ %i.bvs, %bb.kn ], [ %i.bvb, %bb.kl ], [ %i.bup, %bb.kj ], [ %i.bty, %bb.kh ], [ %i.bsi, %bb.kd ], [ %i.brq, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ], [ %i.bpq, %bb.ju ], [ %i.boo, %bb.jq ], [ %i.bng, %.critedge2673 ], [ %i.bln, %bb.jh ], [ %i.bkn, %bb.jd ], [ %i.bhc, %bb.ie ], [ %i.bgy, %bb.id ], [ %i.bgf, %bb.ia ], [ %i.bfs, %bb.hx ], [ %i.bfa, %bb.ht ], [ %i.bbm, %bb.hf ], [ %i.bar, %bb.ha ], [ %i.ban, %bb.gz ], [ %i.azo, %bb.gw ], [ %i.azk, %bb.gv ], [ %i.ayt, %bb.gs ], [ %i.ayd, %.critedge2668 ], [ %i.atc, %bb.fo ], [ %i.asq, %.critedge2666 ], [ %i.amu, %bb.ef ], [ %i.amq, %bb.ed ], [ %i.abc, %bb.de ], [ %i.aah, %bb.dc ], [ %i.ut, %bb.ce ], [ %i.on, %bb.az ], [ %i.oh, %bb.ax ], [ %i.lz, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit ], [ %i.gr, %bb.z ], [ %i.ewq, %bb.wg ], [ %i.ewq, %bb.wh ], [ %i.ewd, %bb.wc ]
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit, %.loopexitthread-pre-split.loopexit4201, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977, %bb.lz, %bb.wm
  %.12600.ph = phi ptr [ %.32602, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %.32602, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %.32602, %bb.lz ], [ %.32602, %.loopexitthread-pre-split.loopexit4201 ], [ %i.exf, %bb.wm ], [ %.32602, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %.32602, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.22.ph4012 = phi ptr [ %i.bxd, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %i.ug, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %i.ciw, %bb.lz ], [ %.22.ph4012.ph, %.loopexitthread-pre-split.loopexit4201 ], [ %i.exb, %bb.wm ], [ %i.cfi, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %i.bdp, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.2.ph = phi ptr [ %.4, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %.4, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805 ], [ %.4, %bb.lz ], [ %.4, %.loopexitthread-pre-split.loopexit4201 ], [ %i.ewz, %bb.wm ], [ %.4, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2977 ], [ %.4, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.sroa.03.0.copyload.pr = load i64, ptr %i.ai, align 8, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.by, %bb.bt
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pr, %.loopexitthread-pre-split ], [ %.sroa.0.0.copyload.i2802, %bb.by ], [ %.sroa.0275.0.copyload, %bb.bt ] ; 3 uses
  %.12600 = phi ptr [ %.12600.ph, %.loopexitthread-pre-split ], [ %.32602, %bb.by ], [ %.32602, %bb.bt ] ; 2 uses
  %.22 = phi ptr [ %.22.ph4012, %.loopexitthread-pre-split ], [ %.sink4081.sink.in, %bb.by ], [ %.sink4081.sink.in, %bb.bt ] ; 5 uses
  %.2 = phi ptr [ %.2.ph, %.loopexitthread-pre-split ], [ %.4, %bb.by ], [ %.4, %bb.bt ] ; 3 uses
  %i.exg = icmp ugt i64 %.sroa.03.0.copyload, -844424930131969
  br i1 %i.exg, label %bb.wn, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

bb.wn:                                            ; preds = %.loopexit
  %i.exh = and i64 %.sroa.03.0.copyload, 281474976710655
  %i.exi = inttoptr i64 %i.exh to ptr             ; 3 uses
  %i.exj = load i32, ptr %i.exi, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.exj, -16777216
  %i.exk = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 486539264
  br i1 %i.exk, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.wn
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exi, i64 48
  %i.exm = load i8, ptr %i.exl, align 8, !tbaa !478, !range !428, !noundef !44
  %i.exn = trunc nuw i8 %i.exm to i1              ; 2 uses
  %i.exo = getelementptr inbounds nuw i8, ptr %i.exi, i64 24
  %i.exp = load ptr, ptr %i.exo, align 8, !tbaa !487
  %.not2643 = icmp eq ptr %i.exp, null
  br i1 %.not2643, label %bb.wo, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread

bb.wo:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %.22, ptr %i.a, align 8, !tbaa !108
  %i.exq = or i64 %.sroa.03.0.copyload, -281474976710656 ; 2 uses
  %i.exr = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %i.exs = getelementptr inbounds nuw i8, ptr %i.exr, i64 192 ; 2 uses
  %i.ext = load ptr, ptr %i.exs, align 8, !tbaa !49 ; 4 uses
  %i.exu = getelementptr inbounds nuw i8, ptr %i.exr, i64 200
  %i.exv = load ptr, ptr %i.exu, align 8, !tbaa !59
  %i.exw = icmp ult ptr %i.ext, %i.exv
  br i1 %i.exw, label %bb.wp, label %bb.wq, !prof !60

bb.wp:                                            ; preds = %bb.wo
  %i.exx = getelementptr inbounds nuw i8, ptr %i.ext, i64 8
  store ptr %i.exx, ptr %i.exs, align 8, !tbaa !49
  store i64 %i.exq, ptr %i.ext, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

bb.wq:                                            ; preds = %bb.wo
  %i.exy = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.exr, i64 %i.exq) #10
  %.pre3922 = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.wp, %bb.wq
  %i.exz = phi ptr [ %.22, %bb.wp ], [ %.pre3922, %bb.wq ]
  %.0.i.i.i.i.i.i3067 = phi ptr [ %i.ext, %bb.wp ], [ %i.exy, %bb.wq ] ; 2 uses
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  %i.eya = call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i3067, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext false, ptr noundef %.2, ptr noundef %i.exz) #10 ; 0 uses
  %i.eyb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload.i3068 = load i64, ptr %.0.i.i.i.i.i.i3067, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i3068, ptr %i.ai, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exn, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread: ; preds = %bb.wn, %.loopexit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exn, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.24.ph = phi ptr [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread ], [ %i.eyb, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ]
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.234018 = phi ptr [ %i.eyb, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ]
  %i.eyc = ptrtoint ptr %.234018 to i64
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wr, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us
  %.22601.us = phi ptr [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eys, %bb.wr ] ; 4 uses
  %.24.us = phi i64 [ %i.eyc, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eyo, %bb.wr ]
  %.3.us = phi ptr [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eym, %bb.wr ] ; 2 uses
  %i.eyd = getelementptr inbounds nuw i8, ptr %.3.us, i64 16
  %i.eye = load ptr, ptr %i.eyd, align 8, !tbaa !433
  %i.eyf = ptrtoint ptr %i.eye to i64
  %i.eyg = sub i64 %.24.us, %i.eyf
  %i.eyh = trunc i64 %i.eyg to i32
  %i.eyi = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3.us, i32 noundef %i.eyh) #10 ; 0 uses
  %i.eyj = getelementptr inbounds i8, ptr %.22601.us, i64 -8
  %i.eyk = getelementptr inbounds i8, ptr %.22601.us, i64 -32
  %i.eyl = load i64, ptr %i.eyk, align 8, !tbaa !69 ; 2 uses
  %i.eym = inttoptr i64 %i.eyl to ptr
  %i.eyn = getelementptr inbounds i8, ptr %.22601.us, i64 -24
  %i.eyo = load i64, ptr %i.eyn, align 8, !tbaa !69
  store ptr %i.eyj, ptr %i.x, align 8, !tbaa !330
  %i.eyp = getelementptr inbounds i8, ptr %.22601.us, i64 -16
  %i.eyq = load i64, ptr %i.eyp, align 8, !tbaa !69
  %i.eyr = inttoptr i64 %i.eyq to ptr             ; 2 uses
  store ptr %i.eyr, ptr %i.y, align 8, !tbaa !68
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyr, i64 8
  %.not2664.us = icmp eq i64 %i.eyl, 0
  br i1 %.not2664.us, label %.loopexit3761, label %bb.wr, !llvm.loop !488

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, %bb.ws
  %.22601 = phi ptr [ %i.ezk, %bb.ws ], [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %.24 = phi ptr [ %i.ezg, %bb.ws ], [ %.24.ph, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 2 uses
  %.3 = phi ptr [ %i.ezd, %bb.ws ], [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %i.eyt = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.eyu = load ptr, ptr %i.eyt, align 8, !tbaa !433
  %i.eyv = ptrtoint ptr %.24 to i64               ; 2 uses
  %i.eyw = ptrtoint ptr %i.eyu to i64
  %i.eyx = sub i64 %i.eyv, %i.eyw
  %i.eyy = trunc i64 %i.eyx to i32
  %i.eyz = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3, i32 noundef %i.eyy) #10 ; 2 uses
  %.not3856 = icmp eq i32 %i.eyz, -1
  br i1 %.not3856, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.eza = getelementptr inbounds i8, ptr %.22601, i64 -8
  %i.ezb = getelementptr inbounds i8, ptr %.22601, i64 -32
  %i.ezc = load i64, ptr %i.ezb, align 8, !tbaa !69 ; 2 uses
  %i.ezd = inttoptr i64 %i.ezc to ptr
  %i.eze = getelementptr inbounds i8, ptr %.22601, i64 -24
  %i.ezf = load i64, ptr %i.eze, align 8, !tbaa !69
  %i.ezg = inttoptr i64 %i.ezf to ptr
  store ptr %i.eza, ptr %i.x, align 8, !tbaa !330
  %i.ezh = getelementptr inbounds i8, ptr %.22601, i64 -16
  %i.ezi = load i64, ptr %i.ezh, align 8, !tbaa !69
  %i.ezj = inttoptr i64 %i.ezi to ptr             ; 2 uses
  store ptr %i.ezj, ptr %i.y, align 8, !tbaa !68
  %i.ezk = getelementptr inbounds nuw i8, ptr %i.ezj, i64 8
  %.not2664 = icmp eq i64 %i.ezc, 0
  br i1 %.not2664, label %.loopexit3761, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split, !llvm.loop !488

bb.wt:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.ezl = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ezm = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ezn = load ptr, ptr %i.ezm, align 8, !tbaa !430 ; 2 uses
  %i.ezo = ptrtoint ptr %i.ezn to i64
  %i.ezp = trunc i64 %i.ezo to i1
  %..i.i3069 = select i1 %i.ezp, i64 29, i64 15, !prof !65
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ezn, i64 %..i.i3069
  %.sroa.0.0.i.i3070 = load i8, ptr %i.ezq, align 1, !tbaa !81
  %i.ezr = sext i32 %i.eyz to i64
  %i.ezs = load ptr, ptr %i.ezl, align 8, !tbaa !433
  %i.ezt = ptrtoint ptr %i.ezs to i64
  %.neg = sub i64 %i.ezt, %i.eyv
  %i.ezu = getelementptr i8, ptr %.24, i64 %.neg
  %i.ezv = getelementptr i8, ptr %i.ezu, i64 %i.ezr
  br label %bb.h, !llvm.loop !489

.loopexit3761:                                    ; preds = %bb.wm, %bb.ws, %bb.bv, %bb.wr
  %.sroa.03641.0 = phi i32 [ 1, %bb.bv ], [ 0, %bb.ws ], [ 0, %bb.wr ], [ 0, %bb.wm ]
  %.sroa.6.0 = phi i64 [ %.sroa.0274.0.copyload, %bb.bv ], [ undef, %bb.ws ], [ undef, %bb.wr ], [ undef, %bb.wm ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #10
  br label %bb.wu

bb.wu:                                            ; preds = %.loopexit3761, %bb.b
  %.sroa.03641.1 = phi i32 [ %i.j, %bb.b ], [ %.sroa.03641.0, %.loopexit3761 ]
  %.sroa.6.1 = phi i64 [ undef, %bb.b ], [ %.sroa.6.0, %.loopexit3761 ]
  %i.ezw = load i64, ptr %i.d, align 8, !tbaa !328
  %i.ezx = add i64 %i.ezw, -1
  store i64 %i.ezx, ptr %i.d, align 8, !tbaa !328
  store ptr %i.b, ptr %i.a, align 8, !tbaa !108
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03641.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.sink4081.sink.in = phi ptr [ %.12595, %bb.h ], [ %.sink4081.sink.in.be, %.backedge.backedge ] ; 673 uses
  %.sroa.03590.1 = phi i8 [ %.sroa.03590.0, %bb.h ], [ %.sroa.03590.1.be, %.backedge.backedge ] ; 239 uses
  %.12604 = phi i8 [ %.sroa.03590.0, %bb.h ], [ %.12604.be, %.backedge.backedge ] ; 234 uses
  %.32602 = phi ptr [ %.02599, %bb.h ], [ %.32602.be, %.backedge.backedge ] ; 695 uses
  %.4 = phi ptr [ %.1, %bb.h ], [ %.4.be, %.backedge.backedge ] ; 272 uses
  %.sink4081.sink = load i8, ptr %.sink4081.sink.in, align 1, !tbaa !81
  %i.ezy = zext i8 %.sink4081.sink to i64
  %i.ezz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateEE14opcodeDispatch, i64 %i.ezy
  %i.faa = load ptr, ptr %i.ezz, align 8, !tbaa !490
  indirectbr ptr %i.faa, [label %bb.cg, label %bb.kh, label %bb.kj, label %bb.kf, label %bb.kg, label %bb.kn, label %bb.kp, label %bb.kl, label %bb.i, label %bb.j, label %bb.la, label %bb.kz, label %bb.jn, label %bb.le, label %bb.kv, label %bb.kx, label %bb.wl, label %bb.ky, label %bb.pe, label %bb.pi, label %bb.pm, label %bb.pq, label %bb.jj, label %bb.jl, label %bb.nm, label %bb.no, label %bb.nq, label %bb.ns, label %bb.lf, label %bb.ni, label %bb.nk, label %bb.om, label %bb.os, label %bb.oy, label %bb.nu, label %bb.og, label %bb.oa, label %bb.jb, label %bb.jf, label %bb.lj, label %bb.ll, label %bb.dg, label %bb.dr, label %bb.dt, label %bb.dv, label %bb.dx, label %bb.dz, label %bb.ea, label %bb.eb, label %bb.ec, label %bb.dl, label %bb.dh, label %bb.ed, label %bb.ef, label %bb.ej, label %bb.el, label %bb.ei, label %bb.ek, label %bb.eh, label %bb.ft, label %bb.fr, label %bb.fs, label %bb.fq, label %bb.lo, label %bb.lq, label %bb.lp, label %bb.vb, label %bb.uy, label %bb.hd, label %bb.hc, label %bb.vu, label %bb.lu, label %bb.lt, label %bb.gu, label %bb.gy, label %bb.md, label %bb.vw, label %bb.hf, label %bb.hh, label %bb.ai, label %bb.ah, label %bb.ad, label %bb.ar, label %bb.ae, label %bb.af, label %bb.ag, label %bb.ac, label %bb.ab, label %bb.uv, label %bb.ax, label %bb.az, label %bb.aw, label %bb.bv, label %bb.bx, label %bb.vy, label %bb.by, label %bb.bz, label %bb.cb, label %bb.cc, label %bb.cf, label %bb.ch, label %bb.ci, label %bb.cv, label %bb.cw, label %bb.co, label %bb.cp, label %bb.kr, label %bb.ku, label %bb.k, label %bb.n, label %bb.mt, label %bb.mu, label %bb.mv, label %bb.ne, label %bb.nf, label %bb.mw, label %bb.mx, label %bb.my, label %bb.mz, label %bb.na, label %bb.nb, label %bb.nc, label %bb.nd, label %bb.q, label %bb.v, label %bb.hs, label %bb.hw, label %bb.ia, label %bb.ic, label %bb.jw, label %bb.js, label %bb.kb, label %bb.mi, label %bb.mn, label %bb.be, label %bb.bi, label %bb.bb, label %bb.dc, label %bb.de, label %bb.wa, label %bb.wc, label %bb.we, label %bb.ih, label %bb.ii, label %bb.ij, label %bb.im, label %bb.ip, label %bb.is, label %bb.iv, label %bb.iy, label %bb.bc, label %bb.bd, label %bb.pu, label %bb.qc, label %bb.qk, label %bb.qs, label %bb.pw, label %bb.qe, label %bb.qm, label %bb.qu, label %bb.ra, label %bb.ri, label %bb.rq, label %bb.ry, label %bb.rc, label %bb.rk, label %bb.rs, label %bb.sa, label %bb.sg, label %bb.so, label %bb.sw, label %bb.te, label %bb.si, label %bb.sq, label %bb.sy, label %bb.tg, label %bb.tm, label %bb.tu, label %bb.uc, label %bb.uk, label %bb.to, label %bb.tw, label %bb.ue, label %bb.um, label %bb.ve, label %bb.vi, label %bb.vm, label %bb.vq, label %bb.us]
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::InterpreterState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %1, ptr %2, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !414
  %i.b = call { i32, i64 } @_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret { i32, i64 } %i.b
}

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !91     ; 9 uses
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 15
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 8, label %bb.b
    i8 1, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 3, label %bb.e
    i8 11, label %bb.e
    i8 4, label %bb.f
    i8 12, label %bb.f
    i8 5, label %bb.g
    i8 13, label %bb.g
    i8 6, label %bb.h
    i8 14, label %bb.k
    i8 7, label %bb.i
    i8 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %i.a to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = or i64 %i.f, -281474976710656
  %i.h = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.g
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.i = and i32 %i.a, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = or i64 %i.l, -562949953421312
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.n = and i32 %i.a, -8
  %i.o = ptrtoint ptr %1 to i64
  %i.p = zext i32 %i.n to i64
  %i.q = add i64 %i.p, %i.o
  %i.r = or i64 %i.q, -844424930131968
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.s = and i32 %i.a, -8
  %i.t = ptrtoint ptr %1 to i64
  %i.u = zext i32 %i.s to i64
  %i.v = add i64 %i.u, %i.t
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !77 ; 2 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = bitcast double %i.y to i64
  %.sroa.0.0.i = select i1 %i.z, i64 9221120237041090560, i64 %i.aa, !prof !65
  br label %bb.k

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.ab = ashr i32 %i.a, 3
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.ae = lshr i32 %i.a, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = or disjoint i64 %i.af, -1266637395197952
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp ugt i32 %i.a, 15
  %i.ai = zext i1 %i.ah to i64
  %i.aj = or disjoint i64 %i.ai, -1407374883553280
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br label %bb.k

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.05.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.0.0.i, %bb.e ], [ %i.ad, %bb.f ], [ %i.ag, %bb.g ], [ %i.aj, %bb.h ], [ -1548112371908608, %bb.j ], [ -1970324836974592, %bb.i ], [ -1688849860263936, %bb.a ]
  ret i64 %.sroa.05.0
}

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7Runtime10allocStackEjNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm6typeOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23symbolDescriptiveStringERNS0_7RuntimeENS0_6HandleINS0_8SymbolIDEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #5

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare { i64, i8 } @_ZNK6hermes2vm13RuntimeModule28findCachedLiteralHiddenClassERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK6hermes2vm9CodeBlock22getObjectBufferKeyIterEjj(ptr dead_on_unwind writable sret(%"class.hermes::vm::SerializedLiteralParser") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.282") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16) local_unnamed_addr #2

declare void @_ZN6hermes2vm13RuntimeModule26tryCacheLiteralHiddenClassERNS0_7RuntimeEjPNS0_11HiddenClassE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter15implCallBuiltinERNS0_7RuntimeEPNS0_17PinnedHermesValueEPNS0_9CodeBlockEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm22GeneratorInnerFunction12restoreStackERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime13notifyTimeoutEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm10JSFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15JSAsyncFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm19JSGeneratorFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter20declareGlobalVarImplERNS0_7RuntimeEPNS0_9CodeBlockEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter38throwIfHasRestrictedGlobalPropertyImplERNS0_7RuntimeEPNS0_9CodeBlockEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN6hermes2vm8JSObject28tryGetOwnNamedDescriptorFastEPS1_RNS0_7RuntimeENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.h, %i.b
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = tail call { i8, ptr } @_ZN6hermes2vm15DictPropertyMap14lookupEntryForEPS1_NS0_8SymbolIDE(ptr noundef %i.j, i32 %2) #10 ; 2 uses
  %i.l = extractvalue { i8, ptr } %i.k, 0
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZN6hermes2vm15DictPropertyMap4findEPKS1_NS0_8SymbolIDE.exit.i, label %_ZN6hermes2vm11HiddenClass19tryFindPropertyFastEPKS1_RNS0_11PointerBaseENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm15DictPropertyMap4findEPKS1_NS0_8SymbolIDE.exit.i: ; preds = %bb.b
  %i.n = extractvalue { i8, ptr } %i.k, 1
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !491
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.s
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.o, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %.sroa.0.0.copyload.i.i9.i = load i32, ptr %i.f, align 4, !tbaa !3
  %i.x = zext i32 %.sroa.0.0.copyload.i.i9.i to i64
  %i.y = add i64 %i.x, %i.b
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !491
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ad
  %i.af = and i64 %i.w, 4294967295
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = add nsw i32 %i.ai, -2
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i64, ptr %i.am, align 4
  store i64 %i.an, ptr %3, align 4
  br label %_ZN6hermes2vm11HiddenClass19tryFindPropertyFastEPKS1_RNS0_11PointerBaseENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !494
  %i.aq = icmp ne i32 %i.ap, 0
  %spec.select.i = sext i1 %i.aq to i32
  br label %_ZN6hermes2vm11HiddenClass19tryFindPropertyFastEPKS1_RNS0_11PointerBaseENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm11HiddenClass19tryFindPropertyFastEPKS1_RNS0_11PointerBaseENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.b, %_ZN6hermes2vm15DictPropertyMap4findEPKS1_NS0_8SymbolIDE.exit.i, %bb.c
  %.sroa.013.0.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 1, %_ZN6hermes2vm15DictPropertyMap4findEPKS1_NS0_8SymbolIDE.exit.i ]
  ret i32 %.sroa.013.0.i
}

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter16caseGetPNameListERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doIncEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doDecEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm9addOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm16doBitNotSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm16doNegateSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doModEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK6hermes2vm13RuntimeModule29getRegExpBytecodeFromRegExpIDEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = trunc i64 %2 to i32
  %i.b = add i32 %i.a, 7                          ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = icmp ugt i32 %i.b, 8199
  br i1 %i.d, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread, label %bb.b

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !369
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.f, align 8, !tbaa !370
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !371
  store ptr @.str.20, ptr %3, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !366
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive19calcCellSizeInBytesEj(i32 noundef %i.c) #10
  %i.k = add i32 %i.j, 7                          ; 2 uses
  %i.l = and i32 %i.k, -8                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.p, %i.r
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.t = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.s, i32 noundef %i.l) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.m, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  tail call void @_ZN6hermes2vm15BigIntPrimitiveC1Ej(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %i.c) #10
  %i.v = and i32 %i.k, 16777208
  %i.w = or disjoint i32 %i.v, 1291845632
  store i32 %i.w, ptr %i.u, align 4, !tbaa !81
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aa = tail call noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr nonnull %i.y, ptr nonnull %i.z, ptr %1, i64 %2) #10
  %i.ab = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.aa)
  %i.ac = or i64 %i.x, -562949953421312
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread, %bb.e
  %.sroa.012.0 = phi i32 [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread ], [ %i.ab, %bb.e ]
  %.sroa.413.0 = phi i64 [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread ], [ %i.ac, %bb.e ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.413.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZNK6hermes2vm13RuntimeModule26getBigIntBytesFromBigIntIdEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doSubEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doMulEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doDivEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_8doBitAndEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_7doBitOrEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_8doBitXorEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_8doLShiftEjjEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_8doRShiftEijEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_9doURshiftEjjEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm11Interpreter16caseIteratorNextERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #7

declare void @_ZN6hermes2vm20CodeCoverageProfiler20markExecutedSlowPathEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112), i64) local_unnamed_addr #2

declare { i8, ptr } @_ZN6hermes2vm15DictPropertyMap14lookupEntryForEPS1_NS0_8SymbolIDE(ptr noundef, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, i32) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

declare ptr @_ZN6hermes2vm8JSRegExp6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!260 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm15IdentifierTable11LookupEntryESaIS3_EE17_Vector_impl_dataE", !261, i64 0, !261, i64 8, !261, i64 16}
!261 = !{!"p1 _ZTSN6hermes2vm15IdentifierTable11LookupEntryE", !15, i64 0}
!262 = !{!"_ZTSN4llvh9BitVectorE", !263, i64 0, !4, i64 16}
!263 = !{!"_ZTSN4llvh15MutableArrayRefImEE", !264, i64 0}
!264 = !{!"_ZTSN4llvh8ArrayRefImEE", !176, i64 0, !39, i64 8}
!265 = !{!"_ZTSN6hermes2vm6detail19IdentifierHashTableE", !266, i64 0, !269, i64 16, !4, i64 24, !4, i64 28}
!266 = !{!"_ZTSN6hermes12CompactTableE", !267, i64 0}
!267 = !{!"_ZTSN6hermes12CompactArrayE", !4, i64 0, !268, i64 4, !38, i64 8}
!268 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !5, i64 0}
!269 = !{!"p1 _ZTSN6hermes2vm15IdentifierTableE", !15, i64 0}
!270 = !{!"_ZTSN6hermes2vm14SymbolRegistryE", !111, i64 0, !271, i64 8}
!271 = !{!"_ZTSN4llvh8DenseSetIN6hermes2vm8SymbolIDENS_12DenseMapInfoIS3_EEEE", !272, i64 0}
!272 = !{!"_ZTSN4llvh6detail12DenseSetImplIN6hermes2vm8SymbolIDENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_EE", !273, i64 0}
!273 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !274, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!274 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIN6hermes2vm8SymbolIDEEE", !15, i64 0}
!275 = !{!"_ZTSSt10unique_ptrIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !276, i64 0}
!276 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm12JSLibStorageESt14default_deleteIS2_ELb1ELb1EE", !277, i64 0}
!277 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm12JSLibStorageESt14default_deleteIS2_EE", !278, i64 0}
!278 = !{!"_ZTSSt5tupleIJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !279, i64 0}
!279 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm12JSLibStorageESt14default_deleteIS2_EEE", !280, i64 0}
!280 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm12JSLibStorageELb0EE", !281, i64 0}
!281 = !{!"p1 _ZTSN6hermes2vm12JSLibStorageE", !15, i64 0}
!282 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !15, i64 0}
!283 = !{!"_ZTSN4llvh12simple_ilistIN6hermes2vm13RuntimeModuleEJEEE", !284, i64 0}
!284 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes2vm13RuntimeModuleELb0ELb0EvEEEE", !12, i64 0}
!285 = !{!"_ZTSN6hermes2vm14CrashTraceNoopE"}
!286 = !{!"_ZTSN4llvh15MutableArrayRefIN6hermes2vm17PinnedHermesValueEEE", !287, i64 0}
!287 = !{!"_ZTSN4llvh8ArrayRefIN6hermes2vm17PinnedHermesValueEEE", !58, i64 0, !39, i64 8}
!288 = !{!"_ZTSN6hermes2vm14StackFramePtrTILb0EEE", !58, i64 0}
!289 = !{!"_ZTSN6hermes18StackOverflowGuardE", !39, i64 0, !39, i64 8}
!290 = !{!"_ZTSSt5arrayIN6hermes2vm17PinnedHermesValueELm8EE", !5, i64 0}
!291 = !{!"_ZTSSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE", !292, i64 0}
!292 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE", !293, i64 0}
!293 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE12_Vector_implE", !294, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!295 = !{!"_ZTSSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE", !296, i64 0}
!296 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE", !297, i64 0}
!297 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE12_Vector_implE", !298, i64 0}
!298 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8JSObjectESaIS3_EE17_Vector_impl_dataE", !299, i64 0, !299, i64 8, !299, i64 16}
!299 = !{!"p2 _ZTSN6hermes2vm8JSObjectE", !30, i64 0}
!300 = !{!"_ZTSSt6vectorIPN6hermes2vm8CallableESaIS3_EE", !301, i64 0}
!301 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE", !302, i64 0}
!302 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE12_Vector_implE", !303, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm8CallableESaIS3_EE17_Vector_impl_dataE", !304, i64 0, !304, i64 8, !304, i64 16}
!304 = !{!"p2 _ZTSN6hermes2vm8CallableE", !30, i64 0}
!305 = !{!"_ZTSSt5dequeIPN6hermes2vm8CallableESaIS3_EE", !306, i64 0}
!306 = !{!"_ZTSSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE", !307, i64 0}
!307 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE11_Deque_implE", !308, i64 0}
!308 = !{!"_ZTSNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE16_Deque_impl_dataE", !309, i64 0, !39, i64 8, !311, i64 16, !311, i64 48}
!309 = !{!"p3 _ZTSN6hermes2vm8CallableE", !310, i64 0}
!310 = !{!"any p3 pointer", !30, i64 0}
!311 = !{!"_ZTSSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_E", !304, i64 0, !304, i64 8, !304, i64 16, !309, i64 24}
!312 = !{!"_ZTSSt10unique_ptrIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !313, i64 0}
!313 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_ELb1ELb1EE", !314, i64 0}
!314 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EE", !315, i64 0}
!315 = !{!"_ZTSSt5tupleIJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !316, i64 0}
!316 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes2vm20CodeCoverageProfilerESt14default_deleteIS2_EEE", !317, i64 0}
!317 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm20CodeCoverageProfilerELb0EE", !318, i64 0}
!318 = !{!"p1 _ZTSN6hermes2vm20CodeCoverageProfilerE", !15, i64 0}
!319 = !{!"_ZTSSt6atomicIhE", !320, i64 0}
!320 = !{!"_ZTSSt13__atomic_baseIhE", !5, i64 0}
!321 = !{!"_ZTSSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !322, i64 0}
!322 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE", !323, i64 0}
!323 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_Vector_implE", !324, i64 0}
!324 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE17_Vector_impl_dataE", !325, i64 0, !325, i64 8, !325, i64 16}
!325 = !{!"p1 _ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !15, i64 0}
!326 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !141, i64 0, !15, i64 24}
!327 = !{!"p1 _ZTSN6hermes4inst4InstE", !15, i64 0}
!328 = !{!109, !39, i64 9480}
!329 = !{!289, !39, i64 8}
!330 = !{!109, !58, i64 9448}
!331 = !{!109, !58, i64 9440}
!332 = !{!333, !15, i64 32}
!333 = !{!"_ZTSN6hermes2vm14NativeFunctionE", !334, i64 0, !15, i64 24, !15, i64 32}
!334 = !{!"_ZTSN6hermes2vm8CallableE", !84, i64 0, !335, i64 20}
!335 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11EnvironmentEEE", !87, i64 0}
!336 = !{!333, !15, i64 24}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv: argument 0"}
!339 = distinct !{!339, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv"}
!340 = !{!341, !4, i64 8}
!341 = !{!"_ZTSN6hermes2vm10NativeArgsE", !67, i64 0, !4, i64 8, !58, i64 16}
!342 = !{!341, !58, i64 16}
!343 = !{!344, !4, i64 4}
!344 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !345, i64 0, !4, i64 4}
!345 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !79, i64 0}
!346 = !{!36, !38, i64 0}
!347 = !{!348, !350, i64 0}
!348 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !349, i64 0, !39, i64 8, !5, i64 16}
!349 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !350, i64 0}
!350 = !{!"p1 char16_t", !15, i64 0}
!351 = !{!352, !352, i64 0}
!352 = !{!"char16_t", !5, i64 0}
!353 = !{!56, !15, i64 0}
!354 = !{!56, !4, i64 8}
!355 = !{!56, !4, i64 12}
!356 = !{!357, !359}
!357 = distinct !{!357, !358, !"_ZNK6hermes2vm10StringView7toTwineEv: argument 0"}
!358 = distinct !{!358, !"_ZNK6hermes2vm10StringView7toTwineEv"}
!359 = distinct !{!359, !360, !"_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv: argument 0"}
!360 = distinct !{!360, !"_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv"}
!361 = !{!362, !364}
!362 = distinct !{!362, !363, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!363 = distinct !{!363, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!364 = distinct !{!364, !365, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!365 = distinct !{!365, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!366 = !{!367, !368, i64 8}
!367 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !368, i64 8, !5, i64 16, !368, i64 24, !39, i64 32, !39, i64 40}
!368 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!369 = !{!367, !368, i64 24}
!370 = !{!367, !39, i64 32}
!371 = !{!367, !39, i64 40}
!372 = !{!368, !368, i64 0}
!373 = !{!374, !376}
!374 = distinct !{!374, !375, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!375 = distinct !{!375, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!376 = distinct !{!376, !377, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!377 = distinct !{!377, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!378 = !{!379, !381}
!379 = distinct !{!379, !380, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!380 = distinct !{!380, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!381 = distinct !{!381, !382, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!382 = distinct !{!382, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!383 = !{!384, !386}
!384 = distinct !{!384, !385, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!385 = distinct !{!385, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!386 = distinct !{!386, !387, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!387 = distinct !{!387, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!388 = !{!389, !391}
!389 = distinct !{!389, !390, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!390 = distinct !{!390, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!391 = distinct !{!391, !392, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!392 = distinct !{!392, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!393 = !{!394, !396}
!394 = distinct !{!394, !395, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!395 = distinct !{!395, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!396 = distinct !{!396, !397, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!397 = distinct !{!397, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!398 = !{!399, !282, i64 0}
!399 = !{!"_ZTSN6hermes2vm9CodeBlockE", !282, i64 0, !400, i64 8, !38, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!400 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !38, i64 0}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_11HiddenClassEEENS0_13MutableHandleIT_EEPS5_: argument 0"}
!403 = distinct !{!403, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_11HiddenClassEEENS0_13MutableHandleIT_EEPS5_"}
!404 = !{!50, !4, i64 208}
!405 = !{!406, !4, i64 16}
!406 = !{!"_ZTSN6hermes3hbc27SerializedLiteralParserBaseE", !407, i64 0, !4, i64 16, !5, i64 20, !4, i64 24, !4, i64 28}
!407 = !{!"_ZTSN4llvh8ArrayRefIhEE", !38, i64 0, !39, i64 8}
!408 = !{!20, !21, i64 0}
!409 = distinct !{!409, !95}
!410 = distinct !{!410, !95}
!411 = distinct !{!411, !95}
!412 = !{!413, !64, i64 0}
!413 = !{!"_ZTSN6hermes2vm16InterpreterStateE", !64, i64 0, !4, i64 8}
!414 = !{!413, !4, i64 8}
!415 = !{!51, !51, i64 0}
!416 = !{!50, !48, i64 8}
!417 = !{!318, !318, i64 0}
!418 = !{!419, !118, i64 96}
!419 = !{!"_ZTSN6hermes2vm20CodeCoverageProfilerE", !16, i64 0, !420, i64 8, !422, i64 48, !424, i64 72, !118, i64 96}
!420 = !{!"_ZTSSt5mutex", !421, i64 0}
!421 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!422 = !{!"_ZTSN4llvh8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEE", !423, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!423 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEEEE", !15, i64 0}
!424 = !{!"_ZTSN4llvh8DenseSetIPN6hermes2vm6DomainENS_12DenseMapInfoIS4_EEEE", !425, i64 0}
!425 = !{!"_ZTSN4llvh6detail12DenseSetImplIPN6hermes2vm6DomainENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_EE", !426, i64 0}
!426 = !{!"_ZTSN4llvh8DenseMapIPN6hermes2vm6DomainENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEE", !427, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!427 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes2vm6DomainEEE", !15, i64 0}
!428 = !{i8 0, i8 2}
!429 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!430 = !{!400, !38, i64 0}
!431 = !{!432, !4, i64 20}
!432 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 29, !5, i64 30}
!433 = !{!399, !38, i64 16}
!434 = !{!435, !39, i64 0}
!435 = !{!"_ZTSN6hermes2vm6XorPtrINS0_9CodeBlockELNS0_11XorPtrKeyIDE1EEE", !39, i64 0}
!436 = !{!303, !304, i64 0}
!437 = !{!438, !438, i64 0}
!438 = !{!"p1 _ZTSN6hermes2vm8CallableE", !15, i64 0}
!439 = !{!440, !443, i64 36}
!440 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunctionE", !441, i64 0, !443, i64 36, !4, i64 40, !444, i64 44, !445, i64 48, !4, i64 52, !446, i64 56, !118, i64 60}
!441 = !{!"_ZTSN6hermes2vm10JSFunctionE", !334, i64 0, !435, i64 24, !442, i64 32}
!442 = !{!"_ZTSN6hermes2vm9GCPointerINS0_6DomainEEE", !87, i64 0}
!443 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction5StateE", !5, i64 0}
!444 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEEE", !87, i64 0}
!445 = !{!"_ZTSN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEE", !92, i64 0}
!446 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction6ActionE", !5, i64 0}
!447 = !{!440, !4, i64 52}
!448 = !{!440, !446, i64 56}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv: argument 0"}
!451 = distinct !{!451, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv: argument 0"}
!454 = distinct !{!454, !"_ZNK6hermes2vm14StackFramePtrTILb0EE13getNativeArgsEv"}
!455 = distinct !{!455, !456}
!456 = !{!"llvm.loop.unroll.disable"}
!457 = distinct !{!457, !95}
!458 = !{!459, !4, i64 0}
!459 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!460 = distinct !{!460, !95, !461, !462}
!461 = !{!"llvm.loop.isvectorized", i32 1}
!462 = !{!"llvm.loop.unroll.runtime.disable"}
!463 = distinct !{!463, !95, !462, !461}
!464 = !{!432, !4, i64 24}
!465 = distinct !{!465, !95, !461, !462}
!466 = distinct !{!466, !95, !462, !461}
!467 = !{!468, !4, i64 4}
!468 = !{!"_ZTSN6hermes2vm18PropertyCacheEntryE", !469, i64 0, !4, i64 4}
!469 = !{!"_ZTSN6hermes2vm8WeakRootINS0_11HiddenClassEEE", !23, i64 0}
!470 = !{!"branch_weights", i32 4001, i32 4000000}
!471 = !{!399, !4, i64 32}
!472 = distinct !{!472, !95}
!473 = !{!"branch_weights", i32 2146410443, i32 1073205}
!474 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!475 = !{!476, !15, i64 96}
!476 = !{!"_ZTSN6hermes2vm14CallableVTableE", !103, i64 0, !15, i64 96, !15, i64 104}
!477 = distinct !{null}
!478 = !{!479, !118, i64 48}
!479 = !{!"_ZTSN6hermes2vm7JSErrorE", !84, i64 0, !480, i64 24, !39, i64 32, !89, i64 40, !89, i64 44, !118, i64 48}
!480 = !{!"_ZTSSt10unique_ptrISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EE", !481, i64 0}
!481 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_ELb1ELb1EE", !482, i64 0}
!482 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EE", !483, i64 0}
!483 = !{!"_ZTSSt5tupleIJPSt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEE", !484, i64 0}
!484 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EESt14default_deleteIS5_EEE", !485, i64 0}
!485 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorIN6hermes2vm14StackTraceInfoESaIS3_EELb0EE", !486, i64 0}
!486 = !{!"p1 _ZTSSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE", !15, i64 0}
!487 = !{!486, !486, i64 0}
!488 = distinct !{!488, !95}
!489 = distinct !{!489, !95}
!490 = !{!15, !15, i64 0}
!491 = !{!492, !4, i64 4}
!492 = !{!"_ZTSN6hermes2vm15DictPropertyMapE", !345, i64 0, !4, i64 4, !4, i64 8, !493, i64 12, !4, i64 16, !4, i64 20, !4, i64 24}
!493 = !{!"_ZTSSt6atomicIjE", !459, i64 0}
!494 = !{!495, !4, i64 12}
!495 = !{!"_ZTSN6hermes2vm11HiddenClassE", !79, i64 0, !496, i64 4, !498, i64 8, !499, i64 10, !4, i64 12, !500, i64 16, !501, i64 24, !88, i64 40, !503, i64 44}
!496 = !{!"_ZTSN6hermes2vm10GCSymbolIDE", !497, i64 0}
!497 = !{!"_ZTSN6hermes2vm8SymbolIDE", !4, i64 0}
!498 = !{!"_ZTSN6hermes2vm13PropertyFlagsE", !5, i64 0}
!499 = !{!"_ZTSN6hermes2vm10ClassFlagsE", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!500 = !{!"_ZTSN6hermes2vm9GCPointerINS0_15DictPropertyMapEEE", !87, i64 0}
!501 = !{!"_ZTSN6hermes2vm6detail13TransitionMapE", !502, i64 0, !5, i64 8}
!502 = !{!"_ZTSN6hermes2vm6detail10TransitionE", !497, i64 0, !498, i64 4}
!503 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEE", !87, i64 0}
end_hunk_3
