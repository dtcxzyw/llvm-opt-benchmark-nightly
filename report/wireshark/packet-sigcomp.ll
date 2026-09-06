Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sigcomp?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decompress_sigcomp_message:bb.a
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.aip = call ptr @proto_tree_add_expert_remaining(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @ei_sigcomp_execution_of_this_instruction_is_not_implemented, ptr noundef %0, i32 noundef 0) ; 0 uses
  br label %bb.ta

bb.fx:                                            ; preds = %bb.g
  br i1 %.02373, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.12379, ptr noundef nonnull @.str.444)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.aiq = call ptr @proto_tree_add_expert_remaining(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @ei_sigcomp_execution_of_this_instruction_is_not_implemented, ptr noundef %0, i32 noundef 0) ; 0 uses
  br label %bb.ta

bb.ga:                                            ; preds = %bb.g
  br i1 %.02373, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.12379, ptr noundef nonnull @.str.445)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.air = add nuw nsw i32 %.023963384, 1         ; 4 uses
  %i.ais = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.air, ptr noundef nonnull %i.am) ; 8 uses
  %i.ait = icmp slt i32 %i.ais, 0
  br i1 %i.ait, label %dissect_udvm_reference_operand_memory.exit.thread, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  br i1 %.02375, label %bb.ge, label %.thread4134

bb.ge:                                            ; preds = %bb.gd
  %i.aiu = load i32, ptr @hf_udvm_position, align 4
  %i.aiv = sub nsw i32 %i.ais, %i.air             ; 2 uses
  %i.aiw = load i16, ptr %i.am, align 2
  %i.aix = zext i16 %i.aiw to i32                 ; 2 uses
  %i.aiy = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.aiu, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.aiv, i32 noundef %i.aix, ptr noundef nonnull @.str.446, i32 noundef %i.air, i32 noundef %i.aix) ; 0 uses
  %i.aiz = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.ais, ptr noundef nonnull %i.q) ; 3 uses
  %i.aja = icmp slt i32 %i.aiz, 0
  br i1 %i.aja, label %dissect_udvm_reference_operand_memory.exit.thread, label %bb.gf

.thread4134:                                      ; preds = %bb.gd
  %i.ajb = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.ais, ptr noundef nonnull %i.q) ; 3 uses
  %i.ajc = icmp slt i32 %i.ajb, 0
  br i1 %i.ajc, label %dissect_udvm_reference_operand_memory.exit.thread, label %._crit_edge3748

