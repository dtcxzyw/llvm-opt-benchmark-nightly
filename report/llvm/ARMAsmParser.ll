Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmParser?download=true
inline.NumInlined: 13951
inline.NumDeleted: 2231
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
  %i.ajy = load i32, ptr %i.e, align 8, !tbaa !61 ; 3 uses
  %i.ajz = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i729 = icmp ult i32 %i.ajy, %i.ajz    ; 2 uses
  br i1 %i.ajw, label %bb.gq, label %bb.gv

bb.gq:                                            ; preds = %bb.gp
  %.val.i732 = load ptr, ptr %i.ajx, align 8, !tbaa !60
  %.fca.1.load.cast.i.i733 = ptrtoint ptr %.val.i732 to i64 ; 2 uses
  br i1 %.not.i.i.i729, label %bb.gs, label %bb.gr, !prof !95

bb.gr:                                            ; preds = %bb.gq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i733)
  %.pre.i734 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735

bb.gs:                                            ; preds = %bb.gq
  %i.aka = zext i32 %i.ajy to i64
  %i.akb = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akc = getelementptr inbounds nuw [16 x i8], ptr %i.akb, i64 %i.aka ; 2 uses
  store i8 5, ptr %i.akc, align 1
  %.sroa.4.0..sroa_idx.i.i.i736 = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store i64 %.fca.1.load.cast.i.i733, ptr %.sroa.4.0..sroa_idx.i.i.i736, align 1
  %i.akd = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ake = add i32 %i.akd, 1                      ; 2 uses
  store i32 %i.ake, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735: ; preds = %bb.gs, %bb.gr
  %i.akf = phi i32 [ %.pre.i734, %bb.gr ], [ %i.ake, %bb.gs ] ; 2 uses
  %i.akg = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i30.i = icmp ult i32 %i.akf, %i.akg
  br i1 %.not.i.i30.i, label %bb.gu, label %bb.gt, !prof !95

bb.gt:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.gu:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735
  %i.akh = zext i32 %i.akf to i64
  %i.aki = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akj = getelementptr inbounds nuw [16 x i8], ptr %i.aki, i64 %i.akh ; 2 uses
  store i8 2, ptr %i.akj, align 1
  %.sroa.4.0..sroa_idx.i.i31.i = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i31.i, align 1
  %i.akk = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akl = add i32 %i.akk, 1
  store i32 %i.akl, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.gv:                                            ; preds = %bb.gp
  %.sroa.012.0.copyload.i = load i32, ptr %i.ajx, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i730 = zext i32 %.sroa.012.0.copyload.i to i64 ; 2 uses
  br i1 %.not.i.i.i729, label %bb.gx, label %bb.gw, !prof !95

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i730)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i

bb.gx:                                            ; preds = %bb.gv
  %i.akm = zext i32 %i.ajy to i64
  %i.akn = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ako = getelementptr inbounds nuw [16 x i8], ptr %i.akn, i64 %i.akm ; 2 uses
  store i8 1, ptr %i.ako, align 1
  %.sroa.4.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i730, ptr %.sroa.4.0..sroa_idx.i.i35.i, align 1
  %i.akp = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akq = add i32 %i.akp, 1
  store i32 %i.akq, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i: ; preds = %bb.gx, %bb.gw
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ajs, i64 144
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !60 ; 4 uses
  %.not.i731 = icmp eq ptr %i.aks, null
  br i1 %.not.i731, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i
  %i.akt = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.aku = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i37.i = icmp ult i32 %i.akt, %i.aku
  br i1 %.not.i.i37.i, label %bb.ha, label %bb.gz, !prof !95

bb.gz:                                            ; preds = %bb.gy
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ha:                                            ; preds = %bb.gy
  %i.akv = zext i32 %i.akt to i64
  %i.akw = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %i.akw, i64 %i.akv ; 2 uses
  store i8 2, ptr %i.akx, align 1
  %.sroa.4.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i38.i, align 1
  %i.aky = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akz = add i32 %i.aky, 1
  store i32 %i.akz, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i
  %i.ala = load i8, ptr %i.aks, align 8, !tbaa !401
  %.not50.i = icmp eq i8 %i.ala, 1
  br i1 %.not50.i, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !403
  %i.ald = sdiv i64 %i.alc, 4
  %i.ale = trunc i64 %i.ald to i32                ; 2 uses
  %i.alf = icmp slt i32 %i.ale, 0
  %i.alg = call i32 @llvm.abs.i32(i32 %i.ale, i1 false)
  %i.alh = select i1 %i.alf, i32 256, i32 0
  %i.ali = and i32 %i.alg, 255
  %i.alj = or disjoint i32 %i.alh, %i.ali
  %i.alk = zext nneg i32 %i.alj to i64            ; 2 uses
  %i.all = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.alm = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i41.i = icmp ult i32 %i.all, %i.alm
  br i1 %.not.i.i41.i, label %bb.he, label %bb.hd, !prof !95

bb.hd:                                            ; preds = %bb.hc
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.alk)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.he:                                            ; preds = %bb.hc
  %i.aln = zext i32 %i.all to i64
  %i.alo = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.alp = getelementptr inbounds nuw [16 x i8], ptr %i.alo, i64 %i.aln ; 2 uses
  store i8 2, ptr %i.alp, align 1
  %.sroa.4.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  store i64 %i.alk, ptr %.sroa.4.0..sroa_idx.i.i42.i, align 1
  %i.alq = load i32, ptr %i.e, align 8, !tbaa !61
  %i.alr = add i32 %i.alq, 1
  store i32 %i.alr, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hf:                                            ; preds = %bb.hb
  %.fca.1.load.cast.i44.i = ptrtoint ptr %i.aks to i64 ; 2 uses
  %i.als = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.alt = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i46.i = icmp ult i32 %i.als, %i.alt
  br i1 %.not.i.i46.i, label %bb.hh, label %bb.hg, !prof !95

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i44.i)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hh:                                            ; preds = %bb.hf
  %i.alu = zext i32 %i.als to i64
  %i.alv = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.alv, i64 %i.alu ; 2 uses
  store i8 5, ptr %i.alw, align 1
  %.sroa.4.0..sroa_idx.i.i47.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store i64 %.fca.1.load.cast.i44.i, ptr %.sroa.4.0..sroa_idx.i.i47.i, align 1
  %i.alx = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aly = add i32 %i.alx, 1
  store i32 %i.aly, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hi:                                            ; preds = %bb.b
  %i.alz = zext i32 %i.bh to i64
  %i.ama = load ptr, ptr %4, align 8, !tbaa !39
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.ama, i64 %i.alz
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !49
  %i.amd = getelementptr i8, ptr %i.amc, i64 136
  %.val508 = load i32, ptr %i.amd, align 8, !tbaa !60
  %i.ame = zext i32 %.val508 to i64               ; 2 uses
  %i.amf = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.amg = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i737 = icmp ult i32 %i.amf, %i.amg
  br i1 %.not.i.i.i737, label %bb.hk, label %bb.hj, !prof !95

