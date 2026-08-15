inline.NumInlined: 171
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@assoc_array_insert:bb.a
  %.1260.3.i = phi i32 [ %.1260.2.i, %bb.ff ], [ %i.agw, %bb.fg ] ; 2 uses
  %i.agz = load ptr, ptr %i.mc, align 8
  %i.aha = load ptr, ptr %i.bf, align 8
  %i.ahb = ptrtoint ptr %i.aha to i64
  %i.ahc = and i64 %i.ahb, -2
  %i.ahd = inttoptr i64 %i.ahc to ptr
  %i.ahe = tail call i32 %i.agz(ptr noundef %i.ahd, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ahf = icmp slt i32 %i.ahe, %.1260.3.i
  br i1 %i.ahf, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ahg = icmp slt i32 %i.ahe, 0
  br i1 %i.ahg, label %bb.fa, label %bb.fj, !prof !15

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.1260.4.i = phi i32 [ %.1260.3.i, %bb.fh ], [ %i.ahe, %bb.fi ] ; 2 uses
  %i.ahh = load ptr, ptr %i.mc, align 8
  %i.ahi = load ptr, ptr %i.bl, align 8
  %i.ahj = ptrtoint ptr %i.ahi to i64
  %i.ahk = and i64 %i.ahj, -2
  %i.ahl = inttoptr i64 %i.ahk to ptr
  %i.ahm = tail call i32 %i.ahh(ptr noundef %i.ahl, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ahn = icmp slt i32 %i.ahm, %.1260.4.i
  br i1 %i.ahn, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.aho = icmp slt i32 %i.ahm, 0
  br i1 %i.aho, label %bb.fa, label %bb.fl, !prof !15

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.1260.5.i = phi i32 [ %.1260.4.i, %bb.fj ], [ %i.ahm, %bb.fk ] ; 2 uses
  %i.ahp = load ptr, ptr %i.mc, align 8
  %i.ahq = load ptr, ptr %i.br, align 8
  %i.ahr = ptrtoint ptr %i.ahq to i64
  %i.ahs = and i64 %i.ahr, -2
  %i.aht = inttoptr i64 %i.ahs to ptr
  %i.ahu = tail call i32 %i.ahp(ptr noundef %i.aht, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ahv = icmp slt i32 %i.ahu, %.1260.5.i
  br i1 %i.ahv, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ahw = icmp slt i32 %i.ahu, 0
  br i1 %i.ahw, label %bb.fa, label %bb.fn, !prof !15

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.1260.6.i = phi i32 [ %.1260.5.i, %bb.fl ], [ %i.ahu, %bb.fm ] ; 2 uses
  %i.ahx = load ptr, ptr %i.mc, align 8
  %i.ahy = load ptr, ptr %i.bx, align 8
  %i.ahz = ptrtoint ptr %i.ahy to i64
  %i.aia = and i64 %i.ahz, -2
  %i.aib = inttoptr i64 %i.aia to ptr
  %i.aic = tail call i32 %i.ahx(ptr noundef %i.aib, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.aid = icmp slt i32 %i.aic, %.1260.6.i
  br i1 %i.aid, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aie = icmp slt i32 %i.aic, 0
  br i1 %i.aie, label %bb.fa, label %bb.fp, !prof !15

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.1260.7.i = phi i32 [ %.1260.6.i, %bb.fn ], [ %i.aic, %bb.fo ] ; 2 uses
  %i.aif = load ptr, ptr %i.mc, align 8
  %i.aig = load ptr, ptr %i.cd, align 8
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = and i64 %i.aih, -2
  %i.aij = inttoptr i64 %i.aii to ptr
  %i.aik = tail call i32 %i.aif(ptr noundef %i.aij, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ail = icmp slt i32 %i.aik, %.1260.7.i
  br i1 %i.ail, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aim = icmp slt i32 %i.aik, 0
  br i1 %i.aim, label %bb.fa, label %bb.fr, !prof !15

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.1260.8.i = phi i32 [ %.1260.7.i, %bb.fp ], [ %i.aik, %bb.fq ] ; 2 uses
  %i.ain = load ptr, ptr %i.mc, align 8
  %i.aio = load ptr, ptr %i.cj, align 8
  %i.aip = ptrtoint ptr %i.aio to i64
  %i.aiq = and i64 %i.aip, -2
  %i.air = inttoptr i64 %i.aiq to ptr
  %i.ais = tail call i32 %i.ain(ptr noundef %i.air, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ait = icmp slt i32 %i.ais, %.1260.8.i
  br i1 %i.ait, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aiu = icmp slt i32 %i.ais, 0
  br i1 %i.aiu, label %bb.fa, label %bb.ft, !prof !15

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.1260.9.i = phi i32 [ %.1260.8.i, %bb.fr ], [ %i.ais, %bb.fs ] ; 2 uses
  %i.aiv = load ptr, ptr %i.mc, align 8
  %i.aiw = load ptr, ptr %i.cp, align 8
  %i.aix = ptrtoint ptr %i.aiw to i64
  %i.aiy = and i64 %i.aix, -2
  %i.aiz = inttoptr i64 %i.aiy to ptr
  %i.aja = tail call i32 %i.aiv(ptr noundef %i.aiz, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ajb = icmp slt i32 %i.aja, %.1260.9.i
  br i1 %i.ajb, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ajc = icmp slt i32 %i.aja, 0
  br i1 %i.ajc, label %bb.fa, label %bb.fv, !prof !15

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.1260.10.i = phi i32 [ %.1260.9.i, %bb.ft ], [ %i.aja, %bb.fu ] ; 2 uses
  %i.ajd = load ptr, ptr %i.mc, align 8
  %i.aje = load ptr, ptr %i.cv, align 8
  %i.ajf = ptrtoint ptr %i.aje to i64
  %i.ajg = and i64 %i.ajf, -2
  %i.ajh = inttoptr i64 %i.ajg to ptr
  %i.aji = tail call i32 %i.ajd(ptr noundef %i.ajh, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ajj = icmp slt i32 %i.aji, %.1260.10.i
  br i1 %i.ajj, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ajk = icmp slt i32 %i.aji, 0
  br i1 %i.ajk, label %bb.fa, label %bb.fx, !prof !15

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.1260.11.i = phi i32 [ %.1260.10.i, %bb.fv ], [ %i.aji, %bb.fw ] ; 2 uses
  %i.ajl = load ptr, ptr %i.mc, align 8
  %i.ajm = load ptr, ptr %i.db, align 8
  %i.ajn = ptrtoint ptr %i.ajm to i64
  %i.ajo = and i64 %i.ajn, -2
  %i.ajp = inttoptr i64 %i.ajo to ptr
  %i.ajq = tail call i32 %i.ajl(ptr noundef %i.ajp, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ajr = icmp slt i32 %i.ajq, %.1260.11.i
  br i1 %i.ajr, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.ajs = icmp slt i32 %i.ajq, 0
  br i1 %i.ajs, label %bb.fa, label %bb.fz, !prof !15

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.1260.12.i = phi i32 [ %.1260.11.i, %bb.fx ], [ %i.ajq, %bb.fy ] ; 2 uses
  %i.ajt = load ptr, ptr %i.mc, align 8
  %i.aju = load ptr, ptr %i.dh, align 8
  %i.ajv = ptrtoint ptr %i.aju to i64
  %i.ajw = and i64 %i.ajv, -2
  %i.ajx = inttoptr i64 %i.ajw to ptr
  %i.ajy = tail call i32 %i.ajt(ptr noundef %i.ajx, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.ajz = icmp slt i32 %i.ajy, %.1260.12.i
  br i1 %i.ajz, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.aka = icmp slt i32 %i.ajy, 0
  br i1 %i.aka, label %bb.fa, label %bb.gb, !prof !15

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.1260.13.i = phi i32 [ %.1260.12.i, %bb.fz ], [ %i.ajy, %bb.ga ] ; 2 uses
  %i.akb = load ptr, ptr %i.mc, align 8
  %i.akc = load ptr, ptr %i.dn, align 8
  %i.akd = ptrtoint ptr %i.akc to i64
  %i.ake = and i64 %i.akd, -2
  %i.akf = inttoptr i64 %i.ake to ptr
  %i.akg = tail call i32 %i.akb(ptr noundef %i.akf, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.akh = icmp slt i32 %i.akg, %.1260.13.i
  br i1 %i.akh, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aki = icmp slt i32 %i.akg, 0
  br i1 %i.aki, label %bb.fa, label %bb.gd, !prof !15

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.1260.14.i = phi i32 [ %.1260.13.i, %bb.gb ], [ %i.akg, %bb.gc ] ; 3 uses
  %i.akj = load ptr, ptr %i.mc, align 8
  %i.akk = load ptr, ptr %i.dt, align 8
  %i.akl = ptrtoint ptr %i.akk to i64
  %i.akm = and i64 %i.akl, -2
  %i.akn = inttoptr i64 %i.akm to ptr
  %i.ako = tail call i32 %i.akj(ptr noundef %i.akn, ptr noundef %2) #8, !inline_history !39 ; 3 uses
  %i.akp = icmp slt i32 %i.ako, %.1260.14.i
  br i1 %i.akp, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.akq = icmp slt i32 %i.ako, 0
  br i1 %i.akq, label %bb.fa, label %.thread517.i, !prof !15

bb.gf:                                            ; preds = %bb.gd
  %i.akr = icmp eq i32 %.1260.14.i, 2147483647
  br i1 %i.akr, label %bb.gg, label %.thread517.i, !prof !56

bb.gg:                                            ; preds = %bb.gf
  tail call void asm sideeffect "235: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 235b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 235) #9, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 739, i32 0, i64 16) #9, !srcloc !58
  unreachable

.thread517.i:                                     ; preds = %bb.gf, %bb.ge
  %.1260.15519.i = phi i32 [ %.1260.14.i, %bb.gf ], [ %i.ako, %bb.ge ] ; 5 uses
  %i.aks = add i32 %i.x, 4
  %i.akt = icmp slt i32 %.1260.15519.i, %i.aks
  br i1 %i.akt, label %bb.gh, label %_kzalloc_noprof.exit313.i, !prof !15

bb.gh:                                            ; preds = %.thread517.i
  tail call void asm sideeffect "236: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 236b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #9, !srcloc !59
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 740, i32 0, i64 16) #9, !srcloc !60
  unreachable

_kzalloc_noprof.exit313.i:                        ; preds = %.thread517.i
  %i.aku = add nuw i32 %.1260.15519.i, 63
  %i.akv = sext i32 %i.aku to i64
  %i.akw = lshr i64 %i.akv, 6                     ; 4 uses
  %5 = shl nuw nsw i64 %i.akw, 3
  %i.akx = add nuw nsw i64 %5, 24
  %i.aky = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -268435456, 2305843009213693969) %i.akx, i32 noundef 3520) #11 ; 7 uses
  %.not289.i = icmp eq ptr %i.aky, null
  br i1 %.not289.i, label %assoc_array_insert_in_empty_tree.exit, label %bb.gi

bb.gi:                                            ; preds = %_kzalloc_noprof.exit313.i
  %i.akz = ptrtoint ptr %i.aky to i64
  %i.ala = or disjoint i64 %i.akz, 3
  %i.alb = inttoptr i64 %i.ala to ptr             ; 3 uses
  %i.alc = getelementptr i8, ptr %i.d, i64 80
  store ptr %i.alb, ptr %i.alc, align 8
  %i.ald = getelementptr i8, ptr %i.d, i64 264
  store ptr %i.alb, ptr %i.ald, align 8
  %i.ale = load ptr, ptr %i.v, align 8
  store ptr %i.ale, ptr %i.aky, align 8
  %i.alf = getelementptr i8, ptr %i.v, i64 8
  %i.alg = load i8, ptr %i.alf, align 8
  %i.alh = zext i8 %i.alg to i32
  %i.ali = getelementptr i8, ptr %i.aky, i64 8
  store i32 %i.alh, ptr %i.ali, align 8
  %i.alj = getelementptr i8, ptr %i.aky, i64 16   ; 2 uses
  store ptr %i.eh, ptr %i.alj, align 8
  store ptr %i.alb, ptr %i.ee, align 8
  %i.alk = getelementptr i8, ptr %i.ee, i64 8
  store i8 0, ptr %i.alk, align 8
  store ptr %i.eh, ptr %i.ek, align 8
  %i.all = getelementptr i8, ptr %i.ek, i64 8
  store i8 -1, ptr %i.all, align 8
  %i.alm = and i32 %.1260.15519.i, 2147483644     ; 18 uses
  %i.aln = getelementptr i8, ptr %i.aky, i64 12
  store i32 %i.alm, ptr %i.aln, align 4
  %i.alo = icmp samesign ult i32 %.1260.15519.i, 4
  br i1 %i.alo, label %bb.gj, label %.preheader318.i, !prof !15

.preheader318.i:                                  ; preds = %bb.gi
  %.not346.i = icmp eq i64 %i.akw, 0
  br i1 %.not346.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader318.i
  %i.alp = getelementptr i8, ptr %i.aky, i64 24
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  tail call void asm sideeffect "237: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 237b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #9, !srcloc !61
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 761, i32 0, i64 16) #9, !srcloc !62
  unreachable

bb.gk:                                            ; preds = %bb.gk, %.lr.ph.i
  %i.alq = phi i64 [ 0, %.lr.ph.i ], [ %i.alw, %bb.gk ]
  %.8336.i = phi i32 [ 0, %.lr.ph.i ], [ %i.alv, %bb.gk ] ; 2 uses
  %i.alr = load ptr, ptr %1, align 8
  %i.als = shl i32 %.8336.i, 6
  %i.alt = tail call i64 %i.alr(ptr noundef %2, i32 noundef %i.als) #8, !inline_history !39
  %i.alu = getelementptr [8 x i8], ptr %i.alp, i64 %i.alq
  store i64 %i.alt, ptr %i.alu, align 8
  %i.alv = add i32 %.8336.i, 1                    ; 2 uses
  %i.alw = sext i32 %i.alv to i64                 ; 2 uses
  %i.alx = icmp ugt i64 %i.akw, %i.alw
  br i1 %i.alx, label %bb.gk, label %._crit_edge.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %bb.gk, %.preheader318.i
  %i.aly = and i32 %.1260.15519.i, 60             ; 2 uses
  %.not290.i = icmp eq i32 %i.aly, 0
  br i1 %.not290.i, label %._crit_edge._crit_edge.i, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge.i
  %i.alz = zext nneg i32 %i.aly to i64            ; 2 uses
  %i.ama = shl nsw i64 -1, %i.alz
  %i.amb = xor i64 %i.ama, -1
  %i.amc = getelementptr [8 x i8], ptr %i.alj, i64 %i.akw ; 2 uses
  %i.amd = load i64, ptr %i.amc, align 8
  %i.ame = and i64 %i.amd, %i.amb
  store i64 %i.ame, ptr %i.amc, align 8
  br label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %bb.gl, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.alz, %bb.gl ], [ 0, %._crit_edge.i ] ; 17 uses
  %i.amf = load ptr, ptr %i.ad, align 8
  %i.amg = load ptr, ptr %i.ep, align 8
  %i.amh = ptrtoint ptr %i.amf to i64
  %i.ami = and i64 %i.amh, -2
  %i.amj = inttoptr i64 %i.ami to ptr
  %i.amk = tail call i64 %i.amg(ptr noundef %i.amj, i32 noundef %i.alm) #8, !inline_history !39
  %i.aml = lshr i64 %i.amk, %.pre-phi.i
  %i.amm = trunc i64 %i.aml to i8
  %i.amn = and i8 %i.amm, 15
  store i8 %i.amn, ptr %i.ab, align 8
  %i.amo = load ptr, ptr %i.an, align 8
  %i.amp = load ptr, ptr %i.ep, align 8
  %i.amq = ptrtoint ptr %i.amo to i64
  %i.amr = and i64 %i.amq, -2
  %i.ams = inttoptr i64 %i.amr to ptr
  %i.amt = tail call i64 %i.amp(ptr noundef %i.ams, i32 noundef %i.alm) #8, !inline_history !39
  %i.amu = lshr i64 %i.amt, %.pre-phi.i
  %i.amv = trunc i64 %i.amu to i8
  %i.amw = and i8 %i.amv, 15
  store i8 %i.amw, ptr %i.fi, align 1
  %i.amx = load ptr, ptr %i.at, align 8
  %i.amy = load ptr, ptr %i.ep, align 8
  %i.amz = ptrtoint ptr %i.amx to i64
  %i.ana = and i64 %i.amz, -2
  %i.anb = inttoptr i64 %i.ana to ptr
  %i.anc = tail call i64 %i.amy(ptr noundef %i.anb, i32 noundef %i.alm) #8, !inline_history !39
  %i.and = lshr i64 %i.anc, %.pre-phi.i
  %i.ane = trunc i64 %i.and to i8
  %i.anf = and i8 %i.ane, 15
  store i8 %i.anf, ptr %i.fr, align 2
  %i.ang = load ptr, ptr %i.az, align 8
  %i.anh = load ptr, ptr %i.ep, align 8
  %i.ani = ptrtoint ptr %i.ang to i64
  %i.anj = and i64 %i.ani, -2
  %i.ank = inttoptr i64 %i.anj to ptr
  %i.anl = tail call i64 %i.anh(ptr noundef %i.ank, i32 noundef %i.alm) #8, !inline_history !39
  %i.anm = lshr i64 %i.anl, %.pre-phi.i
  %i.ann = trunc i64 %i.anm to i8
  %i.ano = and i8 %i.ann, 15
  store i8 %i.ano, ptr %i.ga, align 1
  %i.anp = load ptr, ptr %i.bf, align 8
  %i.anq = load ptr, ptr %i.ep, align 8
  %i.anr = ptrtoint ptr %i.anp to i64
  %i.ans = and i64 %i.anr, -2
  %i.ant = inttoptr i64 %i.ans to ptr
  %i.anu = tail call i64 %i.anq(ptr noundef %i.ant, i32 noundef %i.alm) #8, !inline_history !39
  %i.anv = lshr i64 %i.anu, %.pre-phi.i
  %i.anw = trunc i64 %i.anv to i8
  %i.anx = and i8 %i.anw, 15
  store i8 %i.anx, ptr %i.gj, align 4
  %i.any = load ptr, ptr %i.bl, align 8
  %i.anz = load ptr, ptr %i.ep, align 8
  %i.aoa = ptrtoint ptr %i.any to i64
  %i.aob = and i64 %i.aoa, -2
  %i.aoc = inttoptr i64 %i.aob to ptr
  %i.aod = tail call i64 %i.anz(ptr noundef %i.aoc, i32 noundef %i.alm) #8, !inline_history !39
  %i.aoe = lshr i64 %i.aod, %.pre-phi.i
  %i.aof = trunc i64 %i.aoe to i8
  %i.aog = and i8 %i.aof, 15
  store i8 %i.aog, ptr %i.gs, align 1
  %i.aoh = load ptr, ptr %i.br, align 8
  %i.aoi = load ptr, ptr %i.ep, align 8
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = and i64 %i.aoj, -2
  %i.aol = inttoptr i64 %i.aok to ptr
  %i.aom = tail call i64 %i.aoi(ptr noundef %i.aol, i32 noundef %i.alm) #8, !inline_history !39
  %i.aon = lshr i64 %i.aom, %.pre-phi.i
  %i.aoo = trunc i64 %i.aon to i8
  %i.aop = and i8 %i.aoo, 15
  store i8 %i.aop, ptr %i.hb, align 2
  %i.aoq = load ptr, ptr %i.bx, align 8
  %i.aor = load ptr, ptr %i.ep, align 8
  %i.aos = ptrtoint ptr %i.aoq to i64
  %i.aot = and i64 %i.aos, -2
  %i.aou = inttoptr i64 %i.aot to ptr
  %i.aov = tail call i64 %i.aor(ptr noundef %i.aou, i32 noundef %i.alm) #8, !inline_history !39
  %i.aow = lshr i64 %i.aov, %.pre-phi.i
  %i.aox = trunc i64 %i.aow to i8
  %i.aoy = and i8 %i.aox, 15
  store i8 %i.aoy, ptr %i.hk, align 1
  %i.aoz = load ptr, ptr %i.cd, align 8
  %i.apa = load ptr, ptr %i.ep, align 8
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = and i64 %i.apb, -2
  %i.apd = inttoptr i64 %i.apc to ptr
  %i.ape = tail call i64 %i.apa(ptr noundef %i.apd, i32 noundef %i.alm) #8, !inline_history !39
  %i.apf = lshr i64 %i.ape, %.pre-phi.i
  %i.apg = trunc i64 %i.apf to i8
  %i.aph = and i8 %i.apg, 15
  store i8 %i.aph, ptr %i.ht, align 8
  %i.api = load ptr, ptr %i.cj, align 8
  %i.apj = load ptr, ptr %i.ep, align 8
  %i.apk = ptrtoint ptr %i.api to i64
  %i.apl = and i64 %i.apk, -2
  %i.apm = inttoptr i64 %i.apl to ptr
  %i.apn = tail call i64 %i.apj(ptr noundef %i.apm, i32 noundef %i.alm) #8, !inline_history !39
  %i.apo = lshr i64 %i.apn, %.pre-phi.i
  %i.app = trunc i64 %i.apo to i8
  %i.apq = and i8 %i.app, 15
  store i8 %i.apq, ptr %i.ic, align 1
  %i.apr = load ptr, ptr %i.cp, align 8
  %i.aps = load ptr, ptr %i.ep, align 8
  %i.apt = ptrtoint ptr %i.apr to i64
  %i.apu = and i64 %i.apt, -2
  %i.apv = inttoptr i64 %i.apu to ptr
  %i.apw = tail call i64 %i.aps(ptr noundef %i.apv, i32 noundef %i.alm) #8, !inline_history !39
  %i.apx = lshr i64 %i.apw, %.pre-phi.i
  %i.apy = trunc i64 %i.apx to i8
  %i.apz = and i8 %i.apy, 15
  store i8 %i.apz, ptr %i.il, align 2
  %i.aqa = load ptr, ptr %i.cv, align 8
  %i.aqb = load ptr, ptr %i.ep, align 8
  %i.aqc = ptrtoint ptr %i.aqa to i64
  %i.aqd = and i64 %i.aqc, -2
  %i.aqe = inttoptr i64 %i.aqd to ptr
  %i.aqf = tail call i64 %i.aqb(ptr noundef %i.aqe, i32 noundef %i.alm) #8, !inline_history !39
  %i.aqg = lshr i64 %i.aqf, %.pre-phi.i
  %i.aqh = trunc i64 %i.aqg to i8
  %i.aqi = and i8 %i.aqh, 15
  store i8 %i.aqi, ptr %i.iu, align 1
  %i.aqj = load ptr, ptr %i.db, align 8
  %i.aqk = load ptr, ptr %i.ep, align 8
  %i.aql = ptrtoint ptr %i.aqj to i64
  %i.aqm = and i64 %i.aql, -2
  %i.aqn = inttoptr i64 %i.aqm to ptr
  %i.aqo = tail call i64 %i.aqk(ptr noundef %i.aqn, i32 noundef %i.alm) #8, !inline_history !39
  %i.aqp = lshr i64 %i.aqo, %.pre-phi.i
  %i.aqq = trunc i64 %i.aqp to i8
  %i.aqr = and i8 %i.aqq, 15
  store i8 %i.aqr, ptr %i.jd, align 4
  %i.aqs = load ptr, ptr %i.dh, align 8
  %i.aqt = load ptr, ptr %i.ep, align 8
  %i.aqu = ptrtoint ptr %i.aqs to i64
  %i.aqv = and i64 %i.aqu, -2
  %i.aqw = inttoptr i64 %i.aqv to ptr
  %i.aqx = tail call i64 %i.aqt(ptr noundef %i.aqw, i32 noundef %i.alm) #8, !inline_history !39
  %i.aqy = lshr i64 %i.aqx, %.pre-phi.i
  %i.aqz = trunc i64 %i.aqy to i8
  %i.ara = and i8 %i.aqz, 15
  store i8 %i.ara, ptr %i.jm, align 1
  %i.arb = load ptr, ptr %i.dn, align 8
  %i.arc = load ptr, ptr %i.ep, align 8
  %i.ard = ptrtoint ptr %i.arb to i64
  %i.are = and i64 %i.ard, -2
  %i.arf = inttoptr i64 %i.are to ptr
  %i.arg = tail call i64 %i.arc(ptr noundef %i.arf, i32 noundef %i.alm) #8, !inline_history !39
  %i.arh = lshr i64 %i.arg, %.pre-phi.i
  %i.ari = trunc i64 %i.arh to i8
  %i.arj = and i8 %i.ari, 15
  store i8 %i.arj, ptr %i.jv, align 2
  %i.ark = load ptr, ptr %i.dt, align 8
  %i.arl = load ptr, ptr %i.ep, align 8
  %i.arm = ptrtoint ptr %i.ark to i64
  %i.arn = and i64 %i.arm, -2
  %i.aro = inttoptr i64 %i.arn to ptr
  %i.arp = tail call i64 %i.arl(ptr noundef %i.aro, i32 noundef %i.alm) #8, !inline_history !39
  %i.arq = lshr i64 %i.arp, %.pre-phi.i
  %i.arr = trunc i64 %i.arq to i8
  %i.ars = and i8 %i.arr, 15
  store i8 %i.ars, ptr %i.kf, align 1
  %i.art = load ptr, ptr %1, align 8
  %i.aru = tail call i64 %i.art(ptr noundef %2, i32 noundef %i.alm) #8, !inline_history !39
  %i.arv = lshr i64 %i.aru, %.pre-phi.i
  %i.arw = trunc i64 %i.arv to i8
  %i.arx = and i8 %i.arw, 15
  store i8 %i.arx, ptr %i.ac, align 8
  br label %bb.cl

assoc_array_insert_into_terminal_node.exit:       ; preds = %bb.h, %.thread.i, %bb.ez
  %.sink562.i = phi i64 [ 88, %bb.ez ], [ 240, %.thread.i ], [ 56, %bb.h ]
  %.sink560.i = phi ptr [ %i.aga, %bb.ez ], [ %i.v, %.thread.i ], [ %i.am, %bb.h ]
  %i.ary = getelementptr i8, ptr %i.d, i64 %.sink562.i
  store ptr %.sink560.i, ptr %i.ary, align 8
  br label %bb.hc

bb.gm:                                            ; preds = %bb.c
  %i.arz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.asa = load ptr, ptr %i.arz, align 8          ; 11 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.asc = load i32, ptr %i.asb, align 8
  %i.asd = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ase = load i32, ptr %i.asd, align 4
  %i.asf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.asg = load i64, ptr %i.asf, align 8
  %i.ash = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.asi = load i64, ptr %i.ash, align 8
  %i.asj = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.asi) #12, !srcloc !64 ; 3 uses
  %i.ask = trunc i64 %i.asj to i32
  %i.asl = and i32 %i.ask, -4
  %i.asm = and i32 %i.ase, -64
  %i.asn = add i32 %i.asl, %i.asm                 ; 4 uses
  %i.aso = load ptr, ptr %i.asa, align 8          ; 2 uses
  %.not.i31 = icmp eq ptr %i.aso, null
  br i1 %.not.i31, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.asp = load ptr, ptr %i.e, align 8
  br label %_kzalloc_noprof.exit.i32

bb.go:                                            ; preds = %bb.gm
  %i.asq = ptrtoint ptr %i.aso to i64             ; 2 uses
  %i.asr = and i64 %i.asq, 2
  %.not.i.i = icmp eq i64 %i.asr, 0
  br i1 %.not.i.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ass = and i64 %i.asq, -4
  %i.ast = inttoptr i64 %i.ass to ptr
  %i.asu = getelementptr i8, ptr %i.ast, i64 16
  %i.asv = getelementptr i8, ptr %i.asa, i64 8
  %i.asw = load i32, ptr %i.asv, align 8
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr [8 x i8], ptr %i.asu, i64 %i.asx
  br label %_kzalloc_noprof.exit.i32

bb.gq:                                            ; preds = %bb.go
  tail call void asm sideeffect "238: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 238b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #9, !srcloc !65
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 830, i32 0, i64 16) #9, !srcloc !66
  unreachable

_kzalloc_noprof.exit.i32:                         ; preds = %bb.gp, %bb.gn
  %.sink.i33 = phi ptr [ %i.asy, %bb.gp ], [ %i.asp, %bb.gn ]
  %i.asz = getelementptr i8, ptr %i.d, i64 256
  store ptr %.sink.i33, ptr %i.asz, align 8
  %i.ata = ptrtoint ptr %i.asa to i64
  %i.atb = or i64 %i.ata, 3
  %i.atc = inttoptr i64 %i.atb to ptr
  %i.atd = getelementptr i8, ptr %i.d, i64 88
  store ptr %i.atc, ptr %i.atd, align 8
  %i.ate = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.atf = tail call noalias align 8 dereferenceable_or_null(152) ptr @__kmalloc_cache_noprof(ptr noundef %i.ate, i32 noundef 3520, i64 noundef range(i64 -268435456, 2305843009213693969) 152) #10 ; 11 uses
  %.not142.i = icmp eq ptr %i.atf, null
  br i1 %.not142.i, label %assoc_array_insert_in_empty_tree.exit, label %bb.gr

bb.gr:                                            ; preds = %_kzalloc_noprof.exit.i32
  %i.atg = ptrtoint ptr %i.atf to i64
  %i.ath = or disjoint i64 %i.atg, 1
  %i.ati = inttoptr i64 %i.ath to ptr             ; 5 uses
  %i.atj = getelementptr i8, ptr %i.d, i64 64
  store ptr %i.ati, ptr %i.atj, align 8
  %i.atk = getelementptr i8, ptr %i.d, i64 240
  store ptr %i.atf, ptr %i.atk, align 8
  %i.atl = add i32 %i.asc, 4
  %i.atm = icmp sgt i32 %i.asn, %i.atl
  br i1 %i.atm, label %_kzalloc_noprof.exit156.i, label %bb.gt

_kzalloc_noprof.exit156.i:                        ; preds = %bb.gr
  %i.atn = add i32 %i.asn, -4
  %i.ato = or i32 %i.atn, 63
  %i.atp = add i32 %i.ato, 1
  %i.atq = sext i32 %i.atp to i64
  %i.atr = lshr exact i64 %i.atq, 3               ; 3 uses
  %i.ats = add nuw nsw i64 %i.atr, 24
  %i.att = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -268435456, 2305843009213693969) %i.ats, i32 noundef 3520) #11 ; 7 uses
  %.not143.i = icmp eq ptr %i.att, null
  br i1 %.not143.i, label %assoc_array_insert_in_empty_tree.exit, label %bb.gs

bb.gs:                                            ; preds = %_kzalloc_noprof.exit156.i
  %i.atu = ptrtoint ptr %i.att to i64
  %i.atv = or disjoint i64 %i.atu, 3
  %i.atw = inttoptr i64 %i.atv to ptr             ; 3 uses
  %i.atx = getelementptr i8, ptr %i.d, i64 72
  store ptr %i.atw, ptr %i.atx, align 8
  %i.aty = getelementptr i8, ptr %i.d, i64 264
  store ptr %i.atw, ptr %i.aty, align 8
  %i.atz = load ptr, ptr %i.asa, align 8
  store ptr %i.atz, ptr %i.att, align 8
  %i.aua = getelementptr i8, ptr %i.asa, i64 8
  %i.aub = load i32, ptr %i.aua, align 8
  %i.auc = getelementptr i8, ptr %i.att, i64 8
  store i32 %i.aub, ptr %i.auc, align 8
  %i.aud = getelementptr i8, ptr %i.att, i64 16
  store ptr %i.ati, ptr %i.aud, align 8
  %i.aue = getelementptr i8, ptr %i.att, i64 12
  store i32 %i.asn, ptr %i.aue, align 4
  store ptr %i.atw, ptr %i.atf, align 8
  %i.auf = getelementptr i8, ptr %i.atf, i64 8
  store i8 0, ptr %i.auf, align 8
  %i.aug = getelementptr i8, ptr %i.att, i64 24   ; 2 uses
  %i.auh = getelementptr i8, ptr %i.asa, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aug, ptr align 8 %i.auh, i64 %i.atr, i1 false)
  %i.aui = and i64 %i.asj, 60                     ; 2 uses
  %i.auj = shl nsw i64 -1, %i.aui
  %i.auk = xor i64 %i.auj, -1
  %i.aul = getelementptr i8, ptr %i.aug, i64 %i.atr
  %i.aum = getelementptr i8, ptr %i.aul, i64 -8   ; 2 uses
  %i.aun = load i64, ptr %i.aum, align 8
  %i.auo = and i64 %i.aun, %i.auk
  store i64 %i.auo, ptr %i.aum, align 8
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.aup = getelementptr i8, ptr %i.d, i64 264
  store ptr %i.ati, ptr %i.aup, align 8
  %i.auq = load ptr, ptr %i.asa, align 8
  store ptr %i.auq, ptr %i.atf, align 8
  %i.aur = getelementptr i8, ptr %i.asa, i64 8
  %i.aus = load i32, ptr %i.aur, align 8
  %i.aut = trunc i32 %i.aus to i8
  %i.auu = getelementptr i8, ptr %i.atf, i64 8
  store i8 %i.aut, ptr %i.auu, align 8
  %.pre.i34 = and i64 %i.asj, 60
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.pre-phi.i35 = phi i64 [ %.pre.i34, %bb.gt ], [ %i.aui, %bb.gs ]
  %i.auv = getelementptr i8, ptr %i.asa, i64 16   ; 2 uses
  %i.auw = load ptr, ptr %i.auv, align 8          ; 2 uses
  %i.aux = ptrtoint ptr %i.auw to i64
  %i.auy = and i64 %i.aux, -4
  %i.auz = inttoptr i64 %i.auy to ptr             ; 3 uses
  %i.ava = getelementptr i8, ptr %i.auz, i64 144
  %i.avb = load i64, ptr %i.ava, align 8
  %i.avc = getelementptr i8, ptr %i.atf, i64 144
  store i64 %i.avb, ptr %i.avc, align 8
  %i.avd = lshr i64 %i.asg, %.pre-phi.i35         ; 3 uses
  %i.ave = trunc i64 %i.avd to i32
  %i.avf = and i32 %i.ave, 15                     ; 3 uses
  %i.avg = add i32 %i.asn, 4
  %i.avh = getelementptr i8, ptr %i.asa, i64 12   ; 2 uses
  %i.avi = load i32, ptr %i.avh, align 4          ; 2 uses
  %i.avj = icmp slt i32 %i.avg, %i.avi
  br i1 %i.avj, label %_kzalloc_noprof.exit163.i, label %bb.gw

_kzalloc_noprof.exit163.i:                        ; preds = %bb.gu
  %i.avk = add i32 %i.avi, 63
  %6 = sext i32 %i.avk to i64
  %7 = lshr i64 %6, 3
  %8 = and i64 %7, 2305843009213693944            ; 2 uses
  %i.avl = add nuw nsw i64 %8, 24
  %i.avm = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -268435456, 2305843009213693969) %i.avl, i32 noundef 3520) #11 ; 7 uses
  %.not144.i = icmp eq ptr %i.avm, null
  br i1 %.not144.i, label %assoc_array_insert_in_empty_tree.exit, label %bb.gv

