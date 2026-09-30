Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmParser?download=true
inline.NumInlined: 13951
inline.NumDeleted: 2231
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
  %i.ajx = load i32, ptr %i.e, align 8, !tbaa !61 ; 3 uses
  %i.ajy = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i729 = icmp ult i32 %i.ajx, %i.ajy    ; 2 uses
  br i1 %i.ajv, label %bb.gq, label %bb.gv

bb.gq:                                            ; preds = %bb.gp
  %.val.i732 = load ptr, ptr %i.ajw, align 8, !tbaa !60
  %.fca.1.load.cast.i.i733 = ptrtoint ptr %.val.i732 to i64 ; 2 uses
  br i1 %.not.i.i.i729, label %bb.gs, label %bb.gr, !prof !95

bb.gr:                                            ; preds = %bb.gq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i733)
  %.pre.i734 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735

bb.gs:                                            ; preds = %bb.gq
  %i.ajz = zext i32 %i.ajx to i64
  %i.aka = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akb = getelementptr inbounds nuw [16 x i8], ptr %i.aka, i64 %i.ajz ; 2 uses
  store i8 5, ptr %i.akb, align 1
  %.sroa.4.0..sroa_idx.i.i.i736 = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  store i64 %.fca.1.load.cast.i.i733, ptr %.sroa.4.0..sroa_idx.i.i.i736, align 1
  %i.akc = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akd = add i32 %i.akc, 1                      ; 2 uses
  store i32 %i.akd, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735: ; preds = %bb.gs, %bb.gr
  %i.ake = phi i32 [ %.pre.i734, %bb.gr ], [ %i.akd, %bb.gs ] ; 2 uses
  %i.akf = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i30.i = icmp ult i32 %i.ake, %i.akf
  br i1 %.not.i.i30.i, label %bb.gu, label %bb.gt, !prof !95

bb.gt:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.gu:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i735
  %i.akg = zext i32 %i.ake to i64
  %i.akh = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aki = getelementptr inbounds nuw [16 x i8], ptr %i.akh, i64 %i.akg ; 2 uses
  store i8 2, ptr %i.aki, align 1
  %.sroa.4.0..sroa_idx.i.i31.i = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i31.i, align 1
  %i.akj = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akk = add i32 %i.akj, 1
  store i32 %i.akk, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.gv:                                            ; preds = %bb.gp
  %.sroa.012.0.copyload.i = load i32, ptr %i.ajw, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i730 = zext i32 %.sroa.012.0.copyload.i to i64 ; 2 uses
  br i1 %.not.i.i.i729, label %bb.gx, label %bb.gw, !prof !95

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i730)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i

bb.gx:                                            ; preds = %bb.gv
  %i.akl = zext i32 %i.ajx to i64
  %i.akm = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akn = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.akl ; 2 uses
  store i8 1, ptr %i.akn, align 1
  %.sroa.4.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i730, ptr %.sroa.4.0..sroa_idx.i.i35.i, align 1
  %i.ako = load i32, ptr %i.e, align 8, !tbaa !61
  %i.akp = add i32 %i.ako, 1
  store i32 %i.akp, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i: ; preds = %bb.gx, %bb.gw
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajr, i64 144
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !60 ; 4 uses
  %.not.i731 = icmp eq ptr %i.akr, null
  br i1 %.not.i731, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i
  %i.aks = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.akt = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i37.i = icmp ult i32 %i.aks, %i.akt
  br i1 %.not.i.i37.i, label %bb.ha, label %bb.gz, !prof !95

bb.gz:                                            ; preds = %bb.gy
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ha:                                            ; preds = %bb.gy
  %i.aku = zext i32 %i.aks to i64
  %i.akv = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.akv, i64 %i.aku ; 2 uses
  store i8 2, ptr %i.akw, align 1
  %.sroa.4.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i38.i, align 1
  %i.akx = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aky = add i32 %i.akx, 1
  store i32 %i.aky, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit36.i
  %i.akz = load i8, ptr %i.akr, align 8, !tbaa !401
  %.not50.i = icmp eq i8 %i.akz, 1
  br i1 %.not50.i, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akr, i64 16
  %i.alb = load i64, ptr %i.ala, align 8, !tbaa !403
  %i.alc = sdiv i64 %i.alb, 4
  %i.ald = trunc i64 %i.alc to i32                ; 2 uses
  %i.ale = icmp slt i32 %i.ald, 0
  %i.alf = call i32 @llvm.abs.i32(i32 %i.ald, i1 false)
  %i.alg = select i1 %i.ale, i32 256, i32 0
  %i.alh = and i32 %i.alf, 255
  %i.ali = or disjoint i32 %i.alg, %i.alh
  %i.alj = zext nneg i32 %i.ali to i64            ; 2 uses
  %i.alk = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.all = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i41.i = icmp ult i32 %i.alk, %i.all
  br i1 %.not.i.i41.i, label %bb.he, label %bb.hd, !prof !95

bb.hd:                                            ; preds = %bb.hc
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.alj)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.he:                                            ; preds = %bb.hc
  %i.alm = zext i32 %i.alk to i64
  %i.aln = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.aln, i64 %i.alm ; 2 uses
  store i8 2, ptr %i.alo, align 1
  %.sroa.4.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  store i64 %i.alj, ptr %.sroa.4.0..sroa_idx.i.i42.i, align 1
  %i.alp = load i32, ptr %i.e, align 8, !tbaa !61
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hf:                                            ; preds = %bb.hb
  %.fca.1.load.cast.i44.i = ptrtoint ptr %i.akr to i64 ; 2 uses
  %i.alr = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.als = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i46.i = icmp ult i32 %i.alr, %i.als
  br i1 %.not.i.i46.i, label %bb.hh, label %bb.hg, !prof !95

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i44.i)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hh:                                            ; preds = %bb.hf
  %i.alt = zext i32 %i.alr to i64
  %i.alu = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.alu, i64 %i.alt ; 2 uses
  store i8 5, ptr %i.alv, align 1
  %.sroa.4.0..sroa_idx.i.i47.i = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  store i64 %.fca.1.load.cast.i44.i, ptr %.sroa.4.0..sroa_idx.i.i47.i, align 1
  %i.alw = load i32, ptr %i.e, align 8, !tbaa !61
  %i.alx = add i32 %i.alw, 1
  store i32 %i.alx, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hi:                                            ; preds = %bb.b
  %i.aly = zext i32 %i.bh to i64
  %i.alz = load ptr, ptr %4, align 8, !tbaa !39
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alz, i64 %i.aly
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !49
  %i.amc = getelementptr i8, ptr %i.amb, i64 136
  %.val508 = load i32, ptr %i.amc, align 8, !tbaa !60
  %i.amd = zext i32 %.val508 to i64               ; 2 uses
  %i.ame = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.amf = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i737 = icmp ult i32 %i.ame, %i.amf
  br i1 %.not.i.i.i737, label %bb.hk, label %bb.hj, !prof !95