bb.hj:                                            ; preds = %bb.hi
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.ame)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hk:                                            ; preds = %bb.hi
  %i.amh = zext i32 %i.amf to i64
  %i.ami = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.ami, i64 %i.amh ; 2 uses
  store i8 2, ptr %i.amj, align 1
  %.sroa.4.0..sroa_idx.i.i.i739 = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  store i64 %i.ame, ptr %.sroa.4.0..sroa_idx.i.i.i739, align 1
  %i.amk = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aml = add i32 %i.amk, 1
  store i32 %i.aml, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hl:                                            ; preds = %bb.b
  %i.amm = zext i32 %i.bh to i64
  %i.amn = load ptr, ptr %4, align 8, !tbaa !39
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.amn, i64 %i.amm
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !49
  %i.amq = getelementptr i8, ptr %i.amp, i64 136
  %.val509 = load ptr, ptr %i.amq, align 8, !tbaa !60
  %i.amr = getelementptr inbounds nuw i8, ptr %.val509, i64 16
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !403
  %i.amt = trunc i64 %i.ams to i32                ; 3 uses
  %i.amu = icmp eq i32 %i.amt, -2147483648
  %i.amv = call i32 @llvm.abs.i32(i32 %i.amt, i1 true)
  %i.amw = lshr i32 %i.amv, 2
  %.inv.i = icmp slt i32 %i.amt, 0
  %i.amx = select i1 %.inv.i, i32 0, i32 256
  %i.amy = or i32 %i.amw, %i.amx
  %11 = select i1 %i.amu, i32 0, i32 %i.amy
  %i.amz = zext nneg i32 %11 to i64               ; 2 uses
  %i.ana = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.anb = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i740 = icmp ult i32 %i.ana, %i.anb
  br i1 %.not.i.i.i740, label %bb.hn, label %bb.hm, !prof !95

bb.hm:                                            ; preds = %bb.hl
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.amz)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hn:                                            ; preds = %bb.hl
  %i.anc = zext i32 %i.ana to i64
  %i.and = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.and, i64 %i.anc ; 2 uses
  store i8 2, ptr %i.ane, align 1
  %.sroa.4.0..sroa_idx.i.i.i742 = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  store i64 %i.amz, ptr %.sroa.4.0..sroa_idx.i.i.i742, align 1
  %i.anf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ang = add i32 %i.anf, 1
  store i32 %i.ang, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ho:                                            ; preds = %bb.b
  %i.anh = zext i32 %i.bh to i64
  %i.ani = load ptr, ptr %4, align 8, !tbaa !39
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ani, i64 %i.anh
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !49 ; 2 uses
  %i.anl = getelementptr i8, ptr %i.ank, i64 80
  %.val501 = load ptr, ptr %i.anl, align 8, !tbaa !39 ; 2 uses
  %i.anm = getelementptr i8, ptr %i.ank, i64 88
  %.val502 = load i32, ptr %i.anm, align 8, !tbaa !61 ; 2 uses
  %i.ann = zext i32 %.val502 to i64
  %.idx.i743 = shl nuw nsw i64 %i.ann, 2
  %i.ano = getelementptr inbounds nuw i8, ptr %.val501, i64 %.idx.i743
  %.not1.i744 = icmp eq i32 %.val502, 0
  br i1 %.not1.i744, label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit, label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %bb.ho, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750
  %.02.i746 = phi ptr [ %i.anw, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750 ], [ %.val501, %bb.ho ] ; 2 uses
  %.sroa.02.0.copyload.i747 = load i32, ptr %.02.i746, align 4, !tbaa !74
  %.sroa.3.8.insert.ext.i.i748 = zext i32 %.sroa.02.0.copyload.i747 to i64 ; 2 uses
  %i.anp = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.anq = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i749 = icmp ult i32 %i.anp, %i.anq
  br i1 %.not.i.i.i749, label %bb.hq, label %bb.hp, !prof !95

bb.hp:                                            ; preds = %.lr.ph.i745
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i748)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750

bb.hq:                                            ; preds = %.lr.ph.i745
  %i.anr = zext i32 %i.anp to i64
  %i.ans = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %i.ans, i64 %i.anr ; 2 uses
  store i8 1, ptr %i.ant, align 1
  %.sroa.4.0..sroa_idx.i.i.i752 = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i748, ptr %.sroa.4.0..sroa_idx.i.i.i752, align 1
  %i.anu = load i32, ptr %i.e, align 8, !tbaa !61
  %i.anv = add i32 %i.anu, 1
  store i32 %i.anv, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750: ; preds = %bb.hq, %bb.hp
  %i.anw = getelementptr inbounds nuw i8, ptr %.02.i746, i64 4 ; 2 uses
  %.not.i751 = icmp eq ptr %i.anw, %i.ano
  br i1 %.not.i751, label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit, label %.lr.ph.i745

bb.hr:                                            ; preds = %bb.b
  %i.anx = zext i32 %i.bh to i64
  %i.any = load ptr, ptr %4, align 8, !tbaa !39
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.anx
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !49 ; 4 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !34
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 40
  %i.aod = load ptr, ptr %i.aoc, align 8
  %i.aoe = call noundef zeroext i1 %i.aod(ptr noundef nonnull align 8 dereferenceable(176) %i.aoa) #29, !inline_history !1349
  br i1 %i.aoe, label %bb.hs, label %bb.hz

bb.hs:                                            ; preds = %bb.hr
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoa, i64 136
  %.val.i755 = load ptr, ptr %i.aof, align 8, !tbaa !60 ; 3 uses
  %i.aog = load i8, ptr %.val.i755, align 8, !tbaa !401
  %.not34.i = icmp eq i8 %i.aog, 1
  br i1 %.not34.i, label %bb.ht, label %bb.hw

bb.ht:                                            ; preds = %bb.hs
  %i.aoh = getelementptr inbounds nuw i8, ptr %.val.i755, i64 16
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !403 ; 2 uses
  %i.aoj = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.aok = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i757 = icmp ult i32 %i.aoj, %i.aok
  br i1 %.not.i.i.i757, label %bb.hv, label %bb.hu, !prof !95

bb.hu:                                            ; preds = %bb.ht
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.aoi)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hv:                                            ; preds = %bb.ht
  %i.aol = zext i32 %i.aoj to i64
  %i.aom = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.aom, i64 %i.aol ; 2 uses
  store i8 2, ptr %i.aon, align 1
  %.sroa.4.0..sroa_idx.i.i.i758 = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  store i64 %i.aoi, ptr %.sroa.4.0..sroa_idx.i.i.i758, align 1
  %i.aoo = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aop = add i32 %i.aoo, 1
  store i32 %i.aop, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hw:                                            ; preds = %bb.hs
  %.fca.1.load.cast.i.i756 = ptrtoint ptr %.val.i755 to i64 ; 2 uses
  %i.aoq = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.aor = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i19.i = icmp ult i32 %i.aoq, %i.aor
  br i1 %.not.i.i19.i, label %bb.hy, label %bb.hx, !prof !95

