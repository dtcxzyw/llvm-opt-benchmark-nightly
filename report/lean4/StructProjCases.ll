Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/StructProjCases?download=true
inline.NumInlined: 1888
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@l_Lean_Compiler_LCNF_StructProjCases_visitCode:bb.a

bb.aax:                                           ; preds = %bb.aav
  %.not.i2002 = icmp eq i32 %i.ajt, 0
  br i1 %.not.i2002, label %bb.aaz, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.acf) #5
  br label %bb.aaz

bb.aaz:                                           ; preds = %lean_inc.exit2270, %bb.aaw, %bb.aax, %bb.aay
  tail call void @lean_inc_heartbeat() #5
  %i.ajw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ajx = icmp eq ptr %i.ajw, null
  br i1 %i.ajx, label %bb.aba, label %lean_alloc_ctor.exit2717

bb.aba:                                           ; preds = %bb.aaz
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit2717:                         ; preds = %bb.aaz
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  store i32 1, ptr %i.ajw, align 4, !tbaa !14
  store i32 16842768, ptr %i.ajy, align 4
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  store ptr %i.ajm, ptr %i.ajz, align 8, !tbaa !12
  br label %lean_dec.exit1806.thread3211

bb.abb:                                           ; preds = %lean_obj_tag.exit
  %i.aka = getelementptr inbounds nuw i8, ptr %.01367, i64 8 ; 5 uses
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !12 ; 6 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.01367, i64 16 ; 3 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !12 ; 6 uses
  %i.ake = ptrtoint ptr %i.akb to i64
  %i.akf = and i64 %i.ake, 1
  %.not.i2267 = icmp eq i64 %i.akf, 0
  br i1 %.not.i2267, label %bb.abc, label %lean_inc.exit2268

bb.abc:                                           ; preds = %bb.abb
  %.val.i.i2718 = load i32, ptr %i.akb, align 4, !tbaa !14 ; 3 uses
  %i.akg = icmp sgt i32 %.val.i.i2718, 0
  br i1 %i.akg, label %bb.abd, label %bb.abe, !prof !15

bb.abd:                                           ; preds = %bb.abc
  %i.akh = add nuw i32 %.val.i.i2718, 1
  store i32 %i.akh, ptr %i.akb, align 4, !tbaa !14
  br label %lean_inc.exit2268

bb.abe:                                           ; preds = %bb.abc
  %.not.i.i2719 = icmp eq i32 %.val.i.i2718, 0
  br i1 %.not.i.i2719, label %lean_inc.exit2268, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.aki = atomicrmw add ptr %i.akb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2268

lean_inc.exit2268:                                ; preds = %bb.abf, %bb.abe, %bb.abd, %bb.abb
  %i.akj = tail call ptr @l_Lean_Compiler_LCNF_StructProjCases_remapFVar___redArg(ptr noundef %i.akb, ptr noundef %1) ; 13 uses
  %i.akk = ptrtoint ptr %i.akj to i64             ; 2 uses
  %i.akl = and i64 %i.akk, 1
  %.not.i2721 = icmp eq i64 %i.akl, 0             ; 2 uses
  br i1 %.not.i2721, label %bb.abh, label %bb.abg

bb.abg:                                           ; preds = %lean_inc.exit2268
  %i.akm = lshr i64 %i.akk, 1
  %i.akn = trunc i64 %i.akm to i32
  br label %lean_obj_tag.exit2724

bb.abh:                                           ; preds = %lean_inc.exit2268
  %i.ako = getelementptr i8, ptr %i.akj, i64 4
  %.val.i2723 = load i32, ptr %i.ako, align 4
  %i.akp = lshr i32 %.val.i2723, 24
  br label %lean_obj_tag.exit2724

lean_obj_tag.exit2724:                            ; preds = %bb.abg, %bb.abh
  %.0.i2722 = phi i32 [ %i.akn, %bb.abg ], [ %i.akp, %bb.abh ]
  %i.akq = icmp eq i32 %.0.i2722, 0
  br i1 %i.akq, label %bb.abi, label %bb.aer

bb.abi:                                           ; preds = %lean_obj_tag.exit2724
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !12 ; 13 uses
  %i.akt = ptrtoint ptr %i.aks to i64
  %i.aku = and i64 %i.akt, 1
  %.not.i2265 = icmp eq i64 %i.aku, 0             ; 3 uses
  br i1 %.not.i2265, label %bb.abj, label %lean_inc.exit2266

