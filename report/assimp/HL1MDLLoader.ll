inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
          cleanup
  call void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.body661

bb.ef:                                            ; preds = %bb.eb
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alt, i64 56
  %i.amo = load ptr, ptr %i.amn, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.alw, ptr noundef %i.amo)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.amp = landingpad { ptr, i32 }
          catch ptr null
  %i.amq = extractvalue { ptr, i32 } %i.amp, 0
  call void @__clang_call_terminate(ptr %i.amq) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.alt, i64 noundef 88) #24
  br label %.noexc500

.noexc500:                                        ; preds = %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.alt, %.thread.i ], [ %i.amc, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.eh

bb.eh:                                            ; preds = %.noexc500, %bb.ea
  %.sroa.06.0.i = phi ptr [ %.sroa.0.010.i, %.noexc500 ], [ %.19.i.i.i.i, %bb.ea ]
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.ams = load ptr, ptr %i.amr, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %.12912304, i64 2
  %i.amu = getelementptr inbounds nuw i8, ptr %.12912304, i64 4
  %i.amv = getelementptr inbounds nuw i8, ptr %.12912304, i64 6
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread
  %.sroa.0708.02303 = phi ptr [ %i.ams, %bb.eh ], [ %i.apd, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread ] ; 3 uses
  %i.amw = load ptr, ptr %i.uj, align 8           ; 2 uses
  %.not10.i.i.i.i501 = icmp eq ptr %i.amw, null
  br i1 %.not10.i.i.i.i501, label %.critedge.i512, label %.lr.ph.i.i.i.i502

.lr.ph.i.i.i.i502:                                ; preds = %bb.ei
  %i.amx = load i16, ptr %.12912304, align 2      ; 2 uses
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %.lr.ph.i.i.i.i502
  %.012.i.i.i.i503 = phi ptr [ %i.amw, %.lr.ph.i.i.i.i502 ], [ %.1.i.i.i.i508, %bb.ej ] ; 4 uses
  %.0811.i.i.i.i504 = phi ptr [ %i.ui, %.lr.ph.i.i.i.i502 ], [ %.19.i.i.i.i505, %bb.ej ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 32
  %i.amz = load i16, ptr %i.amy, align 2
  %i.ana = icmp slt i16 %i.amz, %i.amx            ; 3 uses
  %.19.i.i.i.i505 = select i1 %i.ana, ptr %.0811.i.i.i.i504, ptr %.012.i.i.i.i503 ; 5 uses
  %.1.in.v.i.i.i.i506 = select i1 %i.ana, i64 24, i64 16
  %.1.in.i.i.i.i507 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 %.1.in.v.i.i.i.i506
  %.1.i.i.i.i508 = load ptr, ptr %.1.in.i.i.i.i507, align 8 ; 2 uses
  %.not.i.i.i.i509 = icmp eq ptr %.1.i.i.i.i508, null
  br i1 %.not.i.i.i.i509, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510, label %bb.ej, !llvm.loop !207

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510: ; preds = %bb.ej
  %i.anb = icmp eq ptr %.19.i.i.i.i505, %i.ui
  br i1 %i.anb, label %.critedge.i512, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510
  %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ana, ptr %.0811.i.i.i.i504, ptr %.012.i.i.i.i503
  %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.anc = load i16, ptr %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.and = icmp slt i16 %i.amx, %i.anc
  br i1 %i.and, label %.critedge.i512, label %bb.es

.critedge.i512:                                   ; preds = %bb.ek, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510, %bb.ei
  %.08.lcssa.i.i.i11.i513 = phi ptr [ %.19.i.i.i.i505, %bb.ek ], [ %.19.i.i.i.i505, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510 ], [ %i.ui, %bb.ei ]
  %i.ane = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc669 unwind label %bb.eu ; 12 uses

.noexc669:                                        ; preds = %.critedge.i512
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 32 ; 3 uses
  %i.ang = load i16, ptr %.12912304, align 2
  store i16 %i.ang, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 40 ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ane, i64 48 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ane, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anh, i8 0, i64 24, i1 false)
  store ptr %i.ani, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ane, i64 72
  store ptr %i.ani, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ane, i64 80
  store i64 0, ptr %i.anl, align 8
  %i.anm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr %.08.lcssa.i.i.i11.i513, ptr noundef nonnull align 2 dereferenceable(2) %i.anf)
          to label %bb.el unwind label %bb.eo     ; 2 uses