bb.gv:                                            ; preds = %_kzalloc_noprof.exit163.i
  %i.avn = ptrtoint ptr %i.avm to i64
  %i.avo = or disjoint i64 %i.avn, 3
  %i.avp = inttoptr i64 %i.avo to ptr             ; 3 uses
  %i.avq = getelementptr i8, ptr %i.d, i64 80
  store ptr %i.avp, ptr %i.avq, align 8
  store ptr %i.ati, ptr %i.avm, align 8
  %i.avr = getelementptr i8, ptr %i.avm, i64 8
  store i32 %i.avf, ptr %i.avr, align 8
  %i.avs = load ptr, ptr %i.auv, align 8
  %i.avt = getelementptr i8, ptr %i.avm, i64 16
  store ptr %i.avs, ptr %i.avt, align 8
  %i.avu = load i32, ptr %i.avh, align 4
  %i.avv = getelementptr i8, ptr %i.avm, i64 12
  store i32 %i.avu, ptr %i.avv, align 4
  %i.avw = getelementptr i8, ptr %i.atf, i64 16
  %i.avx = and i64 %i.avd, 15
  %i.avy = getelementptr [8 x i8], ptr %i.avw, i64 %i.avx
  store ptr %i.avp, ptr %i.avy, align 8
  %i.avz = getelementptr i8, ptr %i.avm, i64 24
  %i.awa = getelementptr i8, ptr %i.asa, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.avz, ptr align 8 %i.awa, i64 %8, i1 false)
  br label %assoc_array_insert_mid_shortcut.exit