bb.abj:                                           ; preds = %bb.abi
  %.val.i.i2725 = load i32, ptr %i.aks, align 4, !tbaa !14 ; 3 uses
  %i.akv = icmp sgt i32 %.val.i.i2725, 0
  br i1 %i.akv, label %bb.abk, label %bb.abl, !prof !15

bb.abk:                                           ; preds = %bb.abj
  %i.akw = add nuw i32 %.val.i.i2725, 1
  store i32 %i.akw, ptr %i.aks, align 4, !tbaa !14
  br label %lean_inc.exit2266

bb.abl:                                           ; preds = %bb.abj
  %.not.i.i2726 = icmp eq i32 %.val.i.i2725, 0
  br i1 %.not.i.i2726, label %lean_inc.exit2266, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.akx = atomicrmw add ptr %i.aks, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2266

lean_inc.exit2266:                                ; preds = %bb.abm, %bb.abl, %bb.abk, %bb.abi
  %.val.i2728 = load i32, ptr %i.akj, align 8, !tbaa !14 ; 4 uses
  %i.aky = icmp eq i32 %.val.i2728, 1
  br i1 %i.aky, label %.preheader.i2730, label %bb.abr

.preheader.i2730:                                 ; preds = %lean_inc.exit2266
  %i.akz = load ptr, ptr %i.akr, align 8, !tbaa !12 ; 4 uses
  %i.ala = ptrtoint ptr %i.akz to i64
  %i.alb = and i64 %i.ala, 1
  %.not.i.i2732 = icmp eq i64 %i.alb, 0
  br i1 %.not.i.i2732, label %bb.abn, label %lean_dec.exit.i2733

bb.abn:                                           ; preds = %.preheader.i2730
  %i.alc = load i32, ptr %i.akz, align 4, !tbaa !14 ; 3 uses
  %i.ald = icmp sgt i32 %i.alc, 1
  br i1 %i.ald, label %bb.abo, label %bb.abp, !prof !15

bb.abo:                                           ; preds = %bb.abn
  %i.ale = add nsw i32 %i.alc, -1
  store i32 %i.ale, ptr %i.akz, align 4, !tbaa !14
  br label %lean_dec.exit.i2733

bb.abp:                                           ; preds = %bb.abn
  %.not.i7.i2736 = icmp eq i32 %i.alc, 0
  br i1 %.not.i7.i2736, label %lean_dec.exit.i2733, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.akz) #5
  br label %lean_dec.exit.i2733

lean_dec.exit.i2733:                              ; preds = %bb.abq, %bb.abp, %bb.abo, %.preheader.i2730
  tail call void @lean_free_object(ptr noundef nonnull %i.akj) #5
  br label %lean_dec_ref_known.exit2737

bb.abr:                                           ; preds = %lean_inc.exit2266
  %i.alf = icmp sgt i32 %.val.i2728, 1
  br i1 %i.alf, label %bb.abs, label %bb.abt, !prof !15

bb.abs:                                           ; preds = %bb.abr
  %i.alg = add nsw i32 %.val.i2728, -1
  store i32 %i.alg, ptr %i.akj, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2737

bb.abt:                                           ; preds = %bb.abr
  %.not.i8.i2729 = icmp eq i32 %.val.i2728, 0
  br i1 %.not.i8.i2729, label %lean_dec_ref_known.exit2737, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.akj) #5
  br label %lean_dec_ref_known.exit2737

lean_dec_ref_known.exit2737:                      ; preds = %lean_dec.exit.i2733, %bb.abs, %bb.abt, %bb.abu
  %i.alh = getelementptr i8, ptr %i.akd, i64 8
  %.val2385 = load i64, ptr %i.alh, align 8, !tbaa !10
  %.val.i.i2738 = load i32, ptr %i.akd, align 8, !tbaa !14 ; 3 uses
  %i.ali = icmp sgt i32 %.val.i.i2738, 0
  br i1 %i.ali, label %bb.abv, label %bb.abw, !prof !15

bb.abv:                                           ; preds = %lean_dec_ref_known.exit2737
  %i.alj = add nuw i32 %.val.i.i2738, 1
  store i32 %i.alj, ptr %i.akd, align 8, !tbaa !14
  br label %lean_inc_ref.exit2740

