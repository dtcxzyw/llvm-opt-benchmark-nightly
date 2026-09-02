Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_gm?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@de_gmm_ms_radio_acc_cap:bb.a
  %i.ahu = zext i8 %i.aht to i32
  %i.ahv = shl nuw i32 %i.ahu, 24
  %i.ahw = or i32 %i.ahv, %i.aho
  %i.ahx = add i32 %.623790, -1
  %i.ahy = add i32 %.623927, 1
  br label %bb.lb

bb.la:                                            ; preds = %bb.kw
  %i.ahz = zext i8 %.62 to i32
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %.633928 = phi i32 [ %i.ahy, %bb.kz ], [ %.623927, %bb.la ] ; 7 uses
  %.633791 = phi i32 [ %i.ahx, %bb.kz ], [ %.623790, %bb.la ] ; 5 uses
  %.633627 = phi i32 [ %i.ahw, %bb.kz ], [ %i.aho, %bb.la ] ; 3 uses
  %.63 = phi i32 [ 8, %bb.kz ], [ %i.ahz, %bb.la ] ; 3 uses
  %i.aia = icmp sgt i32 %.633627, -1
  %i.aib = add i32 %.153718, 2                    ; 2 uses
  br i1 %i.aia, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.aic = load i32, ptr @hf_gsm_a_gm_high_multislot_capability, align 4
  %i.aid = add i32 %.633928, -1
  %i.aie = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.aic, ptr noundef %0, i32 noundef %i.aid, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.aif = add nsw i32 %.14, -2
  %i.aig = shl nuw i32 %.633627, 1
  %i.aih = trunc nuw i32 %.63 to i8
  %i.aii = add i8 %i.aih, -1
  br label %bb.lj

bb.ld:                                            ; preds = %bb.lb
  %i.aij = shl i32 %.633627, 1                    ; 3 uses
  %i.aik = trunc nuw i32 %.63 to i8
  %i.ail = add i8 %i.aik, -1                      ; 5 uses
  %i.aim = and i32 %.14, -2
  %i.ain = icmp eq i32 %i.aim, 2
  br i1 %i.ain, label %.thread, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aio = icmp ult i8 %i.ail, 2
  br i1 %i.aio, label %bb.lf, label %bb.li

bb.lf:                                            ; preds = %bb.le
  %i.aip = icmp eq i32 %.633791, 0
  br i1 %i.aip, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.aiq = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.633928, i32 noundef 1) ; 0 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.air = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.633928)
  %i.ais = zext i8 %i.air to i32
  %narrow4253 = sub nsw i32 25, %.63
  %i.ait = and i32 %narrow4253, 255
  %i.aiu = shl nuw i32 %i.ais, %i.ait
  %i.aiv = or i32 %i.aiu, %i.aij
  %i.aiw = add i32 %.633791, -1
  %i.aix = add i32 %.633928, 1
  %.4310 = zext nneg i8 %i.ail to i32
  %i.aiy = or disjoint i8 %i.ail, 8
  br label %bb.li