bb.gw:                                            ; preds = %bb.gu
  %i.awb = getelementptr i8, ptr %i.atf, i64 16
  %i.awc = and i64 %i.avd, 15
  %i.awd = getelementptr [8 x i8], ptr %i.awb, i64 %i.awc
  store ptr %i.auw, ptr %i.awd, align 8
  %i.awe = getelementptr i8, ptr %i.auz, i64 8
  %i.awf = getelementptr i8, ptr %i.d, i64 288
  store ptr %i.awe, ptr %i.awf, align 8
  %i.awg = trunc nuw nsw i32 %i.avf to i8
  %i.awh = getelementptr i8, ptr %i.d, i64 296
  store i8 %i.awg, ptr %i.awh, align 8
  br label %assoc_array_insert_mid_shortcut.exit

assoc_array_insert_mid_shortcut.exit:             ; preds = %bb.gv, %bb.gw
  %.sink8.i = phi ptr [ %i.ati, %bb.gw ], [ %i.avp, %bb.gv ]
  %i.awi = getelementptr i8, ptr %i.d, i64 272
  store ptr %i.auz, ptr %i.awi, align 8
  %i.awj = getelementptr i8, ptr %i.d, i64 280
  store ptr %.sink8.i, ptr %i.awj, align 8
  %i.awk = icmp eq i32 %i.avf, 0
  %..i37 = select i1 %i.awk, i64 24, i64 16
  %i.awl = getelementptr i8, ptr %i.atf, i64 %..i37
  %i.awm = getelementptr i8, ptr %i.d, i64 48
  store ptr %i.awl, ptr %i.awm, align 8
  br label %bb.hc

