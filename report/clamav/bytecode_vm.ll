Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode_vm?download=true
inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_vm_execute:bb.a
  %i.izw = load i16, ptr %i.izv, align 2, !tbaa !19
  br label %.thread15031

.thread15031:                                     ; preds = %.thread15031.sink.split, %bb.byl
  %.25377 = phi i16 [ 0, %bb.byl ], [ %i.izw, %.thread15031.sink.split ]
  %i.izx = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.izy = load i32, ptr %i.izx, align 8, !tbaa !74
  %i.izz = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jaa = load i32, ptr %i.izz, align 4, !tbaa !69 ; 3 uses
  %i.jab = add i32 %i.jaa, 1
  %.not8202 = icmp ugt i32 %i.izy, %i.jab
  %i.jac = and i32 %i.jaa, 1
  %.not8203 = icmp eq i32 %i.jac, 0
  %or.cond10935 = and i1 %.not8202, %.not8203
  br i1 %or.cond10935, label %bb.byp, label %.thread12286

bb.byp:                                           ; preds = %.thread15031
  %i.jad = zext i32 %i.jaa to i64
  %i.jae = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jad
  store i16 %.25377, ptr %i.jae, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.byq:                                           ; preds = %bb.j
  %i.jaf = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jag = load i32, ptr %i.jaf, align 8, !tbaa !69 ; 6 uses
  %.not8188 = icmp sgt i32 %i.jag, -1
  br i1 %.not8188, label %bb.byu, label %bb.byr

bb.byr:                                           ; preds = %bb.byq
  %i.jah = and i32 %i.jag, 2147483647             ; 3 uses
  %.not8191 = icmp eq i32 %i.jah, 0
  br i1 %.not8191, label %.thread15040, label %bb.bys

bb.bys:                                           ; preds = %bb.byr
  %i.jai = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jaj = add nuw i32 %i.jah, 3
  %.not8192 = icmp ugt i32 %i.jai, %i.jaj
  %i.jak = and i32 %i.jag, 3
  %.not8193 = icmp eq i32 %i.jak, 0
  %or.cond10936 = and i1 %.not8193, %.not8192
  br i1 %or.cond10936, label %bb.byt, label %.thread12286

bb.byt:                                           ; preds = %bb.bys
  %i.jal = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15040.sink.split

bb.byu:                                           ; preds = %bb.byq
  %i.jam = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jan = load i32, ptr %i.jam, align 8, !tbaa !74
  %i.jao = add nuw i32 %i.jag, 3
  %.not8189 = icmp ugt i32 %i.jan, %i.jao
  %i.jap = and i32 %i.jag, 3
  %.not8190 = icmp eq i32 %i.jap, 0
  %or.cond10937 = and i1 %.not8190, %.not8189
  br i1 %or.cond10937, label %.thread15040.sink.split, label %.thread12286

.thread15040.sink.split:                          ; preds = %bb.byu, %bb.byt
  %.sink18394 = phi i32 [ %i.jah, %bb.byt ], [ %i.jag, %bb.byu ]
  %.sink18392 = phi ptr [ %i.jal, %bb.byt ], [ %.06052, %bb.byu ]
  %i.jaq = zext nneg i32 %.sink18394 to i64
  %i.jar = getelementptr inbounds nuw i8, ptr %.sink18392, i64 %i.jaq
  %i.jas = load i32, ptr %i.jar, align 4, !tbaa !48
  br label %.thread15040

.thread15040:                                     ; preds = %.thread15040.sink.split, %bb.byr
  %.25374 = phi i32 [ 0, %bb.byr ], [ %i.jas, %.thread15040.sink.split ]
  %i.jat = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jau = load i32, ptr %i.jat, align 8, !tbaa !74
  %i.jav = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jaw = load i32, ptr %i.jav, align 4, !tbaa !69 ; 3 uses
  %i.jax = add i32 %i.jaw, 3
  %.not8194 = icmp ugt i32 %i.jau, %i.jax
  %i.jay = and i32 %i.jaw, 3
  %.not8195 = icmp eq i32 %i.jay, 0
  %or.cond10938 = and i1 %.not8194, %.not8195
  br i1 %or.cond10938, label %bb.byv, label %.thread12286

bb.byv:                                           ; preds = %.thread15040
  %i.jaz = zext i32 %i.jaw to i64
  %i.jba = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jaz
  store i32 %.25374, ptr %i.jba, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.byw:                                           ; preds = %bb.j
  %i.jbb = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jbc = load i32, ptr %i.jbb, align 8, !tbaa !69 ; 6 uses
  %.not8180 = icmp sgt i32 %i.jbc, -1
  br i1 %.not8180, label %bb.bza, label %bb.byx

bb.byx:                                           ; preds = %bb.byw
  %i.jbd = and i32 %i.jbc, 2147483647             ; 3 uses
  %.not8183 = icmp eq i32 %i.jbd, 0
  br i1 %.not8183, label %.thread15049, label %bb.byy

bb.byy:                                           ; preds = %bb.byx
  %i.jbe = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jbf = add nuw i32 %i.jbd, 7
  %.not8184 = icmp ugt i32 %i.jbe, %i.jbf
  %i.jbg = and i32 %i.jbc, 7
  %.not8185 = icmp eq i32 %i.jbg, 0
  %or.cond10939 = and i1 %.not8185, %.not8184
  br i1 %or.cond10939, label %bb.byz, label %.thread12286

bb.byz:                                           ; preds = %bb.byy
  %i.jbh = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15049.sink.split

bb.bza:                                           ; preds = %bb.byw
  %i.jbi = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jbj = load i32, ptr %i.jbi, align 8, !tbaa !74
  %i.jbk = add nuw i32 %i.jbc, 7
  %.not8181 = icmp ugt i32 %i.jbj, %i.jbk
  %i.jbl = and i32 %i.jbc, 7
  %.not8182 = icmp eq i32 %i.jbl, 0
  %or.cond10940 = and i1 %.not8182, %.not8181
  br i1 %or.cond10940, label %.thread15049.sink.split, label %.thread12286

.thread15049.sink.split:                          ; preds = %bb.bza, %bb.byz
  %.sink18398 = phi i32 [ %i.jbd, %bb.byz ], [ %i.jbc, %bb.bza ]
  %.sink18396 = phi ptr [ %i.jbh, %bb.byz ], [ %.06052, %bb.bza ]
  %i.jbm = zext nneg i32 %.sink18398 to i64
  %i.jbn = getelementptr inbounds nuw i8, ptr %.sink18396, i64 %i.jbm
  %i.jbo = load i64, ptr %i.jbn, align 8, !tbaa !76
  br label %.thread15049