bb.hx:                                            ; preds = %bb.hw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i756)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hy:                                            ; preds = %bb.hw
  %i.aos = zext i32 %i.aoq to i64
  %i.aot = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aou = getelementptr inbounds nuw [16 x i8], ptr %i.aot, i64 %i.aos ; 2 uses
  store i8 5, ptr %i.aou, align 1
  %.sroa.4.0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  store i64 %.fca.1.load.cast.i.i756, ptr %.sroa.4.0..sroa_idx.i.i20.i, align 1
  %i.aov = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aow = add i32 %i.aov, 1
  store i32 %i.aow, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hz:                                            ; preds = %bb.hr
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoa, i64 144
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !60 ; 3 uses
  %i.aoz = load i8, ptr %i.aoy, align 8, !tbaa !401
  %.not.i753 = icmp eq i8 %i.aoz, 1
  br i1 %.not.i753, label %bb.ia, label %bb.id

bb.ia:                                            ; preds = %bb.hz
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !403 ; 2 uses
  %i.apc = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apd = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i = icmp ult i32 %i.apc, %i.apd
  br i1 %.not.i.i24.i, label %bb.ic, label %bb.ib, !prof !95

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.apb)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ic:                                            ; preds = %bb.ia
  %i.ape = zext i32 %i.apc to i64
  %i.apf = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.apg = getelementptr inbounds nuw [16 x i8], ptr %i.apf, i64 %i.ape ; 2 uses
  store i8 2, ptr %i.apg, align 1
  %.sroa.4.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  store i64 %i.apb, ptr %.sroa.4.0..sroa_idx.i.i25.i, align 1
  %i.aph = load i32, ptr %i.e, align 8, !tbaa !61
  %i.api = add i32 %i.aph, 1
  store i32 %i.api, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.id:                                            ; preds = %bb.hz
  %.fca.1.load.cast.i27.i = ptrtoint ptr %i.aoy to i64 ; 2 uses
  %i.apj = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apk = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i29.i = icmp ult i32 %i.apj, %i.apk
  br i1 %.not.i.i29.i, label %bb.if, label %bb.ie, !prof !95

bb.ie:                                            ; preds = %bb.id
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i27.i)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.if:                                            ; preds = %bb.id
  %i.apl = zext i32 %i.apj to i64
  %i.apm = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.apn = getelementptr inbounds nuw [16 x i8], ptr %i.apm, i64 %i.apl ; 2 uses
  store i8 5, ptr %i.apn, align 1
  %.sroa.4.0..sroa_idx.i.i30.i = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  store i64 %.fca.1.load.cast.i27.i, ptr %.sroa.4.0..sroa_idx.i.i30.i, align 1
  %i.apo = load i32, ptr %i.e, align 8, !tbaa !61
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ig:                                            ; preds = %bb.b
  %i.apq = zext i32 %i.bh to i64
  %i.apr = load ptr, ptr %4, align 8, !tbaa !39
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.apr, i64 %i.apq
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !49 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 136
  %.sroa.06.0.copyload.i = load i32, ptr %i.apu, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i759 = zext i32 %.sroa.06.0.copyload.i to i64 ; 2 uses
  %i.apv = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apw = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i760 = icmp ult i32 %i.apv, %i.apw
  br i1 %.not.i.i.i760, label %bb.ii, label %bb.ih, !prof !95

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i759)
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
  %i.axa = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i823 = icmp ult i32 %i.awz, %i.axa
  br i1 %.not.i.i.i823, label %bb.kg, label %bb.kf, !prof !95

bb.kf:                                            ; preds = %bb.ke
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kg:                                            ; preds = %bb.ke
  %i.axb = zext i32 %i.awz to i64
  %i.axc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axd = getelementptr inbounds nuw [16 x i8], ptr %i.axc, i64 %i.axb ; 2 uses
  store i8 2, ptr %i.axd, align 1
  %.sroa.4.0..sroa_idx.i.i.i824 = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i824, align 1
  %i.axe = load i32, ptr %i.e, align 8, !tbaa !61
  %i.axf = add i32 %i.axe, 1
  store i32 %i.axf, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kh:                                            ; preds = %bb.kd
  %.sroa.0.0.copyload.i816 = load i32, ptr %i.awy, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i817 = zext i32 %.sroa.0.0.copyload.i816 to i64 ; 2 uses
  %i.axg = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.axh = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i818 = icmp ult i32 %i.axg, %i.axh
  br i1 %.not.i.i8.i818, label %bb.kj, label %bb.ki, !prof !95

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i817)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819

bb.kj:                                            ; preds = %bb.kh
  %i.axi = zext i32 %i.axg to i64
  %i.axj = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axk = getelementptr inbounds nuw [16 x i8], ptr %i.axj, i64 %i.axi ; 2 uses
  store i8 1, ptr %i.axk, align 1
  %.sroa.4.0..sroa_idx.i.i9.i821 = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i817, ptr %.sroa.4.0..sroa_idx.i.i9.i821, align 1
  %i.axl = load i32, ptr %i.e, align 8, !tbaa !61
  %i.axm = add i32 %i.axl, 1
  store i32 %i.axm, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819: ; preds = %bb.kj, %bb.ki
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awt, i64 144
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !60
  call fastcc void @_ZNK12_GLOBAL__N_110ARMOperand7addExprERN4llvm6MCInstEPKNS1_6MCExprE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.axo)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kk:                                            ; preds = %bb.b
  %i.axp = zext i32 %i.bh to i64
  %i.axq = load ptr, ptr %4, align 8, !tbaa !39
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.axq, i64 %i.axp
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !49 ; 3 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 136
  %.sroa.04.0.copyload.i825 = load i32, ptr %i.axt, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i826 = zext i32 %.sroa.04.0.copyload.i825 to i64 ; 2 uses
  %i.axu = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.axv = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i827 = icmp ult i32 %i.axu, %i.axv
  br i1 %.not.i.i.i827, label %bb.km, label %bb.kl, !prof !95

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i826)
  %.pre.i828 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829

bb.km:                                            ; preds = %bb.kk
  %i.axw = zext i32 %i.axu to i64
  %i.axx = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axy = getelementptr inbounds nuw [16 x i8], ptr %i.axx, i64 %i.axw ; 2 uses
  store i8 1, ptr %i.axy, align 1
  %.sroa.4.0..sroa_idx.i.i.i838 = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i826, ptr %.sroa.4.0..sroa_idx.i.i.i838, align 1
  %i.axz = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aya = add i32 %i.axz, 1                      ; 2 uses
  store i32 %i.aya, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829: ; preds = %bb.km, %bb.kl
  %i.ayb = phi i32 [ %.pre.i828, %bb.kl ], [ %i.aya, %bb.km ] ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axs, i64 152
  %.sroa.01.0.copyload.i830 = load i32, ptr %i.ayc, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i10.i831 = zext i32 %.sroa.01.0.copyload.i830 to i64 ; 2 uses
  %i.ayd = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i12.i832 = icmp ult i32 %i.ayb, %i.ayd
  br i1 %.not.i.i12.i832, label %bb.ko, label %bb.kn, !prof !95