bb.el:                                            ; preds = %.noexc669
  %i.ann = extractvalue { ptr, ptr } %i.anm, 0    ; 2 uses
  %i.ano = extractvalue { ptr, ptr } %i.anm, 1    ; 4 uses
  %.not.i663 = icmp eq ptr %i.ano, null
  br i1 %.not.i663, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.not.i.i.i664 = icmp ne ptr %i.ann, null
  %i.anp = icmp eq ptr %i.ano, %i.ui
  %or.cond.i.i.i665 = or i1 %.not.i.i.i664, %i.anp
  br i1 %or.cond.i.i.i665, label %.thread.i666, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 32
  %i.anr = load i16, ptr %i.anf, align 8
  %i.ans = load i16, ptr %i.anq, align 2
  %i.ant = icmp slt i16 %i.anr, %i.ans
  br label %.thread.i666

.thread.i666:                                     ; preds = %bb.en, %bb.em
  %i.anu = phi i1 [ %i.ant, %bb.en ], [ true, %bb.em ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.anu, ptr noundef nonnull %i.ane, ptr noundef nonnull %i.ano, ptr noundef nonnull align 8 dereferenceable(32) %i.ui) #23
  %i.anv = load i64, ptr %i.um, align 8
  %i.anw = add i64 %i.anv, 1
  store i64 %i.anw, ptr %i.um, align 8
  br label %bb.es

bb.eo:                                            ; preds = %.noexc669
  %i.anx = landingpad { ptr, i32 }
          cleanup
  %i.any = getelementptr inbounds nuw i8, ptr %i.ane, i64 56
  %i.anz = load ptr, ptr %i.any, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.anh, ptr noundef %i.anz)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aoa = landingpad { ptr, i32 }
          catch ptr null
  %i.aob = extractvalue { ptr, i32 } %i.aoa, 0
  call void @__clang_call_terminate(ptr %i.aob) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef 88) #24
  br label %.body661

bb.eq:                                            ; preds = %bb.el
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ane, i64 56
  %i.aod = load ptr, ptr %i.aoc, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.anh, ptr noundef %i.aod)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aoe = landingpad { ptr, i32 }
          catch ptr null
  %i.aof = extractvalue { ptr, i32 } %i.aoe, 0
  call void @__clang_call_terminate(ptr %i.aof) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668: ; preds = %bb.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef 88) #24
  br label %bb.es

bb.es:                                            ; preds = %bb.ek, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668, %.thread.i666
  %.sroa.06.0.i511 = phi ptr [ %.19.i.i.i.i505, %bb.ek ], [ %i.ane, %.thread.i666 ], [ %i.ann, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668 ]
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i511, i64 48
  %.not801 = icmp eq ptr %.sroa.0708.02303, %i.aog
  br i1 %.not801, label %bb.ey, label %bb.ev

bb.et:                                            ; preds = %.critedge.i
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.eu:                                            ; preds = %.critedge.i512
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ev:                                            ; preds = %bb.es
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0708.02303, i64 32
  %i.aok = load i16, ptr %i.aoj, align 2          ; 2 uses
  %i.aol = sext i16 %i.aok to i64
  %i.aom = load ptr, ptr %20, align 8             ; 2 uses
  %i.aon = getelementptr inbounds nuw [10 x i8], ptr %i.aom, i64 %i.aol ; 4 uses
  %i.aoo = load i16, ptr %i.aon, align 2
  %i.aop = load i16, ptr %.12912304, align 1
  %i.aoq = icmp eq i16 %i.aoo, %i.aop
  br i1 %i.aoq, label %bb.ew, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