bb.hj:                                            ; preds = %bb.hi
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.amd)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hk:                                            ; preds = %bb.hi
  %i.amg = zext i32 %i.ame to i64
  %i.amh = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.amh, i64 %i.amg ; 2 uses
  store i8 2, ptr %i.ami, align 1
  %.sroa.4.0..sroa_idx.i.i.i739 = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  store i64 %i.amd, ptr %.sroa.4.0..sroa_idx.i.i.i739, align 1
  %i.amj = load i32, ptr %i.e, align 8, !tbaa !61
  %i.amk = add i32 %i.amj, 1
  store i32 %i.amk, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hl:                                            ; preds = %bb.b
  %i.aml = zext i32 %i.bh to i64
  %i.amm = load ptr, ptr %4, align 8, !tbaa !39
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.amm, i64 %i.aml
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !49
  %i.amp = getelementptr i8, ptr %i.amo, i64 136
  %.val509 = load ptr, ptr %i.amp, align 8, !tbaa !60
  %i.amq = getelementptr inbounds nuw i8, ptr %.val509, i64 16
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !403
  %i.ams = trunc i64 %i.amr to i32                ; 3 uses
  %i.amt = icmp eq i32 %i.ams, -2147483648
  %i.amu = call i32 @llvm.abs.i32(i32 %i.ams, i1 true)
  %i.amv = lshr i32 %i.amu, 2
  %.inv.i = icmp slt i32 %i.ams, 0
  %i.amw = select i1 %.inv.i, i32 0, i32 256
  %i.amx = or i32 %i.amv, %i.amw
  %11 = select i1 %i.amt, i32 0, i32 %i.amx
  %i.amy = zext nneg i32 %11 to i64               ; 2 uses
  %i.amz = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.ana = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i740 = icmp ult i32 %i.amz, %i.ana
  br i1 %.not.i.i.i740, label %bb.hn, label %bb.hm, !prof !95

bb.hm:                                            ; preds = %bb.hl
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.amy)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hn:                                            ; preds = %bb.hl
  %i.anb = zext i32 %i.amz to i64
  %i.anc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.and = getelementptr inbounds nuw [16 x i8], ptr %i.anc, i64 %i.anb ; 2 uses
  store i8 2, ptr %i.and, align 1
  %.sroa.4.0..sroa_idx.i.i.i742 = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  store i64 %i.amy, ptr %.sroa.4.0..sroa_idx.i.i.i742, align 1
  %i.ane = load i32, ptr %i.e, align 8, !tbaa !61
  %i.anf = add i32 %i.ane, 1
  store i32 %i.anf, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ho:                                            ; preds = %bb.b
  %i.ang = zext i32 %i.bh to i64
  %i.anh = load ptr, ptr %4, align 8, !tbaa !39
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %i.ang
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !49 ; 2 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 80
  %.val501 = load ptr, ptr %i.ank, align 8, !tbaa !39 ; 2 uses
  %i.anl = getelementptr i8, ptr %i.anj, i64 88
  %.val502 = load i32, ptr %i.anl, align 8, !tbaa !61 ; 2 uses
  %i.anm = zext i32 %.val502 to i64
  %.idx.i743 = shl nuw nsw i64 %i.anm, 2
  %i.ann = getelementptr inbounds nuw i8, ptr %.val501, i64 %.idx.i743
  %.not1.i744 = icmp eq i32 %.val502, 0
  br i1 %.not1.i744, label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit, label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %bb.ho, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750
  %.02.i746 = phi ptr [ %i.anv, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750 ], [ %.val501, %bb.ho ] ; 2 uses
  %.sroa.02.0.copyload.i747 = load i32, ptr %.02.i746, align 4, !tbaa !74
  %.sroa.3.8.insert.ext.i.i748 = zext i32 %.sroa.02.0.copyload.i747 to i64 ; 2 uses
  %i.ano = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.anp = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i749 = icmp ult i32 %i.ano, %i.anp
  br i1 %.not.i.i.i749, label %bb.hq, label %bb.hp, !prof !95

bb.hp:                                            ; preds = %.lr.ph.i745
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i748)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750

bb.hq:                                            ; preds = %.lr.ph.i745
  %i.anq = zext i32 %i.ano to i64
  %i.anr = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ans = getelementptr inbounds nuw [16 x i8], ptr %i.anr, i64 %i.anq ; 2 uses
  store i8 1, ptr %i.ans, align 1
  %.sroa.4.0..sroa_idx.i.i.i752 = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i748, ptr %.sroa.4.0..sroa_idx.i.i.i752, align 1
  %i.ant = load i32, ptr %i.e, align 8, !tbaa !61
  %i.anu = add i32 %i.ant, 1
  store i32 %i.anu, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i750: ; preds = %bb.hq, %bb.hp
  %i.anv = getelementptr inbounds nuw i8, ptr %.02.i746, i64 4 ; 2 uses
  %.not.i751 = icmp eq ptr %i.anv, %i.ann
  br i1 %.not.i751, label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit, label %.lr.ph.i745

bb.hr:                                            ; preds = %bb.b
  %i.anw = zext i32 %i.bh to i64
  %i.anx = load ptr, ptr %4, align 8, !tbaa !39
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.anx, i64 %i.anw
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !49 ; 4 uses
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !34
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 40
  %i.aoc = load ptr, ptr %i.aob, align 8
  %i.aod = call noundef zeroext i1 %i.aoc(ptr noundef nonnull align 8 dereferenceable(176) %i.anz) #29, !inline_history !1353
  br i1 %i.aod, label %bb.hs, label %bb.hz

bb.hs:                                            ; preds = %bb.hr
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anz, i64 136
  %.val.i755 = load ptr, ptr %i.aoe, align 8, !tbaa !60 ; 3 uses
  %i.aof = load i8, ptr %.val.i755, align 8, !tbaa !401
  %.not34.i = icmp eq i8 %i.aof, 1
  br i1 %.not34.i, label %bb.ht, label %bb.hw

bb.ht:                                            ; preds = %bb.hs
  %i.aog = getelementptr inbounds nuw i8, ptr %.val.i755, i64 16
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !403 ; 2 uses
  %i.aoi = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.aoj = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i757 = icmp ult i32 %i.aoi, %i.aoj
  br i1 %.not.i.i.i757, label %bb.hv, label %bb.hu, !prof !95

bb.hu:                                            ; preds = %bb.ht
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.aoh)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hv:                                            ; preds = %bb.ht
  %i.aok = zext i32 %i.aoi to i64
  %i.aol = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aol, i64 %i.aok ; 2 uses
  store i8 2, ptr %i.aom, align 1
  %.sroa.4.0..sroa_idx.i.i.i758 = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store i64 %i.aoh, ptr %.sroa.4.0..sroa_idx.i.i.i758, align 1
  %i.aon = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aoo = add i32 %i.aon, 1
  store i32 %i.aoo, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hw:                                            ; preds = %bb.hs
  %.fca.1.load.cast.i.i756 = ptrtoint ptr %.val.i755 to i64 ; 2 uses
  %i.aop = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.aoq = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i19.i = icmp ult i32 %i.aop, %i.aoq
  br i1 %.not.i.i19.i, label %bb.hy, label %bb.hx, !prof !95