bb.li:                                            ; preds = %bb.le, %bb.lh
  %.643929 = phi i32 [ %i.aix, %bb.lh ], [ %.633928, %bb.le ] ; 2 uses
  %.643792 = phi i32 [ %i.aiw, %bb.lh ], [ %.633791, %bb.le ]
  %.643628 = phi i32 [ %i.aiv, %bb.lh ], [ %i.aij, %bb.le ] ; 2 uses
  %.64 = phi i8 [ %i.aiy, %bb.lh ], [ %i.ail, %bb.le ]
  %.35 = phi i32 [ %.4310, %bb.lh ], [ 0, %bb.le ] ; 2 uses
  %i.aiz = load i32, ptr @hf_gsm_a_gm_high_multislot_capability, align 4
  %i.aja = xor i32 %.35, -1
  %i.ajb = add i32 %.643929, %i.aja
  %i.ajc = add nuw nsw i32 %.35, 1
  %i.ajd = lshr i32 %.643628, 30
  %i.aje = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.aiz, ptr noundef %0, i32 noundef %i.ajb, i32 noundef %i.ajc, i32 noundef %i.ajd)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aje, ptr noundef nonnull @.str.78)
  %i.ajf = add i32 %.153718, 4
  %i.ajg = add nsw i32 %.14, -4
  %i.ajh = shl i32 %.643628, 2
  %i.aji = add i8 %.64, -2
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lc
  %.653930 = phi i32 [ %.633928, %bb.lc ], [ %.643929, %bb.li ] ; 5 uses
  %.653793 = phi i32 [ %.633791, %bb.lc ], [ %.643792, %bb.li ] ; 4 uses
  %.163719 = phi i32 [ %i.aib, %bb.lc ], [ %i.ajf, %bb.li ] ; 6 uses
  %.653629 = phi i32 [ %i.aig, %bb.lc ], [ %i.ajh, %bb.li ] ; 3 uses
  %.65 = phi i8 [ %i.aii, %bb.lc ], [ %i.aji, %bb.li ] ; 3 uses
  %.15 = phi i32 [ %i.aif, %bb.lc ], [ %i.ajg, %bb.li ] ; 5 uses
  %i.ajj = icmp eq i32 %.15, 0
  br i1 %i.ajj, label %.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.ajk = icmp eq i8 %.65, 0
  br i1 %i.ajk, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.ajl = icmp eq i32 %.653793, 0
  br i1 %i.ajl, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.ajm = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.653930, i32 noundef 1) ; 0 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.ajn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.653930)
  %i.ajo = zext i8 %i.ajn to i32
  %i.ajp = shl nuw i32 %i.ajo, 24
  %i.ajq = or i32 %i.ajp, %.653629
  %i.ajr = add i32 %.653793, -1
  %i.ajs = add i32 %.653930, 1
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lk
  %i.ajt = add i8 %.65, -1
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.663931 = phi i32 [ %i.ajs, %bb.ln ], [ %.653930, %bb.lo ] ; 6 uses
  %.663794 = phi i32 [ %i.ajr, %bb.ln ], [ %.653793, %bb.lo ] ; 5 uses
  %.663630 = phi i32 [ %i.ajq, %bb.ln ], [ %.653629, %bb.lo ]
  %.66 = phi i8 [ 7, %bb.ln ], [ %i.ajt, %bb.lo ] ; 6 uses
  %i.aju = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %.163719, i32 noundef 1)
  %i.ajv = load i32, ptr @hf_gsm_a_gm_rac_geran_iu_mode_cap, align 4
  %i.ajw = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ajv, ptr noundef %0, i32 noundef %.163719, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajx = add i32 %.163719, 1                    ; 3 uses
  %i.ajy = add nsw i32 %.15, -1
  %i.ajz = shl i32 %.663630, 1                    ; 4 uses
  %.not4254 = icmp eq i8 %i.aju, 0
  br i1 %.not4254, label %bb.md, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aka = icmp ult i32 %.15, 5
  br i1 %i.aka, label %.thread, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.akb = icmp ult i8 %.66, 4
  br i1 %i.akb, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %bb.lr
  %i.akc = icmp eq i32 %.663794, 0
  br i1 %i.akc, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.akd = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.663931, i32 noundef 1) ; 0 uses
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.ake = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.663931)
  %i.akf = zext i8 %i.ake to i32
  %narrow4256 = sub nuw nsw i8 24, %.66
  %i.akg = zext nneg i8 %narrow4256 to i32
  %i.akh = shl nuw i32 %i.akf, %i.akg
  %i.aki = or i32 %i.akh, %i.ajz
  %i.akj = add i32 %.663794, -1
  %i.akk = add i32 %.663931, 1
  %i.akl = or disjoint i8 %.66, 8
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lr, %bb.lu
  %.673932 = phi i32 [ %i.akk, %bb.lu ], [ %.663931, %bb.lr ] ; 6 uses
  %.673795 = phi i32 [ %i.akj, %bb.lu ], [ %.663794, %bb.lr ] ; 5 uses
  %.673631 = phi i32 [ %i.aki, %bb.lu ], [ %i.ajz, %bb.lr ]
  %.67 = phi i8 [ %i.akl, %bb.lu ], [ %.66, %bb.lr ] ; 2 uses
  %i.akm = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ajx, i32 noundef 4) ; 2 uses
  %i.akn = zext i8 %i.akm to i32                  ; 2 uses
  %i.ako = add i32 %.163719, 5                    ; 3 uses
  %i.akp = add nsw i32 %.15, -5                   ; 2 uses
  %i.akq = shl i32 %.673631, 4                    ; 4 uses
  %i.akr = add i8 %.67, -4                        ; 3 uses
  %.not4257 = icmp eq i8 %i.akm, 0
  br i1 %.not4257, label %bb.md, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aks = icmp eq i32 %i.akp, 0
  br i1 %i.aks, label %.thread, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.akt = icmp eq i8 %i.akr, 0
  br i1 %i.akt, label %bb.ly, label %bb.mb