._crit_edge3748:                                  ; preds = %.thread4134
  %.pre3777 = sub nsw i32 %i.ais, %i.air
  %i.ajd = add i32 %.pre3777, %i.eg
  %.pre3779 = sub nsw i32 %i.ajb, %i.ais
  br label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aje = add i32 %i.aiv, %i.eg                  ; 2 uses
  %i.ajf = load i32, ptr @hf_udvm_length, align 4
  %i.ajg = sub nsw i32 %i.aiz, %i.ais             ; 2 uses
  %i.ajh = load i16, ptr %i.q, align 2
  %i.aji = zext i16 %i.ajh to i32                 ; 2 uses
  %i.ajj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.ajf, ptr noundef %0, i32 noundef %i.aje, i32 noundef %i.ajg, i32 noundef %i.aji, ptr noundef nonnull @.str.447, i32 noundef %i.ais, i32 noundef %i.aji) ; 0 uses
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge3748, %bb.gf
  %i.ajk = phi i32 [ %i.ajd, %._crit_edge3748 ], [ %i.aje, %bb.gf ]
  %i.ajl = phi i32 [ %i.ajb, %._crit_edge3748 ], [ %i.aiz, %bb.gf ] ; 6 uses
  %.pre-phi3780 = phi i32 [ %.pre3779, %._crit_edge3748 ], [ %i.ajg, %bb.gf ]
  %i.ajm = add i32 %.pre-phi3780, %i.ajk          ; 2 uses
  %i.ajn = icmp samesign ugt i32 %i.ajl, 65535
  br i1 %i.ajn, label %dissect_udvm_reference_operand_memory.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ajo = zext nneg i32 %i.ajl to i64
  %i.ajp = getelementptr i8, ptr %i.ax, i64 %i.ajo ; 2 uses
  %i.ajq = load i8, ptr %i.ajp, align 1           ; 4 uses
  %.not.i2700 = icmp sgt i8 %i.ajq, -1
  br i1 %.not.i2700, label %bb.gl, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ajr = icmp samesign ult i8 %i.ajq, -64
  br i1 %i.ajr, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.ajs = zext i8 %i.ajq to i64
  %i.ajt = add nuw nsw i32 %i.ajl, 1
  %i.aju = and i32 %i.ajt, 65535
  %i.ajv = zext nneg i32 %i.aju to i64
  %i.ajw = getelementptr i8, ptr %i.ax, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1
  %i.ajy = zext i8 %i.ajx to i64
  %i.ajz = shl nuw nsw i64 %i.ajs, 9
  %i.aka = shl nuw nsw i64 %i.ajy, 1
  %.masked = and i64 %i.ajz, 65024
  %i.akb = getelementptr i8, ptr %i.ax, i64 %i.aka
  %i.akc = getelementptr i8, ptr %i.akb, i64 %.masked ; 2 uses
  %i.akd = getelementptr i8, ptr %i.akc, i64 1
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gi
  %i.ake = getelementptr i8, ptr %i.ajp, i64 1
  %i.akf = load i8, ptr %i.ake, align 1
  %i.akg = zext i8 %i.akf to i16
  %i.akh = shl nuw i16 %i.akg, 8
  %i.aki = add nuw nsw i32 %i.ajl, 2
  %i.akj = and i32 %i.aki, 65535
  %i.akk = zext nneg i32 %i.akj to i64
  %i.akl = getelementptr i8, ptr %i.ax, i64 %i.akk
  %i.akm = load i8, ptr %i.akl, align 1
  %i.akn = zext i8 %i.akm to i16
  %i.ako = or disjoint i16 %i.akh, %i.akn         ; 3 uses
  %i.akp = zext i16 %i.ako to i64
  %i.akq = getelementptr i8, ptr %i.ax, i64 %i.akp
  %i.akr = add i16 %i.ako, 1
  %i.aks = zext i16 %i.akr to i64
  %i.akt = getelementptr i8, ptr %i.ax, i64 %i.aks
  %i.aku = icmp eq i16 %i.ako, -1
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gh
  %i.akv = shl nuw i8 %i.ajq, 1
  %i.akw = zext i8 %i.akv to i64
  %i.akx = getelementptr i8, ptr %i.ax, i64 %i.akw ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akx, i64 1
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %bb.gj
  %.21 = phi i1 [ false, %bb.gl ], [ false, %bb.gj ], [ %i.aku, %bb.gk ]
  %.sink64.in.i2701 = phi ptr [ %i.aky, %bb.gl ], [ %i.akd, %bb.gj ], [ %i.akt, %bb.gk ]
  %.sink62.in.in.in.i2702 = phi ptr [ %i.akx, %bb.gl ], [ %i.akc, %bb.gj ], [ %i.akq, %bb.gk ]
  %.sink.i2703 = phi i32 [ 1, %bb.gl ], [ 2, %bb.gj ], [ 3, %bb.gk ] ; 3 uses
  %.sink62.in.in.i2704 = load i8, ptr %.sink62.in.in.in.i2702, align 1
  %.sink62.in.i2705 = zext i8 %.sink62.in.in.i2704 to i16
  %.sink62.i2706 = shl nuw i16 %.sink62.in.i2705, 8
  %.sink64.i2707 = load i8, ptr %.sink64.in.i2701, align 1
  %i.akz = zext i8 %.sink64.i2707 to i16
  %i.ala = or disjoint i16 %.sink62.i2706, %i.akz ; 3 uses
  %i.alb = add nuw nsw i32 %.sink.i2703, %i.ajl   ; 3 uses
  %i.alc = icmp samesign ugt i32 %i.alb, 65535
  %or.cond3041 = select i1 %i.alc, i1 true, i1 %.21
  br i1 %or.cond3041, label %dissect_udvm_reference_operand_memory.exit.thread, label %dissect_udvm_reference_operand_memory.exit2710