bb.hx:                                            ; preds = %bb.hw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i756)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hy:                                            ; preds = %bb.hw
  %i.aor = zext i32 %i.aop to i64
  %i.aos = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aot = getelementptr inbounds nuw [16 x i8], ptr %i.aos, i64 %i.aor ; 2 uses
  store i8 5, ptr %i.aot, align 1
  %.sroa.4.0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  store i64 %.fca.1.load.cast.i.i756, ptr %.sroa.4.0..sroa_idx.i.i20.i, align 1
  %i.aou = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aov = add i32 %i.aou, 1
  store i32 %i.aov, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.hz:                                            ; preds = %bb.hr
  %i.aow = getelementptr inbounds nuw i8, ptr %i.anz, i64 144
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !60 ; 3 uses
  %i.aoy = load i8, ptr %i.aox, align 8, !tbaa !401
  %.not.i753 = icmp eq i8 %i.aoy, 1
  br i1 %.not.i753, label %bb.ia, label %bb.id

bb.ia:                                            ; preds = %bb.hz
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !403 ; 2 uses
  %i.apb = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apc = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i = icmp ult i32 %i.apb, %i.apc
  br i1 %.not.i.i24.i, label %bb.ic, label %bb.ib, !prof !95

bb.ib:                                            ; preds = %bb.ia
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.apa)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ic:                                            ; preds = %bb.ia
  %i.apd = zext i32 %i.apb to i64
  %i.ape = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.apf = getelementptr inbounds nuw [16 x i8], ptr %i.ape, i64 %i.apd ; 2 uses
  store i8 2, ptr %i.apf, align 1
  %.sroa.4.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store i64 %i.apa, ptr %.sroa.4.0..sroa_idx.i.i25.i, align 1
  %i.apg = load i32, ptr %i.e, align 8, !tbaa !61
  %i.aph = add i32 %i.apg, 1
  store i32 %i.aph, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.id:                                            ; preds = %bb.hz
  %.fca.1.load.cast.i27.i = ptrtoint ptr %i.aox to i64 ; 2 uses
  %i.api = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apj = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i29.i = icmp ult i32 %i.api, %i.apj
  br i1 %.not.i.i29.i, label %bb.if, label %bb.ie, !prof !95

bb.ie:                                            ; preds = %bb.id
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i27.i)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.if:                                            ; preds = %bb.id
  %i.apk = zext i32 %i.api to i64
  %i.apl = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.apm = getelementptr inbounds nuw [16 x i8], ptr %i.apl, i64 %i.apk ; 2 uses
  store i8 5, ptr %i.apm, align 1
  %.sroa.4.0..sroa_idx.i.i30.i = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  store i64 %.fca.1.load.cast.i27.i, ptr %.sroa.4.0..sroa_idx.i.i30.i, align 1
  %i.apn = load i32, ptr %i.e, align 8, !tbaa !61
  %i.apo = add i32 %i.apn, 1
  store i32 %i.apo, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ig:                                            ; preds = %bb.b
  %i.app = zext i32 %i.bh to i64
  %i.apq = load ptr, ptr %4, align 8, !tbaa !39
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.app
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !49 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 136
  %.sroa.06.0.copyload.i = load i32, ptr %i.apt, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i759 = zext i32 %.sroa.06.0.copyload.i to i64 ; 2 uses
  %i.apu = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.apv = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i760 = icmp ult i32 %i.apu, %i.apv
  br i1 %.not.i.i.i760, label %bb.ii, label %bb.ih, !prof !95

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i759)
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
  %.not.i.i.i823 = icmp ult i32 %i.awy, %i.awz
  br i1 %.not.i.i.i823, label %bb.kg, label %bb.kf, !prof !95

bb.kf:                                            ; preds = %bb.ke
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kg:                                            ; preds = %bb.ke
  %i.axa = zext i32 %i.awy to i64
  %i.axb = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axc = getelementptr inbounds nuw [16 x i8], ptr %i.axb, i64 %i.axa ; 2 uses
  store i8 2, ptr %i.axc, align 1
  %.sroa.4.0..sroa_idx.i.i.i824 = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i824, align 1
  %i.axd = load i32, ptr %i.e, align 8, !tbaa !61
  %i.axe = add i32 %i.axd, 1
  store i32 %i.axe, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kh:                                            ; preds = %bb.kd
  %.sroa.0.0.copyload.i816 = load i32, ptr %i.awx, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i817 = zext i32 %.sroa.0.0.copyload.i816 to i64 ; 2 uses
  %i.axf = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.axg = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i818 = icmp ult i32 %i.axf, %i.axg
  br i1 %.not.i.i8.i818, label %bb.kj, label %bb.ki, !prof !95

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i817)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819

bb.kj:                                            ; preds = %bb.kh
  %i.axh = zext i32 %i.axf to i64
  %i.axi = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axj = getelementptr inbounds nuw [16 x i8], ptr %i.axi, i64 %i.axh ; 2 uses
  store i8 1, ptr %i.axj, align 1
  %.sroa.4.0..sroa_idx.i.i9.i821 = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i817, ptr %.sroa.4.0..sroa_idx.i.i9.i821, align 1
  %i.axk = load i32, ptr %i.e, align 8, !tbaa !61
  %i.axl = add i32 %i.axk, 1
  store i32 %i.axl, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit10.i819: ; preds = %bb.kj, %bb.ki
  %i.axm = getelementptr inbounds nuw i8, ptr %i.aws, i64 144
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !60
  call fastcc void @_ZNK12_GLOBAL__N_110ARMOperand7addExprERN4llvm6MCInstEPKNS1_6MCExprE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.axn)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kk:                                            ; preds = %bb.b
  %i.axo = zext i32 %i.bh to i64
  %i.axp = load ptr, ptr %4, align 8, !tbaa !39
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axp, i64 %i.axo
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !49 ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 136
  %.sroa.04.0.copyload.i825 = load i32, ptr %i.axs, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i826 = zext i32 %.sroa.04.0.copyload.i825 to i64 ; 2 uses
  %i.axt = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.axu = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i827 = icmp ult i32 %i.axt, %i.axu
  br i1 %.not.i.i.i827, label %bb.km, label %bb.kl, !prof !95

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i826)
  %.pre.i828 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829

bb.km:                                            ; preds = %bb.kk
  %i.axv = zext i32 %i.axt to i64
  %i.axw = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.axx = getelementptr inbounds nuw [16 x i8], ptr %i.axw, i64 %i.axv ; 2 uses
  store i8 1, ptr %i.axx, align 1
  %.sroa.4.0..sroa_idx.i.i.i838 = getelementptr inbounds nuw i8, ptr %i.axx, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i826, ptr %.sroa.4.0..sroa_idx.i.i.i838, align 1
  %i.axy = load i32, ptr %i.e, align 8, !tbaa !61
  %i.axz = add i32 %i.axy, 1                      ; 2 uses
  store i32 %i.axz, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829: ; preds = %bb.km, %bb.kl
  %i.aya = phi i32 [ %.pre.i828, %bb.kl ], [ %i.axz, %bb.km ] ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axr, i64 152
  %.sroa.01.0.copyload.i830 = load i32, ptr %i.ayb, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i10.i831 = zext i32 %.sroa.01.0.copyload.i830 to i64 ; 2 uses
  %i.ayc = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i12.i832 = icmp ult i32 %i.aya, %i.ayc
  br i1 %.not.i.i12.i832, label %bb.ko, label %bb.kn, !prof !95