default.unreachable111:                           ; preds = %bb.c
  unreachable

assoc_array_insert_in_empty_tree.exit:            ; preds = %_kzalloc_noprof.exit.i32, %_kzalloc_noprof.exit156.i, %_kzalloc_noprof.exit163.i, %_kzalloc_noprof.exit313.i, %_kzalloc_noprof.exit.i, %_kzalloc_noprof.exit306.i, %bb.d
  %i.awn = getelementptr i8, ptr %i.d, i64 64
  %i.awo = load ptr, ptr %i.awn, align 8          ; 2 uses
  %.not.i39 = icmp eq ptr %i.awo, null
  br i1 %.not.i39, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %assoc_array_insert_in_empty_tree.exit
  %i.awp = ptrtoint ptr %i.awo to i64
  %i.awq = and i64 %i.awp, -4
  %i.awr = inttoptr i64 %i.awq to ptr
  tail call void @kfree(ptr noundef %i.awr) #8
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %assoc_array_insert_in_empty_tree.exit
  %i.aws = getelementptr i8, ptr %i.d, i64 72
  %i.awt = load ptr, ptr %i.aws, align 8          ; 2 uses
  %.not.1.i = icmp eq ptr %i.awt, null
  br i1 %.not.1.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.awu = ptrtoint ptr %i.awt to i64
  %i.awv = and i64 %i.awu, -4
  %i.aww = inttoptr i64 %i.awv to ptr
  tail call void @kfree(ptr noundef %i.aww) #8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.awx = getelementptr i8, ptr %i.d, i64 80
  %i.awy = load ptr, ptr %i.awx, align 8          ; 2 uses
  %.not.2.i = icmp eq ptr %i.awy, null
  br i1 %.not.2.i, label %assoc_array_cancel_edit.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awz = ptrtoint ptr %i.awy to i64
  %i.axa = and i64 %i.awz, -4
  %i.axb = inttoptr i64 %i.axa to ptr
  tail call void @kfree(ptr noundef %i.axb) #8
  br label %assoc_array_cancel_edit.exit

