Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-eh?download=true
inline.NumInlined: 312
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ata_eh_recover:bb.a
  br label %bb.el

bb.el:                                            ; preds = %bb.eo, %bb.ek
  %.026.i268 = phi i32 [ 0, %bb.ek ], [ %i.acz, %bb.eo ] ; 4 uses
  %.011.i.i269 = phi i32 [ %i.aco, %bb.ek ], [ %i.adb, %bb.eo ] ; 2 uses
  %i.acp = sext i32 %.011.i.i269 to i64
  %i.acq = getelementptr [16 x i8], ptr %i.aci, i64 %i.acp ; 3 uses
  %i.acr = getelementptr i8, ptr %i.acq, i64 4
  %i.acs = load i32, ptr %i.acr, align 4
  %.not.i.i270 = icmp eq i32 %i.acs, 0
  br i1 %.not.i.i270, label %ata_ering_map.exit.i272, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.act = load volatile i64, ptr @jiffies, align 64
  %i.acu = load i32, ptr %i.acq, align 8
  %.not.i24.i271 = icmp sgt i32 %i.acu, -1
  br i1 %.not.i24.i271, label %bb.en, label %ata_ering_map.exit.i272

bb.en:                                            ; preds = %bb.em
  %i.acv = getelementptr i8, ptr %i.acq, i64 8
  %i.acw = load i64, ptr %i.acv, align 8
  %i.acx = call i64 @llvm.usub.sat.i64(i64 %i.act, i64 60000)
  %i.acy = icmp ult i64 %i.acw, %i.acx
  br i1 %i.acy, label %ata_ering_map.exit.i272, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.acz = add i32 %.026.i268, 1                  ; 2 uses
  %i.ada = add i32 %.011.i.i269, 31
  %i.adb = srem i32 %i.ada, 32                    ; 2 uses
  %.not16.i.i274 = icmp eq i32 %i.adb, %i.aco
  br i1 %.not16.i.i274, label %ata_ering_map.exit.i272, label %bb.el, !llvm.loop !0

ata_ering_map.exit.i272:                          ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %.1.i273 = phi i32 [ %.026.i268, %bb.el ], [ %i.acz, %bb.eo ], [ %.026.i268, %bb.en ], [ %.026.i268, %bb.em ]
  %i.adc = icmp sgt i32 %.1.i273, 2
  br i1 %i.adc, label %bb.ep, label %ata_eh_schedule_probe.exit277

bb.ep:                                            ; preds = %ata_ering_map.exit.i272
  %i.add = call i32 @sata_down_spd_limit(ptr noundef %i.aap, i32 noundef 1) #16 ; 0 uses
  br label %ata_eh_schedule_probe.exit277

ata_eh_schedule_probe.exit277:                    ; preds = %bb.ep, %ata_ering_map.exit.i272
  %i.ade = load i32, ptr %i.aah, align 8
  %i.adf = zext i32 %i.ade to i64
  %i.adg = getelementptr [4 x i8], ptr %i.aag, i64 %i.adf
  store i32 3, ptr %i.adg, align 4
  %i.adh = getelementptr i8, ptr %i.zc, i64 1096
  %i.adi = load i32, ptr %i.aah, align 8
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr [36 x i8], ptr %i.adh, i64 %i.adj
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %i.adk, i8 0, i64 36, i1 false)
  br label %ata_eh_handle_dev_fail.exit

bb.eq:                                            ; preds = %ata_dev_enabled.exit.thread.i262, %bb.ec
  %i.adl = getelementptr i8, ptr %i.zc, i64 984   ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 8
  %i.adn = or i32 %i.adm, 6
  store i32 %i.adn, ptr %i.adl, align 8
  br label %ata_eh_handle_dev_fail.exit

ata_eh_handle_dev_fail.exit:                      ; preds = %bb.eg, %bb.ef, %bb.eq, %ata_eh_schedule_probe.exit277, %atapi_eh_clear_ua.exit
  %i.ado = phi i32 [ %i.yz, %atapi_eh_clear_ua.exit ], [ %i.za, %bb.eq ], [ %i.za, %ata_eh_schedule_probe.exit277 ], [ %i.za, %bb.ef ], [ %i.za, %bb.eg ] ; 2 uses
  %.11305 = phi i32 [ %.11.ph, %atapi_eh_clear_ua.exit ], [ %.11304, %bb.eq ], [ %.11304, %ata_eh_schedule_probe.exit277 ], [ %.11304, %bb.ef ], [ %.11304, %bb.eg ] ; 3 uses
  %.val = load i32, ptr %i.g, align 32
  %i.adp = and i32 %.val, 4
  %.not331 = icmp eq i32 %i.adp, 0
  br i1 %.not331, label %bb.es, label %bb.er