bb.ew:                                            ; preds = %bb.ev
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aon, i64 2
  %i.aos = load i16, ptr %i.aor, align 2
  %i.aot = load i16, ptr %i.amt, align 1
  %i.aou = icmp eq i16 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ex, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

bb.ex:                                            ; preds = %bb.ew
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  %i.aow = load i16, ptr %i.aov, align 2
  %i.aox = load i16, ptr %i.amu, align 1
  %i.aoy = icmp eq i16 %i.aow, %i.aox
  br i1 %i.aoy, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516: ; preds = %bb.ex
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aon, i64 6
  %i.apa = load i16, ptr %i.aoz, align 2
  %i.apb = load i16, ptr %i.amv, align 1
  %i.apc = icmp eq i16 %i.apa, %i.apb
  %spec.select4601 = select i1 %i.apc, i16 %i.aok, i16 -1
  br label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread: ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516, %bb.ev, %bb.ew, %bb.ex
  %.1248 = phi i16 [ -1, %bb.ev ], [ %spec.select4601, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516 ], [ -1, %bb.ex ], [ -1, %bb.ew ] ; 2 uses
  %i.apd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0708.02303) #28
  %i.ape = icmp eq i16 %.1248, -1
  br i1 %i.ape, label %bb.ei, label %.critedge, !llvm.loop !208

bb.ey:                                            ; preds = %bb.es
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_1clERKNS1_7TrivertEi"(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(8) %.12912304, i32 noundef %i.ahg)
          to label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 unwind label %.loopexit818

.loopexit818:                                     ; preds = %bb.ey, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518
  %lpad.loopexit820 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp819:                            ; preds = %bb.fb
  %lpad.loopexit.split-lp821 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.critedge:                                        ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread
  %i.apf = sext i16 %.1248 to i64
  %i.apg = getelementptr inbounds nuw [10 x i8], ptr %i.aom, i64 %i.apf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8 ; 2 uses
  %i.api = load ptr, ptr %i.vd, align 8           ; 3 uses
  %i.apj = load ptr, ptr %i.vf, align 8
  %.not.i517 = icmp eq ptr %i.api, %i.apj
  br i1 %.not.i517, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.critedge
  %i.apk = load i16, ptr %i.aph, align 2
  store i16 %i.apk, ptr %i.api, align 2
  %i.apl = load ptr, ptr %i.vd, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 2
  store ptr %i.apm, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

bb.fa:                                            ; preds = %.critedge
  %i.apn = load ptr, ptr %21, align 8             ; 4 uses
  %i.apo = ptrtoint ptr %i.api to i64
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = sub i64 %i.apo, %i.app                 ; 6 uses
  %i.apr = icmp eq i64 %i.apq, 9223372036854775806
  br i1 %i.apr, label %bb.fb, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc524 unwind label %.loopexit.split-lp819

.noexc524:                                        ; preds = %bb.fb
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518: ; preds = %bb.fa
  %i.aps = ashr exact i64 %i.apq, 1               ; 3 uses
  %.sroa.speculated.i.i.i519 = call i64 @llvm.umax.i64(i64 %i.aps, i64 1)
  %i.apt = add i64 %.sroa.speculated.i.i.i519, %i.aps ; 2 uses
  %i.apu = icmp ult i64 %i.apt, %i.aps
  %i.apv = call i64 @llvm.umin.i64(i64 %i.apt, i64 4611686018427387903)
  %i.apw = select i1 %i.apu, i64 4611686018427387903, i64 %i.apv ; 3 uses
  %.not.i.i.i520 = icmp ne i64 %i.apw, 0
  call void @llvm.assume(i1 %.not.i.i.i520)
  %i.apx = shl nuw nsw i64 %i.apw, 1
  %i.apy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apx) #26
          to label %.noexc525 unwind label %.loopexit818 ; 4 uses