bb.ly:                                            ; preds = %bb.lx
  %i.aku = icmp eq i32 %.673795, 0
  br i1 %i.aku, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.akv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.673932, i32 noundef 1) ; 0 uses
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %i.akw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.673932)
  %i.akx = zext i8 %i.akw to i32
  %i.aky = shl nuw i32 %i.akx, 24
  %i.akz = or i32 %i.aky, %i.akq
  %i.ala = add i32 %.673795, -1
  %i.alb = add i32 %.673932, 1
  br label %bb.mc

bb.mb:                                            ; preds = %bb.lx
  %i.alc = add i8 %.67, -5
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.683933 = phi i32 [ %i.alb, %bb.ma ], [ %.673932, %bb.mb ]
  %.683796 = phi i32 [ %i.ala, %bb.ma ], [ %.673795, %bb.mb ]
  %.683632 = phi i32 [ %i.akz, %bb.ma ], [ %i.akq, %bb.mb ]
  %.68 = phi i8 [ 7, %bb.ma ], [ %i.alc, %bb.mb ]
  %i.ald = load i32, ptr @hf_gsm_a_gm_rac_flo_iu_cap, align 4
  %i.ale = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ald, ptr noundef %0, i32 noundef %i.ako, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alf = add i32 %.163719, 6
  %i.alg = shl i32 %.683632, 1
  %i.alh = add nsw i32 %i.akn, -1                 ; 3 uses
  %i.ali = add i32 %i.alf, %i.alh
  %i.alj = sub i32 %.15, %i.akn
  %i.alk = add i32 %i.alj, -5
  %i.all = shl i32 %i.alg, %i.alh
  %7 = trunc nuw i32 %i.alh to i8
  %8 = sub i8 %.68, %7
  br label %bb.md

bb.md:                                            ; preds = %bb.lv, %bb.mc, %bb.lp
  %.693934 = phi i32 [ %.683933, %bb.mc ], [ %.673932, %bb.lv ], [ %.663931, %bb.lp ] ; 5 uses
  %.693797 = phi i32 [ %.683796, %bb.mc ], [ %.673795, %bb.lv ], [ %.663794, %bb.lp ] ; 4 uses
  %.173720 = phi i32 [ %i.ali, %bb.mc ], [ %i.ako, %bb.lv ], [ %i.ajx, %bb.lp ] ; 11 uses
  %.693633 = phi i32 [ %i.all, %bb.mc ], [ %i.akq, %bb.lv ], [ %i.ajz, %bb.lp ] ; 3 uses
  %.69 = phi i8 [ %8, %bb.mc ], [ %i.akr, %bb.lv ], [ %.66, %bb.lp ] ; 6 uses
  %.16 = phi i32 [ %i.alk, %bb.mc ], [ %i.akp, %bb.lv ], [ %i.ajy, %bb.lp ] ; 11 uses
  %i.alm = icmp ult i32 %.16, 2
  br i1 %i.alm, label %.thread, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.aln = icmp ult i8 %.69, 2
  br i1 %i.aln, label %bb.mf, label %bb.mi

bb.mf:                                            ; preds = %bb.me
  %i.alo = icmp eq i32 %.693797, 0
  br i1 %i.alo, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.alp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.693934, i32 noundef 1) ; 0 uses
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.alq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.693934)
  %i.alr = zext i8 %i.alq to i32
  %narrow4259 = sub nuw nsw i8 24, %.69
  %i.als = zext nneg i8 %narrow4259 to i32
  %i.alt = shl nuw i32 %i.alr, %i.als
  %i.alu = or i32 %i.alt, %.693633
  %i.alv = add i32 %.693797, -1
  %i.alw = add i32 %.693934, 1
  %.4311 = zext nneg i8 %.69 to i32
  %i.alx = or disjoint i8 %.69, 8
  br label %bb.mi