bb.er:                                            ; preds = %ata_eh_handle_dev_fail.exit
  %.val222 = load i32, ptr %i.w, align 8
  %.not332 = icmp eq i32 %.val222, 0
  br i1 %.not332, label %.thread320, label %.thread

bb.es:                                            ; preds = %bb.du, %ata_eh_handle_dev_fail.exit
  %.1142.ph = phi i32 [ %i.ado, %ata_eh_handle_dev_fail.exit ], [ %.0141419, %bb.du ] ; 2 uses
  %.12.ph = phi i32 [ %.11305, %ata_eh_handle_dev_fail.exit ], [ %.10, %bb.du ] ; 2 uses
  %i.adq = call ptr @ata_link_next(ptr noundef nonnull %.6424, ptr noundef %0, i32 noundef 2) #16 ; 2 uses
  %.not179 = icmp eq ptr %i.adq, null
  br i1 %.not179, label %.thread320, label %.lr.ph426, !llvm.loop !146

.thread320:                                       ; preds = %bb.es, %bb.er
  %.6355 = phi ptr [ %.6424, %bb.er ], [ null, %bb.es ]
  %.2143 = phi i32 [ %i.ado, %bb.er ], [ %.1142.ph, %bb.es ]
  %.13 = phi i32 [ %.11305, %bb.er ], [ %.12.ph, %bb.es ]
  %.not198 = icmp eq i32 %.2143, 0
  br i1 %.not198, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.er, %.thread320, %bb.ag, %bb.af
  %.14 = phi i32 [ %i.gu, %bb.af ], [ %i.gu, %bb.ag ], [ %.13, %.thread320 ], [ %.11305, %bb.er ] ; 3 uses
  %.7 = phi ptr [ %.3128380, %bb.af ], [ %.3128380, %bb.ag ], [ %.6355, %.thread320 ], [ %.6424, %bb.er ]
  %i.adr = icmp ne i32 %.14, 0
  %i.ads = icmp ne ptr %2, null
  %or.cond = and i1 %i.ads, %i.adr
  br i1 %or.cond, label %bb.et, label %.thread324

bb.et:                                            ; preds = %.thread
  store ptr %.7, ptr %2, align 8
  br label %.thread324