bb.kn:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i10.i831)
  %.pre19.i833 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834

bb.ko:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829
  %i.aye = zext i32 %i.ayb to i64
  %i.ayf = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ayg = getelementptr inbounds nuw [16 x i8], ptr %i.ayf, i64 %i.aye ; 2 uses
  store i8 1, ptr %i.ayg, align 1
  %.sroa.4.0..sroa_idx.i.i13.i837 = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  store i64 %.sroa.3.8.insert.ext.i10.i831, ptr %.sroa.4.0..sroa_idx.i.i13.i837, align 1
  %i.ayh = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ayi = add i32 %i.ayh, 1                      ; 2 uses
  store i32 %i.ayi, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834: ; preds = %bb.ko, %bb.kn
  %i.ayj = phi i32 [ %.pre19.i833, %bb.kn ], [ %i.ayi, %bb.ko ] ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axs, i64 160
  %i.ayl = load i32, ptr %i.ayk, align 8, !tbaa !60
  %i.aym = zext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i16.i835 = icmp ult i32 %i.ayj, %i.ayn
  br i1 %.not.i.i16.i835, label %bb.kq, label %bb.kp, !prof !95

bb.kp:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.aym)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kq:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834
  %i.ayo = zext i32 %i.ayj to i64
  %i.ayp = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ayq = getelementptr inbounds nuw [16 x i8], ptr %i.ayp, i64 %i.ayo ; 2 uses
  store i8 2, ptr %i.ayq, align 1
  %.sroa.4.0..sroa_idx.i.i17.i836 = getelementptr inbounds nuw i8, ptr %i.ayq, i64 8
  store i64 %i.aym, ptr %.sroa.4.0..sroa_idx.i.i17.i836, align 1
  %i.ayr = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ays = add i32 %i.ayr, 1
  store i32 %i.ays, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kr:                                            ; preds = %bb.b
  %i.ayt = zext i32 %i.bh to i64
  %i.ayu = load ptr, ptr %4, align 8, !tbaa !39
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.ayt
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !49
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 144
  %.val511 = load ptr, ptr %i.ayx, align 8, !tbaa !60 ; 3 uses
  %i.ayy = load i8, ptr %.val511, align 8, !tbaa !401
  %.not.i839 = icmp eq i8 %i.ayy, 1
  br i1 %.not.i839, label %bb.ks, label %bb.kv

bb.ks:                                            ; preds = %bb.kr
  %i.ayz = getelementptr inbounds nuw i8, ptr %.val511, i64 16
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !403 ; 2 uses
  %i.azb = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.azc = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i844 = icmp ult i32 %i.azb, %i.azc
  br i1 %.not.i.i.i844, label %bb.ku, label %bb.kt, !prof !95

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.aza)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ku:                                            ; preds = %bb.ks
  %i.azd = zext i32 %i.azb to i64
  %i.aze = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %i.aze, i64 %i.azd ; 2 uses
  store i8 2, ptr %i.azf, align 1
  %.sroa.4.0..sroa_idx.i.i.i845 = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  store i64 %i.aza, ptr %.sroa.4.0..sroa_idx.i.i.i845, align 1
  %i.azg = load i32, ptr %i.e, align 8, !tbaa !61
  %i.azh = add i32 %i.azg, 1
  store i32 %i.azh, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kv:                                            ; preds = %bb.kr
  %.fca.1.load.cast.i.i840 = ptrtoint ptr %.val511 to i64 ; 2 uses
  %i.azi = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.azj = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i841 = icmp ult i32 %i.azi, %i.azj
  br i1 %.not.i.i8.i841, label %bb.kx, label %bb.kw, !prof !95

bb.kw:                                            ; preds = %bb.kv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i840)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kx:                                            ; preds = %bb.kv
  %i.azk = zext i32 %i.azi to i64
  %i.azl = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.azl, i64 %i.azk ; 2 uses
  store i8 5, ptr %i.azm, align 1
  %.sroa.4.0..sroa_idx.i.i9.i843 = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  store i64 %.fca.1.load.cast.i.i840, ptr %.sroa.4.0..sroa_idx.i.i9.i843, align 1
  %i.azn = load i32, ptr %i.e, align 8, !tbaa !61
  %i.azo = add i32 %i.azn, 1
  store i32 %i.azo, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ky:                                            ; preds = %bb.b
  %i.azp = zext i32 %i.bh to i64
  %i.azq = load ptr, ptr %4, align 8, !tbaa !39
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %i.azq, i64 %i.azp
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !49
  %i.azt = getelementptr i8, ptr %i.azs, i64 136
  %.val512 = load ptr, ptr %i.azt, align 8, !tbaa !60
  %i.azu = getelementptr inbounds nuw i8, ptr %.val512, i64 16
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !403
  %i.azw = trunc i64 %i.azv to i32                ; 3 uses
  %i.azx = icmp eq i32 %i.azw, -2147483648
  %i.azy = call i32 @llvm.abs.i32(i32 %i.azw, i1 true) ; 2 uses
  %12 = icmp slt i32 %i.azw, 0
  %13 = or i32 %i.azy, 4096
  %i.azz = select i1 %i.azx, i32 4096, i32 %13
  %14 = select i1 %12, i32 %i.azz, i32 %i.azy
  %i.baa = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bab = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i846 = icmp ult i32 %i.baa, %i.bab
  br i1 %.not.i.i.i846, label %bb.la, label %bb.kz, !prof !95

bb.kz:                                            ; preds = %bb.ky
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 0)
  %.pre.i847 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848

bb.la:                                            ; preds = %bb.ky
  %i.bac = zext i32 %i.baa to i64
  %i.bad = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %i.bad, i64 %i.bac ; 2 uses
  store i8 1, ptr %i.bae, align 1
  %.sroa.4.0..sroa_idx.i.i.i849 = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i849, align 1
  %i.baf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bag = add i32 %i.baf, 1                      ; 2 uses
  store i32 %i.bag, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848: ; preds = %bb.la, %bb.kz
  %i.bah = phi i32 [ %.pre.i847, %bb.kz ], [ %i.bag, %bb.la ] ; 2 uses
  %i.bai = zext nneg i32 %14 to i64               ; 2 uses
  %i.baj = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i13.i = icmp ult i32 %i.bah, %i.baj
  br i1 %.not.i.i13.i, label %bb.lc, label %bb.lb, !prof !95

