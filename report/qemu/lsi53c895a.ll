Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/lsi53c895a?download=true
inline.NumInlined: 321
inline.NumDeleted: 142
begin_hunk_0_@lsi_execute_script:bb.a
bb.hn:                                            ; preds = %bb.hm
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.zr, ptr noundef nonnull %i.zt, ptr noundef nonnull %i.zv, ptr noundef nonnull %i.zx) #11
  br label %trace_lsi_execute_script_io_set.exit

trace_lsi_execute_script_io_set.exit:             ; preds = %bb.hk, %bb.hl, %bb.hm, %bb.hn
  br i1 %i.zq, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %trace_lsi_execute_script_io_set.exit
  %i.aac = load i8, ptr %i.au, align 2
  %i.aad = or i8 %i.aac, 8
  store i8 %i.aad, ptr %i.au, align 2
  %i.aae = load i8, ptr %i.av, align 2
  %i.aaf = and i8 %i.aae, 112
  %i.aag = or disjoint i8 %i.aaf, -114
  store i8 %i.aag, ptr %i.av, align 2
  %i.aah = load i8, ptr %i.an, align 1
  %i.aai = and i8 %i.aah, -8
  %i.aaj = or disjoint i8 %i.aai, 6
  store i8 %i.aaj, ptr %i.an, align 1
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %trace_lsi_execute_script_io_set.exit
  br i1 %i.zs, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aak = load i8, ptr %i.av, align 2
  %i.aal = or i8 %i.aak, 64
  store i8 %i.aal, ptr %i.av, align 2
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  br i1 %i.zu, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aam = load i32, ptr @qemu_loglevel, align 4
  %i.aan = and i32 %i.aam, 1024
  %.not554 = icmp eq i32 %i.aan, 0
  br i1 %.not554, label %bb.hu, label %bb.ht, !prof !9

bb.ht:                                            ; preds = %bb.hs
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.140) #11
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hs, %bb.ht, %bb.hr
  br i1 %i.zw, label %lsi_wait_reselect.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store i32 1, ptr %i.am, align 8
  br label %lsi_wait_reselect.exit

bb.hw:                                            ; preds = %bb.gi
  %i.aao = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.aap = shufflevector <4 x i32> %i.aao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aaq = and <4 x i32> %i.aap, <i32 1024, i32 512, i32 64, i32 8>
  %i.aar = icmp eq <4 x i32> %i.aaq, zeroinitializer ; 4 uses
  %i.aas = extractelement <4 x i1> %i.aar, i64 3  ; 2 uses
  %i.aat = select i1 %i.aas, ptr @.str.136, ptr @.str.135
  %i.aau = extractelement <4 x i1> %i.aar, i64 2  ; 2 uses
  %i.aav = select i1 %i.aau, ptr @.str.136, ptr @.str.137
  %i.aaw = extractelement <4 x i1> %i.aar, i64 1
  %i.aax = select i1 %i.aaw, ptr @.str.136, ptr @.str.138
  %i.aay = extractelement <4 x i1> %i.aar, i64 0  ; 2 uses
  %i.aaz = select i1 %i.aay, ptr @.str.136, ptr @.str.139
  %i.aba = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i472 = icmp eq i32 %i.aba, 0
  br i1 %.not.i472, label %trace_lsi_execute_script_io_clear.exit, label %bb.hx, !prof !9

bb.hx:                                            ; preds = %bb.hw
  %i.abb = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_IO_CLEAR_DSTATE, align 2
  %.not4.i473 = icmp eq i16 %i.abb, 0
  br i1 %.not4.i473, label %trace_lsi_execute_script_io_clear.exit, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.abc = load i32, ptr @qemu_loglevel, align 4
  %i.abd = and i32 %i.abc, 32768
  %.not5.i474 = icmp eq i32 %i.abd, 0
  br i1 %.not5.i474, label %trace_lsi_execute_script_io_clear.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.202, ptr noundef nonnull %i.aat, ptr noundef nonnull %i.aav, ptr noundef nonnull %i.aax, ptr noundef nonnull %i.aaz) #11
  br label %trace_lsi_execute_script_io_clear.exit