.thread324:                                       ; preds = %._crit_edge403, %bb.s, %.thread316, %.thread, %bb.et
  %.4 = phi i32 [ 0, %.thread316 ], [ %.14, %bb.et ], [ %.14, %.thread ], [ 0, %bb.s ], [ 0, %._crit_edge403 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_timeout(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ata_dev_power_set_active(ptr noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -94, -95) i32 @ata_eh_link_set_lpm(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 64               ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8256
  %i.c = icmp eq ptr %0, %i.b
  br i1 %i.c, label %ata_is_host_link.exit.thread, label %ata_is_host_link.exit

ata_is_host_link.exit:                            ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 15808
  %i.e = load ptr, ptr %i.d, align 64
  %i.f = icmp eq ptr %0, %i.e
  br i1 %i.f, label %ata_is_host_link.exit.thread, label %bb.b

ata_is_host_link.exit.thread:                     ; preds = %bb.a, %ata_is_host_link.exit
  br label %bb.b

bb.b:                                             ; preds = %ata_is_host_link.exit, %ata_is_host_link.exit.thread
  %i.g = phi ptr [ %i.a, %ata_is_host_link.exit.thread ], [ null, %ata_is_host_link.exit ] ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 804        ; 4 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %.fr205 = freeze i64 %i.k
  %i.l = and i64 %.fr205, 8388608
  %.not = icmp eq i64 %i.l, 0                     ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 784        ; 7 uses
  %i.n = load i32, ptr %i.m, align 16
  %i.o = and i32 %i.n, 256
  %.not143 = icmp eq i32 %i.o, 0
  br i1 %.not143, label %bb.c, label %bb.al

bb.c:                                             ; preds = %bb.b
  %.not144 = icmp eq ptr %i.g, null               ; 4 uses
  br i1 %.not144, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 256
  %i.s = load ptr, ptr %i.r, align 8
  %.not145 = icmp eq ptr %i.s, null
  br i1 %.not145, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp eq i32 %1, 0
  br i1 %i.t, label %bb.f, label %.critedge, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "862: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 862b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 862) #15, !srcloc !155
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 2172, i32 2307, i64 16) #15, !srcloc !156
  tail call void asm sideeffect "863: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 863b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 863) #15, !srcloc !157
  br label %bb.al

.critedge:                                        ; preds = %bb.e
  %i.u = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %0, i32 noundef 0) #16 ; 2 uses
  %.not147193 = icmp eq ptr %i.u, null
  br i1 %.not147193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.k
  %.0116197 = phi ptr [ %i.ap, %bb.k ], [ %i.u, %.critedge ] ; 9 uses
  %.0117196 = phi ptr [ %spec.select, %bb.k ], [ null, %.critedge ] ; 2 uses
  %.0119195 = phi ptr [ %.1120, %bb.k ], [ null, %.critedge ] ; 2 uses
  %.0126194 = phi i32 [ %spec.select165, %bb.k ], [ 3, %.critedge ]
  %i.v = getelementptr i8, ptr %.0116197, i64 1048
  %.val171 = load i16, ptr %i.v, align 2          ; 2 uses
  %i.w = add i16 %.val171, -1
  %or.cond.i = icmp ult i16 %i.w, -2              ; 2 uses
  %i.x = and i16 %.val171, 512
  %i.y = icmp ne i16 %i.x, 0
  %.0.i = and i1 %or.cond.i, %i.y                 ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.0116197, i64 1052
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = and i16 %i.aa, 8
  %i.ac = icmp ne i16 %i.ab, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.ad = phi i1 [ %i.ac, %bb.g ], [ false, %.lr.ph ] ; 2 uses
  %.not158 = icmp eq ptr %.0117196, null
  %spec.select = select i1 %.not158, ptr %.0116197, ptr %.0117196 ; 2 uses
  %.not159 = icmp eq ptr %.0119195, null
  %or.cond = and i1 %i.ad, %.not
  %or.cond164 = or i1 %.0.i, %or.cond
  %spec.select167 = select i1 %or.cond164, ptr %.0116197, ptr null
  %.1120 = select i1 %.not159, ptr %spec.select167, ptr %.0119195 ; 2 uses
  %spec.select165.v = select i1 %.0.i, i32 -2, i32 -4
  %spec.select165 = and i32 %spec.select165.v, %.0126194 ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @ata_dev_set_feature(ptr noundef nonnull %.0116197, i8 noundef zeroext -112, i8 noundef zeroext 3) #16 ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ae, 1
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %.0116197, align 64       ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 64
  %i.ah = getelementptr i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr i8, ptr %i.af, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %.0116197, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add i32 %i.am, %i.ak
  %i.ao = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %i.ai, i32 noundef %i.an, i32 noundef %i.ae) #19 ; 0 uses
  br label %bb.z

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ap = tail call ptr @ata_dev_next(ptr noundef nonnull %.0116197, ptr noundef nonnull %0, i32 noundef 0) #16 ; 2 uses
  %.not147 = icmp eq ptr %i.ap, null
  br i1 %.not147, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.k, %.critedge
  %.0126.lcssa = phi i32 [ 3, %.critedge ], [ %spec.select165, %bb.k ] ; 3 uses
  %.0119.lcssa = phi ptr [ null, %.critedge ], [ %.1120, %bb.k ] ; 2 uses
  %.0117.lcssa = phi ptr [ null, %.critedge ], [ %spec.select, %bb.k ]
  br i1 %.not144, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.aq = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 256
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 %i.at(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0126.lcssa) #16 ; 2 uses
  %.not148 = icmp eq i32 %i.au, 0
  br i1 %.not148, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.g, i64 15808
  %i.aw = load ptr, ptr %i.av, align 64           ; 2 uses
  %.not149 = icmp eq ptr %i.aw, null
  br i1 %.not149, label %.thread177, label %bb.n