bb.mi:                                            ; preds = %bb.me, %bb.mh
  %.703935 = phi i32 [ %i.alw, %bb.mh ], [ %.693934, %bb.me ] ; 6 uses
  %.703798 = phi i32 [ %i.alv, %bb.mh ], [ %.693797, %bb.me ] ; 4 uses
  %.703634 = phi i32 [ %i.alu, %bb.mh ], [ %.693633, %bb.me ] ; 2 uses
  %.70 = phi i8 [ %i.alx, %bb.mh ], [ %.69, %bb.me ] ; 2 uses
  %.37 = phi i32 [ %.4311, %bb.mh ], [ 0, %bb.me ] ; 2 uses
  %i.aly = load i32, ptr @hf_gsm_a_gm_gmsk_multislot_power_profile, align 4
  %i.alz = xor i32 %.37, -1
  %i.ama = add i32 %.703935, %i.alz
  %i.amb = add nuw nsw i32 %.37, 1
  %i.amc = lshr i32 %.703634, 30
  %i.amd = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.aly, ptr noundef %0, i32 noundef %i.ama, i32 noundef %i.amb, i32 noundef %i.amc) ; 0 uses
  %i.ame = add i32 %.173720, 2
  %i.amf = shl i32 %.703634, 2                    ; 3 uses
  %i.amg = add i8 %.70, -2                        ; 5 uses
  %i.amh = and i32 %.16, -2
  %i.ami = icmp eq i32 %i.amh, 2
  br i1 %i.ami, label %.thread, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.amj = icmp ult i8 %i.amg, 2
  br i1 %i.amj, label %bb.mk, label %bb.mn

bb.mk:                                            ; preds = %bb.mj
  %i.amk = icmp eq i32 %.703798, 0
  br i1 %i.amk, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.aml = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.703935, i32 noundef 1) ; 0 uses
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %i.amm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.703935)
  %i.amn = zext i8 %i.amm to i32
  %narrow4261 = sub nuw nsw i8 26, %.70
  %i.amo = zext nneg i8 %narrow4261 to i32
  %i.amp = shl nuw i32 %i.amn, %i.amo
  %i.amq = or i32 %i.amp, %i.amf
  %i.amr = add i32 %.703798, -1
  %i.ams = add i32 %.703935, 1
  %.4312 = zext nneg i8 %i.amg to i32
  %i.amt = or disjoint i8 %i.amg, 8
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mj, %bb.mm
  %.713936 = phi i32 [ %i.ams, %bb.mm ], [ %.703935, %bb.mj ] ; 6 uses
  %.713799 = phi i32 [ %i.amr, %bb.mm ], [ %.703798, %bb.mj ] ; 4 uses
  %.713635 = phi i32 [ %i.amq, %bb.mm ], [ %i.amf, %bb.mj ] ; 2 uses
  %.71 = phi i8 [ %i.amt, %bb.mm ], [ %i.amg, %bb.mj ] ; 2 uses
  %.39 = phi i32 [ %.4312, %bb.mm ], [ 0, %bb.mj ] ; 2 uses
  %i.amu = load i32, ptr @hf_gsm_a_gm_8psk_multislot_power_profile, align 4
  %i.amv = xor i32 %.39, -1
  %i.amw = add i32 %.713936, %i.amv
  %i.amx = add nuw nsw i32 %.39, 1
  %i.amy = lshr i32 %.713635, 30
  %i.amz = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.amu, ptr noundef %0, i32 noundef %i.amw, i32 noundef %i.amx, i32 noundef %i.amy) ; 0 uses
  %i.ana = add i32 %.173720, 4                    ; 2 uses
  %i.anb = shl i32 %.713635, 2                    ; 3 uses
  %i.anc = add i8 %.71, -2                        ; 2 uses
  %i.and = icmp eq i32 %.16, 4
  br i1 %i.and, label %.thread, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.ane = icmp eq i8 %i.anc, 0
  br i1 %i.ane, label %bb.mp, label %bb.ms

bb.mp:                                            ; preds = %bb.mo
  %i.anf = icmp eq i32 %.713799, 0
  br i1 %i.anf, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.ang = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.713936, i32 noundef 1) ; 0 uses
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %i.anh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.713936)
  %i.ani = zext i8 %i.anh to i32
  %i.anj = shl nuw i32 %i.ani, 24
  %i.ank = or i32 %i.anj, %i.anb
  %i.anl = add i32 %.713799, -1
  %i.anm = add i32 %.713936, 1
  br label %bb.mt