bb.abw:                                           ; preds = %lean_dec_ref_known.exit2737
  %.not.i.i2739 = icmp eq i32 %.val.i.i2738, 0
  br i1 %.not.i.i2739, label %lean_inc_ref.exit2740, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.alk = atomicrmw add ptr %i.akd, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2740

lean_inc_ref.exit2740:                            ; preds = %bb.abv, %bb.abw, %bb.abx
  %i.all = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_StructProjCases_visitLetValue_spec__1___redArg(i64 noundef %.val2385, i64 noundef 0, ptr noundef nonnull %i.akd, ptr noundef %1) ; 14 uses
  %i.alm = ptrtoint ptr %i.all to i64             ; 2 uses
  %i.aln = and i64 %i.alm, 1
  %.not.i2741 = icmp eq i64 %i.aln, 0             ; 3 uses
  br i1 %.not.i2741, label %bb.abz, label %bb.aby

bb.aby:                                           ; preds = %lean_inc_ref.exit2740
  %i.alo = lshr i64 %i.alm, 1
  %i.alp = trunc i64 %i.alo to i32
  br label %lean_obj_tag.exit2744

bb.abz:                                           ; preds = %lean_inc_ref.exit2740
  %i.alq = getelementptr i8, ptr %i.all, i64 4
  %.val.i2743 = load i32, ptr %i.alq, align 4
  %i.alr = lshr i32 %.val.i2743, 24
  br label %lean_obj_tag.exit2744

lean_obj_tag.exit2744:                            ; preds = %bb.aby, %bb.abz
  %.0.i2742 = phi i32 [ %i.alp, %bb.aby ], [ %i.alr, %bb.abz ]
  %i.als = icmp eq i32 %.0.i2742, 0
  br i1 %i.als, label %bb.aca, label %bb.adp

bb.aca:                                           ; preds = %lean_obj_tag.exit2744
  %i.alt = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !12 ; 10 uses
  %.val2365 = load i32, ptr %i.all, align 8, !tbaa !14
  %i.alv = icmp eq i32 %.val2365, 1               ; 3 uses
  br i1 %i.alv, label %lean_dec.exit1716, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = and i64 %i.alw, 1
  %.not.i2263 = icmp eq i64 %i.alx, 0
  br i1 %.not.i2263, label %bb.acc, label %lean_inc.exit2264

bb.acc:                                           ; preds = %bb.acb
  %.val.i.i2745 = load i32, ptr %i.alu, align 4, !tbaa !14 ; 3 uses
  %i.aly = icmp sgt i32 %.val.i.i2745, 0
  br i1 %i.aly, label %bb.acd, label %bb.ace, !prof !15

bb.acd:                                           ; preds = %bb.acc
  %i.alz = add nuw i32 %.val.i.i2745, 1
  store i32 %i.alz, ptr %i.alu, align 4, !tbaa !14
  br label %lean_inc.exit2264

bb.ace:                                           ; preds = %bb.acc
  %.not.i.i2746 = icmp eq i32 %.val.i.i2745, 0
  br i1 %.not.i.i2746, label %lean_inc.exit2264, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.ama = atomicrmw add ptr %i.alu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2264

lean_inc.exit2264:                                ; preds = %bb.acf, %bb.ace, %bb.acd, %bb.acb
  br i1 %.not.i2741, label %bb.acg, label %lean_dec.exit1716

bb.acg:                                           ; preds = %lean_inc.exit2264
  %i.amb = load i32, ptr %i.all, align 8, !tbaa !14 ; 3 uses
  %i.amc = icmp sgt i32 %i.amb, 1
  br i1 %i.amc, label %bb.ach, label %bb.aci, !prof !15

bb.ach:                                           ; preds = %bb.acg
  %i.amd = add nsw i32 %i.amb, -1
  store i32 %i.amd, ptr %i.all, align 8, !tbaa !14
  br label %lean_dec.exit1716

bb.aci:                                           ; preds = %bb.acg
  %.not.i2004 = icmp eq i32 %i.amb, 0
  br i1 %.not.i2004, label %lean_dec.exit1716, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.all) #5
  br label %lean_dec.exit1716