bb.lb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bai)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lc:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848
  %i.bak = zext i32 %i.bah to i64
  %i.bal = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bam = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %i.bak ; 2 uses
  store i8 2, ptr %i.bam, align 1
  %.sroa.4.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  store i64 %i.bai, ptr %.sroa.4.0..sroa_idx.i.i14.i, align 1
  %i.ban = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bao = add i32 %i.ban, 1
  store i32 %i.bao, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ld:                                            ; preds = %bb.b
  %i.bap = zext i32 %i.bh to i64
  %i.baq = load ptr, ptr %4, align 8, !tbaa !39
  %i.bar = getelementptr inbounds nuw [8 x i8], ptr %i.baq, i64 %i.bap
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !49 ; 4 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 136
  %.sroa.02.0.copyload.i850 = load i32, ptr %i.bat, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i851 = zext i32 %.sroa.02.0.copyload.i850 to i64 ; 2 uses
  %i.bau = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bav = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i852 = icmp ult i32 %i.bau, %i.bav
  br i1 %.not.i.i.i852, label %bb.lf, label %bb.le, !prof !95

bb.le:                                            ; preds = %bb.ld
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i851)
  %.pre.i853 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854

bb.lf:                                            ; preds = %bb.ld
  %i.baw = zext i32 %i.bau to i64
  %i.bax = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bay = getelementptr inbounds nuw [16 x i8], ptr %i.bax, i64 %i.baw ; 2 uses
  store i8 1, ptr %i.bay, align 1
  %.sroa.4.0..sroa_idx.i.i.i858 = getelementptr inbounds nuw i8, ptr %i.bay, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i851, ptr %.sroa.4.0..sroa_idx.i.i.i858, align 1
  %i.baz = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bba = add i32 %i.baz, 1                      ; 2 uses
  store i32 %i.bba, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854: ; preds = %bb.lf, %bb.le
  %i.bbb = phi i32 [ %.pre.i853, %bb.le ], [ %i.bba, %bb.lf ] ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bas, i64 140
  %i.bbd = load i8, ptr %i.bbc, align 4, !tbaa !60, !range !45, !noundef !46
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bas, i64 148
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !60
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bas, i64 144
  %i.bbh = load i32, ptr %i.bbg, align 8, !tbaa !60
  %i.bbi = icmp eq i8 %i.bbd, 0
  %i.bbj = select i1 %i.bbi, i32 4096, i32 0
  %i.bbk = or i32 %i.bbj, %i.bbf
  %i.bbl = shl i32 %i.bbh, 13
  %i.bbm = or i32 %i.bbk, %i.bbl
  %i.bbn = zext i32 %i.bbm to i64                 ; 2 uses
  %i.bbo = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i855 = icmp ult i32 %i.bbb, %i.bbo
  br i1 %.not.i.i8.i855, label %bb.lh, label %bb.lg, !prof !95

bb.lg:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bbn)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lh:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854
  %i.bbp = zext i32 %i.bbb to i64
  %i.bbq = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.bbq, i64 %i.bbp ; 2 uses
  store i8 2, ptr %i.bbr, align 1
  %.sroa.4.0..sroa_idx.i.i9.i857 = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  store i64 %i.bbn, ptr %.sroa.4.0..sroa_idx.i.i9.i857, align 1
  %i.bbs = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bbt = add i32 %i.bbs, 1
  store i32 %i.bbt, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.li:                                            ; preds = %bb.b
  %i.bbu = zext i32 %i.bh to i64
  %i.bbv = load ptr, ptr %4, align 8, !tbaa !39
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.bbv, i64 %i.bbu
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !49 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 136
  %.sroa.0.0.copyload.i859 = load i32, ptr %i.bby, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i860 = zext i32 %.sroa.0.0.copyload.i859 to i64 ; 2 uses
  %i.bbz = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bca = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i861 = icmp ult i32 %i.bbz, %i.bca
  br i1 %.not.i.i.i861, label %bb.lk, label %bb.lj, !prof !95

bb.lj:                                            ; preds = %bb.li
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i860)
  br label %_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit

bb.lk:                                            ; preds = %bb.li
  %i.bcb = zext i32 %i.bbz to i64
  %i.bcc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bcd = getelementptr inbounds nuw [16 x i8], ptr %i.bcc, i64 %i.bcb ; 2 uses
  store i8 1, ptr %i.bcd, align 1
  %.sroa.4.0..sroa_idx.i.i.i863 = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i860, ptr %.sroa.4.0..sroa_idx.i.i.i863, align 1
  %i.bce = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bcf = add i32 %i.bce, 1
  store i32 %i.bcf, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit

_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit: ; preds = %bb.lj, %bb.lk
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bbx, i64 144
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !60
  call fastcc void @_ZNK12_GLOBAL__N_110ARMOperand7addExprERN4llvm6MCInstEPKNS1_6MCExprE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.bch)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ll:                                            ; preds = %bb.b
  %i.bci = zext i32 %i.bh to i64
  %i.bcj = load ptr, ptr %4, align 8, !tbaa !39
  %i.bck = getelementptr inbounds nuw [8 x i8], ptr %i.bcj, i64 %i.bci
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !49 ; 4 uses
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !34
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 40
  %i.bco = load ptr, ptr %i.bcn, align 8
  %i.bcp = call noundef zeroext i1 %i.bco(ptr noundef nonnull align 8 dereferenceable(176) %i.bcl) #29, !inline_history !1352
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcl, i64 136 ; 2 uses
  %i.bcr = load i32, ptr %i.e, align 8, !tbaa !61 ; 3 uses
  %i.bcs = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i864 = icmp ult i32 %i.bcr, %i.bcs    ; 2 uses
  br i1 %i.bcp, label %bb.lm, label %bb.lr

bb.lm:                                            ; preds = %bb.ll
  %.val.i867 = load ptr, ptr %i.bcq, align 8, !tbaa !60
  %.fca.1.load.cast.i.i868 = ptrtoint ptr %.val.i867 to i64 ; 2 uses
  br i1 %.not.i.i.i864, label %bb.lo, label %bb.ln, !prof !95

bb.ln:                                            ; preds = %bb.lm
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i868)
  %.pre.i869 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870

bb.lo:                                            ; preds = %bb.lm
  %i.bct = zext i32 %i.bcr to i64
  %i.bcu = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bcv = getelementptr inbounds nuw [16 x i8], ptr %i.bcu, i64 %i.bct ; 2 uses
  store i8 5, ptr %i.bcv, align 1
  %.sroa.4.0..sroa_idx.i.i.i873 = getelementptr inbounds nuw i8, ptr %i.bcv, i64 8
  store i64 %.fca.1.load.cast.i.i868, ptr %.sroa.4.0..sroa_idx.i.i.i873, align 1
  %i.bcw = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bcx = add i32 %i.bcw, 1                      ; 2 uses
  store i32 %i.bcx, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870: ; preds = %bb.lo, %bb.ln
  %i.bcy = phi i32 [ %.pre.i869, %bb.ln ], [ %i.bcx, %bb.lo ] ; 2 uses
  %i.bcz = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i10.i871 = icmp ult i32 %i.bcy, %i.bcz
  br i1 %.not.i.i10.i871, label %bb.lq, label %bb.lp, !prof !95