bb.kn:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i10.i831)
  %.pre19.i833 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834

bb.ko:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i829
  %i.ayd = zext i32 %i.aya to i64
  %i.aye = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ayf = getelementptr inbounds nuw [16 x i8], ptr %i.aye, i64 %i.ayd ; 2 uses
  store i8 1, ptr %i.ayf, align 1
  %.sroa.4.0..sroa_idx.i.i13.i837 = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  store i64 %.sroa.3.8.insert.ext.i10.i831, ptr %.sroa.4.0..sroa_idx.i.i13.i837, align 1
  %i.ayg = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ayh = add i32 %i.ayg, 1                      ; 2 uses
  store i32 %i.ayh, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834: ; preds = %bb.ko, %bb.kn
  %i.ayi = phi i32 [ %.pre19.i833, %bb.kn ], [ %i.ayh, %bb.ko ] ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axr, i64 160
  %i.ayk = load i32, ptr %i.ayj, align 8, !tbaa !60
  %i.ayl = zext i32 %i.ayk to i64                 ; 2 uses
  %i.aym = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i16.i835 = icmp ult i32 %i.ayi, %i.aym
  br i1 %.not.i.i16.i835, label %bb.kq, label %bb.kp, !prof !95

bb.kp:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.ayl)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kq:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit14.i834
  %i.ayn = zext i32 %i.ayi to i64
  %i.ayo = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ayp = getelementptr inbounds nuw [16 x i8], ptr %i.ayo, i64 %i.ayn ; 2 uses
  store i8 2, ptr %i.ayp, align 1
  %.sroa.4.0..sroa_idx.i.i17.i836 = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  store i64 %i.ayl, ptr %.sroa.4.0..sroa_idx.i.i17.i836, align 1
  %i.ayq = load i32, ptr %i.e, align 8, !tbaa !61
  %i.ayr = add i32 %i.ayq, 1
  store i32 %i.ayr, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kr:                                            ; preds = %bb.b
  %i.ays = zext i32 %i.bh to i64
  %i.ayt = load ptr, ptr %4, align 8, !tbaa !39
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.ayt, i64 %i.ays
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !49
  %i.ayw = getelementptr i8, ptr %i.ayv, i64 144
  %.val511 = load ptr, ptr %i.ayw, align 8, !tbaa !60 ; 3 uses
  %i.ayx = load i8, ptr %.val511, align 8, !tbaa !401
  %.not.i839 = icmp eq i8 %i.ayx, 1
  br i1 %.not.i839, label %bb.ks, label %bb.kv

bb.ks:                                            ; preds = %bb.kr
  %i.ayy = getelementptr inbounds nuw i8, ptr %.val511, i64 16
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !403 ; 2 uses
  %i.aza = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.azb = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i844 = icmp ult i32 %i.aza, %i.azb
  br i1 %.not.i.i.i844, label %bb.ku, label %bb.kt, !prof !95

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.ayz)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ku:                                            ; preds = %bb.ks
  %i.azc = zext i32 %i.aza to i64
  %i.azd = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.aze = getelementptr inbounds nuw [16 x i8], ptr %i.azd, i64 %i.azc ; 2 uses
  store i8 2, ptr %i.aze, align 1
  %.sroa.4.0..sroa_idx.i.i.i845 = getelementptr inbounds nuw i8, ptr %i.aze, i64 8
  store i64 %i.ayz, ptr %.sroa.4.0..sroa_idx.i.i.i845, align 1
  %i.azf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.azg = add i32 %i.azf, 1
  store i32 %i.azg, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kv:                                            ; preds = %bb.kr
  %.fca.1.load.cast.i.i840 = ptrtoint ptr %.val511 to i64 ; 2 uses
  %i.azh = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.azi = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i841 = icmp ult i32 %i.azh, %i.azi
  br i1 %.not.i.i8.i841, label %bb.kx, label %bb.kw, !prof !95

bb.kw:                                            ; preds = %bb.kv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i840)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.kx:                                            ; preds = %bb.kv
  %i.azj = zext i32 %i.azh to i64
  %i.azk = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.azl = getelementptr inbounds nuw [16 x i8], ptr %i.azk, i64 %i.azj ; 2 uses
  store i8 5, ptr %i.azl, align 1
  %.sroa.4.0..sroa_idx.i.i9.i843 = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  store i64 %.fca.1.load.cast.i.i840, ptr %.sroa.4.0..sroa_idx.i.i9.i843, align 1
  %i.azm = load i32, ptr %i.e, align 8, !tbaa !61
  %i.azn = add i32 %i.azm, 1
  store i32 %i.azn, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ky:                                            ; preds = %bb.b
  %i.azo = zext i32 %i.bh to i64
  %i.azp = load ptr, ptr %4, align 8, !tbaa !39
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.azp, i64 %i.azo
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !49
  %i.azs = getelementptr i8, ptr %i.azr, i64 136
  %.val512 = load ptr, ptr %i.azs, align 8, !tbaa !60
  %i.azt = getelementptr inbounds nuw i8, ptr %.val512, i64 16
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !403
  %i.azv = trunc i64 %i.azu to i32                ; 3 uses
  %i.azw = icmp eq i32 %i.azv, -2147483648
  %i.azx = call i32 @llvm.abs.i32(i32 %i.azv, i1 true)
  %i.azy = icmp slt i32 %i.azv, 0
  %i.azz = select i1 %i.azy, i32 4096, i32 0
  %i.baa = or i32 %i.azz, %i.azx
  %12 = select i1 %i.azw, i32 4096, i32 %i.baa
  %i.bab = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bac = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i846 = icmp ult i32 %i.bab, %i.bac
  br i1 %.not.i.i.i846, label %bb.la, label %bb.kz, !prof !95

bb.kz:                                            ; preds = %bb.ky
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 0)
  %.pre.i847 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848

bb.la:                                            ; preds = %bb.ky
  %i.bad = zext i32 %i.bab to i64
  %i.bae = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.baf = getelementptr inbounds nuw [16 x i8], ptr %i.bae, i64 %i.bad ; 2 uses
  store i8 1, ptr %i.baf, align 1
  %.sroa.4.0..sroa_idx.i.i.i849 = getelementptr inbounds nuw i8, ptr %i.baf, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i849, align 1
  %i.bag = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bah = add i32 %i.bag, 1                      ; 2 uses
  store i32 %i.bah, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848: ; preds = %bb.la, %bb.kz
  %i.bai = phi i32 [ %.pre.i847, %bb.kz ], [ %i.bah, %bb.la ] ; 2 uses
  %i.baj = zext nneg i32 %12 to i64               ; 2 uses
  %i.bak = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i13.i = icmp ult i32 %i.bai, %i.bak
  br i1 %.not.i.i13.i, label %bb.lc, label %bb.lb, !prof !95