trace_lsi_execute_script_io_clear.exit:           ; preds = %bb.hw, %bb.hx, %bb.hy, %bb.hz
  br i1 %i.aas, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %trace_lsi_execute_script_io_clear.exit
  %i.abe = load i8, ptr %i.au, align 2
  %i.abf = and i8 %i.abe, -9
  store i8 %i.abf, ptr %i.au, align 2
  %i.abg = load i8, ptr %i.av, align 2
  %i.abh = and i8 %i.abg, -9
  store i8 %i.abh, ptr %i.av, align 2
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %trace_lsi_execute_script_io_clear.exit
  br i1 %i.aau, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.abi = load i8, ptr %i.av, align 2
  %i.abj = and i8 %i.abi, -65
  store i8 %i.abj, ptr %i.av, align 2
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  br i1 %i.aay, label %lsi_wait_reselect.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  store i32 0, ptr %i.am, align 8
  br label %lsi_wait_reselect.exit

bb.if:                                            ; preds = %bb.gd
  %i.abk = lshr i32 %i.cu, 16
  %i.abl = and i32 %i.abk, 127
  %i.abm = and i32 %i.cu, 128
  %i.abn = or disjoint i32 %i.abl, %i.abm         ; 4 uses
  %i.abo = lshr i32 %i.cu, 8                      ; 2 uses
  %i.abp = trunc i32 %i.abo to i8                 ; 4 uses
  %i.abq = and i32 %i.dm, 7                       ; 4 uses
  %i.abr = zext nneg i32 %i.wq to i64
  %i.abs = getelementptr [8 x i8], ptr @lsi_execute_script.opcode_names, i64 %i.abr
  %i.abt = getelementptr i8, ptr %i.abs, i64 -40
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = zext nneg i32 %i.abq to i64
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr @lsi_execute_script.operator_names, i64 %i.abv
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = load i8, ptr %i.ao, align 1
  %i.abz = zext i8 %i.aby to i32
  %i.aca = and i32 %i.cu, 8388608
  %.not363 = icmp eq i32 %i.aca, 0                ; 2 uses
  %i.acb = select i1 %.not363, ptr @.str.136, ptr @.str.152
  %i.acc = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i475 = icmp eq i32 %i.acc, 0
  br i1 %.not.i475, label %trace_lsi_execute_script_io_opcode.exit, label %bb.ig, !prof !9

bb.ig:                                            ; preds = %bb.if
  %i.acd = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_IO_OPCODE_DSTATE, align 2
  %.not5.i476 = icmp eq i16 %i.acd, 0
  br i1 %.not5.i476, label %trace_lsi_execute_script_io_opcode.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ace = load i32, ptr @qemu_loglevel, align 4
  %i.acf = and i32 %i.ace, 32768
  %.not6.i = icmp eq i32 %i.acf, 0
  br i1 %.not6.i, label %trace_lsi_execute_script_io_opcode.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.acg = and i32 %i.abo, 255
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.203, ptr noundef %i.abu, i32 noundef range(i32 0, 256) %i.abn, ptr noundef %i.abx, i32 noundef %i.acg, i32 noundef range(i32 0, 256) %i.abz, ptr noundef nonnull %i.acb) #11
  br label %trace_lsi_execute_script_io_opcode.exit

trace_lsi_execute_script_io_opcode.exit:          ; preds = %bb.if, %bb.ig, %bb.ih, %bb.ii
  switch i32 %i.wq, label %default.unreachable617 [
    i32 5, label %bb.ij
    i32 6, label %bb.ik
    i32 7, label %bb.im
  ]