.thread15049:                                     ; preds = %.thread15049.sink.split, %bb.byx
  %.25371 = phi i64 [ 0, %bb.byx ], [ %i.jbo, %.thread15049.sink.split ]
  %i.jbp = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jbq = load i32, ptr %i.jbp, align 8, !tbaa !74
  %i.jbr = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jbs = load i32, ptr %i.jbr, align 4, !tbaa !69 ; 3 uses
  %i.jbt = add i32 %i.jbs, 7
  %.not8186 = icmp ugt i32 %i.jbq, %i.jbt
  %i.jbu = and i32 %i.jbs, 7
  %.not8187 = icmp eq i32 %i.jbu, 0
  %or.cond10941 = and i1 %.not8186, %.not8187
  br i1 %or.cond10941, label %bb.bzb, label %.thread12286

bb.bzb:                                           ; preds = %.thread15049
  %i.jbv = zext i32 %i.jbs to i64
  %i.jbw = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jbv
  store i64 %.25371, ptr %i.jbw, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.bzc:                                           ; preds = %bb.j, %bb.j
  %i.jbx = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jby = load i32, ptr %i.jbx, align 8, !tbaa !69 ; 8 uses
  %i.jbz = and i32 %i.jby, 1073741824
  %.not8170 = icmp eq i32 %i.jbz, 0
  br i1 %.not8170, label %bb.bze, label %bb.bzd

bb.bzd:                                           ; preds = %bb.bzc
  %i.jca = and i32 %i.jby, -1073741825            ; 2 uses
  %i.jcb = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jcc = load i32, ptr %i.jcb, align 8, !tbaa !74 ; 2 uses
  %.not8178 = icmp ugt i32 %i.jcc, %i.jca
  %i.jcd = zext i32 %i.jca to i64
  %i.jce = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jcd
  br i1 %.not8178, label %bb.bzq, label %.thread12286

bb.bze:                                           ; preds = %bb.bzc
  %.not8171 = icmp sgt i32 %i.jby, -1
  br i1 %.not8171, label %bb.bzi, label %bb.bzf

bb.bzf:                                           ; preds = %bb.bze
  %i.jcf = and i32 %i.jby, 1073741823             ; 3 uses
  %.not8174 = icmp eq i32 %i.jcf, 0
  br i1 %.not8174, label %allocate_stack.exit.thread, label %bb.bzg

bb.bzg:                                           ; preds = %bb.bzf
  %i.jcg = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jch = add nuw nsw i32 %i.jcf, 7
  %.not8175 = icmp ugt i32 %i.jcg, %i.jch
  %i.jci = and i32 %i.jby, 7
  %.not8176 = icmp eq i32 %i.jci, 0
  %or.cond10942 = and i1 %.not8176, %.not8175
  br i1 %or.cond10942, label %bb.bzh, label %.thread12286

bb.bzh:                                           ; preds = %bb.bzg
  %i.jcj = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15058

bb.bzi:                                           ; preds = %bb.bze
  %i.jck = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jcl = load i32, ptr %i.jck, align 8, !tbaa !74
  %i.jcm = add nuw nsw i32 %i.jby, 7
  %.not8172 = icmp ugt i32 %i.jcl, %i.jcm
  %i.jcn = and i32 %i.jby, 7
  %.not8173 = icmp eq i32 %i.jcn, 0
  %or.cond10943 = and i1 %.not8173, %.not8172
  br i1 %or.cond10943, label %.thread15058, label %.thread12286

.thread15058:                                     ; preds = %bb.bzi, %bb.bzh
  %.sink18401 = phi i32 [ %i.jcf, %bb.bzh ], [ %i.jby, %bb.bzi ]
  %.sink18399 = phi ptr [ %i.jcj, %bb.bzh ], [ %.06052, %bb.bzi ]
  %i.jco = zext nneg i32 %.sink18401 to i64
  %i.jcp = getelementptr inbounds nuw i8, ptr %.sink18399, i64 %i.jco
  %.25365 = load i64, ptr %i.jcp, align 8, !tbaa !76 ; 4 uses
  %i.jcq = lshr i64 %.25365, 32                   ; 2 uses
  %i.jcr = trunc nuw i64 %i.jcq to i32            ; 2 uses
  %i.jcs = trunc i64 %.25365 to i32               ; 2 uses
  %.not.i11110 = icmp eq i64 %i.jcq, 0
  br i1 %.not.i11110, label %allocate_stack.exit.thread, label %bb.bzj, !prof !105

bb.bzj:                                           ; preds = %.thread15058
  %i.jct = icmp slt i64 %.25365, 0
  br i1 %i.jct, label %bb.bzk, label %bb.bzm

bb.bzk:                                           ; preds = %bb.bzj
  %i.jcu = xor i32 %i.jcr, -1                     ; 2 uses
  %i.jcv = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i = icmp ugt i32 %i.jcv, %i.jcu
  br i1 %.not31.i, label %bb.bzl, label %allocate_stack.exit.thread, !prof !22

bb.bzl:                                           ; preds = %bb.bzk
  %i.jcw = load ptr, ptr %4, align 8, !tbaa !21
  %i.jcx = zext nneg i32 %i.jcu to i64
  %i.jcy = getelementptr inbounds nuw [16 x i8], ptr %i.jcw, i64 %i.jcx
  br label %bb.bzo

bb.bzm:                                           ; preds = %bb.bzj
  %i.jcz = add nsw i32 %i.jcr, -1                 ; 2 uses
  %i.jda = load i32, ptr %i.au, align 4, !tbaa !15
  %.not30.i = icmp ult i32 %i.jcz, %i.jda
  br i1 %.not30.i, label %bb.bzn, label %allocate_stack.exit.thread, !prof !22

bb.bzn:                                           ; preds = %bb.bzm
  %i.jdb = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.jdc = sext i32 %i.jcz to i64
  %i.jdd = getelementptr inbounds [16 x i8], ptr %i.jdb, i64 %i.jdc
  br label %bb.bzo

bb.bzo:                                           ; preds = %bb.bzn, %bb.bzl
  %.0.i11111 = phi ptr [ %i.jcy, %bb.bzl ], [ %i.jdd, %bb.bzn ] ; 2 uses
  %i.jde = getelementptr inbounds nuw i8, ptr %.0.i11111, i64 8
  %i.jdf = load i32, ptr %i.jde, align 8, !tbaa !18 ; 2 uses
  %i.jdg = icmp ugt i32 %i.jdf, %i.jcs
  %7 = add i32 %i.jcs, 1
  %8 = icmp ule i32 %7, %i.jdf
  %9 = and i1 %8, %i.jdg
  br i1 %9, label %bb.bzp, label %allocate_stack.exit.thread, !prof !22