bb.lb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.baj)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lc:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i848
  %i.bal = zext i32 %i.bai to i64
  %i.bam = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ban = getelementptr inbounds nuw [16 x i8], ptr %i.bam, i64 %i.bal ; 2 uses
  store i8 2, ptr %i.ban, align 1
  %.sroa.4.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  store i64 %i.baj, ptr %.sroa.4.0..sroa_idx.i.i14.i, align 1
  %i.bao = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bap = add i32 %i.bao, 1
  store i32 %i.bap, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ld:                                            ; preds = %bb.b
  %i.baq = zext i32 %i.bh to i64
  %i.bar = load ptr, ptr %4, align 8, !tbaa !39
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.bar, i64 %i.baq
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !49 ; 4 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 136
  %.sroa.02.0.copyload.i850 = load i32, ptr %i.bau, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i851 = zext i32 %.sroa.02.0.copyload.i850 to i64 ; 2 uses
  %i.bav = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.baw = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i852 = icmp ult i32 %i.bav, %i.baw
  br i1 %.not.i.i.i852, label %bb.lf, label %bb.le, !prof !95

bb.le:                                            ; preds = %bb.ld
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i851)
  %.pre.i853 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854

bb.lf:                                            ; preds = %bb.ld
  %i.bax = zext i32 %i.bav to i64
  %i.bay = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.baz = getelementptr inbounds nuw [16 x i8], ptr %i.bay, i64 %i.bax ; 2 uses
  store i8 1, ptr %i.baz, align 1
  %.sroa.4.0..sroa_idx.i.i.i858 = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i851, ptr %.sroa.4.0..sroa_idx.i.i.i858, align 1
  %i.bba = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bbb = add i32 %i.bba, 1                      ; 2 uses
  store i32 %i.bbb, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854: ; preds = %bb.lf, %bb.le
  %i.bbc = phi i32 [ %.pre.i853, %bb.le ], [ %i.bbb, %bb.lf ] ; 2 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bat, i64 140
  %i.bbe = load i8, ptr %i.bbd, align 4, !tbaa !60, !range !45, !noundef !46
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bat, i64 148
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !60
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bat, i64 144
  %i.bbi = load i32, ptr %i.bbh, align 8, !tbaa !60
  %i.bbj = icmp eq i8 %i.bbe, 0
  %i.bbk = select i1 %i.bbj, i32 4096, i32 0
  %i.bbl = or i32 %i.bbk, %i.bbg
  %i.bbm = shl i32 %i.bbi, 13
  %i.bbn = or i32 %i.bbl, %i.bbm
  %i.bbo = zext i32 %i.bbn to i64                 ; 2 uses
  %i.bbp = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i8.i855 = icmp ult i32 %i.bbc, %i.bbp
  br i1 %.not.i.i8.i855, label %bb.lh, label %bb.lg, !prof !95

bb.lg:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bbo)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lh:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i854
  %i.bbq = zext i32 %i.bbc to i64
  %i.bbr = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bbs = getelementptr inbounds nuw [16 x i8], ptr %i.bbr, i64 %i.bbq ; 2 uses
  store i8 2, ptr %i.bbs, align 1
  %.sroa.4.0..sroa_idx.i.i9.i857 = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8
  store i64 %i.bbo, ptr %.sroa.4.0..sroa_idx.i.i9.i857, align 1
  %i.bbt = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bbu = add i32 %i.bbt, 1
  store i32 %i.bbu, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.li:                                            ; preds = %bb.b
  %i.bbv = zext i32 %i.bh to i64
  %i.bbw = load ptr, ptr %4, align 8, !tbaa !39
  %i.bbx = getelementptr inbounds nuw [8 x i8], ptr %i.bbw, i64 %i.bbv
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !49 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 136
  %.sroa.0.0.copyload.i859 = load i32, ptr %i.bbz, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i860 = zext i32 %.sroa.0.0.copyload.i859 to i64 ; 2 uses
  %i.bca = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bcb = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i861 = icmp ult i32 %i.bca, %i.bcb
  br i1 %.not.i.i.i861, label %bb.lk, label %bb.lj, !prof !95

bb.lj:                                            ; preds = %bb.li
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i860)
  br label %_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit

bb.lk:                                            ; preds = %bb.li
  %i.bcc = zext i32 %i.bca to i64
  %i.bcd = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bce = getelementptr inbounds nuw [16 x i8], ptr %i.bcd, i64 %i.bcc ; 2 uses
  store i8 1, ptr %i.bce, align 1
  %.sroa.4.0..sroa_idx.i.i.i863 = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i860, ptr %.sroa.4.0..sroa_idx.i.i.i863, align 1
  %i.bcf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bcg = add i32 %i.bcf, 1
  store i32 %i.bcg, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit

_ZNK12_GLOBAL__N_110ARMOperand23addMemThumbRIs1OperandsERN4llvm6MCInstEj.exit: ; preds = %bb.lj, %bb.lk
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bby, i64 144
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !60
  call fastcc void @_ZNK12_GLOBAL__N_110ARMOperand7addExprERN4llvm6MCInstEPKNS1_6MCExprE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.bci)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ll:                                            ; preds = %bb.b
  %i.bcj = zext i32 %i.bh to i64
  %i.bck = load ptr, ptr %4, align 8, !tbaa !39
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %i.bcj
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !49 ; 4 uses
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !34
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 40
  %i.bcp = load ptr, ptr %i.bco, align 8
  %i.bcq = call noundef zeroext i1 %i.bcp(ptr noundef nonnull align 8 dereferenceable(176) %i.bcm) #29, !inline_history !1356
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcm, i64 136 ; 2 uses
  %i.bcs = load i32, ptr %i.e, align 8, !tbaa !61 ; 3 uses
  %i.bct = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i864 = icmp ult i32 %i.bcs, %i.bct    ; 2 uses
  br i1 %i.bcq, label %bb.lm, label %bb.lr

bb.lm:                                            ; preds = %bb.ll
  %.val.i867 = load ptr, ptr %i.bcr, align 8, !tbaa !60
  %.fca.1.load.cast.i.i868 = ptrtoint ptr %.val.i867 to i64 ; 2 uses
  br i1 %.not.i.i.i864, label %bb.lo, label %bb.ln, !prof !95

bb.ln:                                            ; preds = %bb.lm
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i868)
  %.pre.i869 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870

bb.lo:                                            ; preds = %bb.lm
  %i.bcu = zext i32 %i.bcs to i64
  %i.bcv = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bcw = getelementptr inbounds nuw [16 x i8], ptr %i.bcv, i64 %i.bcu ; 2 uses
  store i8 5, ptr %i.bcw, align 1
  %.sroa.4.0..sroa_idx.i.i.i873 = getelementptr inbounds nuw i8, ptr %i.bcw, i64 8
  store i64 %.fca.1.load.cast.i.i868, ptr %.sroa.4.0..sroa_idx.i.i.i873, align 1
  %i.bcx = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bcy = add i32 %i.bcx, 1                      ; 2 uses
  store i32 %i.bcy, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870: ; preds = %bb.lo, %bb.ln
  %i.bcz = phi i32 [ %.pre.i869, %bb.ln ], [ %i.bcy, %bb.lo ] ; 2 uses
  %i.bda = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i10.i871 = icmp ult i32 %i.bcz, %i.bda
  br i1 %.not.i.i10.i871, label %bb.lq, label %bb.lp, !prof !95