dissect_udvm_reference_operand_memory.exit2710:   ; preds = %bb.gm
  br i1 %.02375, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %dissect_udvm_reference_operand_memory.exit2710
  %i.ald = load i32, ptr @hf_udvm_ref_dest, align 4
  %i.ale = zext i16 %i.ala to i32                 ; 2 uses
  %i.alf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.ald, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %.sink.i2703, i32 noundef %i.ale, ptr noundef nonnull @.str.448, i32 noundef %i.ajl, i32 noundef %i.ale) ; 0 uses
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %dissect_udvm_reference_operand_memory.exit2710
  %i.alg = add i32 %.sink.i2703, %i.ajm           ; 2 uses
  %i.alh = load i16, ptr %i.q, align 2
  %i.ali = zext i16 %i.alh to i32
  %i.alj = add i32 %i.dx, %i.ali                  ; 2 uses
  %i.alk = load i16, ptr %i.am, align 2
  %i.all = zext i16 %i.alk to i32
  %i.alm = load i8, ptr %i.dc, align 1
  %i.aln = zext i8 %i.alm to i16
  %i.alo = shl nuw i16 %i.aln, 8
  %i.alp = load i8, ptr %i.dd, align 1
  %i.alq = zext i8 %i.alp to i16
  %i.alr = or disjoint i16 %i.alo, %i.alq         ; 12 uses
  %i.als = load i8, ptr %i.de, align 1
  %i.alt = zext i8 %i.als to i16
  %i.alu = shl nuw i16 %i.alt, 8
  %i.alv = load i8, ptr %i.df, align 1
  %i.alw = zext i8 %i.alv to i16
  %i.alx = or disjoint i16 %i.alu, %i.alw         ; 2 uses
  br i1 %.02374, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.aly = load i32, ptr @hf_sigcomp_byte_copy, align 4
  %i.alz = zext i16 %i.alr to i32
  %i.ama = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %3, i32 noundef %i.aly, ptr noundef %1, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @.str.449, i32 noundef %i.alz) ; 0 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.amb = call i32 @gcry_md_open(ptr noundef nonnull %i.p, i32 noundef 2, i32 noundef 0)
  %.not2573 = icmp eq i32 %i.amb, 0
  br i1 %.not2573, label %.preheader, label %dissect_udvm_reference_operand_memory.exit.thread

.preheader:                                       ; preds = %bb.gq
  %i.amc = load i16, ptr %i.q, align 2            ; 5 uses
  %i.amd = zext i16 %i.amc to i32                 ; 2 uses
  %.not3411 = icmp eq i16 %i.amc, 0
  br i1 %.not3411, label %.preheader.._crit_edge3380_crit_edge, label %.lr.ph3379

.preheader.._crit_edge3380_crit_edge:             ; preds = %.preheader
  %.pre3781 = zext i16 %i.alx to i32
  br label %._crit_edge3380

.lr.ph3379:                                       ; preds = %.preheader
  %i.ame = zext i16 %i.alr to i32                 ; 3 uses
  %i.amf = load i16, ptr %i.am, align 2
  %i.amg = sub i16 %i.alr, %i.amf
  %i.amh = zext i16 %i.alx to i32                 ; 2 uses
  br label %bb.gr