bb.bzp:                                           ; preds = %bb.bzo
  %i.jdh = load ptr, ptr %.0.i11111, align 8, !tbaa !17 ; 2 uses
  %.not8177.not = icmp eq ptr %i.jdh, null
  br i1 %.not8177.not, label %allocate_stack.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bzp
  %i.jdi = and i64 %.25365, 4294967295
  %i.jdj = getelementptr inbounds nuw i8, ptr %i.jdh, i64 %i.jdi
  %.phi.trans.insert15798 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15799 = load i32, ptr %.phi.trans.insert15798, align 8, !tbaa !74
  br label %bb.bzq

bb.bzq:                                           ; preds = %._crit_edge, %bb.bzd
  %i.jdk = phi i32 [ %i.jcc, %bb.bzd ], [ %.pre15799, %._crit_edge ]
  %.25368 = phi ptr [ %i.jce, %bb.bzd ], [ %i.jdj, %._crit_edge ]
  %i.jdl = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jdm = load i32, ptr %i.jdl, align 8, !tbaa !75 ; 2 uses
  %.not8179 = icmp ugt i32 %i.jdk, %i.jdm
  br i1 %.not8179, label %bb.bzr, label %.thread12286

bb.bzr:                                           ; preds = %bb.bzq
  %i.jdn = load i8, ptr %.25368, align 1, !tbaa !69
  %i.jdo = zext i32 %i.jdm to i64
  %i.jdp = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdo
  store i8 %i.jdn, ptr %i.jdp, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.bzs:                                           ; preds = %bb.j
  %i.jdq = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jdr = load i32, ptr %i.jdq, align 8, !tbaa !69 ; 8 uses
  %i.jds = and i32 %i.jdr, 1073741824
  %.not8159 = icmp eq i32 %i.jds, 0
  br i1 %.not8159, label %bb.bzu, label %bb.bzt

bb.bzt:                                           ; preds = %bb.bzs
  %i.jdt = and i32 %i.jdr, -1073741825            ; 2 uses
  %i.jdu = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jdv = load i32, ptr %i.jdu, align 8, !tbaa !74 ; 2 uses
  %.not8167 = icmp ugt i32 %i.jdv, %i.jdt
  %i.jdw = zext i32 %i.jdt to i64
  %i.jdx = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdw
  br i1 %.not8167, label %bb.bzz, label %.thread12286

bb.bzu:                                           ; preds = %bb.bzs
  %.not8160 = icmp sgt i32 %i.jdr, -1
  br i1 %.not8160, label %bb.bzy, label %bb.bzv

bb.bzv:                                           ; preds = %bb.bzu
  %i.jdy = and i32 %i.jdr, 1073741823             ; 3 uses
  %.not8163 = icmp eq i32 %i.jdy, 0
  br i1 %.not8163, label %.thread15090, label %bb.bzw

bb.bzw:                                           ; preds = %bb.bzv
  %i.jdz = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jea = add nuw nsw i32 %i.jdy, 7
  %.not8164 = icmp ugt i32 %i.jdz, %i.jea
  %i.jeb = and i32 %i.jdr, 7
  %.not8165 = icmp eq i32 %i.jeb, 0
  %or.cond10944 = and i1 %.not8165, %.not8164
  br i1 %or.cond10944, label %bb.bzx, label %.thread12286

bb.bzx:                                           ; preds = %bb.bzw
  %i.jec = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15090.sink.split

bb.bzy:                                           ; preds = %bb.bzu
  %i.jed = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jee = load i32, ptr %i.jed, align 8, !tbaa !74
  %i.jef = add nuw nsw i32 %i.jdr, 7
  %.not8161 = icmp ugt i32 %i.jee, %i.jef
  %i.jeg = and i32 %i.jdr, 7
  %.not8162 = icmp eq i32 %i.jeg, 0
  %or.cond10945 = and i1 %.not8162, %.not8161
  br i1 %or.cond10945, label %.thread15090.sink.split, label %.thread12286

.thread15090.sink.split:                          ; preds = %bb.bzy, %bb.bzx
  %.sink18405 = phi i32 [ %i.jdy, %bb.bzx ], [ %i.jdr, %bb.bzy ]
  %.sink18403 = phi ptr [ %i.jec, %bb.bzx ], [ %.06052, %bb.bzy ]
  %i.jeh = zext nneg i32 %.sink18405 to i64
  %i.jei = getelementptr inbounds nuw i8, ptr %.sink18403, i64 %i.jeh
  %i.jej = load i64, ptr %i.jei, align 8, !tbaa !76
  br label %.thread15090

.thread15090:                                     ; preds = %.thread15090.sink.split, %bb.bzv
  %.25359 = phi i64 [ 0, %bb.bzv ], [ %i.jej, %.thread15090.sink.split ]
  %i.jek = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25359, i32 noundef 2) ; 2 uses
  %.not8166.not = icmp eq ptr %i.jek, null
  br i1 %.not8166.not, label %allocate_stack.exit.thread, label %.thread15090._crit_edge

.thread15090._crit_edge:                          ; preds = %.thread15090
  %.phi.trans.insert15796 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15797 = load i32, ptr %.phi.trans.insert15796, align 8, !tbaa !74
  br label %bb.bzz

bb.bzz:                                           ; preds = %.thread15090._crit_edge, %bb.bzt
  %i.jel = phi i32 [ %i.jdv, %bb.bzt ], [ %.pre15797, %.thread15090._crit_edge ]
  %.25362 = phi ptr [ %i.jdx, %bb.bzt ], [ %i.jek, %.thread15090._crit_edge ]
  %i.jem = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jen = load i32, ptr %i.jem, align 8, !tbaa !75 ; 3 uses
  %i.jeo = add i32 %i.jen, 1
  %.not8168 = icmp ugt i32 %i.jel, %i.jeo
  %i.jep = and i32 %i.jen, 1
  %.not8169 = icmp eq i32 %i.jep, 0
  %or.cond10946 = and i1 %.not8168, %.not8169
  br i1 %or.cond10946, label %.thread15107, label %.thread12286

.thread15107:                                     ; preds = %bb.bzz
  %i.jeq = load i16, ptr %.25362, align 1, !tbaa !69
  %i.jer = zext i32 %i.jen to i64
  %i.jes = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jer
  store i16 %i.jeq, ptr %i.jes, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.caa:                                           ; preds = %bb.j
  %i.jet = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jeu = load i32, ptr %i.jet, align 8, !tbaa !69 ; 8 uses
  %i.jev = and i32 %i.jeu, 1073741824
  %.not8148 = icmp eq i32 %i.jev, 0
  br i1 %.not8148, label %bb.cac, label %bb.cab