bb.lp:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lq:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i870
  %i.bdb = zext i32 %i.bcz to i64
  %i.bdc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bdd = getelementptr inbounds nuw [16 x i8], ptr %i.bdc, i64 %i.bdb ; 2 uses
  store i8 2, ptr %i.bdd, align 1
  %.sroa.4.0..sroa_idx.i.i11.i872 = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i11.i872, align 1
  %i.bde = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bdf = add i32 %i.bde, 1
  store i32 %i.bdf, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.lr:                                            ; preds = %bb.ll
  %.sroa.0.0.copyload.i865 = load i32, ptr %i.bcr, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i866 = zext i32 %.sroa.0.0.copyload.i865 to i64 ; 2 uses
  br i1 %.not.i.i.i864, label %bb.lt, label %bb.ls, !prof !95

bb.ls:                                            ; preds = %bb.lr
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i866)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i

bb.lt:                                            ; preds = %bb.lr
  %i.bdg = zext i32 %i.bcs to i64
  %i.bdh = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bdi = getelementptr inbounds nuw [16 x i8], ptr %i.bdh, i64 %i.bdg ; 2 uses
  store i8 1, ptr %i.bdi, align 1
  %.sroa.4.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i866, ptr %.sroa.4.0..sroa_idx.i.i15.i, align 1
  %i.bdj = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bdk = add i32 %i.bdj, 1
  store i32 %i.bdk, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit16.i: ; preds = %bb.lt, %bb.ls
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE:bb.a
bb.nt:                                            ; preds = %bb.np
  %.fca.1.load.cast.i.i901 = ptrtoint ptr %i.bjv to i64 ; 2 uses
  %i.bko = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bkp = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i902 = icmp ult i32 %i.bko, %i.bkp
  br i1 %.not.i.i24.i902, label %bb.nv, label %bb.nu, !prof !95

bb.nu:                                            ; preds = %bb.nt
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i901)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.nv:                                            ; preds = %bb.nt
  %i.bkq = zext i32 %i.bko to i64
  %i.bkr = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bks = getelementptr inbounds nuw [16 x i8], ptr %i.bkr, i64 %i.bkq ; 2 uses
  store i8 5, ptr %i.bks, align 1
  %.sroa.4.0..sroa_idx.i.i25.i903 = getelementptr inbounds nuw i8, ptr %i.bks, i64 8
  store i64 %.fca.1.load.cast.i.i901, ptr %.sroa.4.0..sroa_idx.i.i25.i903, align 1
  %i.bkt = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bku = add i32 %i.bkt, 1
  store i32 %i.bku, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.nw:                                            ; preds = %bb.b
  %i.bkv = zext i32 %i.bh to i64
  %i.bkw = load ptr, ptr %4, align 8, !tbaa !39
  %i.bkx = getelementptr inbounds nuw [8 x i8], ptr %i.bkw, i64 %i.bkv
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !49 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 136
  %.sroa.06.0.copyload.i909 = load i32, ptr %i.bkz, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i910 = zext i32 %.sroa.06.0.copyload.i909 to i64 ; 2 uses
  %i.bla = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.blb = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i911 = icmp ult i32 %i.bla, %i.blb
  br i1 %.not.i.i.i911, label %bb.ny, label %bb.nx, !prof !95

bb.nx:                                            ; preds = %bb.nw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i910)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912

bb.ny:                                            ; preds = %bb.nw
  %i.blc = zext i32 %i.bla to i64
  %i.bld = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ble = getelementptr inbounds nuw [16 x i8], ptr %i.bld, i64 %i.blc ; 2 uses
  store i8 1, ptr %i.ble, align 1
  %.sroa.4.0..sroa_idx.i.i.i922 = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i910, ptr %.sroa.4.0..sroa_idx.i.i.i922, align 1
  %i.blf = load i32, ptr %i.e, align 8, !tbaa !61
  %i.blg = add i32 %i.blf, 1
  store i32 %i.blg, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912: ; preds = %bb.ny, %bb.nx
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bky, i64 144
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !60 ; 4 uses
  %.not.i913 = icmp eq ptr %i.bli, null
  br i1 %.not.i913, label %bb.nz, label %bb.oc

bb.nz:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912
  %i.blj = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.blk = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i16.i920 = icmp ult i32 %i.blj, %i.blk
  br i1 %.not.i.i16.i920, label %bb.ob, label %bb.oa, !prof !95

bb.oa:                                            ; preds = %bb.nz
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ob:                                            ; preds = %bb.nz
  %i.bll = zext i32 %i.blj to i64
  %i.blm = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bln = getelementptr inbounds nuw [16 x i8], ptr %i.blm, i64 %i.bll ; 2 uses
  store i8 2, ptr %i.bln, align 1
  %.sroa.4.0..sroa_idx.i.i17.i921 = getelementptr inbounds nuw i8, ptr %i.bln, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i17.i921, align 1
  %i.blo = load i32, ptr %i.e, align 8, !tbaa !61
  %i.blp = add i32 %i.blo, 1
  store i32 %i.blp, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oc:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i912
  %i.blq = load i8, ptr %i.bli, align 8, !tbaa !401
  %.not28.i914 = icmp eq i8 %i.blq, 1
  br i1 %.not28.i914, label %bb.od, label %bb.og

bb.od:                                            ; preds = %bb.oc
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bli, i64 16
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !403
  %i.blt = sdiv i64 %i.bls, 2                     ; 2 uses
  %i.blu = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.blv = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i20.i918 = icmp ult i32 %i.blu, %i.blv
  br i1 %.not.i.i20.i918, label %bb.of, label %bb.oe, !prof !95

bb.oe:                                            ; preds = %bb.od
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.blt)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.of:                                            ; preds = %bb.od
  %i.blw = zext i32 %i.blu to i64
  %i.blx = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bly = getelementptr inbounds nuw [16 x i8], ptr %i.blx, i64 %i.blw ; 2 uses
  store i8 2, ptr %i.bly, align 1
  %.sroa.4.0..sroa_idx.i.i21.i919 = getelementptr inbounds nuw i8, ptr %i.bly, i64 8
  store i64 %i.blt, ptr %.sroa.4.0..sroa_idx.i.i21.i919, align 1
  %i.blz = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bma = add i32 %i.blz, 1
  store i32 %i.bma, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.og:                                            ; preds = %bb.oc
  %.fca.1.load.cast.i.i915 = ptrtoint ptr %i.bli to i64 ; 2 uses
  %i.bmb = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bmc = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i24.i916 = icmp ult i32 %i.bmb, %i.bmc
  br i1 %.not.i.i24.i916, label %bb.oi, label %bb.oh, !prof !95