bb.ij:                                            ; preds = %trace_lsi_execute_script_io_opcode.exit
  %i.ach = load i8, ptr %i.ao, align 1
  br label %bb.iq

bb.ik:                                            ; preds = %trace_lsi_execute_script_io_opcode.exit
  %.not365 = icmp eq i32 %i.abq, 0
  br i1 %.not365, label %.thread547, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aci = call fastcc zeroext i8 @lsi_reg_readb(ptr noundef nonnull %0, i32 noundef %i.abn)
  br label %bb.iq

bb.im:                                            ; preds = %trace_lsi_execute_script_io_opcode.exit
  %.not364 = icmp eq i32 %i.abq, 0
  br i1 %.not364, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.acj = call fastcc zeroext i8 @lsi_reg_readb(ptr noundef nonnull %0, i32 noundef %i.abn)
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.1337 = phi i8 [ %i.acj, %bb.in ], [ 0, %bb.im ] ; 2 uses
  br i1 %.not363, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ack = load i8, ptr %i.ao, align 1
  br label %bb.iq

bb.iq:                                            ; preds = %bb.io, %bb.il, %bb.ip, %bb.ij
  %.2338 = phi i8 [ %.1337, %bb.io ], [ %i.ach, %bb.ij ], [ %.1337, %bb.ip ], [ %i.aci, %bb.il ] ; 9 uses
  %.0335 = phi i8 [ %i.abp, %bb.io ], [ %i.abp, %bb.ij ], [ %i.ack, %bb.ip ], [ %i.abp, %bb.il ] ; 9 uses
  switch i32 %i.abq, label %default.unreachable617 [
    i32 0, label %bb.ja
    i32 1, label %bb.ir
    i32 2, label %bb.is
    i32 3, label %bb.it
    i32 4, label %bb.iu
    i32 5, label %bb.iv
    i32 6, label %bb.iw
    i32 7, label %bb.ix
  ]

bb.ir:                                            ; preds = %bb.iq
  %i.acl = lshr i8 %.2338, 7
  %1 = shl i8 %.2338, 1
  %i.acm = load i32, ptr %i.am, align 8
  %2 = trunc i32 %i.acm to i8
  %3 = or i8 %1, %2
  %i.acn = zext nneg i8 %i.acl to i32
  store i32 %i.acn, ptr %i.am, align 8
  br label %bb.ja

bb.is:                                            ; preds = %bb.iq
  %i.aco = or i8 %.0335, %.2338
  br label %bb.ja

bb.it:                                            ; preds = %bb.iq
  %i.acp = xor i8 %.0335, %.2338
  br label %bb.ja

bb.iu:                                            ; preds = %bb.iq
  %i.acq = and i8 %.0335, %.2338
  br label %bb.ja

bb.iv:                                            ; preds = %bb.iq
  %i.acr = and i8 %.2338, 1
  %i.acs = load i32, ptr %i.am, align 8
  %.tr = trunc i32 %i.acs to i8
  %i.act = call i8 @llvm.fshl.i8(i8 %.tr, i8 %.2338, i8 7)
  %i.acu = zext nneg i8 %i.acr to i32
  store i32 %i.acu, ptr %i.am, align 8
  br label %bb.ja

bb.iw:                                            ; preds = %bb.iq
  %i.acv = add i8 %.0335, %.2338                  ; 2 uses
  %i.acw = icmp ult i8 %i.acv, %.0335
  %i.acx = zext i1 %i.acw to i32
  store i32 %i.acx, ptr %i.am, align 8
  br label %bb.ja

bb.ix:                                            ; preds = %bb.iq
  %i.acy = load i32, ptr %i.am, align 8           ; 2 uses
  %i.acz = trunc i32 %i.acy to i8
  %i.ada = add i8 %.0335, %.2338
  %i.adb = add i8 %i.ada, %i.acz                  ; 4 uses
  %.not366 = icmp eq i32 %i.acy, 0
  br i1 %.not366, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.adc = icmp ule i8 %i.adb, %.0335
  %i.add = zext i1 %i.adc to i32
  store i32 %i.add, ptr %i.am, align 8
  br label %bb.ja