lean_dec.exit1716:                                ; preds = %lean_inc.exit2264, %bb.ach, %bb.aci, %bb.acj, %bb.aca
  %.01560 = phi ptr [ %i.all, %bb.aca ], [ inttoptr (i64 1 to ptr), %bb.acj ], [ inttoptr (i64 1 to ptr), %bb.aci ], [ inttoptr (i64 1 to ptr), %bb.ach ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2264 ] ; 4 uses
  %i.ame = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.akb, ptr noundef %i.aks) #5
  %i.amf = icmp ne i8 %i.ame, 0
  %.not3235 = icmp eq ptr %i.akd, %i.alu
  %or.cond = select i1 %i.amf, i1 %.not3235, i1 false
  br i1 %or.cond, label %bb.ade, label %.critedge1610

.critedge1610:                                    ; preds = %lean_dec.exit1716
  %.01367.val2364 = load i32, ptr %.01367, align 8, !tbaa !14 ; 4 uses
  %i.amg = icmp eq i32 %.01367.val2364, 1
  br i1 %i.amg, label %bb.ack, label %bb.act

bb.ack:                                           ; preds = %.critedge1610
  %i.amh = load ptr, ptr %i.akc, align 8, !tbaa !12 ; 4 uses
  %i.ami = ptrtoint ptr %i.amh to i64
  %i.amj = and i64 %i.ami, 1
  %.not.i1713 = icmp eq i64 %i.amj, 0
  br i1 %.not.i1713, label %bb.acl, label %lean_dec.exit1714

bb.acl:                                           ; preds = %bb.ack
  %i.amk = load i32, ptr %i.amh, align 4, !tbaa !14 ; 3 uses
  %i.aml = icmp sgt i32 %i.amk, 1
  br i1 %i.aml, label %bb.acm, label %bb.acn, !prof !15

bb.acm:                                           ; preds = %bb.acl
  %i.amm = add nsw i32 %i.amk, -1
  store i32 %i.amm, ptr %i.amh, align 4, !tbaa !14
  br label %lean_dec.exit1714

bb.acn:                                           ; preds = %bb.acl
  %.not.i2006 = icmp eq i32 %i.amk, 0
  br i1 %.not.i2006, label %lean_dec.exit1714, label %bb.aco

bb.aco:                                           ; preds = %bb.acn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.amh) #5
  br label %lean_dec.exit1714

lean_dec.exit1714:                                ; preds = %bb.aco, %bb.acn, %bb.acm, %bb.ack
  %i.amn = load ptr, ptr %i.aka, align 8, !tbaa !12 ; 4 uses
  %i.amo = ptrtoint ptr %i.amn to i64
  %i.amp = and i64 %i.amo, 1
  %.not.i1711 = icmp eq i64 %i.amp, 0
  br i1 %.not.i1711, label %bb.acp, label %bb.acy

bb.acp:                                           ; preds = %lean_dec.exit1714
  %i.amq = load i32, ptr %i.amn, align 4, !tbaa !14 ; 3 uses
  %i.amr = icmp sgt i32 %i.amq, 1
  br i1 %i.amr, label %bb.acq, label %bb.acr, !prof !15

bb.acq:                                           ; preds = %bb.acp
  %i.ams = add nsw i32 %i.amq, -1
  store i32 %i.ams, ptr %i.amn, align 4, !tbaa !14
  br label %bb.acy

bb.acr:                                           ; preds = %bb.acp
  %.not.i2008 = icmp eq i32 %i.amq, 0
  br i1 %.not.i2008, label %bb.acy, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.amn) #5
  br label %bb.acy

bb.act:                                           ; preds = %.critedge1610
  br i1 %.not.i2390, label %bb.acu, label %lean_dec.exit1712

bb.acu:                                           ; preds = %bb.act
  %i.amt = icmp sgt i32 %.01367.val2364, 1
  br i1 %i.amt, label %bb.acv, label %bb.acw, !prof !15

bb.acv:                                           ; preds = %bb.acu
  %i.amu = add nsw i32 %.01367.val2364, -1
  store i32 %i.amu, ptr %.01367, align 8, !tbaa !14
  br label %lean_dec.exit1712

bb.acw:                                           ; preds = %bb.acu
  %.not.i2010 = icmp eq i32 %.01367.val2364, 0
  br i1 %.not.i2010, label %lean_dec.exit1712, label %bb.acx

bb.acx:                                           ; preds = %bb.acw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01367) #5
  br label %lean_dec.exit1712