bb.gr:                                            ; preds = %.lr.ph3379, %bb.gu
  %i.ami = phi i32 [ 0, %.lr.ph3379 ], [ %i.amt, %bb.gu ]
  %.024073378 = phi i32 [ %i.all, %.lr.ph3379 ], [ %spec.select, %bb.gu ] ; 4 uses
  %.129043377 = phi i16 [ 0, %.lr.ph3379 ], [ %.narrow2577, %bb.gu ] ; 2 uses
  %i.amj = icmp ult i32 %.024073378, %i.ame
  br i1 %i.amj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.amk = sub nsw i32 %.024073378, %i.ami
  %i.aml = add nsw i32 %i.amk, %i.amd
  %.not2575 = icmp ult i32 %i.aml, %i.ame
  %spec.select3396 = select i1 %.not2575, i16 %i.amc, i16 %i.amg ; 2 uses
  %.pre3691 = zext i16 %spec.select3396 to i32
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.pre-phi3692 = phi i32 [ %.pre3691, %bb.gs ], [ %i.amd, %bb.gr ]
  %.02370 = phi i16 [ %spec.select3396, %bb.gs ], [ %i.amc, %bb.gr ] ; 3 uses
  %i.amm = add nuw nsw i32 %.024073378, %.pre-phi3692 ; 3 uses
  %i.amn = icmp ugt i32 %i.amm, 65535
  %11 = xor i16 %.129043377, -1
  %i.amo = icmp ugt i16 %.02370, %11
  %or.cond3042 = or i1 %i.amo, %i.amn
  %i.amp = load ptr, ptr %i.p, align 8            ; 2 uses
  br i1 %or.cond3042, label %.thread, label %bb.gu

.thread:                                          ; preds = %bb.gt
  call void @gcry_md_close(ptr noundef %i.amp)
  br label %dissect_udvm_reference_operand_memory.exit.thread

bb.gu:                                            ; preds = %bb.gt
  %i.amq = zext nneg i32 %.024073378 to i64
  %i.amr = getelementptr i8, ptr %i.ax, i64 %i.amq
  %i.ams = zext i16 %.02370 to i64
  call void @gcry_md_write(ptr noundef %i.amp, ptr noundef %i.amr, i64 noundef %i.ams)
  %.narrow2577 = add i16 %.02370, %.129043377     ; 3 uses
  %.not2578 = icmp samesign ult i32 %i.amm, %i.ame
  %spec.select = select i1 %.not2578, i32 %i.amm, i32 %i.amh
  %i.amt = zext i16 %.narrow2577 to i32
  %i.amu = icmp ult i16 %.narrow2577, %i.amc
  br i1 %i.amu, label %bb.gr, label %._crit_edge3380