bb.oh:                                            ; preds = %bb.og
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 5, i64 %.fca.1.load.cast.i.i915)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oi:                                            ; preds = %bb.og
  %i.bmd = zext i32 %i.bmb to i64
  %i.bme = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bmf = getelementptr inbounds nuw [16 x i8], ptr %i.bme, i64 %i.bmd ; 2 uses
  store i8 5, ptr %i.bmf, align 1
  %.sroa.4.0..sroa_idx.i.i25.i917 = getelementptr inbounds nuw i8, ptr %i.bmf, i64 8
  store i64 %.fca.1.load.cast.i.i915, ptr %.sroa.4.0..sroa_idx.i.i25.i917, align 1
  %i.bmg = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bmh = add i32 %i.bmg, 1
  store i32 %i.bmh, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oj:                                            ; preds = %bb.b
  %i.bmi = zext i32 %i.bh to i64
  %i.bmj = load ptr, ptr %4, align 8, !tbaa !39
  %i.bmk = getelementptr inbounds nuw [8 x i8], ptr %i.bmj, i64 %i.bmi
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !49 ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 136
  %.sroa.01.0.copyload.i923 = load i32, ptr %i.bmm, align 8, !tbaa !74
  %.sroa.3.8.insert.ext.i.i924 = zext i32 %.sroa.01.0.copyload.i923 to i64 ; 2 uses
  %i.bmn = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bmo = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i925 = icmp ult i32 %i.bmn, %i.bmo
  br i1 %.not.i.i.i925, label %bb.ol, label %bb.ok, !prof !95

bb.ok:                                            ; preds = %bb.oj
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i924)
  %.pre.i926 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927

bb.ol:                                            ; preds = %bb.oj
  %i.bmp = zext i32 %i.bmn to i64
  %i.bmq = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bmr = getelementptr inbounds nuw [16 x i8], ptr %i.bmq, i64 %i.bmp ; 2 uses
  store i8 1, ptr %i.bmr, align 1
  %.sroa.4.0..sroa_idx.i.i.i930 = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i924, ptr %.sroa.4.0..sroa_idx.i.i.i930, align 1
  %i.bms = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bmt = add i32 %i.bms, 1                      ; 2 uses
  store i32 %i.bmt, ptr %i.e, align 8, !tbaa !61
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927: ; preds = %bb.ol, %bb.ok
  %i.bmu = phi i32 [ %.pre.i926, %bb.ok ], [ %i.bmt, %bb.ol ] ; 2 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bml, i64 140
  %i.bmw = load i8, ptr %i.bmv, align 4, !tbaa !60, !range !45, !noundef !46
  %i.bmx = zext nneg i8 %i.bmw to i64             ; 2 uses
  %i.bmy = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i7.i928 = icmp ult i32 %i.bmu, %i.bmy
  br i1 %.not.i.i7.i928, label %bb.on, label %bb.om, !prof !95

bb.om:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bmx)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.on:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i927
  %i.bmz = zext i32 %i.bmu to i64
  %i.bna = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bnb = getelementptr inbounds nuw [16 x i8], ptr %i.bna, i64 %i.bmz ; 2 uses
  store i8 2, ptr %i.bnb, align 1
  %.sroa.4.0..sroa_idx.i.i8.i929 = getelementptr inbounds nuw i8, ptr %i.bnb, i64 8
  store i64 %i.bmx, ptr %.sroa.4.0..sroa_idx.i.i8.i929, align 1
  %i.bnc = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bnd = add i32 %i.bnc, 1
  store i32 %i.bnd, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oo:                                            ; preds = %bb.b
  %i.bne = zext i32 %i.bh to i64
  %i.bnf = load ptr, ptr %4, align 8, !tbaa !39
  %i.bng = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %i.bne
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !49
  %i.bni = getelementptr i8, ptr %i.bnh, i64 136
  %.val514 = load ptr, ptr %i.bni, align 8, !tbaa !60
  %i.bnj = getelementptr inbounds nuw i8, ptr %.val514, i64 16
  %i.bnk = load i64, ptr %i.bnj, align 8, !tbaa !403
  %i.bnl = trunc i64 %i.bnk to i32                ; 3 uses
  %i.bnm = icmp eq i32 %i.bnl, -2147483648
  %i.bnn = call i32 @llvm.abs.i32(i32 %i.bnl, i1 true)
  %.inv.i931 = icmp slt i32 %i.bnl, 0
  %i.bno = select i1 %.inv.i931, i32 0, i32 256
  %i.bnp = or i32 %i.bno, %i.bnn
  %13 = select i1 %i.bnm, i32 0, i32 %i.bnp
  %i.bnq = zext nneg i32 %13 to i64               ; 2 uses
  %i.bnr = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bns = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i932 = icmp ult i32 %i.bnr, %i.bns
  br i1 %.not.i.i.i932, label %bb.oq, label %bb.op, !prof !95

bb.op:                                            ; preds = %bb.oo
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bnq)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oq:                                            ; preds = %bb.oo
  %i.bnt = zext i32 %i.bnr to i64
  %i.bnu = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bnv = getelementptr inbounds nuw [16 x i8], ptr %i.bnu, i64 %i.bnt ; 2 uses
  store i8 2, ptr %i.bnv, align 1
  %.sroa.4.0..sroa_idx.i.i.i934 = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8
  store i64 %i.bnq, ptr %.sroa.4.0..sroa_idx.i.i.i934, align 1
  %i.bnw = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bnx = add i32 %i.bnw, 1
  store i32 %i.bnx, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.or:                                            ; preds = %bb.b
  %i.bny = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bnz = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i935 = icmp ult i32 %i.bny, %i.bnz
  br i1 %.not.i.i935, label %bb.ot, label %bb.os, !prof !95

bb.os:                                            ; preds = %bb.or
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 0)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ot:                                            ; preds = %bb.or
  %i.boa = zext i32 %i.bny to i64
  %i.bob = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.boc = getelementptr inbounds nuw [16 x i8], ptr %i.bob, i64 %i.boa ; 2 uses
  store i8 1, ptr %i.boc, align 1
  %.sroa.4.0..sroa_idx.i.i936 = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i936, align 1
  %i.bod = load i32, ptr %i.e, align 8, !tbaa !61
  %i.boe = add i32 %i.bod, 1
  store i32 %i.boe, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ou:                                            ; preds = %bb.b
  %i.bof = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bog = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i938 = icmp ult i32 %i.bof, %i.bog
  br i1 %.not.i.i938, label %bb.ow, label %bb.ov, !prof !95

bb.ov:                                            ; preds = %bb.ou
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 3)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ow:                                            ; preds = %bb.ou
  %i.boh = zext i32 %i.bof to i64
  %i.boi = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.boj = getelementptr inbounds nuw [16 x i8], ptr %i.boi, i64 %i.boh ; 2 uses
  store i8 1, ptr %i.boj, align 1
  %.sroa.4.0..sroa_idx.i.i939 = getelementptr inbounds nuw i8, ptr %i.boj, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i939, align 1
  %i.bok = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bol = add i32 %i.bok, 1
  store i32 %i.bol, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.ox:                                            ; preds = %bb.b
  %i.bom = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bon = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i941 = icmp ult i32 %i.bom, %i.bon
  br i1 %.not.i.i941, label %bb.oz, label %bb.oy, !prof !95