.noexc525:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518
  %i.apz = getelementptr inbounds i8, ptr %i.apy, i64 %i.apq ; 2 uses
  %i.aqa = load i16, ptr %i.aph, align 2
  store i16 %i.aqa, ptr %i.apz, align 2
  %i.aqb = icmp sgt i64 %i.apq, 0
  br i1 %i.aqb, label %bb.fc, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521

bb.fc:                                            ; preds = %.noexc525
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.apy, ptr align 2 %i.apn, i64 %i.apq, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521: ; preds = %bb.fc, %.noexc525
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %.not.i17.i.i522 = icmp eq ptr %i.apn, null
  br i1 %.not.i17.i.i522, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521
  call void @_ZdlPvm(ptr noundef nonnull %i.apn, i64 noundef %i.apq) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523: ; preds = %bb.fd, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521
  store ptr %i.apy, ptr %21, align 8
  store ptr %i.aqc, ptr %i.vd, align 8
  %i.aqd = getelementptr inbounds nuw [2 x i8], ptr %i.apy, i64 %i.apw
  store ptr %i.aqd, ptr %i.vf, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

_ZNSt6vectorIsSaIsEE9push_backERKs.exit496:       ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523, %bb.ez, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i493, %bb.dw, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit486, %bb.ey, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  %i.aqe = add nsw i32 %.12882306, -1
  %i.aqf = getelementptr inbounds nuw i8, ptr %.12912304, i64 8 ; 3 uses
  %i.aqg = icmp sgt i32 %.12882306, 1
  br i1 %i.aqg, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470, label %bb.fe, !llvm.loop !209

bb.fe:                                            ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %i.aqh = load ptr, ptr %i.vd, align 8
  %i.aqi = load ptr, ptr %21, align 8
  %i.aqj = ptrtoint ptr %i.aqh to i64
  %i.aqk = ptrtoint ptr %i.aqi to i64
  %i.aql = sub i64 %i.aqj, %i.aqk
  %i.aqm = lshr exact i64 %i.aql, 1
  %i.aqn = trunc i64 %i.aqm to i32
  %i.aqo = add i32 %i.aqn, -2                     ; 6 uses
  %i.aqp = sext i32 %i.aqo to i64                 ; 3 uses
  %i.aqq = icmp slt i32 %i.aqo, 0
  br i1 %i.aqq, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #25
          to label %.noexc527 unwind label %.loopexit.split-lp837

.noexc527:                                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.aqr = ptrtoint ptr %.sroa.36.32324 to i64
  %i.aqs = ptrtoint ptr %.sroa.0729.32326 to i64  ; 2 uses
  %i.aqt = sub i64 %i.aqr, %i.aqs                 ; 2 uses
  %i.aqu = sdiv exact i64 %i.aqt, 6
  %i.aqv = icmp ult i64 %i.aqu, %i.aqp
  br i1 %i.aqv, label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.fg
  %i.aqw = ptrtoint ptr %.sroa.19.32325 to i64
  %i.aqx = sub i64 %i.aqw, %i.aqs                 ; 3 uses
  %i.aqy = mul nuw nsw i64 %i.aqp, 6
  %i.aqz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqy) #26
          to label %.noexc528 unwind label %.loopexit836 ; 4 uses

.noexc528:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i
  %i.ara = icmp sgt i64 %i.aqx, 0
  br i1 %i.ara, label %bb.fh, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.fh:                                            ; preds = %.noexc528
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aqz, ptr align 2 %.sroa.0729.32326, i64 %i.aqx, i1 false)
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.fh, %.noexc528
  %.not.i8.i = icmp eq ptr %.sroa.0729.32326, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0729.32326, i64 noundef %i.aqt) #24
  br label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.fi, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.aqx
  %i.arc = getelementptr inbounds nuw [6 x i8], ptr %i.aqz, i64 %i.aqp
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.fg
  %.sroa.36.9 = phi ptr [ %i.arc, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.36.32324, %bb.fg ] ; 4 uses
  %.sroa.19.9 = phi ptr [ %i.arb, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.19.32325, %bb.fg ] ; 4 uses
  %.sroa.0729.9 = phi ptr [ %i.aqz, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.0729.32326, %bb.fg ] ; 4 uses
  %.not2428 = icmp eq i32 %i.aqo, 0               ; 2 uses
  br i1 %i.agx, label %.preheader, label %.preheader806