bb.cab:                                           ; preds = %bb.caa
  %i.jew = and i32 %i.jeu, -1073741825            ; 2 uses
  %i.jex = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jey = load i32, ptr %i.jex, align 8, !tbaa !74 ; 2 uses
  %.not8156 = icmp ugt i32 %i.jey, %i.jew
  %i.jez = zext i32 %i.jew to i64
  %i.jfa = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jez
  br i1 %.not8156, label %bb.cah, label %.thread12286

bb.cac:                                           ; preds = %bb.caa
  %.not8149 = icmp sgt i32 %i.jeu, -1
  br i1 %.not8149, label %bb.cag, label %bb.cad

bb.cad:                                           ; preds = %bb.cac
  %i.jfb = and i32 %i.jeu, 1073741823             ; 3 uses
  %.not8152 = icmp eq i32 %i.jfb, 0
  br i1 %.not8152, label %.thread15113, label %bb.cae

bb.cae:                                           ; preds = %bb.cad
  %i.jfc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jfd = add nuw nsw i32 %i.jfb, 7
  %.not8153 = icmp ugt i32 %i.jfc, %i.jfd
  %i.jfe = and i32 %i.jeu, 7
  %.not8154 = icmp eq i32 %i.jfe, 0
  %or.cond10947 = and i1 %.not8154, %.not8153
  br i1 %or.cond10947, label %bb.caf, label %.thread12286

bb.caf:                                           ; preds = %bb.cae
  %i.jff = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15113.sink.split

bb.cag:                                           ; preds = %bb.cac
  %i.jfg = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jfh = load i32, ptr %i.jfg, align 8, !tbaa !74
  %i.jfi = add nuw nsw i32 %i.jeu, 7
  %.not8150 = icmp ugt i32 %i.jfh, %i.jfi
  %i.jfj = and i32 %i.jeu, 7
  %.not8151 = icmp eq i32 %i.jfj, 0
  %or.cond10948 = and i1 %.not8151, %.not8150
  br i1 %or.cond10948, label %.thread15113.sink.split, label %.thread12286

.thread15113.sink.split:                          ; preds = %bb.cag, %bb.caf
  %.sink18409 = phi i32 [ %i.jfb, %bb.caf ], [ %i.jeu, %bb.cag ]
  %.sink18407 = phi ptr [ %i.jff, %bb.caf ], [ %.06052, %bb.cag ]
  %i.jfk = zext nneg i32 %.sink18409 to i64
  %i.jfl = getelementptr inbounds nuw i8, ptr %.sink18407, i64 %i.jfk
  %i.jfm = load i64, ptr %i.jfl, align 8, !tbaa !76
  br label %.thread15113

.thread15113:                                     ; preds = %.thread15113.sink.split, %bb.cad
  %.25353 = phi i64 [ 0, %bb.cad ], [ %i.jfm, %.thread15113.sink.split ]
  %i.jfn = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25353, i32 noundef 4) ; 2 uses
  %.not8155.not = icmp eq ptr %i.jfn, null
  br i1 %.not8155.not, label %allocate_stack.exit.thread, label %.thread15113._crit_edge

.thread15113._crit_edge:                          ; preds = %.thread15113
  %.phi.trans.insert15794 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15795 = load i32, ptr %.phi.trans.insert15794, align 8, !tbaa !74
  br label %bb.cah

bb.cah:                                           ; preds = %.thread15113._crit_edge, %bb.cab
  %i.jfo = phi i32 [ %i.jey, %bb.cab ], [ %.pre15795, %.thread15113._crit_edge ]
  %.25356 = phi ptr [ %i.jfa, %bb.cab ], [ %i.jfn, %.thread15113._crit_edge ]
  %i.jfp = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jfq = load i32, ptr %i.jfp, align 8, !tbaa !75 ; 3 uses
  %i.jfr = add i32 %i.jfq, 3
  %.not8157 = icmp ugt i32 %i.jfo, %i.jfr
  %i.jfs = and i32 %i.jfq, 3
  %.not8158 = icmp eq i32 %i.jfs, 0
  %or.cond10949 = and i1 %.not8157, %.not8158
  br i1 %or.cond10949, label %.thread15130, label %.thread12286

.thread15130:                                     ; preds = %bb.cah
  %i.jft = load i32, ptr %.25356, align 1, !tbaa !69
  %i.jfu = zext i32 %i.jfq to i64
  %i.jfv = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jfu
  store i32 %i.jft, ptr %i.jfv, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.cai:                                           ; preds = %bb.j
  %i.jfw = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jfx = load i32, ptr %i.jfw, align 8, !tbaa !69 ; 8 uses
  %i.jfy = and i32 %i.jfx, 1073741824
  %.not8137 = icmp eq i32 %i.jfy, 0
  br i1 %.not8137, label %bb.cak, label %bb.caj

bb.caj:                                           ; preds = %bb.cai
  %i.jfz = and i32 %i.jfx, -1073741825            ; 2 uses
  %i.jga = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jgb = load i32, ptr %i.jga, align 8, !tbaa !74 ; 2 uses
  %.not8145 = icmp ugt i32 %i.jgb, %i.jfz
  %i.jgc = zext i32 %i.jfz to i64
  %i.jgd = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgc
  br i1 %.not8145, label %bb.cap, label %.thread12286

bb.cak:                                           ; preds = %bb.cai
  %.not8138 = icmp sgt i32 %i.jfx, -1
  br i1 %.not8138, label %bb.cao, label %bb.cal

bb.cal:                                           ; preds = %bb.cak
  %i.jge = and i32 %i.jfx, 1073741823             ; 3 uses
  %.not8141 = icmp eq i32 %i.jge, 0
  br i1 %.not8141, label %.thread15136, label %bb.cam

bb.cam:                                           ; preds = %bb.cal
  %i.jgf = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jgg = add nuw nsw i32 %i.jge, 7
  %.not8142 = icmp ugt i32 %i.jgf, %i.jgg
  %i.jgh = and i32 %i.jfx, 7
  %.not8143 = icmp eq i32 %i.jgh, 0
  %or.cond10950 = and i1 %.not8143, %.not8142
  br i1 %or.cond10950, label %bb.can, label %.thread12286

bb.can:                                           ; preds = %bb.cam
  %i.jgi = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15136.sink.split