bb.oy:                                            ; preds = %bb.ox
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 14)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.oz:                                            ; preds = %bb.ox
  %i.boo = zext i32 %i.bom to i64
  %i.bop = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.boq = getelementptr inbounds nuw [16 x i8], ptr %i.bop, i64 %i.boo ; 2 uses
  store i8 2, ptr %i.boq, align 1
  %.sroa.4.0..sroa_idx.i.i942 = getelementptr inbounds nuw i8, ptr %i.boq, i64 8
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i942, align 1
  %i.bor = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bos = add i32 %i.bor, 1
  store i32 %i.bos, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pa:                                            ; preds = %bb.b
  %i.bot = zext i32 %i.bh to i64
  %i.bou = load ptr, ptr %4, align 8, !tbaa !39
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %i.bou, i64 %i.bot
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !49
  %i.box = getelementptr i8, ptr %i.bow, i64 136
  %.val515 = load i32, ptr %i.box, align 8, !tbaa !60
  %i.boy = zext i32 %.val515 to i64               ; 2 uses
  %i.boz = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bpa = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i944 = icmp ult i32 %i.boz, %i.bpa
  br i1 %.not.i.i.i944, label %bb.pc, label %bb.pb, !prof !95

bb.pb:                                            ; preds = %bb.pa
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.boy)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pc:                                            ; preds = %bb.pa
  %i.bpb = zext i32 %i.boz to i64
  %i.bpc = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bpd = getelementptr inbounds nuw [16 x i8], ptr %i.bpc, i64 %i.bpb ; 2 uses
  store i8 2, ptr %i.bpd, align 1
  %.sroa.4.0..sroa_idx.i.i.i946 = getelementptr inbounds nuw i8, ptr %i.bpd, i64 8
  store i64 %i.boy, ptr %.sroa.4.0..sroa_idx.i.i.i946, align 1
  %i.bpe = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bpf = add i32 %i.bpe, 1
  store i32 %i.bpf, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pd:                                            ; preds = %bb.b
  %i.bpg = zext i32 %i.bh to i64
  %i.bph = load ptr, ptr %4, align 8, !tbaa !39
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %i.bph, i64 %i.bpg
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !49
  %i.bpk = getelementptr i8, ptr %i.bpj, i64 136
  %.val516 = load i32, ptr %i.bpk, align 8, !tbaa !60
  %i.bpl = zext i32 %.val516 to i64               ; 2 uses
  %i.bpm = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bpn = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i947 = icmp ult i32 %i.bpm, %i.bpn
  br i1 %.not.i.i.i947, label %bb.pf, label %bb.pe, !prof !95

bb.pe:                                            ; preds = %bb.pd
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 2, i64 %i.bpl)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pf:                                            ; preds = %bb.pd
  %i.bpo = zext i32 %i.bpm to i64
  %i.bpp = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bpq = getelementptr inbounds nuw [16 x i8], ptr %i.bpp, i64 %i.bpo ; 2 uses
  store i8 2, ptr %i.bpq, align 1
  %.sroa.4.0..sroa_idx.i.i.i949 = getelementptr inbounds nuw i8, ptr %i.bpq, i64 8
  store i64 %i.bpl, ptr %.sroa.4.0..sroa_idx.i.i.i949, align 1
  %i.bpr = load i32, ptr %i.e, align 8, !tbaa !61
  %i.bps = add i32 %i.bpr, 1
  store i32 %i.bps, ptr %i.e, align 8, !tbaa !61
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit

bb.pg:                                            ; preds = %bb.b
  %i.bpt = call fastcc noundef i32 @_ZL20getMnemonicOpsEndIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %4) ; 7 uses
  %i.bpu = call noundef i32 @_Z15findCondCodeIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEj(ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i32 noundef %i.bpt) ; 2 uses
  %i.bpv = call noundef i32 @_Z12findCCOutIndRKN4llvm15SmallVectorImplISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EEEEj(ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i32 noundef %i.bpt) ; 2 uses
  %i.bpw = add i32 %i.bpt, 1                      ; 4 uses
  %i.bpx = load i32, ptr %i.r, align 8, !tbaa !61
  %i.bpy = add i32 %i.bpt, 3
  %i.bpz = icmp eq i32 %i.bpx, %i.bpy
  %i.bqa = zext i32 %i.bpt to i64                 ; 2 uses
  br i1 %i.bpz, label %bb.ph, label %._crit_edge.i

bb.ph:                                            ; preds = %bb.pg
  %i.bqb = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqc = getelementptr inbounds nuw [8 x i8], ptr %i.bqb, i64 %i.bqa
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !49 ; 2 uses
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !34
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 56
  %i.bqg = load ptr, ptr %i.bqf, align 8
  %i.bqh = call i32 %i.bqg(ptr noundef nonnull align 8 dereferenceable(176) %i.bqd) #29, !inline_history !1358
  %i.bqi = zext i32 %i.bpw to i64
  %i.bqj = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqk = getelementptr inbounds nuw [8 x i8], ptr %i.bqj, i64 %i.bqi
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !49 ; 2 uses
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !34
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 56
  %i.bqo = load ptr, ptr %i.bqn, align 8
  %i.bqp = call i32 %i.bqo(ptr noundef nonnull align 8 dereferenceable(176) %i.bql) #29, !inline_history !1358
  %i.bqq = icmp eq i32 %i.bqh, %i.bqp             ; 2 uses
  %i.bqr = add i32 %i.bpt, 2                      ; 2 uses
  %..i = select i1 %i.bqq, i32 %i.bqr, i32 %i.bpw
  %.44.i = select i1 %i.bqq, i32 %i.bpw, i32 %i.bqr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ph, %bb.pg
  %.040.i = phi i32 [ %..i, %bb.ph ], [ %i.bpw, %bb.pg ]
  %.0.i950 = phi i32 [ %.44.i, %bb.ph ], [ %i.bpt, %bb.pg ]
  %i.bqs = load ptr, ptr %4, align 8, !tbaa !39
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bqs, i64 %i.bqa
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !49 ; 2 uses
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !34
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 56
  %i.bqx = load ptr, ptr %i.bqw, align 8
  %i.bqy = call i32 %i.bqx(ptr noundef nonnull align 8 dereferenceable(176) %i.bqu) #29, !inline_history !1359
  %.sroa.3.8.insert.ext.i.i.i951 = zext i32 %i.bqy to i64 ; 2 uses
  %i.bqz = load i32, ptr %i.e, align 8, !tbaa !61 ; 2 uses
  %i.bra = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.i.i.i952 = icmp ult i32 %i.bqz, %i.bra
  br i1 %.not.i.i.i.i952, label %bb.pj, label %bb.pi, !prof !95

bb.pi:                                            ; preds = %._crit_edge.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i951)
  br label %_ZNK12_GLOBAL__N_110ARMOperand14addRegOperandsERN4llvm6MCInstEj.exit.i

bb.pj:                                            ; preds = %._crit_edge.i
  %i.brb = zext i32 %i.bqz to i64
end_hunk_2