bb.lp:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lq:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870
  %i.bda = zext i32 %i.bcy to i64
  %i.bdb = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bdc = getelementptr inbounds nuw [16 x i8], ptr %i.bdb, i64 %i.bda ; 2 uses
  store i8 2, ptr %i.bdc, align 1
  %.sroa.4.0..sroa_idx.i.i11.i872 = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i11.i872, align 1
  %i.bdd = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bde = add i32 %i.bdd, 1
  store i32 %i.bde, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lr:                                            ; preds = %bb.ll
  %.sroa.0.0.copyload.i865 = load i32, ptr %i.bcq, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i866 = zext i32 %.sroa.0.0.copyload.i865 to i64 ; 2 uses
  br i1 %.not.i.i.i864, label %bb.lt, label %bb.ls, !prof !95

bb.ls:                                            ; preds = %bb.lr
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i866)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i

bb.lt:                                            ; preds = %bb.lr
  %i.bdf = zext i32 %i.bcr to i64
  %i.bdg = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bdh = getelementptr inbounds nuw [16 x i8], ptr %i.bdg, i64 %i.bdf ; 2 uses
  store i8 1, ptr %i.bdh, align 1
  %.sroa.4.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i866, ptr %.sroa.4.0..sroa_idx.i.i15.i, align 1
  %i.bdi = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bdj = add i32 %i.bdi, 1
  store i32 %i.bdj, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i: ; preds = %bb.lt, %bb.ls
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
bb.nt:                                            ; preds = %bb.np
  %.fca.1.load.cast.i.i901 = ptrtoint ptr %i.bju to i64 ; 2 uses
  %i.bkn = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bko = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i902 = icmp ult i32 %i.bkn, %i.bko
  br i1 %.not.i.i24.i902, label %bb.nv, label %bb.nu, !prof !95

bb.nu:                                            ; preds = %bb.nt
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i901)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.nv:                                            ; preds = %bb.nt
  %i.bkp = zext i32 %i.bkn to i64
  %i.bkq = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bkr = getelementptr inbounds nuw [16 x i8], ptr %i.bkq, i64 %i.bkp ; 2 uses
  store i8 5, ptr %i.bkr, align 1
  %.sroa.4.0..sroa_idx.i.i25.i903 = getelementptr inbounds nuw i8, ptr %i.bkr, i64 8
  store i64 %.fca.1.load.cast.i.i901, ptr %.sroa.4.0..sroa_idx.i.i25.i903, align 1
  %i.bks = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bkt = add i32 %i.bks, 1
  store i32 %i.bkt, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.nw:                                            ; preds = %bb.b
  %i.bku = zext i32 %i.bh to i64
  %i.bkv = load ptr, ptr %4, align 8, !tbaa !39
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %i.bku
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !49 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 136
  %.sroa.06.0.copyload.i909 = load i32, ptr %i.bky, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i910 = zext i32 %.sroa.06.0.copyload.i909 to i64 ; 2 uses
  %i.bkz = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bla = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i911 = icmp ult i32 %i.bkz, %i.bla
  br i1 %.not.i.i.i911, label %bb.ny, label %bb.nx, !prof !95

bb.nx:                                            ; preds = %bb.nw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i910)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912

bb.ny:                                            ; preds = %bb.nw
  %i.blb = zext i32 %i.bkz to i64
  %i.blc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bld = getelementptr inbounds nuw [16 x i8], ptr %i.blc, i64 %i.blb ; 2 uses
  store i8 1, ptr %i.bld, align 1
  %.sroa.4.0..sroa_idx.i.i.i922 = getelementptr inbounds nuw i8, ptr %i.bld, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i910, ptr %.sroa.4.0..sroa_idx.i.i.i922, align 1
  %i.ble = load i32, ptr %i.e, align 8, !tbaa !61
  %i.blf = add i32 %i.ble, 1
  store i32 %i.blf, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912: ; preds = %bb.ny, %bb.nx
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkx, i64 144
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !60 ; 4 uses
  %.not.i913 = icmp eq ptr %i.blh, null
  br i1 %.not.i913, label %bb.nz, label %bb.oc

bb.nz:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912
  %i.bli = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.blj = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i16.i920 = icmp ult i32 %i.bli, %i.blj
  br i1 %.not.i.i16.i920, label %bb.ob, label %bb.oa, !prof !95

bb.oa:                                            ; preds = %bb.nz
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ob:                                            ; preds = %bb.nz
  %i.blk = zext i32 %i.bli to i64
  %i.bll = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.blm = getelementptr inbounds nuw [16 x i8], ptr %i.bll, i64 %i.blk ; 2 uses
  store i8 2, ptr %i.blm, align 1
  %.sroa.4.0..sroa_idx.i.i17.i921 = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i17.i921, align 1
  %i.bln = load i32, ptr %i.e, align 8, !tbaa !61
  %i.blo = add i32 %i.bln, 1
  store i32 %i.blo, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oc:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912
  %i.blp = load i8, ptr %i.blh, align 8, !tbaa !401
  %.not28.i914 = icmp eq i8 %i.blp, 1
  br i1 %.not28.i914, label %bb.od, label %bb.og

bb.od:                                            ; preds = %bb.oc
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blh, i64 16
  %i.blr = load i64, ptr %i.blq, align 8, !tbaa !403
  %i.bls = sdiv i64 %i.blr, 2                     ; 2 uses
  %i.blt = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.blu = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i20.i918 = icmp ult i32 %i.blt, %i.blu
  br i1 %.not.i.i20.i918, label %bb.of, label %bb.oe, !prof !95

bb.oe:                                            ; preds = %bb.od
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bls)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.of:                                            ; preds = %bb.od
  %i.blv = zext i32 %i.blt to i64
  %i.blw = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.blx = getelementptr inbounds nuw [16 x i8], ptr %i.blw, i64 %i.blv ; 2 uses
  store i8 2, ptr %i.blx, align 1
  %.sroa.4.0..sroa_idx.i.i21.i919 = getelementptr inbounds nuw i8, ptr %i.blx, i64 8
  store i64 %i.bls, ptr %.sroa.4.0..sroa_idx.i.i21.i919, align 1
  %i.bly = load i32, ptr %i.e, align 8, !tbaa !61
  %i.blz = add i32 %i.bly, 1
  store i32 %i.blz, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.og:                                            ; preds = %bb.oc
  %.fca.1.load.cast.i.i915 = ptrtoint ptr %i.blh to i64 ; 2 uses
  %i.bma = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bmb = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i916 = icmp ult i32 %i.bma, %i.bmb
  br i1 %.not.i.i24.i916, label %bb.oi, label %bb.oh, !prof !95