bb.iz:                                            ; preds = %bb.ix
  %i.ade = icmp ult i8 %i.adb, %.0335
  %i.adf = zext i1 %i.ade to i32
  store i32 %i.adf, ptr %i.am, align 8
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iq, %bb.iy, %bb.iz, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir
  %.3 = phi i8 [ %i.adb, %bb.iz ], [ %i.adb, %bb.iy ], [ %3, %bb.ir ], [ %i.aco, %bb.is ], [ %i.acp, %bb.it ], [ %i.acq, %bb.iu ], [ %i.act, %bb.iv ], [ %i.acv, %bb.iw ], [ %.0335, %bb.iq ] ; 2 uses
  %i.adg = icmp eq i32 %i.wq, 6
  br i1 %i.adg, label %.thread547, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call fastcc void @lsi_reg_writeb(ptr noundef nonnull %0, i32 noundef %i.abn, i8 noundef zeroext %.3)
  br label %lsi_wait_reselect.exit

.thread547:                                       ; preds = %bb.ik, %bb.ja
  %.3549 = phi i8 [ %.3, %bb.ja ], [ %i.abp, %bb.ik ]
  store i8 %.3549, ptr %i.ao, align 1
  br label %lsi_wait_reselect.exit

bb.jc:                                            ; preds = %trace_lsi_execute_script.exit
  %i.adh = and i32 %i.cu, 3014656
  %i.adi = icmp eq i32 %i.adh, 0
  br i1 %i.adi, label %bb.jd, label %bb.jh

bb.jd:                                            ; preds = %bb.jc
  %i.adj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i477 = icmp eq i32 %i.adj, 0
  br i1 %.not.i477, label %lsi_wait_reselect.exit, label %bb.je, !prof !9

bb.je:                                            ; preds = %bb.jd
  %i.adk = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_TC_NOP_DSTATE, align 2
  %.not1.i478 = icmp eq i16 %i.adk, 0
  br i1 %.not1.i478, label %lsi_wait_reselect.exit, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.adl = load i32, ptr @qemu_loglevel, align 4
  %i.adm = and i32 %i.adl, 32768
  %.not2.i479 = icmp eq i32 %i.adm, 0
  br i1 %.not2.i479, label %lsi_wait_reselect.exit, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.204) #11
  br label %lsi_wait_reselect.exit

bb.jh:                                            ; preds = %bb.jc
  %i.adn = load i8, ptr %i.al, align 2
  %i.ado = and i8 %i.adn, 4
  %.not356 = icmp eq i8 %i.ado, 0
  br i1 %.not356, label %bb.jm, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.adp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i480 = icmp eq i32 %i.adp, 0
  br i1 %.not.i480, label %trace_lsi_execute_script_tc_delayedselect_timeout.exit, label %bb.jj, !prof !9

bb.jj:                                            ; preds = %bb.ji
  %i.adq = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_TC_DELAYEDSELECT_TIMEOUT_DSTATE, align 2
  %.not1.i481 = icmp eq i16 %i.adq, 0
  br i1 %.not1.i481, label %trace_lsi_execute_script_tc_delayedselect_timeout.exit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.adr = load i32, ptr @qemu_loglevel, align 4
  %i.ads = and i32 %i.adr, 32768
  %.not2.i482 = icmp eq i32 %i.ads, 0
  br i1 %.not2.i482, label %trace_lsi_execute_script_tc_delayedselect_timeout.exit, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.205) #11
  br label %trace_lsi_execute_script_tc_delayedselect_timeout.exit