._crit_edge3380:                                  ; preds = %bb.gu, %.preheader.._crit_edge3380_crit_edge
  %.pre-phi3782 = phi i32 [ %.pre3781, %.preheader.._crit_edge3380_crit_edge ], [ %i.amh, %bb.gu ] ; 9 uses
  %i.amv = load ptr, ptr %i.p, align 8
  %i.amw = call ptr @gcry_md_read(ptr noundef %i.amv, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.o, ptr noundef align 1 dereferenceable(20) %i.amw, i64 noundef 20, i1 noundef false) #11
  %i.amx = load ptr, ptr %i.p, align 8
  call void @gcry_md_close(ptr noundef %i.amx)
  %i.amy = zext i16 %i.ala to i32
  %i.amz = load i8, ptr %i.o, align 16
  %i.ana = zext i16 %i.ala to i64
  %i.anb = getelementptr i8, ptr %i.ax, i64 %i.ana
  store i8 %i.amz, ptr %i.anb, align 1
  %i.anc = add nuw nsw i32 %i.amy, 1              ; 2 uses
  %i.and = and i32 %i.anc, 65535
  %i.ane = trunc i32 %i.anc to i16
  %i.anf = icmp eq i16 %i.alr, %i.ane
  %spec.select2583 = select i1 %i.anf, i32 %.pre-phi3782, i32 %i.and ; 2 uses
  %i.ang = load i8, ptr %i.dm, align 2
  %i.anh = zext nneg i32 %spec.select2583 to i64
  %i.ani = getelementptr i8, ptr %i.ax, i64 %i.anh
  store i8 %i.ang, ptr %i.ani, align 1
  %i.anj = add nuw nsw i32 %spec.select2583, 1    ; 2 uses
  %i.ank = and i32 %i.anj, 65535
  %i.anl = trunc i32 %i.anj to i16
  %i.anm = icmp eq i16 %i.alr, %i.anl
  %spec.select2583.1 = select i1 %i.anm, i32 %.pre-phi3782, i32 %i.ank ; 2 uses
  %i.ann = load i8, ptr %i.dn, align 4
  %i.ano = zext nneg i32 %spec.select2583.1 to i64
  %i.anp = getelementptr i8, ptr %i.ax, i64 %i.ano
  store i8 %i.ann, ptr %i.anp, align 1
  %i.anq = add nuw nsw i32 %spec.select2583.1, 1  ; 2 uses
  %i.anr = and i32 %i.anq, 65535
  %i.ans = trunc i32 %i.anq to i16
  %i.ant = icmp eq i16 %i.alr, %i.ans
  %spec.select2583.2 = select i1 %i.ant, i32 %.pre-phi3782, i32 %i.anr ; 2 uses
  %i.anu = load i8, ptr %i.do, align 2
  %i.anv = zext nneg i32 %spec.select2583.2 to i64
  %i.anw = getelementptr i8, ptr %i.ax, i64 %i.anv
  store i8 %i.anu, ptr %i.anw, align 1
  %i.anx = add nuw nsw i32 %spec.select2583.2, 1  ; 2 uses
  %i.any = and i32 %i.anx, 65535
  %i.anz = trunc i32 %i.anx to i16
  %i.aoa = icmp eq i16 %i.alr, %i.anz
  %spec.select2583.3 = select i1 %i.aoa, i32 %.pre-phi3782, i32 %i.any ; 2 uses
  %i.aob = load i8, ptr %i.dp, align 8
  %i.aoc = zext nneg i32 %spec.select2583.3 to i64
  %i.aod = getelementptr i8, ptr %i.ax, i64 %i.aoc
  store i8 %i.aob, ptr %i.aod, align 1
  %i.aoe = add nuw nsw i32 %spec.select2583.3, 1  ; 2 uses
  %i.aof = and i32 %i.aoe, 65535
  %i.aog = trunc i32 %i.aoe to i16
  %i.aoh = icmp eq i16 %i.alr, %i.aog
  %spec.select2583.4 = select i1 %i.aoh, i32 %.pre-phi3782, i32 %i.aof ; 2 uses
  %i.aoi = load i8, ptr %i.dq, align 2
  %i.aoj = zext nneg i32 %spec.select2583.4 to i64
  %i.aok = getelementptr i8, ptr %i.ax, i64 %i.aoj
  store i8 %i.aoi, ptr %i.aok, align 1
  %i.aol = add nuw nsw i32 %spec.select2583.4, 1  ; 2 uses
  %i.aom = and i32 %i.aol, 65535
  %i.aon = trunc i32 %i.aol to i16
  %i.aoo = icmp eq i16 %i.alr, %i.aon
  %spec.select2583.5 = select i1 %i.aoo, i32 %.pre-phi3782, i32 %i.aom ; 2 uses
  %i.aop = load i8, ptr %i.dr, align 4
  %i.aoq = zext nneg i32 %spec.select2583.5 to i64
  %i.aor = getelementptr i8, ptr %i.ax, i64 %i.aoq
  store i8 %i.aop, ptr %i.aor, align 1
  %i.aos = add nuw nsw i32 %spec.select2583.5, 1  ; 2 uses
  %i.aot = and i32 %i.aos, 65535
  %i.aou = trunc i32 %i.aos to i16
  %i.aov = icmp eq i16 %i.alr, %i.aou
  %spec.select2583.6 = select i1 %i.aov, i32 %.pre-phi3782, i32 %i.aot ; 2 uses
  %i.aow = load i8, ptr %i.ds, align 2
  %i.aox = zext nneg i32 %spec.select2583.6 to i64
  %i.aoy = getelementptr i8, ptr %i.ax, i64 %i.aox
  store i8 %i.aow, ptr %i.aoy, align 1
  %i.aoz = add nuw nsw i32 %spec.select2583.6, 1  ; 2 uses
  %i.apa = and i32 %i.aoz, 65535
  %i.apb = trunc i32 %i.aoz to i16
  %i.apc = icmp eq i16 %i.alr, %i.apb
  %spec.select2583.7 = select i1 %i.apc, i32 %.pre-phi3782, i32 %i.apa ; 2 uses
  %i.apd = load i8, ptr %i.dt, align 16
  %i.ape = zext nneg i32 %spec.select2583.7 to i64
  %i.apf = getelementptr i8, ptr %i.ax, i64 %i.ape
  store i8 %i.apd, ptr %i.apf, align 1
  %i.apg = add nuw nsw i32 %spec.select2583.7, 1  ; 2 uses
  %i.aph = and i32 %i.apg, 65535
  %i.api = trunc i32 %i.apg to i16
  %i.apj = icmp eq i16 %i.alr, %i.api
  %spec.select2583.8 = select i1 %i.apj, i32 %.pre-phi3782, i32 %i.aph
  %i.apk = load i8, ptr %i.du, align 2
  %i.apl = zext nneg i32 %spec.select2583.8 to i64
  %i.apm = getelementptr i8, ptr %i.ax, i64 %i.apl
  store i8 %i.apk, ptr %i.apm, align 1
  br i1 %.02374, label %bb.gv, label %.backedge