assoc_array_cancel_edit.exit:                     ; preds = %bb.ha, %bb.hb
  tail call void @kfree(ptr noundef nonnull %i.d) #8
  br label %bb.hc

bb.hc:                                            ; preds = %assoc_array_insert_mid_shortcut.exit, %assoc_array_insert_into_terminal_node.exit, %assoc_array_insert_in_empty_tree.exit.thread, %_kzalloc_noprof.exit, %assoc_array_cancel_edit.exit
  %.0 = phi ptr [ inttoptr (i64 -12 to ptr), %assoc_array_cancel_edit.exit ], [ %i.d, %assoc_array_insert_mid_shortcut.exit ], [ %i.d, %assoc_array_insert_in_empty_tree.exit.thread ], [ %i.d, %assoc_array_insert_into_terminal_node.exit ], [ inttoptr (i64 -12 to ptr), %_kzalloc_noprof.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @assoc_array_cancel_edit(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @kfree(ptr noundef %i.e) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.1 = icmp eq ptr %i.g, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr
  tail call void @kfree(ptr noundef %i.j) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.2 = icmp eq ptr %i.l, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -4
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @kfree(ptr noundef %i.o) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @assoc_array_insert_set_object(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "240: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 240b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #9, !srcloc !67
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1031, i32 0, i64 16) #9, !srcloc !68
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @assoc_array_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %3 = alloca %struct.assoc_array_delete_collapse_context, align 8 ; 7 uses
  %4 = alloca %struct.assoc_array_walk_result, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(328) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -268435456, 2305843009213693969) 328) #10 ; 24 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false), !annotation !13
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 248
  store i64 -1, ptr %i.e, align 8
  %i.f = call fastcc i32 @assoc_array_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #7, !srcloc !69
  %cond = icmp eq i32 %i.f, 1
  br i1 %cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8                ; 35 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16         ; 16 uses
  %i.j = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not117 = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i1
  %or.cond138 = or i1 %.not117, %i.l
  br i1 %or.cond138, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = tail call zeroext i1 %i.m(ptr noundef nonnull %i.j, ptr noundef %2) #8
  br i1 %i.n, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not117.1 = icmp eq ptr %i.p, null
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i1
  %or.cond138.1 = or i1 %.not117.1, %i.r
  br i1 %or.cond138.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = tail call zeroext i1 %i.s(ptr noundef nonnull %i.p, ptr noundef %2) #8
  br i1 %i.t, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr i8, ptr %i.g, i64 32