trace_lsi_execute_script_tc_delayedselect_timeout.exit: ; preds = %bb.ji, %bb.jj, %bb.jk, %bb.jl
  %i.adt = load i8, ptr %i.aa, align 1
  %i.adu = and i8 %i.adt, -3
  store i8 %i.adu, ptr %i.aa, align 1
  br label %lsi_wait_reselect.exit

bb.jm:                                            ; preds = %bb.jh
  %i.adv = and i32 %i.cu, 524288                  ; 2 uses
  %.not357 = icmp eq i32 %i.adv, 0                ; 2 uses
  %.lobit = lshr exact i32 %i.adv, 19             ; 4 uses
  %i.adw = and i32 %i.cu, 2097152
  %.not358 = icmp eq i32 %i.adw, 0
  br i1 %.not358, label %.critedge, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.adx = load i32, ptr %i.am, align 8           ; 4 uses
  %i.ady = icmp eq i32 %i.adx, %.lobit
  %i.adz = zext i1 %i.ady to i32
  %i.aea = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i483 = icmp eq i32 %i.aea, 0
  br i1 %.not.i483, label %trace_lsi_execute_script_tc_compc.exit, label %bb.jo, !prof !9

bb.jo:                                            ; preds = %bb.jn
  %i.aeb = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_TC_COMPC_DSTATE, align 2
  %.not1.i484 = icmp eq i16 %i.aeb, 0
  br i1 %.not1.i484, label %trace_lsi_execute_script_tc_compc.exit, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aec = load i32, ptr @qemu_loglevel, align 4
  %i.aed = and i32 %i.aec, 32768
  %.not2.i485 = icmp eq i32 %i.aed, 0
  br i1 %.not2.i485, label %trace_lsi_execute_script_tc_compc.exit, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.206, i32 noundef range(i32 0, 2) %i.adz) #11
  %.pre580 = load i32, ptr %i.am, align 8
  br label %trace_lsi_execute_script_tc_compc.exit

trace_lsi_execute_script_tc_compc.exit:           ; preds = %bb.jn, %bb.jo, %bb.jp, %bb.jq
  %i.aee = phi i32 [ %i.adx, %bb.jn ], [ %i.adx, %bb.jo ], [ %i.adx, %bb.jp ], [ %.pre580, %bb.jq ]
  %i.aef = icmp ne i32 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %i.aeh = icmp eq i32 %.lobit, %i.aeg
  br i1 %i.aeh, label %.critedge, label %.critedge400

.critedge:                                        ; preds = %bb.jm, %trace_lsi_execute_script_tc_compc.exit
  %i.aei = and i32 %i.cu, 131072
  %.not359 = icmp eq i32 %i.aei, 0
  br i1 %.not359, label %.critedge396, label %bb.jr

bb.jr:                                            ; preds = %.critedge
  %i.aej = load i8, ptr %i.an, align 1
  %i.aek = and i8 %i.aej, 7                       ; 4 uses
  %i.ael = zext nneg i8 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr @scsi_phases, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = and i32 %i.dm, 7                       ; 2 uses
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr @scsi_phases, i64 %i.aep
  %i.aer = load ptr, ptr %i.aeq, align 8
  %i.aes = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i486 = icmp eq i32 %i.aes, 0
  br i1 %.not.i486, label %trace_lsi_execute_script_tc_compp.exit, label %bb.js, !prof !9

bb.js:                                            ; preds = %bb.jr
  %i.aet = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_TC_COMPP_DSTATE, align 2
  %.not2.i487 = icmp eq i16 %i.aet, 0
  br i1 %.not2.i487, label %trace_lsi_execute_script_tc_compp.exit, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aeu = load i32, ptr @qemu_loglevel, align 4
  %i.aev = and i32 %i.aeu, 32768
  %.not3.i488 = icmp eq i32 %i.aev, 0
  br i1 %.not3.i488, label %trace_lsi_execute_script_tc_compp.exit, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aew = select i1 %.not357, i32 33, i32 61
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.207, ptr noundef %i.aen, i32 noundef %i.aew, ptr noundef %i.aer) #11
  %.pre581 = load i8, ptr %i.an, align 1
  %.pre589 = and i8 %.pre581, 7
  br label %trace_lsi_execute_script_tc_compp.exit