bb.oh:                                            ; preds = %bb.og
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i915)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oi:                                            ; preds = %bb.og
  %i.bmc = zext i32 %i.bma to i64
  %i.bmd = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bme = getelementptr inbounds nuw [16 x i8], ptr %i.bmd, i64 %i.bmc ; 2 uses
  store i8 5, ptr %i.bme, align 1
  %.sroa.4.0..sroa_idx.i.i25.i917 = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  store i64 %.fca.1.load.cast.i.i915, ptr %.sroa.4.0..sroa_idx.i.i25.i917, align 1
  %i.bmf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bmg = add i32 %i.bmf, 1
  store i32 %i.bmg, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oj:                                            ; preds = %bb.b
  %i.bmh = zext i32 %i.bh to i64
  %i.bmi = load ptr, ptr %4, align 8, !tbaa !39
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %i.bmi, i64 %i.bmh
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !49 ; 2 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 136
  %.sroa.01.0.copyload.i923 = load i32, ptr %i.bml, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i924 = zext i32 %.sroa.01.0.copyload.i923 to i64 ; 2 uses
  %i.bmm = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bmn = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i925 = icmp ult i32 %i.bmm, %i.bmn
  br i1 %.not.i.i.i925, label %bb.ol, label %bb.ok, !prof !95

bb.ok:                                            ; preds = %bb.oj
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i924)
  %.pre.i926 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927

bb.ol:                                            ; preds = %bb.oj
  %i.bmo = zext i32 %i.bmm to i64
  %i.bmp = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bmq = getelementptr inbounds nuw [16 x i8], ptr %i.bmp, i64 %i.bmo ; 2 uses
  store i8 1, ptr %i.bmq, align 1
  %.sroa.4.0..sroa_idx.i.i.i930 = getelementptr inbounds nuw i8, ptr %i.bmq, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i924, ptr %.sroa.4.0..sroa_idx.i.i.i930, align 1
  %i.bmr = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bms = add i32 %i.bmr, 1                      ; 2 uses
  store i32 %i.bms, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927: ; preds = %bb.ol, %bb.ok
  %i.bmt = phi i32 [ %.pre.i926, %bb.ok ], [ %i.bms, %bb.ol ] ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmk, i64 140
  %i.bmv = load i8, ptr %i.bmu, align 4, !tbaa !60, !range !45, !noundef !46
  %i.bmw = zext nneg i8 %i.bmv to i64             ; 2 uses
  %i.bmx = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i7.i928 = icmp ult i32 %i.bmt, %i.bmx
  br i1 %.not.i.i7.i928, label %bb.on, label %bb.om, !prof !95

bb.om:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bmw)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.on:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927
  %i.bmy = zext i32 %i.bmt to i64
  %i.bmz = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bna = getelementptr inbounds nuw [16 x i8], ptr %i.bmz, i64 %i.bmy ; 2 uses
  store i8 2, ptr %i.bna, align 1
  %.sroa.4.0..sroa_idx.i.i8.i929 = getelementptr inbounds nuw i8, ptr %i.bna, i64 8
  store i64 %i.bmw, ptr %.sroa.4.0..sroa_idx.i.i8.i929, align 1
  %i.bnb = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bnc = add i32 %i.bnb, 1
  store i32 %i.bnc, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oo:                                            ; preds = %bb.b
  %i.bnd = zext i32 %i.bh to i64
  %i.bne = load ptr, ptr %4, align 8, !tbaa !39
  %i.bnf = getelementptr inbounds nuw [8 x i8], ptr %i.bne, i64 %i.bnd
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !49
  %i.bnh = getelementptr i8, ptr %i.bng, i64 136
  %.val514 = load ptr, ptr %i.bnh, align 8, !tbaa !60
  %i.bni = getelementptr inbounds nuw i8, ptr %.val514, i64 16
  %i.bnj = load i64, ptr %i.bni, align 8, !tbaa !403
  %i.bnk = trunc i64 %i.bnj to i32                ; 3 uses
  %i.bnl = icmp eq i32 %i.bnk, -2147483648
  %i.bnm = call i32 @llvm.abs.i32(i32 %i.bnk, i1 true)
  %.inv.i931 = icmp slt i32 %i.bnk, 0
  %i.bnn = select i1 %.inv.i931, i32 0, i32 256
  %i.bno = or i32 %i.bnn, %i.bnm
  %15 = select i1 %i.bnl, i32 0, i32 %i.bno
  %i.bnp = zext nneg i32 %15 to i64               ; 2 uses
  %i.bnq = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bnr = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i932 = icmp ult i32 %i.bnq, %i.bnr
  br i1 %.not.i.i.i932, label %bb.oq, label %bb.op, !prof !95

bb.op:                                            ; preds = %bb.oo
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bnp)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oq:                                            ; preds = %bb.oo
  %i.bns = zext i32 %i.bnq to i64
  %i.bnt = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bnu = getelementptr inbounds nuw [16 x i8], ptr %i.bnt, i64 %i.bns ; 2 uses
  store i8 2, ptr %i.bnu, align 1
  %.sroa.4.0..sroa_idx.i.i.i934 = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8
  store i64 %i.bnp, ptr %.sroa.4.0..sroa_idx.i.i.i934, align 1
  %i.bnv = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bnw = add i32 %i.bnv, 1
  store i32 %i.bnw, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.or:                                            ; preds = %bb.b
  %i.bnx = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bny = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i935 = icmp ult i32 %i.bnx, %i.bny
  br i1 %.not.i.i935, label %bb.ot, label %bb.os, !prof !95

bb.os:                                            ; preds = %bb.or
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ot:                                            ; preds = %bb.or
  %i.bnz = zext i32 %i.bnx to i64
  %i.boa = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bob = getelementptr inbounds nuw [16 x i8], ptr %i.boa, i64 %i.bnz ; 2 uses
  store i8 1, ptr %i.bob, align 1
  %.sroa.4.0..sroa_idx.i.i936 = getelementptr inbounds nuw i8, ptr %i.bob, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i936, align 1
  %i.boc = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bod = add i32 %i.boc, 1
  store i32 %i.bod, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ou:                                            ; preds = %bb.b
  %i.boe = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bof = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i938 = icmp ult i32 %i.boe, %i.bof
  br i1 %.not.i.i938, label %bb.ow, label %bb.ov, !prof !95

bb.ov:                                            ; preds = %bb.ou
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 3)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ow:                                            ; preds = %bb.ou
  %i.bog = zext i32 %i.boe to i64
  %i.boh = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.boi = getelementptr inbounds nuw [16 x i8], ptr %i.boh, i64 %i.bog ; 2 uses
  store i8 1, ptr %i.boi, align 1
  %.sroa.4.0..sroa_idx.i.i939 = getelementptr inbounds nuw i8, ptr %i.boi, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i939, align 1
  %i.boj = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bok = add i32 %i.boj, 1
  store i32 %i.bok, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ox:                                            ; preds = %bb.b
  %i.bol = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bom = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i941 = icmp ult i32 %i.bol, %i.bom
  br i1 %.not.i.i941, label %bb.oz, label %bb.oy, !prof !95