.preheader806:                                    ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit
  br i1 %.not2428, label %.loopexit804, label %.lr.ph2311.preheader

.lr.ph2311.preheader:                             ; preds = %.preheader806
  %wide.trip.count = zext nneg i32 %i.aqo to i64
  br label %.lr.ph2311

.preheader:                                       ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit
  br i1 %.not2428, label %.loopexit804, label %.lr.ph2319.preheader

.lr.ph2319.preheader:                             ; preds = %.preheader
  %wide.trip.count3399 = zext nneg i32 %i.aqo to i64
  br label %.lr.ph2319

.loopexit836:                                     ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i
  %lpad.loopexit838 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp837:                            ; preds = %bb.ff
  %lpad.loopexit.split-lp839 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2319:                                       ; preds = %.lr.ph2319.preheader, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit
  %indvars.iv3395 = phi i64 [ 0, %.lr.ph2319.preheader ], [ %indvars.iv.next3396, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.0729.42317 = phi ptr [ %.sroa.0729.9, %.lr.ph2319.preheader ], [ %.sroa.0729.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %.sroa.19.42316 = phi ptr [ %.sroa.19.9, %.lr.ph2319.preheader ], [ %.sroa.19.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.36.42315 = phi ptr [ %.sroa.36.9, %.lr.ph2319.preheader ], [ %.sroa.36.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.ard = load ptr, ptr %21, align 8             ; 3 uses
  %i.are = load i16, ptr %i.ard, align 2          ; 2 uses
  %indvars.iv.next3396 = add nuw nsw i64 %indvars.iv3395, 1 ; 3 uses
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv.next3396
  %i.arg = load i16, ptr %i.arf, align 2          ; 2 uses
  %i.arh = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv3395
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 4
  %i.arj = load i16, ptr %i.ari, align 2          ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_0clEis":bb.a
  %7 = alloca %"class.std::allocator.43", align 1 ; 4 uses
  store i32 %0, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %i.g, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !383

_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit

_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp slt i32 %0, %i.k
  br i1 %.not, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %.lr.ph.i.i.i.i

_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 %1, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  store i32 %0, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = load <2 x ptr>, ptr %i.r, align 8
  store <2 x ptr> %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  store ptr null, ptr %i.m, align 8
  store ptr %i.o, ptr %i.r, align 8
  store ptr %i.o, ptr %i.t, align 8
  store i64 0, ptr %i.w, align 8
  br label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.c:                                             ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread
  store i32 0, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.l, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.l, ptr %i.aa, align 8
  br label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %i.x, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %.sink, ptr %i.ab, align 8
  %i.ac = invoke { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit unwind label %bb.f ; 0 uses

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit: ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.af)
          to label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit:  ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit
  %i.ai = load ptr, ptr %i.m, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ai)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

bb.f:                                             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.al

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp slt i32 %i.an, %0                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !216

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.ap, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp slt i32 %0, %i.ar
  br i1 %i.as, label %.critedge.i, label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.g, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit: ; preds = %bb.g, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.at, %.critedge.i ], [ %.19.i.i.i.i, %bb.g ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit, %.lr.ph.i.i.i7
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i7 ], [ %.02022.i.i.i, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.ay = icmp slt i16 %1, %i.ax                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.ay, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i8, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i7, !llvm.loop !384

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i7
  br i1 %i.ay, label %._crit_edge.thread.i.i.i, label %bb.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.av, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %.019.lcssa29.i.i.i, %i.ba
  br i1 %i.bb, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.bd = phi i16 [ %.pre.i.i, %bb.h ], [ %i.ax, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.h ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.be = icmp slt i16 %i.bd, %1
  br i1 %i.be, label %select.unfold.i.i, label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

select.unfold.i.i:                                ; preds = %bb.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.i ] ; 3 uses
  %i.bf = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.av
  br i1 %i.bf, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %select.unfold.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp slt i16 %1, %i.bh
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.j, %select.unfold.i.i
  %i.bj = phi i1 [ %i.bi, %bb.j ], [ true, %select.unfold.i.i ]
  %i.bk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i16 %1, ptr %i.bl, align 2
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.av) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit:      ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.i, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_1clERKNS1_7TrivertEi"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.115", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %5 = alloca %"struct.std::pair.93", align 8     ; 15 uses
  %6 = alloca %"class.std::set", align 8          ; 11 uses
  %i.a = alloca [1 x i16], align 2                ; 5 uses
  %7 = alloca %"struct.std::less", align 1        ; 4 uses
  %8 = alloca %"class.std::allocator.43", align 1 ; 4 uses
  %i.b = load <4 x i16>, ptr %1, align 1          ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !114 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i16                    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !align !114 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 10
  %i.u = trunc i64 %i.t to i16                    ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.aa = extractelement <4 x i16> %i.b, i64 0    ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %.lr.ph.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp slt i16 %i.ac, %i.aa               ; 2 uses
  %.19.i.i.i = select i1 %i.ad, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ae = icmp eq ptr %.19.i.i.i, %i.z
  br i1 %i.ae, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ag = load i16, ptr %i.af, align 2
  %.not = icmp slt i16 %i.aa, %i.ag
  br i1 %.not, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i.i

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 %i.u, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.a, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.ah = load i16, ptr %1, align 2
  store i16 %i.ah, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = load <2 x ptr>, ptr %i.ao, align 8
  store <2 x ptr> %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ai, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  store ptr null, ptr %i.aj, align 8
  store ptr %i.al, ptr %i.ao, align 8
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.at, align 8
  br label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.c:                                             ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  store i32 0, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ai, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ai, ptr %i.ax, align 8
  br label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %i.au, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sink, ptr %i.ay, align 8
  %i.az = invoke { ptr, i8 } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit unwind label %bb.f ; 0 uses

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit: ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef %i.bc)
          to label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #27
  unreachable

_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit:  ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit
  %i.bf = load ptr, ptr %i.aj, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.bf)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