bb.cao:                                           ; preds = %bb.cak
  %i.jgj = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jgk = load i32, ptr %i.jgj, align 8, !tbaa !74
  %i.jgl = add nuw nsw i32 %i.jfx, 7
  %.not8139 = icmp ugt i32 %i.jgk, %i.jgl
  %i.jgm = and i32 %i.jfx, 7
  %.not8140 = icmp eq i32 %i.jgm, 0
  %or.cond10951 = and i1 %.not8140, %.not8139
  br i1 %or.cond10951, label %.thread15136.sink.split, label %.thread12286

.thread15136.sink.split:                          ; preds = %bb.cao, %bb.can
  %.sink18413 = phi i32 [ %i.jge, %bb.can ], [ %i.jfx, %bb.cao ]
  %.sink18411 = phi ptr [ %i.jgi, %bb.can ], [ %.06052, %bb.cao ]
  %i.jgn = zext nneg i32 %.sink18413 to i64
  %i.jgo = getelementptr inbounds nuw i8, ptr %.sink18411, i64 %i.jgn
  %i.jgp = load i64, ptr %i.jgo, align 8, !tbaa !76
  br label %.thread15136

.thread15136:                                     ; preds = %.thread15136.sink.split, %bb.cal
  %.25347 = phi i64 [ 0, %bb.cal ], [ %i.jgp, %.thread15136.sink.split ]
  %i.jgq = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25347, i32 noundef 8) ; 2 uses
  %.not8144.not = icmp eq ptr %i.jgq, null
  br i1 %.not8144.not, label %allocate_stack.exit.thread, label %.thread15136._crit_edge

.thread15136._crit_edge:                          ; preds = %.thread15136
  %.phi.trans.insert15792 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15793 = load i32, ptr %.phi.trans.insert15792, align 8, !tbaa !74
  br label %bb.cap

bb.cap:                                           ; preds = %.thread15136._crit_edge, %bb.caj
  %i.jgr = phi i32 [ %i.jgb, %bb.caj ], [ %.pre15793, %.thread15136._crit_edge ]
  %.25350 = phi ptr [ %i.jgd, %bb.caj ], [ %i.jgq, %.thread15136._crit_edge ]
  %i.jgs = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jgt = load i32, ptr %i.jgs, align 8, !tbaa !75 ; 3 uses
  %i.jgu = add i32 %i.jgt, 7
  %.not8146 = icmp ugt i32 %i.jgr, %i.jgu
  %i.jgv = and i32 %i.jgt, 7
  %.not8147 = icmp eq i32 %i.jgv, 0
  %or.cond10952 = and i1 %.not8146, %.not8147
  br i1 %or.cond10952, label %.thread15153, label %.thread12286

.thread15153:                                     ; preds = %bb.cap
  %i.jgw = load i64, ptr %.25350, align 1, !tbaa !69
  %i.jgx = zext i32 %i.jgt to i64
  %i.jgy = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgx
  store i64 %i.jgw, ptr %i.jgy, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.caq:                                           ; preds = %bb.j
  %i.jgz = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jha = load i32, ptr %i.jgz, align 4, !tbaa !69 ; 6 uses
  %.not8126 = icmp sgt i32 %i.jha, -1
  br i1 %.not8126, label %bb.cau, label %bb.car

bb.car:                                           ; preds = %bb.caq
  %i.jhb = and i32 %i.jha, 2147483647             ; 3 uses
  %.not8129 = icmp eq i32 %i.jhb, 0
  br i1 %.not8129, label %allocate_stack.exit.thread, label %bb.cas

bb.cas:                                           ; preds = %bb.car
  %i.jhc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jhd = add nuw i32 %i.jhb, 7
  %.not8130 = icmp ugt i32 %i.jhc, %i.jhd
  %i.jhe = and i32 %i.jha, 7
  %.not8131 = icmp eq i32 %i.jhe, 0
  %or.cond10953 = and i1 %.not8131, %.not8130
  br i1 %or.cond10953, label %bb.cat, label %.thread12286

bb.cat:                                           ; preds = %bb.cas
  %i.jhf = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15159

bb.cau:                                           ; preds = %bb.caq
  %i.jhg = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jhh = load i32, ptr %i.jhg, align 8, !tbaa !74
  %i.jhi = add nuw i32 %i.jha, 7
  %.not8127 = icmp ugt i32 %i.jhh, %i.jhi
  %i.jhj = and i32 %i.jha, 7
  %.not8128 = icmp eq i32 %i.jhj, 0
  %or.cond10954 = and i1 %.not8128, %.not8127
  br i1 %or.cond10954, label %.thread15159, label %.thread12286

.thread15159:                                     ; preds = %bb.cau, %bb.cat
  %.sink18416 = phi i32 [ %i.jhb, %bb.cat ], [ %i.jha, %bb.cau ]
  %.sink18414 = phi ptr [ %i.jhf, %bb.cat ], [ %.06052, %bb.cau ]
  %i.jhk = zext nneg i32 %.sink18416 to i64
  %i.jhl = getelementptr inbounds nuw i8, ptr %.sink18414, i64 %i.jhk
  %.25340 = load i64, ptr %i.jhl, align 8, !tbaa !76 ; 4 uses
  %i.jhm = lshr i64 %.25340, 32                   ; 2 uses
  %i.jhn = trunc nuw i64 %i.jhm to i32            ; 2 uses
  %i.jho = trunc i64 %.25340 to i32               ; 2 uses
  %.not.i11112 = icmp eq i64 %i.jhm, 0
  br i1 %.not.i11112, label %allocate_stack.exit.thread, label %bb.cav, !prof !105

bb.cav:                                           ; preds = %.thread15159
  %i.jhp = icmp slt i64 %.25340, 0
  br i1 %i.jhp, label %bb.caw, label %bb.cay

bb.caw:                                           ; preds = %bb.cav
  %i.jhq = xor i32 %i.jhn, -1                     ; 2 uses
  %i.jhr = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11117 = icmp ugt i32 %i.jhr, %i.jhq
  br i1 %.not31.i11117, label %bb.cax, label %allocate_stack.exit.thread, !prof !22

bb.cax:                                           ; preds = %bb.caw
  %i.jhs = load ptr, ptr %4, align 8, !tbaa !21
  %i.jht = zext nneg i32 %i.jhq to i64
  %i.jhu = getelementptr inbounds nuw [16 x i8], ptr %i.jhs, i64 %i.jht
  br label %bb.cba

bb.cay:                                           ; preds = %bb.cav
  %i.jhv = add nsw i32 %i.jhn, -1                 ; 2 uses
  %i.jhw = load i32, ptr %i.au, align 4, !tbaa !15
  %.not30.i11113 = icmp ult i32 %i.jhv, %i.jhw
  br i1 %.not30.i11113, label %bb.caz, label %allocate_stack.exit.thread, !prof !22