bb.gv:                                            ; preds = %._crit_edge3380
  %i.apn = load i32, ptr @hf_sigcomp_calculated_sha_1, align 4
  %i.apo = call ptr @proto_tree_add_bytes_with_length(ptr noundef %3, i32 noundef %i.apn, ptr noundef %1, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.o, i32 noundef 20) ; 0 uses
  br label %.backedge

bb.gw:                                            ; preds = %bb.g
  br i1 %.02373, label %bb.gx, label %.thread2974

bb.gx:                                            ; preds = %bb.gw
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.12379, ptr noundef nonnull @.str.450)
  %i.app = add nuw nsw i32 %.023963384, 1         ; 3 uses
  %i.apq = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.app, ptr noundef nonnull %i.t) ; 3 uses
  %i.apr = icmp slt i32 %i.apq, 0
  br i1 %i.apr, label %dissect_udvm_reference_operand_memory.exit.thread, label %bb.gy

.thread2974:                                      ; preds = %bb.gw
  %i.aps = add nuw nsw i32 %.023963384, 1         ; 2 uses
  %i.apt = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.aps, ptr noundef nonnull %i.t) ; 3 uses
  %i.apu = icmp slt i32 %i.apt, 0
  br i1 %i.apu, label %dissect_udvm_reference_operand_memory.exit.thread, label %.thread2974..thread2975_crit_edge

.thread2974..thread2975_crit_edge:                ; preds = %.thread2974
  %.pre3783 = sub nsw i32 %i.apt, %i.aps
  br label %.thread2975

bb.gy:                                            ; preds = %bb.gx
  %i.apv = load i32, ptr @hf_udvm_address, align 4
  %i.apw = sub nsw i32 %i.apq, %i.app             ; 2 uses
  %i.apx = load i16, ptr %i.t, align 2
  %i.apy = zext i16 %i.apx to i32                 ; 2 uses
  %i.apz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.apv, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.apw, i32 noundef %i.apy, ptr noundef nonnull @.str.451, i32 noundef %i.app, i32 noundef %i.apy) ; 0 uses
  br label %.thread2975