bb.f:                                             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.bi

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = icmp slt i16 %i.bk, %i.aa               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bl, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bl, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !207

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bm = icmp eq ptr %.19.i.i.i.i, %i.z
  br i1 %i.bm, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = icmp slt i16 %i.aa, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.g, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bq = call ptr @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit: ; preds = %bb.g, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.bq, %.critedge.i ], [ %.19.i.i.i.i, %bb.g ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.br, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit, %.lr.ph.i.i.i12
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i12 ], [ %.02022.i.i.i, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bu = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.bv = icmp sgt i16 %i.bu, %i.u                ; 2 uses
  %.in.v.i.i.i = select i1 %i.bv, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i13, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i12, !llvm.loop !384

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i12
  br i1 %i.bv, label %._crit_edge.thread.i.i.i, label %bb.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bs, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %.019.lcssa29.i.i.i, %i.bx
  br i1 %i.by, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.ca = phi i16 [ %.pre.i.i, %bb.h ], [ %i.bu, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.h ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.cb = icmp slt i16 %i.ca, %i.u
  br i1 %i.cb, label %select.unfold.i.i, label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

select.unfold.i.i:                                ; preds = %bb.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.i ] ; 3 uses
  %i.cc = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bs
  br i1 %i.cc, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %select.unfold.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = icmp sgt i16 %i.ce, %i.u
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.j, %select.unfold.i.i
  %i.cg = phi i1 [ %i.cf, %bb.j ], [ true, %select.unfold.i.i ]
  %i.ch = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i16 %i.u, ptr %i.ci, align 2
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bs) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit:      ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.i, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit
  %i.cm = load ptr, ptr %i.l, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit
  store <4 x i16> %i.b, ptr %i.co, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 %i.k, ptr %.sroa.9.0..sroa_idx, align 2
  %i.cr = load ptr, ptr %i.cn, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  store ptr %i.cs, ptr %i.cn, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit
  %i.ct = load ptr, ptr %i.cm, align 8            ; 5 uses
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.m, label %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.cy = sdiv exact i64 %i.cw, 10                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 922337203685477580)
  %i.dc = select i1 %i.da, i64 922337203685477580, i64 %i.db ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.dd = mul nuw nsw i64 %i.dc, 10
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #26 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 2 uses
  store <4 x i16> %i.b, ptr %i.df, align 2
  %.sroa.9.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i16 %i.k, ptr %.sroa.9.0..sroa_idx37, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.ct, %i.co
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %i.ct, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.0911.i.i.i.i.i, i64 10, i1 false), !alias.scope !385
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 10 ; 2 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.dg, %i.co
  br i1 %.not.i.i.i.i.i15, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !389

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.de, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 10
  %.not.i23.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.de, ptr %i.cm, align 8
  store ptr %i.di, ptr %i.cn, align 8
  %i.dj = getelementptr inbounds nuw [10 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dj, ptr %i.cp, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.dk = load ptr, ptr %0, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %.not.i16 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit
  store i16 %i.u, ptr %i.dm, align 2
  %i.dp = load ptr, ptr %i.dl, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store ptr %i.dq, ptr %i.dl, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit
  %i.dr = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775806
  br i1 %i.dv, label %bb.q, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dw = ashr exact i64 %i.du, 1                 ; 3 uses
  %.sroa.speculated.i.i.i17 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add i64 %.sroa.speculated.i.i.i17, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 4611686018427387903)
  %i.ea = select i1 %i.dy, i64 4611686018427387903, i64 %i.dz ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i18)
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #26 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i16 %i.u, ptr %i.ed, align 2
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.r, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ec, ptr align 2 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.ec, ptr %i.dk, align 8
  store ptr %i.ef, ptr %i.dl, align 8
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eg, ptr %i.dn, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