bb.caz:                                           ; preds = %bb.cay
  %i.jhx = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.jhy = sext i32 %i.jhv to i64
  %i.jhz = getelementptr inbounds [16 x i8], ptr %i.jhx, i64 %i.jhy
  br label %bb.cba

bb.cba:                                           ; preds = %bb.caz, %bb.cax
  %.0.i11115 = phi ptr [ %i.jhu, %bb.cax ], [ %i.jhz, %bb.caz ] ; 2 uses
  %i.jia = getelementptr inbounds nuw i8, ptr %.0.i11115, i64 8
  %i.jib = load i32, ptr %i.jia, align 8, !tbaa !18 ; 2 uses
  %i.jic = icmp ugt i32 %i.jib, %i.jho
  %10 = add i32 %i.jho, 1
  %11 = icmp ule i32 %10, %i.jib
  %12 = and i1 %11, %i.jic
  br i1 %12, label %bb.cbb, label %allocate_stack.exit.thread, !prof !22

bb.cbb:                                           ; preds = %bb.cba
  %i.jid = load ptr, ptr %.0.i11115, align 8, !tbaa !17 ; 2 uses
  %i.jie = and i64 %.25340, 4294967295
  %i.jif = getelementptr inbounds nuw i8, ptr %i.jid, i64 %i.jie
  %.not8132.not = icmp eq ptr %i.jid, null
  br i1 %.not8132.not, label %allocate_stack.exit.thread, label %bb.cbc

bb.cbc:                                           ; preds = %bb.cbb
  %i.jig = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jih = load i32, ptr %i.jig, align 8, !tbaa !69 ; 4 uses
  %.not8133 = icmp sgt i32 %i.jih, -1
  br i1 %.not8133, label %bb.cbg, label %bb.cbd

bb.cbd:                                           ; preds = %bb.cbc
  %i.jii = and i32 %i.jih, 2147483647             ; 3 uses
  %.not8135 = icmp eq i32 %i.jii, 0
  br i1 %.not8135, label %.thread15179, label %bb.cbe

bb.cbe:                                           ; preds = %bb.cbd
  %i.jij = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8136 = icmp ugt i32 %i.jij, %i.jii
  br i1 %.not8136, label %bb.cbf, label %.thread12286

bb.cbf:                                           ; preds = %bb.cbe
  %i.jik = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15179.sink.split

bb.cbg:                                           ; preds = %bb.cbc
  %i.jil = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jim = load i32, ptr %i.jil, align 8, !tbaa !74
  %.not8134 = icmp ugt i32 %i.jim, %i.jih
  br i1 %.not8134, label %.thread15179.sink.split, label %.thread12286

.thread15179.sink.split:                          ; preds = %bb.cbg, %bb.cbf
  %.sink18420 = phi i32 [ %i.jii, %bb.cbf ], [ %i.jih, %bb.cbg ]
  %.sink18418 = phi ptr [ %i.jik, %bb.cbf ], [ %.06052, %bb.cbg ]
  %i.jin = zext nneg i32 %.sink18420 to i64
  %i.jio = getelementptr inbounds nuw i8, ptr %.sink18418, i64 %i.jin
  %i.jip = load i8, ptr %i.jio, align 1, !tbaa !69
  %i.jiq = and i8 %i.jip, 1
  br label %.thread15179

.thread15179:                                     ; preds = %.thread15179.sink.split, %bb.cbd
  %.25343 = phi i8 [ 0, %bb.cbd ], [ %i.jiq, %.thread15179.sink.split ]
  store i8 %.25343, ptr %i.jif, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cbh:                                           ; preds = %bb.j
  %i.jir = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jis = load i32, ptr %i.jir, align 4, !tbaa !69 ; 6 uses
  %.not8115 = icmp sgt i32 %i.jis, -1
  br i1 %.not8115, label %bb.cbl, label %bb.cbi

bb.cbi:                                           ; preds = %bb.cbh
  %i.jit = and i32 %i.jis, 2147483647             ; 3 uses
  %.not8118 = icmp eq i32 %i.jit, 0
  br i1 %.not8118, label %allocate_stack.exit.thread, label %bb.cbj

bb.cbj:                                           ; preds = %bb.cbi
  %i.jiu = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jiv = add nuw i32 %i.jit, 7
  %.not8119 = icmp ugt i32 %i.jiu, %i.jiv
  %i.jiw = and i32 %i.jis, 7
  %.not8120 = icmp eq i32 %i.jiw, 0
  %or.cond10955 = and i1 %.not8120, %.not8119
  br i1 %or.cond10955, label %bb.cbk, label %.thread12286

bb.cbk:                                           ; preds = %bb.cbj
  %i.jix = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15196

bb.cbl:                                           ; preds = %bb.cbh
  %i.jiy = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jiz = load i32, ptr %i.jiy, align 8, !tbaa !74
  %i.jja = add nuw i32 %i.jis, 7
  %.not8116 = icmp ugt i32 %i.jiz, %i.jja
  %i.jjb = and i32 %i.jis, 7
  %.not8117 = icmp eq i32 %i.jjb, 0
  %or.cond10956 = and i1 %.not8117, %.not8116
  br i1 %or.cond10956, label %.thread15196, label %.thread12286

.thread15196:                                     ; preds = %bb.cbl, %bb.cbk
  %.sink18423 = phi i32 [ %i.jit, %bb.cbk ], [ %i.jis, %bb.cbl ]
  %.sink18421 = phi ptr [ %i.jix, %bb.cbk ], [ %.06052, %bb.cbl ]
  %i.jjc = zext nneg i32 %.sink18423 to i64
  %i.jjd = getelementptr inbounds nuw i8, ptr %.sink18421, i64 %i.jjc
  %.25333 = load i64, ptr %i.jjd, align 8, !tbaa !76 ; 4 uses
  %i.jje = lshr i64 %.25333, 32                   ; 2 uses
  %i.jjf = trunc nuw i64 %i.jje to i32            ; 2 uses
  %i.jjg = trunc i64 %.25333 to i32               ; 2 uses
  %.not.i11119 = icmp eq i64 %i.jje, 0
  br i1 %.not.i11119, label %allocate_stack.exit.thread, label %bb.cbm, !prof !105

bb.cbm:                                           ; preds = %.thread15196
  %i.jjh = icmp slt i64 %.25333, 0
  br i1 %i.jjh, label %bb.cbn, label %bb.cbp

bb.cbn:                                           ; preds = %bb.cbm
  %i.jji = xor i32 %i.jjf, -1                     ; 2 uses
  %i.jjj = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11124 = icmp ugt i32 %i.jjj, %i.jji
  br i1 %.not31.i11124, label %bb.cbo, label %allocate_stack.exit.thread, !prof !22