end_hunk_0
begin_hunk_1_@assoc_array_apply_edit:bb.a
  store ptr %i.bn, ptr %i.bl, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bo = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bs, align 8
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.bt = getelementptr i8, ptr %0, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not54 = icmp eq ptr %i.bu, null
  br i1 %.not54, label %bb.at, label %.preheader

.preheader:                                       ; preds = %bb.ao
  %i.bv = getelementptr i8, ptr %0, i64 248       ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.bu, i64 144    ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not5566 = icmp eq ptr %i.ca, null
  br i1 %.not5566, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.as
  %i.cb = phi ptr [ %i.co, %bb.as ], [ %i.ca, %.preheader ]
  %i.cc = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.cd = and i64 %i.cc, 2
  %.not60 = icmp eq i64 %i.cd, 0
  br i1 %.not60, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %i.ce = and i64 %i.cc, -4
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.cg, null
  br i1 %.not56, label %._crit_edge, label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.ap
  %.pre = ptrtoint ptr %i.cg to i64
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge70, %.lr.ph
  %.pre-phi = phi i64 [ %.pre, %._crit_edge70 ], [ %i.cc, %.lr.ph ] ; 2 uses
  %i.ch = and i64 %.pre-phi, 2
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %bb.as, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  tail call void asm sideeffect "246: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 246b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 246) #9, !srcloc !83
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1388, i32 0, i64 16) #9, !srcloc !84
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ci = and i64 %.pre-phi, -4
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = load i64, ptr %i.bv, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 144    ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = add i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.co, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.as, %bb.ap, %.preheader
  %i.cp = load i64, ptr %i.bv, align 8
  %i.cq = load ptr, ptr %i.bo, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 8      ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, %i.cp
  store i64 %i.ct, ptr %i.cr, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %._crit_edge, %bb.an
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @assoc_array_rcu_cleanup) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @assoc_array_rcu_cleanup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = and i64 %i.g, -2
  %i.i = inttoptr i64 %i.h to ptr
  tail call void %i.f(ptr noundef %i.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split28.us, label %.split

.split:                                           ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.m, -4
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @kfree(ptr noundef %i.o) #8
  br label %.split28.us

.split28.us:                                      ; preds = %.split, %bb.c
  %i.p = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.q, null
  br i1 %.not25, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.split28.us
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "245: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 245b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 245) #9, !srcloc !85
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1314, i32 0, i64 16) #9, !srcloc !86
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = and i64 %i.r, -4
  %i.u = inttoptr i64 %i.t to ptr
  store ptr null, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %i.v, ptr noundef %i.x) #7, !srcloc !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split28.us
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @assoc_array_gc(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ga, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.d = tail call noalias align 8 dereferenceable_or_null(328) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef range(i64 -268435456, 2305843009213693969) 328) #10 ; 9 uses
  %.not253 = icmp eq ptr %i.d, null
  br i1 %.not253, label %bb.ga, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.e = getelementptr i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.d, i64 256
  store ptr %0, ptr %i.h, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 96
  store ptr %i.i, ptr %i.j, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.0209 = phi ptr [ %i.a, %bb.b ], [ %i.bv, %bb.k ] ; 2 uses
  %.0203 = phi ptr [ null, %bb.b ], [ %.2205, %bb.k ] ; 2 uses
  %.0198 = phi ptr [ %i.i, %bb.b ], [ %i.bq, %bb.k ] ; 2 uses
  %i.k = ptrtoint ptr %.0198 to i64               ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not295 = icmp eq i64 %i.l, 0
  br i1 %.not295, label %_kzalloc_noprof.exit284, label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.c
  %i.m = and i64 %i.k, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, 63
  %i.r = ashr i32 %i.q, 6                         ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i32 %i.r, 0
  %i.u = shl nsw i64 %i.s, 3
  %i.v = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -268435456, 2305843009213693945) %i.u, i64 24) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = select i1 %i.t, i1 true, i1 %i.w
  %i.y = extractvalue { i64, i1 } %i.v, 0
  %.0.i275 = select i1 %i.x, i64 -1, i64 %i.y     ; 2 uses
  %i.z = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -268435456, 2305843009213693969) %.0.i275, i32 noundef 3264) #11 ; 6 uses
  %.not254 = icmp eq ptr %i.z, null
  br i1 %.not254, label %bb.fz, label %bb.d