trace_lsi_execute_script_tc_compp.exit:           ; preds = %bb.jr, %bb.js, %bb.jt, %bb.ju
  %.pre-phi590 = phi i8 [ %i.aek, %bb.jr ], [ %i.aek, %bb.js ], [ %i.aek, %bb.jt ], [ %.pre589, %bb.ju ]
  %i.aex = zext nneg i8 %.pre-phi590 to i32
  %i.aey = icmp eq i32 %i.aeo, %i.aex
  %i.aez = zext i1 %i.aey to i32
  %i.afa = icmp eq i32 %.lobit, %i.aez
  br i1 %i.afa, label %.critedge396, label %.critedge400

.critedge396:                                     ; preds = %.critedge, %trace_lsi_execute_script_tc_compp.exit
  %i.afb = and i32 %i.cu, 262144
  %.not360 = icmp eq i32 %i.afb, 0
  br i1 %.not360, label %.critedge399, label %.critedge398

.critedge398:                                     ; preds = %.critedge396
  %i.afc = xor i32 %i.cu, -1
  %i.afd = lshr i32 %i.afc, 8                     ; 3 uses
  %i.afe = load i8, ptr %i.ao, align 1
  %i.aff = zext i8 %i.afe to i32                  ; 4 uses
  %i.afg = and i32 %i.cu, 255
  %i.afh = and i32 %i.afg, %i.afd                 ; 2 uses
  %i.afi = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i489 = icmp eq i32 %i.afi, 0
  br i1 %.not.i489, label %trace_lsi_execute_script_tc_compd.exit, label %bb.jv, !prof !9

bb.jv:                                            ; preds = %.critedge398
  %i.afj = load i16, ptr @_TRACE_LSI_EXECUTE_SCRIPT_TC_COMPD_DSTATE, align 2
  %.not4.i490 = icmp eq i16 %i.afj, 0
  br i1 %.not4.i490, label %trace_lsi_execute_script_tc_compd.exit, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.afk = load i32, ptr @qemu_loglevel, align 4
  %i.afl = and i32 %i.afk, 32768
  %.not5.i491 = icmp eq i32 %i.afl, 0
  br i1 %.not5.i491, label %trace_lsi_execute_script_tc_compd.exit, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.afm = and i32 %i.afd, 255
  %i.afn = select i1 %.not357, i32 33, i32 61
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.208, i32 noundef range(i32 0, 256) %i.aff, i32 noundef %i.afm, i32 noundef %i.afn, i32 noundef range(i32 0, 256) %i.afh) #11
  %.pre582 = load i8, ptr %i.ao, align 1
  %.pre588 = zext i8 %.pre582 to i32
  br label %trace_lsi_execute_script_tc_compd.exit

trace_lsi_execute_script_tc_compd.exit:           ; preds = %.critedge398, %bb.jv, %bb.jw, %bb.jx
  %.pre-phi = phi i32 [ %i.aff, %.critedge398 ], [ %i.aff, %bb.jv ], [ %i.aff, %bb.jw ], [ %.pre588, %bb.jx ]
  %i.afo = and i32 %i.afd, %.pre-phi
  %i.afp = icmp eq i32 %i.afo, %i.afh
  %i.afq = zext i1 %i.afp to i32
  %i.afr = icmp eq i32 %.lobit, %i.afq
  br i1 %i.afr, label %.critedge399, label %.critedge400

.critedge399:                                     ; preds = %.critedge396, %trace_lsi_execute_script_tc_compd.exit
  %i.afs = and i32 %i.cu, 8388608
  %.not361 = icmp eq i32 %i.afs, 0
  br i1 %.not361, label %bb.jz, label %bb.jy
end_hunk_0