bb.cbo:                                           ; preds = %bb.cbn
  %i.jjk = load ptr, ptr %4, align 8, !tbaa !21
  %i.jjl = zext nneg i32 %i.jji to i64
  %i.jjm = getelementptr inbounds nuw [16 x i8], ptr %i.jjk, i64 %i.jjl
  br label %bb.cbr

bb.cbp:                                           ; preds = %bb.cbm
  %i.jjn = add nsw i32 %i.jjf, -1                 ; 2 uses
  %i.jjo = load i32, ptr %i.au, align 4, !tbaa !15
  %.not30.i11120 = icmp ult i32 %i.jjn, %i.jjo
  br i1 %.not30.i11120, label %bb.cbq, label %allocate_stack.exit.thread, !prof !22

bb.cbq:                                           ; preds = %bb.cbp
  %i.jjp = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.jjq = sext i32 %i.jjn to i64
  %i.jjr = getelementptr inbounds [16 x i8], ptr %i.jjp, i64 %i.jjq
  br label %bb.cbr

bb.cbr:                                           ; preds = %bb.cbq, %bb.cbo
  %.0.i11122 = phi ptr [ %i.jjm, %bb.cbo ], [ %i.jjr, %bb.cbq ] ; 2 uses
  %i.jjs = getelementptr inbounds nuw i8, ptr %.0.i11122, i64 8
  %i.jjt = load i32, ptr %i.jjs, align 8, !tbaa !18 ; 2 uses
  %i.jju = icmp ugt i32 %i.jjt, %i.jjg
  %13 = add i32 %i.jjg, 1
  %14 = icmp ule i32 %13, %i.jjt
  %15 = and i1 %14, %i.jju
  br i1 %15, label %bb.cbs, label %allocate_stack.exit.thread, !prof !22

bb.cbs:                                           ; preds = %bb.cbr
  %i.jjv = load ptr, ptr %.0.i11122, align 8, !tbaa !17 ; 2 uses
  %i.jjw = and i64 %.25333, 4294967295
  %i.jjx = getelementptr inbounds nuw i8, ptr %i.jjv, i64 %i.jjw
  %.not8121.not = icmp eq ptr %i.jjv, null
  br i1 %.not8121.not, label %allocate_stack.exit.thread, label %bb.cbt

bb.cbt:                                           ; preds = %bb.cbs
  %i.jjy = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jjz = load i32, ptr %i.jjy, align 8, !tbaa !69 ; 4 uses
  %.not8122 = icmp sgt i32 %i.jjz, -1
  br i1 %.not8122, label %bb.cbx, label %bb.cbu

bb.cbu:                                           ; preds = %bb.cbt
  %i.jka = and i32 %i.jjz, 2147483647             ; 3 uses
  %.not8124 = icmp eq i32 %i.jka, 0
  br i1 %.not8124, label %.thread15216, label %bb.cbv

bb.cbv:                                           ; preds = %bb.cbu
  %i.jkb = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8125 = icmp ugt i32 %i.jkb, %i.jka
  br i1 %.not8125, label %bb.cbw, label %.thread12286

bb.cbw:                                           ; preds = %bb.cbv
  %i.jkc = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15216.sink.split

bb.cbx:                                           ; preds = %bb.cbt
  %i.jkd = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jke = load i32, ptr %i.jkd, align 8, !tbaa !74
  %.not8123 = icmp ugt i32 %i.jke, %i.jjz
  br i1 %.not8123, label %.thread15216.sink.split, label %.thread12286

.thread15216.sink.split:                          ; preds = %bb.cbx, %bb.cbw
  %.sink18427 = phi i32 [ %i.jka, %bb.cbw ], [ %i.jjz, %bb.cbx ]
  %.sink18425 = phi ptr [ %i.jkc, %bb.cbw ], [ %.06052, %bb.cbx ]
  %i.jkf = zext nneg i32 %.sink18427 to i64
  %i.jkg = getelementptr inbounds nuw i8, ptr %.sink18425, i64 %i.jkf
  %i.jkh = load i8, ptr %i.jkg, align 1, !tbaa !69
  br label %.thread15216

.thread15216:                                     ; preds = %.thread15216.sink.split, %bb.cbu
  %.25336 = phi i8 [ 0, %bb.cbu ], [ %i.jkh, %.thread15216.sink.split ]
  store i8 %.25336, ptr %i.jjx, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cby:                                           ; preds = %bb.j
  %i.jki = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jkj = load i32, ptr %i.jki, align 4, !tbaa !69 ; 6 uses
  %.not8102 = icmp sgt i32 %i.jkj, -1
  br i1 %.not8102, label %bb.ccc, label %bb.cbz

bb.cbz:                                           ; preds = %bb.cby
  %i.jkk = and i32 %i.jkj, 2147483647             ; 3 uses
  %.not8105 = icmp eq i32 %i.jkk, 0
  br i1 %.not8105, label %allocate_stack.exit.thread, label %bb.cca

bb.cca:                                           ; preds = %bb.cbz
  %i.jkl = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jkm = add nuw i32 %i.jkk, 7
  %.not8106 = icmp ugt i32 %i.jkl, %i.jkm
  %i.jkn = and i32 %i.jkj, 7
  %.not8107 = icmp eq i32 %i.jkn, 0
  %or.cond10957 = and i1 %.not8107, %.not8106
  br i1 %or.cond10957, label %bb.ccb, label %.thread12286

bb.ccb:                                           ; preds = %bb.cca
  %i.jko = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15233

bb.ccc:                                           ; preds = %bb.cby
  %i.jkp = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jkq = load i32, ptr %i.jkp, align 8, !tbaa !74
  %i.jkr = add nuw i32 %i.jkj, 7
  %.not8103 = icmp ugt i32 %i.jkq, %i.jkr
  %i.jks = and i32 %i.jkj, 7
  %.not8104 = icmp eq i32 %i.jks, 0
  %or.cond10958 = and i1 %.not8104, %.not8103
  br i1 %or.cond10958, label %.thread15233, label %.thread12286

.thread15233:                                     ; preds = %bb.ccc, %bb.ccb
  %.sink18430 = phi i32 [ %i.jkk, %bb.ccb ], [ %i.jkj, %bb.ccc ]
  %.sink18428 = phi ptr [ %i.jko, %bb.ccb ], [ %.06052, %bb.ccc ]
  %i.jkt = zext nneg i32 %.sink18430 to i64
  %i.jku = getelementptr inbounds nuw i8, ptr %.sink18428, i64 %i.jkt
  %.25326 = load i64, ptr %i.jku, align 8, !tbaa !76 ; 4 uses
  %i.jkv = lshr i64 %.25326, 32                   ; 2 uses
  %i.jkw = trunc nuw i64 %i.jkv to i32            ; 2 uses
  %i.jkx = trunc i64 %.25326 to i32               ; 2 uses
  %.not.i11126 = icmp eq i64 %i.jkv, 0
  br i1 %.not.i11126, label %allocate_stack.exit.thread, label %bb.ccd, !prof !105