bb.acy:                                           ; preds = %lean_dec.exit1714, %bb.acq, %bb.acr, %bb.acs
  store ptr %i.alu, ptr %i.akc, align 8, !tbaa !12
  store ptr %i.aks, ptr %i.aka, align 8, !tbaa !12
  br label %bb.ada

lean_dec.exit1712:                                ; preds = %bb.acx, %bb.acw, %bb.acv, %bb.act
  tail call void @lean_inc_heartbeat() #5
  %i.amv = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.amw = icmp eq ptr %i.amv, null
  br i1 %i.amw, label %bb.acz, label %lean_alloc_ctor.exit2748

bb.acz:                                           ; preds = %lean_dec.exit1712
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit2748:                         ; preds = %lean_dec.exit1712
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 4
  store i32 1, ptr %i.amv, align 4, !tbaa !14
  store i32 50462744, ptr %i.amx, align 4
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  store ptr %i.aks, ptr %i.amy, align 8, !tbaa !12
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amv, i64 16
  store ptr %i.alu, ptr %i.amz, align 8, !tbaa !12
  br label %bb.ada

bb.ada:                                           ; preds = %lean_alloc_ctor.exit2748, %bb.acy
  %.01555 = phi ptr [ %.01367, %bb.acy ], [ %i.amv, %lean_alloc_ctor.exit2748 ] ; 2 uses
  br i1 %i.alv, label %bb.adb, label %bb.adc

bb.adb:                                           ; preds = %bb.ada
  %i.ana = getelementptr inbounds nuw i8, ptr %.01560, i64 8
  store ptr %.01555, ptr %i.ana, align 8, !tbaa !12
  br label %lean_dec.exit1806.thread3211

bb.adc:                                           ; preds = %bb.ada
  tail call void @lean_inc_heartbeat() #5
  %i.anb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.anc = icmp eq ptr %i.anb, null
  br i1 %i.anc, label %bb.add, label %lean_alloc_ctor.exit2749

bb.add:                                           ; preds = %bb.adc
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit2749:                         ; preds = %bb.adc
  %i.and = getelementptr inbounds nuw i8, ptr %i.anb, i64 4
  store i32 1, ptr %i.anb, align 4, !tbaa !14
  store i32 65552, ptr %i.and, align 4
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  store ptr %.01555, ptr %i.ane, align 8, !tbaa !12
  br label %lean_dec.exit1806.thread3211

bb.ade:                                           ; preds = %lean_dec.exit1716
  %i.anf = load i32, ptr %i.alu, align 4, !tbaa !14 ; 3 uses
  %i.ang = icmp sgt i32 %i.anf, 1
  br i1 %i.ang, label %bb.adf, label %bb.adg, !prof !15

bb.adf:                                           ; preds = %bb.ade
  %i.anh = add nsw i32 %i.anf, -1
  store i32 %i.anh, ptr %i.alu, align 4, !tbaa !14
  br label %lean_dec.exit1708

bb.adg:                                           ; preds = %bb.ade
  %.not.i2012 = icmp eq i32 %i.anf, 0
  br i1 %.not.i2012, label %lean_dec.exit1708, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.alu) #5
  br label %lean_dec.exit1708

lean_dec.exit1708:                                ; preds = %bb.adh, %bb.adg, %bb.adf
  br i1 %.not.i2265, label %bb.adi, label %lean_dec.exit1706

bb.adi:                                           ; preds = %lean_dec.exit1708
  %i.ani = load i32, ptr %i.aks, align 4, !tbaa !14 ; 3 uses
  %i.anj = icmp sgt i32 %i.ani, 1
  br i1 %i.anj, label %bb.adj, label %bb.adk, !prof !15

bb.adj:                                           ; preds = %bb.adi
  %i.ank = add nsw i32 %i.ani, -1
  store i32 %i.ank, ptr %i.aks, align 4, !tbaa !14
  br label %lean_dec.exit1706

bb.adk:                                           ; preds = %bb.adi
  %.not.i2014 = icmp eq i32 %i.ani, 0
  br i1 %.not.i2014, label %lean_dec.exit1706, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aks) #5
  br label %lean_dec.exit1706

lean_dec.exit1706:                                ; preds = %bb.adl, %bb.adk, %bb.adj, %lean_dec.exit1708
  br i1 %i.alv, label %bb.adm, label %bb.adn