bb.d:                                             ; preds = %_kmalloc_noprof.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.n, i64 %.0.i275, i1 false)
  store ptr %.0203, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.n, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = or disjoint i64 %i.ad, 3
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  store ptr %i.af, ptr %.0209, align 8
  %i.ag = getelementptr i8, ptr %i.z, i64 16
  %i.ah = getelementptr i8, ptr %i.n, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %_kzalloc_noprof.exit284

_kzalloc_noprof.exit284:                          ; preds = %bb.d, %bb.c
  %.1210 = phi ptr [ %i.ag, %bb.d ], [ %.0209, %bb.c ]
  %.1204 = phi ptr [ %i.af, %bb.d ], [ %.0203, %bb.c ]
  %.1199 = phi ptr [ %i.ai, %bb.d ], [ %.0198, %bb.c ]
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.ak = tail call noalias align 8 dereferenceable_or_null(152) ptr @__kmalloc_cache_noprof(ptr noundef %i.aj, i32 noundef 3520, i64 noundef range(i64 -268435456, 2305843009213693969) 152) #10 ; 5 uses
  %.not255 = icmp eq ptr %i.ak, null
  br i1 %.not255, label %bb.fz, label %bb.e

bb.e:                                             ; preds = %_kzalloc_noprof.exit284
  %i.al = ptrtoint ptr %.1199 to i64
  %i.am = and i64 %i.al, -4
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  store ptr %.1204, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  store i8 %i.ap, ptr %i.aq, align 8
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  store ptr %i.at, ptr %.1210, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread288, %bb.e
  %.0215 = phi i32 [ 0, %bb.e ], [ %i.qs, %.thread288 ] ; 2 uses
  %.2205 = phi ptr [ %i.at, %bb.e ], [ %.5208, %.thread288 ]
  %.0197 = phi ptr [ %i.ak, %bb.e ], [ %.1, %.thread288 ] ; 41 uses
  %.0196 = phi ptr [ %i.an, %bb.e ], [ %i.qr, %.thread288 ] ; 3 uses
  %i.au = icmp slt i32 %.0215, 16
  br i1 %i.au, label %.lr.ph, label %.preheader302