.thread177:                                       ; preds = %bb.m
  store i32 %1, ptr %i.h, align 4
  br label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.aq, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 256
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.aw, i32 noundef %1, i32 noundef %.0126.lcssa) #16
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.bb = tail call i32 @sata_pmp_set_lpm(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0126.lcssa) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o
  %.2125 = phi i32 [ %i.au, %bb.l ], [ %i.ba, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  switch i32 %.2125, label %bb.r [
    i32 0, label %bb.s
    i32 -95, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.m, align 16
  %i.bd = or i32 %i.bc, 256
  store i32 %i.bd, ptr %i.m, align 16
  br label %bb.al

bb.r:                                             ; preds = %bb.p
  %.not155 = icmp eq ptr %.0119.lcssa, null
  %i.be = select i1 %.not155, ptr %.0117.lcssa, ptr %.0119.lcssa
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  store i32 %1, ptr %i.h, align 4
  br i1 %.not144, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.thread177, %bb.s
  %i.bf = getelementptr i8, ptr %i.g, i64 15808
  %i.bg = load ptr, ptr %i.bf, align 64           ; 2 uses
  %.not151 = icmp eq ptr %i.bg, null
  br i1 %.not151, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.bg, i64 804
  store i32 %1, ptr %i.bh, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bi = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %0, i32 noundef 0) #16 ; 3 uses
  %.not152200 = icmp eq ptr %i.bi, null
  br i1 %.not152200, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.v
  %i.bj = icmp ugt i32 %1, 2
  %or.cond5 = and i1 %i.bj, %.not
  br i1 %or.cond5, label %.lr.ph203.split, label %.lr.ph203.split.us

.lr.ph203.split.us:                               ; preds = %.lr.ph203, %.lr.ph203.split.us
  %.1201.us = phi ptr [ %i.bk, %.lr.ph203.split.us ], [ %i.bi, %.lr.ph203 ]
  %i.bk = tail call ptr @ata_dev_next(ptr noundef nonnull %.1201.us, ptr noundef nonnull %0, i32 noundef 0) #16 ; 2 uses
  %.not152.us = icmp eq ptr %i.bk, null
  br i1 %.not152.us, label %._crit_edge204, label %.lr.ph203.split.us, !llvm.loop !154

.lr.ph203.split:                                  ; preds = %.lr.ph203, %.thread178
  %.1201 = phi ptr [ %i.cb, %.thread178 ], [ %i.bi, %.lr.ph203 ] ; 7 uses
  %i.bl = getelementptr i8, ptr %.1201, i64 1048
  %i.bm = load i16, ptr %i.bl, align 8
  %.off168 = add i16 %i.bm, -1
  %switch169 = icmp ult i16 %.off168, -2
  br i1 %switch169, label %bb.w, label %.thread178

bb.w:                                             ; preds = %.lr.ph203.split
  %i.bn = getelementptr i8, ptr %.1201, i64 1052
  %i.bo = load i16, ptr %i.bn, align 4
  %i.bp = and i16 %i.bo, 8
  %.not206 = icmp eq i16 %i.bp, 0
  br i1 %.not206, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call i32 @ata_dev_set_feature(ptr noundef nonnull %.1201, i8 noundef zeroext 16, i8 noundef zeroext 3) #16 ; 2 uses
  %or.cond9 = icmp ugt i32 %i.bq, 1
  br i1 %or.cond9, label %bb.y, label %.thread178

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %.1201, align 64          ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 64
  %i.bt = getelementptr i8, ptr %i.bs, i64 36
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %.1201, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %i.bu, i32 noundef %i.bz, i32 noundef %i.bq) #19 ; 0 uses
  br label %bb.z

.thread178:                                       ; preds = %.lr.ph203.split, %bb.x, %bb.w
  %i.cb = tail call ptr @ata_dev_next(ptr noundef nonnull %.1201, ptr noundef nonnull %0, i32 noundef 0) #16 ; 2 uses
  %.not152 = icmp eq ptr %i.cb, null
  br i1 %.not152, label %._crit_edge204, label %.lr.ph203.split, !llvm.loop !154

._crit_edge204:                                   ; preds = %.lr.ph203.split.us, %.thread178, %bb.v
  %i.cc = load volatile i64, ptr @jiffies, align 64
  %i.cd = getelementptr i8, ptr %0, i64 7488
  store i64 %i.cc, ptr %i.cd, align 64
  %i.ce = load i32, ptr %i.m, align 16
  %i.cf = or i32 %i.ce, 1024
  store i32 %i.cf, ptr %i.m, align 16
  br label %bb.al

bb.z:                                             ; preds = %bb.y, %bb.j, %bb.r
  %.5 = phi i32 [ -5, %bb.j ], [ %.2125, %bb.r ], [ -5, %bb.y ] ; 2 uses
  %.2 = phi ptr [ %.0116197, %bb.j ], [ %i.be, %bb.r ], [ %.1201, %bb.y ] ; 3 uses
  store i32 %i.i, ptr %i.h, align 4
  br i1 %.not144, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %i.g, i64 15808
  %i.ch = load ptr, ptr %i.cg, align 64           ; 2 uses
  %.not160 = icmp eq ptr %i.ch, null
  br i1 %.not160, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr i8, ptr %i.ch, i64 804
  store i32 %i.i, ptr %i.ci, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.not161 = icmp eq ptr %.2, null
  br i1 %.not161, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = getelementptr i8, ptr %0, i64 1088
  %i.ck = getelementptr i8, ptr %.2, i64 8
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp slt i32 %i.co, 3
  br i1 %i.cp, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cq = load ptr, ptr %0, align 64              ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 15816
  %.val = load i32, ptr %i.cr, align 8
  %.not186 = icmp eq i32 %.val, 0
  br i1 %.not186, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr i8, ptr %i.cq, i64 15808
  %i.ct = load ptr, ptr %i.cs, align 64
  %.not162 = icmp eq ptr %i.ct, null
end_hunk_0