bb.adm:                                           ; preds = %lean_dec.exit1706
  %i.anl = getelementptr inbounds nuw i8, ptr %.01560, i64 8
  store ptr %.01367, ptr %i.anl, align 8, !tbaa !12
  br label %lean_dec.exit1806.thread3211

bb.adn:                                           ; preds = %lean_dec.exit1706
  tail call void @lean_inc_heartbeat() #5
  %i.anm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %bb.ado, label %lean_alloc_ctor.exit2750

bb.ado:                                           ; preds = %bb.adn
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit2750:                         ; preds = %bb.adn
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  store i32 1, ptr %i.anm, align 4, !tbaa !14
  store i32 65552, ptr %i.ano, align 4
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  store ptr %.01367, ptr %i.anp, align 8, !tbaa !12
  br label %lean_dec.exit1806.thread3211

bb.adp:                                           ; preds = %lean_obj_tag.exit2744
  br i1 %.not.i2265, label %bb.adq, label %lean_dec.exit1704

bb.adq:                                           ; preds = %bb.adp
  %i.anq = load i32, ptr %i.aks, align 4, !tbaa !14 ; 3 uses
  %i.anr = icmp sgt i32 %i.anq, 1
  br i1 %i.anr, label %bb.adr, label %bb.ads, !prof !15

bb.adr:                                           ; preds = %bb.adq
  %i.ans = add nsw i32 %i.anq, -1
  store i32 %i.ans, ptr %i.aks, align 4, !tbaa !14
  br label %lean_dec.exit1704

bb.ads:                                           ; preds = %bb.adq
  %.not.i2016 = icmp eq i32 %i.anq, 0
  br i1 %.not.i2016, label %lean_dec.exit1704, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aks) #5
  br label %lean_dec.exit1704

lean_dec.exit1704:                                ; preds = %bb.adt, %bb.ads, %bb.adr, %bb.adp
  %.val.i2751 = load i32, ptr %.01367, align 8, !tbaa !14 ; 4 uses
  %i.ant = icmp eq i32 %.val.i2751, 1
  br i1 %i.ant, label %.preheader.i2753.preheader, label %bb.aec

.preheader.i2753.preheader:                       ; preds = %lean_dec.exit1704
  %i.anu = load ptr, ptr %i.aka, align 8, !tbaa !12 ; 4 uses
  %i.anv = ptrtoint ptr %i.anu to i64
  %i.anw = and i64 %i.anv, 1
  %.not.i.i2755 = icmp eq i64 %i.anw, 0
  br i1 %.not.i.i2755, label %bb.adu, label %lean_dec.exit.i2756

bb.adu:                                           ; preds = %.preheader.i2753.preheader
  %i.anx = load i32, ptr %i.anu, align 4, !tbaa !14 ; 3 uses
  %i.any = icmp sgt i32 %i.anx, 1
  br i1 %i.any, label %bb.adv, label %bb.adw, !prof !15

bb.adv:                                           ; preds = %bb.adu
  %i.anz = add nsw i32 %i.anx, -1
  store i32 %i.anz, ptr %i.anu, align 4, !tbaa !14
  br label %lean_dec.exit.i2756

bb.adw:                                           ; preds = %bb.adu
  %.not.i7.i2759 = icmp eq i32 %i.anx, 0
  br i1 %.not.i7.i2759, label %lean_dec.exit.i2756, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anu) #5
  br label %lean_dec.exit.i2756

lean_dec.exit.i2756:                              ; preds = %bb.adx, %bb.adw, %bb.adv, %.preheader.i2753.preheader
  %i.aoa = getelementptr inbounds nuw i8, ptr %.01367, i64 16
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !12 ; 4 uses
  %i.aoc = ptrtoint ptr %i.aob to i64
  %i.aod = and i64 %i.aoc, 1
  %.not.i.i2755.1 = icmp eq i64 %i.aod, 0
  br i1 %.not.i.i2755.1, label %bb.ady, label %lean_dec.exit.i2756.1

bb.ady:                                           ; preds = %lean_dec.exit.i2756
  %i.aoe = load i32, ptr %i.aob, align 4, !tbaa !14 ; 3 uses
  %i.aof = icmp sgt i32 %i.aoe, 1
  br i1 %i.aof, label %bb.aeb, label %bb.adz, !prof !15