.thread2975:                                      ; preds = %.thread2974..thread2975_crit_edge, %bb.gy
  %.pre-phi3784 = phi i32 [ %.pre3783, %.thread2974..thread2975_crit_edge ], [ %i.apw, %bb.gy ]
  %i.aqa = phi i32 [ %i.apt, %.thread2974..thread2975_crit_edge ], [ %i.apq, %bb.gy ] ; 4 uses
  %i.aqb = add i32 %.pre-phi3784, %i.eg           ; 2 uses
  %i.aqc = call fastcc i32 @decode_udvm_multitype_operand(ptr noundef %i.ax, i32 noundef %i.aqa, ptr noundef nonnull %i.u) ; 5 uses
  %i.aqd = icmp slt i32 %i.aqc, 0
  br i1 %i.aqd, label %dissect_udvm_reference_operand_memory.exit.thread, label %bb.gz

bb.gz:                                            ; preds = %.thread2975
  %.pre3683 = load i16, ptr %i.u, align 2         ; 4 uses
  br i1 %.02373, label %bb.ha, label %._crit_edge3747

._crit_edge3747:                                  ; preds = %bb.gz
  %.pre3785 = sub nsw i32 %i.aqc, %i.aqa
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aqe = load i32, ptr @hf_udvm_value, align 4
  %i.aqf = sub nsw i32 %i.aqc, %i.aqa             ; 2 uses
  %i.aqg = zext i16 %.pre3683 to i32              ; 2 uses
  %i.aqh = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.aqe, ptr noundef %0, i32 noundef %i.aqb, i32 noundef %i.aqf, i32 noundef %i.aqg, ptr noundef nonnull @.str.452, i32 noundef %i.aqa, i32 noundef %i.aqg) ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %._crit_edge3747, %bb.ha
  %.pre-phi3786 = phi i32 [ %.pre3785, %._crit_edge3747 ], [ %i.aqf, %bb.ha ]
  %i.aqi = add i32 %i.aqb, %.pre-phi3786          ; 3 uses
  %i.aqj = trunc i16 %.pre3683 to i8
  %i.aqk = lshr i16 %.pre3683, 8
  %i.aql = trunc nuw i16 %i.aqk to i8
  %i.aqm = load i16, ptr %i.t, align 2            ; 3 uses
  %i.aqn = zext i16 %i.aqm to i64
  %i.aqo = getelementptr i8, ptr %i.ax, i64 %i.aqn
  store i8 %i.aql, ptr %i.aqo, align 1
  %i.aqp = add i16 %i.aqm, 1
  %i.aqq = zext i16 %i.aqp to i64
  %i.aqr = getelementptr i8, ptr %i.ax, i64 %i.aqq
  store i8 %i.aqj, ptr %i.aqr, align 1
  br i1 %.02375, label %bb.hc, label %.backedge

bb.hc:                                            ; preds = %bb.hb
  %i.aqs = load i32, ptr @hf_sigcomp_decompress_instruction, align 4
  %i.aqt = sub i32 %i.aqi, %i.eg
  %i.aqu = zext i16 %i.aqm to i32                 ; 2 uses
  %i.aqv = zext i16 %.pre3683 to i32              ; 3 uses
  %i.aqw = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %3, i32 noundef %i.aqs, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.aqt, ptr noundef nonnull @.str.453, i32 noundef %.023963384, i32 noundef %i.aqu, i32 noundef %i.aqv) ; 0 uses
  %i.aqx = load i32, ptr @hf_sigcomp_loading_result, align 4
  %i.aqy = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %3, i32 noundef %i.aqx, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.454, i32 noundef %i.aqu, i32 noundef %i.aqv, i32 noundef %i.aqv) ; 0 uses
  br label %.backedge

bb.hd:                                            ; preds = %bb.g
  br i1 %.02373, label %bb.he, label %.thread2976

bb.he:                                            ; preds = %bb.hd
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.12379, ptr noundef nonnull @.str.455)
  %i.aqz = add nuw nsw i32 %.023963384, 1         ; 3 uses
end_hunk_0