.lr.ph:                                           ; preds = %bb.f
  %i.av = getelementptr i8, ptr %.0196, i64 16
  %i.aw = getelementptr i8, ptr %.0197, i64 16    ; 2 uses
  %i.ax = sext i32 %.0215 to i64
  br label %bb.g

.preheader302:                                    ; preds = %bb.l, %bb.f
  %i.ay = getelementptr i8, ptr %.0197, i64 144   ; 21 uses
  %i.az = getelementptr i8, ptr %.0197, i64 16    ; 35 uses
  %i.ba = getelementptr i8, ptr %.0197, i64 24
  %i.bb = getelementptr i8, ptr %.0197, i64 32
  %i.bc = getelementptr i8, ptr %.0197, i64 40
  %i.bd = getelementptr i8, ptr %.0197, i64 48
  %i.be = getelementptr i8, ptr %.0197, i64 56
  %i.bf = getelementptr i8, ptr %.0197, i64 64
  %i.bg = getelementptr i8, ptr %.0197, i64 72
  %i.bh = getelementptr i8, ptr %.0197, i64 80
  %i.bi = getelementptr i8, ptr %.0197, i64 88
  %i.bj = getelementptr i8, ptr %.0197, i64 96
  %i.bk = getelementptr i8, ptr %.0197, i64 104
  %i.bl = getelementptr i8, ptr %.0197, i64 112
  %i.bm = getelementptr i8, ptr %.0197, i64 120
  %i.bn = getelementptr i8, ptr %.0197, i64 128
  %i.bo = getelementptr i8, ptr %.0197, i64 136
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.bp = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8            ; 5 uses
  %.not269 = icmp eq ptr %i.bq, null
  br i1 %.not269, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = tail call zeroext i1 %2(ptr noundef nonnull %i.bq, ptr noundef %3) #8
  br i1 %i.bt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr [8 x i8], ptr %i.aw, i64 %indvars.iv
  store ptr %i.bq, ptr %i.bu, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bv = getelementptr [8 x i8], ptr %i.aw, i64 %indvars.iv
  br label %bb.c

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bw = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.bw, 16
  br i1 %exitcond.not, label %.preheader302, label %bb.g, !llvm.loop !88

bb.m:                                             ; preds = %.preheader302, %.thread489
  store i64 0, ptr %i.ay, align 8
  %i.bx = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not268 = icmp eq ptr %i.bx, null
  br i1 %.not268, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = trunc i64 %i.by to i1
  br i1 %i.bz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %i.ay, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %i.ca = phi i64 [ 1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.1223 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %bb.m ] ; 3 uses
  %i.cb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not268.1 = icmp eq ptr %i.cb, null
  br i1 %.not268.1, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = trunc i64 %i.cc to i1
  br i1 %i.cd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = add nuw nsw i64 %i.ca, 1                ; 2 uses
  store i64 %i.ce, ptr %i.ay, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cf = add nuw nsw i32 %.1223, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cg = phi i64 [ %i.ce, %bb.r ], [ %i.ca, %bb.q ], [ %i.ca, %bb.s ] ; 3 uses
  %.1223.1 = phi i32 [ %.1223, %bb.r ], [ %.1223, %bb.q ], [ %i.cf, %bb.s ] ; 3 uses
  %i.ch = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not268.2 = icmp eq ptr %i.ch, null
  br i1 %.not268.2, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nuw nsw i64 %i.cg, 1                ; 2 uses
  store i64 %i.ck, ptr %i.ay, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cl = add nuw nsw i32 %.1223.1, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cm = phi i64 [ %i.ck, %bb.v ], [ %i.cg, %bb.u ], [ %i.cg, %bb.w ] ; 3 uses
  %.1223.2 = phi i32 [ %.1223.1, %bb.v ], [ %.1223.1, %bb.u ], [ %i.cl, %bb.w ] ; 3 uses
  %i.cn = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not268.3 = icmp eq ptr %i.cn, null
  br i1 %.not268.3, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = trunc i64 %i.co to i1
  br i1 %i.cp, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = add nuw nsw i64 %i.cm, 1                ; 2 uses
  store i64 %i.cq, ptr %i.ay, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.cr = add nuw nsw i32 %.1223.2, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cs = phi i64 [ %i.cq, %bb.z ], [ %i.cm, %bb.y ], [ %i.cm, %bb.aa ] ; 3 uses
  %.1223.3 = phi i32 [ %.1223.2, %bb.z ], [ %.1223.2, %bb.y ], [ %i.cr, %bb.aa ] ; 3 uses
  %i.ct = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not268.4 = icmp eq ptr %i.ct, null
end_hunk_1