_ZNSt6vectorIsSaIsEE9push_backERKs.exit:          ; preds = %bb.o, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8            ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %.not.i19 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  store i16 %i.k, ptr %i.ek, align 2
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store ptr %i.eo, ptr %i.ej, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit26

bb.u:                                             ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %i.ep = load ptr, ptr %i.ei, align 8            ; 4 uses
  %i.eq = ptrtoint ptr %i.ek to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775806
  br i1 %i.et, label %bb.v, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i20

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.u
  %i.eu = ashr exact i64 %i.es, 1                 ; 3 uses
  %.sroa.speculated.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add i64 %.sroa.speculated.i.i.i21, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 4611686018427387903)
  %i.ey = select i1 %i.ew, i64 4611686018427387903, i64 %i.ex ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
end_hunk_1
begin_hunk_2_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev:bb.a
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !432
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !432
  store i8 0, ptr %i.a, align 8, !alias.scope !432
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !432 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !432 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !432 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !432 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %.idx = shl nuw nsw i64 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ab, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i ], [ %1, %bb.a ] ; 2 uses
  %.not.i7 = icmp eq i64 %.pr21, 0
  %.pre.i.i.i.pre.pre.pre = load i16, ptr %.08.i, align 2 ; 5 uses
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp slt i16 %i.i, %.pre.i.i.i.pre.pre.pre
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp slt i16 %.pre.i.i.i.pre.pre.pre, %i.l ; 2 uses
  %.in.v.i.i = select i1 %i.m, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !384

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.m, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = icmp eq ptr %.019.lcssa29.i.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #28
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre81.i = load i16, ptr %.phi.trans.insert80.i, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.q = phi i16 [ %.pre81.i, %bb.d ], [ %i.l, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.d ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.r = icmp slt i16 %i.q, %.pre.i.i.i.pre.pre.pre
  br i1 %i.r, label %select.unfold, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.e, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.e ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.s, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp slt i16 %.pre.i.i.i.pre.pre.pre, %i.u
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold
  %i.w = phi i1 [ %i.v, %bb.f ], [ true, %select.unfold ]
  %i.x = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc6 unwind label %bb.g    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i16 %.pre.i.i.i.pre.pre.pre, ptr %i.y, align 2
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #23
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.e, align 8
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i: ; preds = %bb.e, %.noexc6
  %.pr = phi i64 [ %.pr21, %bb.e ], [ %i.aa, %.noexc6 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit, label %.lr.ph.i, !llvm.loop !433

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit: ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e                  ; 2 uses
  %.in.v.i = select i1 %i.f, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !434

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i, %i.h
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre19 = load i32, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.k = phi i32 [ %.pre19, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.l = phi i32 [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.m = icmp slt i32 %i.l, %i.k
  br i1 %i.m, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.n, label %._crit_edge.i6, label %bb.e

._crit_edge.i6:                                   ; preds = %select.unfold
  %.pre.i = load i32, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = load i32, ptr %i.o, align 4
  %i.r = icmp slt i32 %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i6
  %i.s = phi i32 [ %i.p, %bb.e ], [ %.pre.i, %._crit_edge.i6 ]
  %i.t = phi i1 [ %i.r, %bb.e ], [ true, %._crit_edge.i6 ]
  %i.u = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  store ptr null, ptr %i.x, align 8
  store ptr %i.z, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store i64 0, ptr %i.ah, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.w, ptr %i.al, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i64 %.sink.i.i.i, ptr %i.am, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.u, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !435

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::set<short>>, std::_Select1st<std::pair<const int, std::set<short>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.k, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i32, ptr %i.c, align 8
  %i.s = load i32, ptr %i.q, align 4
  %i.t = icmp slt i32 %i.r, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.u = phi i1 [ %i.t, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.aa)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !434

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #28 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !434

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = icmp slt i16 %i.c, %i.e                  ; 2 uses
  %.in.v.i = select i1 %i.f, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !436

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i, %i.h
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre19 = load i16, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.k = phi i16 [ %.pre19, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.l = phi i16 [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.m = icmp slt i16 %i.l, %i.k
  br i1 %i.m, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.n, label %._crit_edge.i6, label %bb.e

._crit_edge.i6:                                   ; preds = %select.unfold
  %.pre.i = load i16, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.p = load i16, ptr %1, align 8                ; 2 uses
  %i.q = load i16, ptr %i.o, align 2
  %i.r = icmp slt i16 %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i6
  %i.s = phi i16 [ %i.p, %bb.e ], [ %.pre.i, %._crit_edge.i6 ]
  %i.t = phi i1 [ %i.r, %bb.e ], [ true, %._crit_edge.i6 ]
  %i.u = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i16 %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  store ptr null, ptr %i.x, align 8
  store ptr %i.z, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store i64 0, ptr %i.ah, align 8
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.w, ptr %i.al, align 8
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i64 %.sink.i.i.i, ptr %i.am, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.u, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i16, ptr %i.a, align 2
  store i16 %i.d, ptr %i.c, align 2
  %i.e = load i32, ptr %1, align 8
  store i32 %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.036 = load ptr, ptr %.0.in35, align 8         ; 2 uses
  %.not3237 = icmp eq ptr %.036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.039 = phi ptr [ %.0, %bb.l ], [ %.036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.m, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i16, ptr %i.n, align 2
  store i16 %i.p, ptr %i.o, align 2
  %i.q = load i32, ptr %.039, align 8
  store i32 %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.m, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03138, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.039, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.w, ptr %i.x, align 8
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.d ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.030) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #25
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.0.in = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !437

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_3