bb.oy:                                            ; preds = %bb.ox
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 14)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oz:                                            ; preds = %bb.ox
  %i.bon = zext i32 %i.bol to i64
  %i.boo = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bop = getelementptr inbounds nuw [16 x i8], ptr %i.boo, i64 %i.bon ; 2 uses
  store i8 2, ptr %i.bop, align 1
  %.sroa.4.0..sroa_idx.i.i942 = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i942, align 1
  %i.boq = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bor = add i32 %i.boq, 1
  store i32 %i.bor, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pa:                                            ; preds = %bb.b
  %i.bos = zext i32 %i.bh to i64
  %i.bot = load ptr, ptr %4, align 8, !tbaa !39
  %i.bou = getelementptr inbounds nuw [8 x i8], ptr %i.bot, i64 %i.bos
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !49
  %i.bow = getelementptr i8, ptr %i.bov, i64 136
  %.val515 = load i32, ptr %i.bow, align 8, !tbaa !60
  %i.box = zext i32 %.val515 to i64               ; 2 uses
  %i.boy = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.boz = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i944 = icmp ult i32 %i.boy, %i.boz
  br i1 %.not.i.i.i944, label %bb.pc, label %bb.pb, !prof !95

bb.pb:                                            ; preds = %bb.pa
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.box)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pc:                                            ; preds = %bb.pa
  %i.bpa = zext i32 %i.boy to i64
  %i.bpb = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bpc = getelementptr inbounds nuw [16 x i8], ptr %i.bpb, i64 %i.bpa ; 2 uses
  store i8 2, ptr %i.bpc, align 1
  %.sroa.4.0..sroa_idx.i.i.i946 = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8
  store i64 %i.box, ptr %.sroa.4.0..sroa_idx.i.i.i946, align 1
  %i.bpd = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bpe = add i32 %i.bpd, 1
  store i32 %i.bpe, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pd:                                            ; preds = %bb.b
  %i.bpf = zext i32 %i.bh to i64
  %i.bpg = load ptr, ptr %4, align 8, !tbaa !39
  %i.bph = getelementptr inbounds nuw [8 x i8], ptr %i.bpg, i64 %i.bpf
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !49
  %i.bpj = getelementptr i8, ptr %i.bpi, i64 136
  %.val516 = load i32, ptr %i.bpj, align 8, !tbaa !60
  %i.bpk = zext i32 %.val516 to i64               ; 2 uses
  %i.bpl = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bpm = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i947 = icmp ult i32 %i.bpl, %i.bpm
  br i1 %.not.i.i.i947, label %bb.pf, label %bb.pe, !prof !95

bb.pe:                                            ; preds = %bb.pd
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bpk)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pf:                                            ; preds = %bb.pd
  %i.bpn = zext i32 %i.bpl to i64
  %i.bpo = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bpp = getelementptr inbounds nuw [16 x i8], ptr %i.bpo, i64 %i.bpn ; 2 uses
  store i8 2, ptr %i.bpp, align 1
  %.sroa.4.0..sroa_idx.i.i.i949 = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8
  store i64 %i.bpk, ptr %.sroa.4.0..sroa_idx.i.i.i949, align 1
  %i.bpq = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bpr = add i32 %i.bpq, 1
  store i32 %i.bpr, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pg:                                            ; preds = %bb.b
  %i.bps = call fastcc noundef i32 @_ZL20getMnemonicOpsEndIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %4) ; 7 uses
  %i.bpt = call noundef i32 @_Z15findCondCodeIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEj(ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i32 noundef %i.bps) ; 2 uses
  %i.bpu = call noundef i32 @_Z12findCCOutIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEj(ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i32 noundef %i.bps) ; 2 uses
  %i.bpv = add i32 %i.bps, 1                      ; 4 uses
  %i.bpw = load i32, ptr %i.r, align 8, !tbaa !61
  %i.bpx = add i32 %i.bps, 3
  %i.bpy = icmp eq i32 %i.bpw, %i.bpx
  %i.bpz = zext i32 %i.bps to i64                 ; 2 uses
  br i1 %i.bpy, label %bb.ph, label %._crit_edge.i

bb.ph:                                            ; preds = %bb.pg
  %i.bqa = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqb = getelementptr inbounds nuw [8 x i8], ptr %i.bqa, i64 %i.bpz
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !49 ; 2 uses
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !34
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 56
  %i.bqf = load ptr, ptr %i.bqe, align 8
  %i.bqg = call i32 %i.bqf(ptr noundef nonnull align 8 dereferenceable(176) %i.bqc) #29, !inline_history !1354
  %i.bqh = zext i32 %i.bpv to i64
  %i.bqi = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqj = getelementptr inbounds nuw [8 x i8], ptr %i.bqi, i64 %i.bqh
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !49 ; 2 uses
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !34
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 56
  %i.bqn = load ptr, ptr %i.bqm, align 8
  %i.bqo = call i32 %i.bqn(ptr noundef nonnull align 8 dereferenceable(176) %i.bqk) #29, !inline_history !1354
  %i.bqp = icmp eq i32 %i.bqg, %i.bqo             ; 2 uses
  %i.bqq = add i32 %i.bps, 2                      ; 2 uses
  %..i = select i1 %i.bqp, i32 %i.bqq, i32 %i.bpv
  %.44.i = select i1 %i.bqp, i32 %i.bpv, i32 %i.bqq
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ph, %bb.pg
  %.040.i = phi i32 [ %..i, %bb.ph ], [ %i.bpv, %bb.pg ]
  %.0.i950 = phi i32 [ %.44.i, %bb.ph ], [ %i.bps, %bb.pg ]
  %i.bqr = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqs = getelementptr inbounds nuw [8 x i8], ptr %i.bqr, i64 %i.bpz
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !49 ; 2 uses
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !34
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 56
  %i.bqw = load ptr, ptr %i.bqv, align 8
  %i.bqx = call i32 %i.bqw(ptr noundef nonnull align 8 dereferenceable(176) %i.bqt) #29, !inline_history !1355
  %.sroa.3.8.insert.ext.i.i.i951 = zext i32 %i.bqx to i64 ; 2 uses
  %i.bqy = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bqz = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i.i952 = icmp ult i32 %i.bqy, %i.bqz
  br i1 %.not.i.i.i.i952, label %bb.pj, label %bb.pi, !prof !95

bb.pi:                                            ; preds = %._crit_edge.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i951)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit.i

bb.pj:                                            ; preds = %._crit_edge.i
  %i.bra = zext i32 %i.bqy to i64
end_hunk_2