bb.ccd:                                           ; preds = %.thread15233
  %i.jky = icmp slt i64 %.25326, 0
  br i1 %i.jky, label %bb.cce, label %bb.ccg

bb.cce:                                           ; preds = %bb.ccd
  %i.jkz = xor i32 %i.jkw, -1                     ; 2 uses
  %i.jla = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11131 = icmp ugt i32 %i.jla, %i.jkz
  br i1 %.not31.i11131, label %bb.ccf, label %allocate_stack.exit.thread, !prof !22

bb.ccf:                                           ; preds = %bb.cce
  %i.jlb = load ptr, ptr %4, align 8, !tbaa !21
  %i.jlc = zext nneg i32 %i.jkz to i64
  %i.jld = getelementptr inbounds nuw [16 x i8], ptr %i.jlb, i64 %i.jlc
  br label %bb.cci

bb.ccg:                                           ; preds = %bb.ccd
  %i.jle = add nsw i32 %i.jkw, -1                 ; 2 uses
  %i.jlf = load i32, ptr %i.au, align 4, !tbaa !15
  %.not30.i11127 = icmp ult i32 %i.jle, %i.jlf
  br i1 %.not30.i11127, label %bb.cch, label %allocate_stack.exit.thread, !prof !22

bb.cch:                                           ; preds = %bb.ccg
  %i.jlg = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.jlh = sext i32 %i.jle to i64
  %i.jli = getelementptr inbounds [16 x i8], ptr %i.jlg, i64 %i.jlh
  br label %bb.cci

bb.cci:                                           ; preds = %bb.cch, %bb.ccf
  %.0.i11129 = phi ptr [ %i.jld, %bb.ccf ], [ %i.jli, %bb.cch ] ; 2 uses
  %i.jlj = getelementptr inbounds nuw i8, ptr %.0.i11129, i64 8
  %i.jlk = load i32, ptr %i.jlj, align 8, !tbaa !18 ; 3 uses
  %i.jll = icmp ugt i32 %i.jlk, %i.jkx
  %.not32.i11130 = icmp ugt i32 %i.jlk, 1
  %or.cond.not.i = and i1 %i.jll, %.not32.i11130
  %i.jlm = add i32 %i.jkx, 2
  %i.jln = icmp ule i32 %i.jlm, %i.jlk
  %i.jlo = and i1 %i.jln, %or.cond.not.i
  br i1 %i.jlo, label %bb.ccj, label %allocate_stack.exit.thread, !prof !22

bb.ccj:                                           ; preds = %bb.cci
  %i.jlp = load ptr, ptr %.0.i11129, align 8, !tbaa !17 ; 2 uses
  %i.jlq = and i64 %.25326, 4294967295
  %i.jlr = getelementptr inbounds nuw i8, ptr %i.jlp, i64 %i.jlq
  %.not8108.not = icmp eq ptr %i.jlp, null
  br i1 %.not8108.not, label %allocate_stack.exit.thread, label %bb.cck

bb.cck:                                           ; preds = %bb.ccj
  %i.jls = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jlt = load i32, ptr %i.jls, align 8, !tbaa !69 ; 6 uses
  %.not8109 = icmp sgt i32 %i.jlt, -1
  br i1 %.not8109, label %bb.cco, label %bb.ccl

bb.ccl:                                           ; preds = %bb.cck
  %i.jlu = and i32 %i.jlt, 2147483647             ; 3 uses
  %.not8112 = icmp eq i32 %i.jlu, 0
  br i1 %.not8112, label %.thread15253, label %bb.ccm

bb.ccm:                                           ; preds = %bb.ccl
  %i.jlv = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jlw = add nuw i32 %i.jlu, 1
  %.not8113 = icmp ugt i32 %i.jlv, %i.jlw
  %i.jlx = and i32 %i.jlt, 1
  %.not8114 = icmp eq i32 %i.jlx, 0
  %or.cond10959 = and i1 %.not8114, %.not8113
  br i1 %or.cond10959, label %bb.ccn, label %.thread12286

bb.ccn:                                           ; preds = %bb.ccm
  %i.jly = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15253.sink.split

bb.cco:                                           ; preds = %bb.cck
  %i.jlz = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jma = load i32, ptr %i.jlz, align 8, !tbaa !74
  %i.jmb = add nuw i32 %i.jlt, 1
  %.not8110 = icmp ugt i32 %i.jma, %i.jmb
  %i.jmc = and i32 %i.jlt, 1
  %.not8111 = icmp eq i32 %i.jmc, 0
  %or.cond10960 = and i1 %.not8111, %.not8110
  br i1 %or.cond10960, label %.thread15253.sink.split, label %.thread12286

.thread15253.sink.split:                          ; preds = %bb.cco, %bb.ccn
  %.sink18434 = phi i32 [ %i.jlu, %bb.ccn ], [ %i.jlt, %bb.cco ]
  %.sink18432 = phi ptr [ %i.jly, %bb.ccn ], [ %.06052, %bb.cco ]
  %i.jmd = zext nneg i32 %.sink18434 to i64
  %i.jme = getelementptr inbounds nuw i8, ptr %.sink18432, i64 %i.jmd
  %i.jmf = load i16, ptr %i.jme, align 2, !tbaa !19
  br label %.thread15253

.thread15253:                                     ; preds = %.thread15253.sink.split, %bb.ccl
  %.25329 = phi i16 [ 0, %bb.ccl ], [ %i.jmf, %.thread15253.sink.split ]
  store i16 %.25329, ptr %i.jlr, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.ccp:                                           ; preds = %bb.j
  %i.jmg = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jmh = load i32, ptr %i.jmg, align 4, !tbaa !69 ; 6 uses
  %.not8089 = icmp sgt i32 %i.jmh, -1
  br i1 %.not8089, label %bb.cct, label %bb.ccq

bb.ccq:                                           ; preds = %bb.ccp
  %i.jmi = and i32 %i.jmh, 2147483647             ; 3 uses
  %.not8092 = icmp eq i32 %i.jmi, 0
  br i1 %.not8092, label %allocate_stack.exit.thread, label %bb.ccr

bb.ccr:                                           ; preds = %bb.ccq
  %i.jmj = load i32, ptr %i.ar, align 4, !tbaa !62
end_hunk_0