bb.adz:                                           ; preds = %bb.ady
  %.not.i7.i2759.1 = icmp eq i32 %i.aoe, 0
  br i1 %.not.i7.i2759.1, label %lean_dec.exit.i2756.1, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aob) #5
  br label %lean_dec.exit.i2756.1

bb.aeb:                                           ; preds = %bb.ady
  %i.aog = add nsw i32 %i.aoe, -1
  store i32 %i.aog, ptr %i.aob, align 4, !tbaa !14
  br label %lean_dec.exit.i2756.1

lean_dec.exit.i2756.1:                            ; preds = %bb.aeb, %bb.aea, %bb.adz, %lean_dec.exit.i2756
  tail call void @lean_free_object(ptr noundef nonnull %.01367) #5
  br label %lean_dec_ref_known.exit2760

bb.aec:                                           ; preds = %lean_dec.exit1704
  %i.aoh = icmp sgt i32 %.val.i2751, 1
  br i1 %i.aoh, label %bb.aed, label %bb.aee, !prof !15

bb.aed:                                           ; preds = %bb.aec
  %i.aoi = add nsw i32 %.val.i2751, -1
  store i32 %i.aoi, ptr %.01367, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2760

bb.aee:                                           ; preds = %bb.aec
  %.not.i8.i2752 = icmp eq i32 %.val.i2751, 0
  br i1 %.not.i8.i2752, label %lean_dec_ref_known.exit2760, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01367) #5
  br label %lean_dec_ref_known.exit2760

lean_dec_ref_known.exit2760:                      ; preds = %lean_dec.exit.i2756.1, %bb.aed, %bb.aee, %bb.aef
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !12 ; 5 uses
  %.val2363 = load i32, ptr %i.all, align 8, !tbaa !14
  %i.aol = icmp eq i32 %.val2363, 1
  br i1 %i.aol, label %lean_dec.exit1806.thread3211, label %bb.aeg

bb.aeg:                                           ; preds = %lean_dec_ref_known.exit2760
  %i.aom = ptrtoint ptr %i.aok to i64
  %i.aon = and i64 %i.aom, 1
  %.not.i2261 = icmp eq i64 %i.aon, 0
  br i1 %.not.i2261, label %bb.aeh, label %lean_inc.exit2262

bb.aeh:                                           ; preds = %bb.aeg
  %.val.i.i2761 = load i32, ptr %i.aok, align 4, !tbaa !14 ; 3 uses
  %i.aoo = icmp sgt i32 %.val.i.i2761, 0
  br i1 %i.aoo, label %bb.aei, label %bb.aej, !prof !15

bb.aei:                                           ; preds = %bb.aeh
  %i.aop = add nuw i32 %.val.i.i2761, 1
  store i32 %i.aop, ptr %i.aok, align 4, !tbaa !14
  br label %lean_inc.exit2262

bb.aej:                                           ; preds = %bb.aeh
  %.not.i.i2762 = icmp eq i32 %.val.i.i2761, 0
  br i1 %.not.i.i2762, label %lean_inc.exit2262, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  %i.aoq = atomicrmw add ptr %i.aok, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2262

lean_inc.exit2262:                                ; preds = %bb.aek, %bb.aej, %bb.aei, %bb.aeg
  br i1 %.not.i2741, label %bb.ael, label %bb.aep

bb.ael:                                           ; preds = %lean_inc.exit2262
  %i.aor = load i32, ptr %i.all, align 8, !tbaa !14 ; 3 uses
  %i.aos = icmp sgt i32 %i.aor, 1
  br i1 %i.aos, label %bb.aem, label %bb.aen, !prof !15

bb.aem:                                           ; preds = %bb.ael
  %i.aot = add nsw i32 %i.aor, -1
  store i32 %i.aot, ptr %i.all, align 8, !tbaa !14
  br label %bb.aep

bb.aen:                                           ; preds = %bb.ael
  %.not.i2018 = icmp eq i32 %i.aor, 0
  br i1 %.not.i2018, label %bb.aep, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.all) #5
  br label %bb.aep

bb.aep:                                           ; preds = %lean_inc.exit2262, %bb.aem, %bb.aen, %bb.aeo
  tail call void @lean_inc_heartbeat() #5
  %i.aou = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.aov = icmp eq ptr %i.aou, null
end_hunk_0