bb.ms:                                            ; preds = %bb.mo
  %i.ann = add i8 %.71, -3
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.723937 = phi i32 [ %i.anm, %bb.mr ], [ %.713936, %bb.ms ] ; 5 uses
  %.723800 = phi i32 [ %i.anl, %bb.mr ], [ %.713799, %bb.ms ] ; 4 uses
  %.723636 = phi i32 [ %i.ank, %bb.mr ], [ %i.anb, %bb.ms ]
  %.72 = phi i8 [ 7, %bb.mr ], [ %i.ann, %bb.ms ] ; 5 uses
  %i.ano = load i32, ptr @hf_gsm_a_gm_rac_mult_tbf_cap, align 4
  %i.anp = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ano, ptr noundef %0, i32 noundef %i.ana, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anq = add i32 %.173720, 5                    ; 2 uses
  %i.anr = add nsw i32 %.16, -5
  %i.ans = shl i32 %.723636, 1                    ; 3 uses
  %i.ant = icmp ult i32 %i.anr, 2
  br i1 %i.ant, label %.thread, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.anu = icmp ult i8 %.72, 2
  br i1 %i.anu, label %bb.mv, label %bb.my

bb.mv:                                            ; preds = %bb.mu
  %i.anv = icmp eq i32 %.723800, 0
  br i1 %i.anv, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.anw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.723937, i32 noundef 1) ; 0 uses
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %i.anx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.723937)
  %i.any = zext i8 %i.anx to i32
  %narrow4263 = sub nuw nsw i8 24, %.72
  %i.anz = zext nneg i8 %narrow4263 to i32
  %i.aoa = shl nuw i32 %i.any, %i.anz
  %i.aob = or i32 %i.aoa, %i.ans
  %i.aoc = add i32 %.723800, -1
  %i.aod = add i32 %.723937, 1
  %i.aoe = or disjoint i8 %.72, 8
  br label %bb.my

bb.my:                                            ; preds = %bb.mu, %bb.mx
  %.733938 = phi i32 [ %i.aod, %bb.mx ], [ %.723937, %bb.mu ] ; 5 uses
  %.733801 = phi i32 [ %i.aoc, %bb.mx ], [ %.723800, %bb.mu ] ; 4 uses
  %.733637 = phi i32 [ %i.aob, %bb.mx ], [ %i.ans, %bb.mu ]
  %.73 = phi i8 [ %i.aoe, %bb.mx ], [ %.72, %bb.mu ] ; 2 uses
  %i.aof = load i32, ptr @hf_gsm_a_gm_rac_down_adv_rec_perf, align 4
  %i.aog = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aof, ptr noundef %0, i32 noundef %i.anq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aoh = add i32 %.173720, 7                    ; 2 uses
  %i.aoi = shl i32 %.733637, 2                    ; 3 uses
  %i.aoj = add i8 %.73, -2                        ; 2 uses
  %i.aok = icmp eq i32 %.16, 7
  br i1 %i.aok, label %.thread, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aol = icmp eq i8 %i.aoj, 0
  br i1 %i.aol, label %bb.na, label %bb.nd

bb.na:                                            ; preds = %bb.mz
  %i.aom = icmp eq i32 %.733801, 0
  br i1 %i.aom, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  %i.aon = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.733938, i32 noundef 1) ; 0 uses
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.aoo = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.733938)
  %i.aop = zext i8 %i.aoo to i32
  %i.aoq = shl nuw i32 %i.aop, 24
  %i.aor = or i32 %i.aoq, %i.aoi
  %i.aos = add i32 %.733801, -1
  %i.aot = add i32 %.733938, 1
  br label %bb.ne

bb.nd:                                            ; preds = %bb.mz
  %i.aou = add i8 %.73, -3
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %.743939 = phi i32 [ %i.aot, %bb.nc ], [ %.733938, %bb.nd ] ; 5 uses
  %.743802 = phi i32 [ %i.aos, %bb.nc ], [ %.733801, %bb.nd ] ; 4 uses
  %.743638 = phi i32 [ %i.aor, %bb.nc ], [ %i.aoi, %bb.nd ]
  %.74 = phi i8 [ 7, %bb.nc ], [ %i.aou, %bb.nd ] ; 3 uses
  %i.aov = load i32, ptr @hf_gsm_a_gm_rac_ext_rlc_mac_ctrl_msg_seg_cap, align 4
  %i.aow = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aov, ptr noundef %0, i32 noundef %i.aoh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aox = add i32 %.173720, 8                    ; 2 uses
  %i.aoy = shl i32 %.743638, 1                    ; 3 uses
end_hunk_0
