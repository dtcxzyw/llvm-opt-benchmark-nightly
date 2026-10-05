Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode_vm?download=true
inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_vm_execute:bb.a
  %i.izw = load i16, ptr %i.izv, align 2, !tbaa !19
  br label %.thread15031

.thread15031:                                     ; preds = %.thread15031.sink.split, %bb.bym
  %.25377 = phi i16 [ 0, %bb.bym ], [ %i.izw, %.thread15031.sink.split ]
  %i.izx = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.izy = load i32, ptr %i.izx, align 8, !tbaa !74
  %i.izz = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jaa = load i32, ptr %i.izz, align 4, !tbaa !69 ; 3 uses
  %i.jab = add i32 %i.jaa, 1
  %.not8202 = icmp ugt i32 %i.izy, %i.jab
  %i.jac = and i32 %i.jaa, 1
  %.not8203 = icmp eq i32 %i.jac, 0
  %or.cond10935 = and i1 %.not8202, %.not8203
  br i1 %or.cond10935, label %bb.byq, label %.thread12286

bb.byq:                                           ; preds = %.thread15031
  %i.jad = zext i32 %i.jaa to i64
  %i.jae = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jad
  store i16 %.25377, ptr %i.jae, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.byr:                                           ; preds = %bb.k
  %i.jaf = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jag = load i32, ptr %i.jaf, align 8, !tbaa !69 ; 6 uses
  %.not8188 = icmp sgt i32 %i.jag, -1
  br i1 %.not8188, label %bb.byv, label %bb.bys

bb.bys:                                           ; preds = %bb.byr
  %i.jah = and i32 %i.jag, 2147483647             ; 3 uses
  %.not8191 = icmp eq i32 %i.jah, 0
  br i1 %.not8191, label %.thread15040, label %bb.byt

bb.byt:                                           ; preds = %bb.bys
  %i.jai = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jaj = add nuw i32 %i.jah, 3
  %.not8192 = icmp ugt i32 %i.jai, %i.jaj
  %i.jak = and i32 %i.jag, 3
  %.not8193 = icmp eq i32 %i.jak, 0
  %or.cond10936 = and i1 %.not8193, %.not8192
  br i1 %or.cond10936, label %bb.byu, label %.thread12286

bb.byu:                                           ; preds = %bb.byt
  %i.jal = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15040.sink.split

bb.byv:                                           ; preds = %bb.byr
  %i.jam = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jan = load i32, ptr %i.jam, align 8, !tbaa !74
  %i.jao = add nuw i32 %i.jag, 3
  %.not8189 = icmp ugt i32 %i.jan, %i.jao
  %i.jap = and i32 %i.jag, 3
  %.not8190 = icmp eq i32 %i.jap, 0
  %or.cond10937 = and i1 %.not8190, %.not8189
  br i1 %or.cond10937, label %.thread15040.sink.split, label %.thread12286

.thread15040.sink.split:                          ; preds = %bb.byv, %bb.byu
  %.sink18403 = phi i32 [ %i.jah, %bb.byu ], [ %i.jag, %bb.byv ]
  %.sink18401 = phi ptr [ %i.jal, %bb.byu ], [ %.06052, %bb.byv ]
  %i.jaq = zext nneg i32 %.sink18403 to i64
  %i.jar = getelementptr inbounds nuw i8, ptr %.sink18401, i64 %i.jaq
  %i.jas = load i32, ptr %i.jar, align 4, !tbaa !48
  br label %.thread15040

.thread15040:                                     ; preds = %.thread15040.sink.split, %bb.bys
  %.25374 = phi i32 [ 0, %bb.bys ], [ %i.jas, %.thread15040.sink.split ]
  %i.jat = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jau = load i32, ptr %i.jat, align 8, !tbaa !74
  %i.jav = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jaw = load i32, ptr %i.jav, align 4, !tbaa !69 ; 3 uses
  %i.jax = add i32 %i.jaw, 3
  %.not8194 = icmp ugt i32 %i.jau, %i.jax
  %i.jay = and i32 %i.jaw, 3
  %.not8195 = icmp eq i32 %i.jay, 0
  %or.cond10938 = and i1 %.not8194, %.not8195
  br i1 %or.cond10938, label %bb.byw, label %.thread12286

bb.byw:                                           ; preds = %.thread15040
  %i.jaz = zext i32 %i.jaw to i64
  %i.jba = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jaz
  store i32 %.25374, ptr %i.jba, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.byx:                                           ; preds = %bb.k
  %i.jbb = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jbc = load i32, ptr %i.jbb, align 8, !tbaa !69 ; 6 uses
  %.not8180 = icmp sgt i32 %i.jbc, -1
  br i1 %.not8180, label %bb.bzb, label %bb.byy

bb.byy:                                           ; preds = %bb.byx
  %i.jbd = and i32 %i.jbc, 2147483647             ; 3 uses
  %.not8183 = icmp eq i32 %i.jbd, 0
  br i1 %.not8183, label %.thread15049, label %bb.byz

bb.byz:                                           ; preds = %bb.byy
  %i.jbe = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jbf = add nuw i32 %i.jbd, 7
  %.not8184 = icmp ugt i32 %i.jbe, %i.jbf
  %i.jbg = and i32 %i.jbc, 7
  %.not8185 = icmp eq i32 %i.jbg, 0
  %or.cond10939 = and i1 %.not8185, %.not8184
  br i1 %or.cond10939, label %bb.bza, label %.thread12286

bb.bza:                                           ; preds = %bb.byz
  %i.jbh = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15049.sink.split

bb.bzb:                                           ; preds = %bb.byx
  %i.jbi = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jbj = load i32, ptr %i.jbi, align 8, !tbaa !74
  %i.jbk = add nuw i32 %i.jbc, 7
  %.not8181 = icmp ugt i32 %i.jbj, %i.jbk
  %i.jbl = and i32 %i.jbc, 7
  %.not8182 = icmp eq i32 %i.jbl, 0
  %or.cond10940 = and i1 %.not8182, %.not8181
  br i1 %or.cond10940, label %.thread15049.sink.split, label %.thread12286

.thread15049.sink.split:                          ; preds = %bb.bzb, %bb.bza
  %.sink18407 = phi i32 [ %i.jbd, %bb.bza ], [ %i.jbc, %bb.bzb ]
  %.sink18405 = phi ptr [ %i.jbh, %bb.bza ], [ %.06052, %bb.bzb ]
  %i.jbm = zext nneg i32 %.sink18407 to i64
  %i.jbn = getelementptr inbounds nuw i8, ptr %.sink18405, i64 %i.jbm
  %i.jbo = load i64, ptr %i.jbn, align 8, !tbaa !76
  br label %.thread15049

.thread15049:                                     ; preds = %.thread15049.sink.split, %bb.byy
  %.25371 = phi i64 [ 0, %bb.byy ], [ %i.jbo, %.thread15049.sink.split ]
  %i.jbp = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jbq = load i32, ptr %i.jbp, align 8, !tbaa !74
  %i.jbr = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jbs = load i32, ptr %i.jbr, align 4, !tbaa !69 ; 3 uses
  %i.jbt = add i32 %i.jbs, 7
  %.not8186 = icmp ugt i32 %i.jbq, %i.jbt
  %i.jbu = and i32 %i.jbs, 7
  %.not8187 = icmp eq i32 %i.jbu, 0
  %or.cond10941 = and i1 %.not8186, %.not8187
  br i1 %or.cond10941, label %bb.bzc, label %.thread12286

bb.bzc:                                           ; preds = %.thread15049
  %i.jbv = zext i32 %i.jbs to i64
  %i.jbw = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jbv
  store i64 %.25371, ptr %i.jbw, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.bzd:                                           ; preds = %bb.k, %bb.k
  %i.jbx = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jby = load i32, ptr %i.jbx, align 8, !tbaa !69 ; 8 uses
  %i.jbz = and i32 %i.jby, 1073741824
  %.not8170 = icmp eq i32 %i.jbz, 0
  br i1 %.not8170, label %bb.bzf, label %bb.bze

bb.bze:                                           ; preds = %bb.bzd
  %i.jca = and i32 %i.jby, -1073741825            ; 2 uses
  %i.jcb = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jcc = load i32, ptr %i.jcb, align 8, !tbaa !74 ; 2 uses
  %.not8178 = icmp ugt i32 %i.jcc, %i.jca
  %i.jcd = zext i32 %i.jca to i64
  %i.jce = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jcd
  br i1 %.not8178, label %bb.bzr, label %.thread12286

bb.bzf:                                           ; preds = %bb.bzd
  %.not8171 = icmp sgt i32 %i.jby, -1
  br i1 %.not8171, label %bb.bzj, label %bb.bzg

bb.bzg:                                           ; preds = %bb.bzf
  %i.jcf = and i32 %i.jby, 1073741823             ; 3 uses
  %.not8174 = icmp eq i32 %i.jcf, 0
  br i1 %.not8174, label %allocate_stack.exit.thread, label %bb.bzh

bb.bzh:                                           ; preds = %bb.bzg
  %i.jcg = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jch = add nuw nsw i32 %i.jcf, 7
  %.not8175 = icmp ugt i32 %i.jcg, %i.jch
  %i.jci = and i32 %i.jby, 7
  %.not8176 = icmp eq i32 %i.jci, 0
  %or.cond10942 = and i1 %.not8176, %.not8175
  br i1 %or.cond10942, label %bb.bzi, label %.thread12286

bb.bzi:                                           ; preds = %bb.bzh
  %i.jcj = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15058

bb.bzj:                                           ; preds = %bb.bzf
  %i.jck = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jcl = load i32, ptr %i.jck, align 8, !tbaa !74
  %i.jcm = add nuw nsw i32 %i.jby, 7
  %.not8172 = icmp ugt i32 %i.jcl, %i.jcm
  %i.jcn = and i32 %i.jby, 7
  %.not8173 = icmp eq i32 %i.jcn, 0
  %or.cond10943 = and i1 %.not8173, %.not8172
  br i1 %or.cond10943, label %.thread15058, label %.thread12286

.thread15058:                                     ; preds = %bb.bzj, %bb.bzi
  %.sink18410 = phi i32 [ %i.jcf, %bb.bzi ], [ %i.jby, %bb.bzj ]
  %.sink18408 = phi ptr [ %i.jcj, %bb.bzi ], [ %.06052, %bb.bzj ]
  %i.jco = zext nneg i32 %.sink18410 to i64
  %i.jcp = getelementptr inbounds nuw i8, ptr %.sink18408, i64 %i.jco
  %.25365 = load i64, ptr %i.jcp, align 8, !tbaa !76 ; 4 uses
  %i.jcq = lshr i64 %.25365, 32                   ; 2 uses
  %i.jcr = trunc nuw i64 %i.jcq to i32            ; 2 uses
  %i.jcs = trunc i64 %.25365 to i32
  %.not.i11110 = icmp eq i64 %i.jcq, 0
  br i1 %.not.i11110, label %allocate_stack.exit.thread, label %bb.bzk, !prof !105

bb.bzk:                                           ; preds = %.thread15058
  %i.jct = icmp slt i64 %.25365, 0
  br i1 %i.jct, label %bb.bzl, label %bb.bzn

bb.bzl:                                           ; preds = %bb.bzk
  %i.jcu = xor i32 %i.jcr, -1                     ; 2 uses
  %i.jcv = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i = icmp ugt i32 %i.jcv, %i.jcu
  br i1 %.not31.i, label %bb.bzm, label %allocate_stack.exit.thread, !prof !22

bb.bzm:                                           ; preds = %bb.bzl
  %i.jcw = load ptr, ptr %4, align 8, !tbaa !21
  %i.jcx = zext nneg i32 %i.jcu to i64
  %i.jcy = getelementptr inbounds nuw [16 x i8], ptr %i.jcw, i64 %i.jcx
  br label %bb.bzp

bb.bzn:                                           ; preds = %bb.bzk
  %i.jcz = add nsw i32 %i.jcr, -1                 ; 2 uses
  %i.jda = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i = icmp ult i32 %i.jcz, %i.jda
  br i1 %.not30.i, label %bb.bzo, label %allocate_stack.exit.thread, !prof !22

bb.bzo:                                           ; preds = %bb.bzn
  %i.jdb = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jdc = sext i32 %i.jcz to i64
  %i.jdd = getelementptr inbounds [16 x i8], ptr %i.jdb, i64 %i.jdc
  br label %bb.bzp

bb.bzp:                                           ; preds = %bb.bzo, %bb.bzm
  %.0.i11111 = phi ptr [ %i.jcy, %bb.bzm ], [ %i.jdd, %bb.bzo ] ; 2 uses
  %i.jde = getelementptr inbounds nuw i8, ptr %.0.i11111, i64 8
  %i.jdf = load i32, ptr %i.jde, align 8, !tbaa !14
  %i.jdg = icmp ugt i32 %i.jdf, %i.jcs
  br i1 %i.jdg, label %bb.bzq, label %allocate_stack.exit.thread, !prof !22

bb.bzq:                                           ; preds = %bb.bzp
  %i.jdh = load ptr, ptr %.0.i11111, align 8, !tbaa !13 ; 2 uses
  %.not8177.not = icmp eq ptr %i.jdh, null
  br i1 %.not8177.not, label %allocate_stack.exit.thread, label %._crit_edge15806

._crit_edge15806:                                 ; preds = %bb.bzq
  %i.jdi = and i64 %.25365, 4294967295
  %i.jdj = getelementptr inbounds nuw i8, ptr %i.jdh, i64 %i.jdi
  %.phi.trans.insert15807 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15808 = load i32, ptr %.phi.trans.insert15807, align 8, !tbaa !74
  br label %bb.bzr

bb.bzr:                                           ; preds = %._crit_edge15806, %bb.bze
  %i.jdk = phi i32 [ %i.jcc, %bb.bze ], [ %.pre15808, %._crit_edge15806 ]
  %.25368 = phi ptr [ %i.jce, %bb.bze ], [ %i.jdj, %._crit_edge15806 ]
  %i.jdl = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jdm = load i32, ptr %i.jdl, align 8, !tbaa !75 ; 2 uses
  %.not8179 = icmp ugt i32 %i.jdk, %i.jdm
  br i1 %.not8179, label %bb.bzs, label %.thread12286

bb.bzs:                                           ; preds = %bb.bzr
  %i.jdn = load i8, ptr %.25368, align 1, !tbaa !69
  %i.jdo = zext i32 %i.jdm to i64
  %i.jdp = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdo
  store i8 %i.jdn, ptr %i.jdp, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.bzt:                                           ; preds = %bb.k
  %i.jdq = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jdr = load i32, ptr %i.jdq, align 8, !tbaa !69 ; 8 uses
  %i.jds = and i32 %i.jdr, 1073741824
  %.not8159 = icmp eq i32 %i.jds, 0
  br i1 %.not8159, label %bb.bzv, label %bb.bzu

bb.bzu:                                           ; preds = %bb.bzt
  %i.jdt = and i32 %i.jdr, -1073741825            ; 2 uses
  %i.jdu = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jdv = load i32, ptr %i.jdu, align 8, !tbaa !74 ; 2 uses
  %.not8167 = icmp ugt i32 %i.jdv, %i.jdt
  %i.jdw = zext i32 %i.jdt to i64
  %i.jdx = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdw
  br i1 %.not8167, label %bb.caa, label %.thread12286

bb.bzv:                                           ; preds = %bb.bzt
  %.not8160 = icmp sgt i32 %i.jdr, -1
  br i1 %.not8160, label %bb.bzz, label %bb.bzw

bb.bzw:                                           ; preds = %bb.bzv
  %i.jdy = and i32 %i.jdr, 1073741823             ; 3 uses
  %.not8163 = icmp eq i32 %i.jdy, 0
  br i1 %.not8163, label %.thread15090, label %bb.bzx

bb.bzx:                                           ; preds = %bb.bzw
  %i.jdz = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jea = add nuw nsw i32 %i.jdy, 7
  %.not8164 = icmp ugt i32 %i.jdz, %i.jea
  %i.jeb = and i32 %i.jdr, 7
  %.not8165 = icmp eq i32 %i.jeb, 0
  %or.cond10944 = and i1 %.not8165, %.not8164
  br i1 %or.cond10944, label %bb.bzy, label %.thread12286

bb.bzy:                                           ; preds = %bb.bzx
  %i.jec = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15090.sink.split

bb.bzz:                                           ; preds = %bb.bzv
  %i.jed = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jee = load i32, ptr %i.jed, align 8, !tbaa !74
  %i.jef = add nuw nsw i32 %i.jdr, 7
  %.not8161 = icmp ugt i32 %i.jee, %i.jef
  %i.jeg = and i32 %i.jdr, 7
  %.not8162 = icmp eq i32 %i.jeg, 0
  %or.cond10945 = and i1 %.not8162, %.not8161
  br i1 %or.cond10945, label %.thread15090.sink.split, label %.thread12286

.thread15090.sink.split:                          ; preds = %bb.bzz, %bb.bzy
  %.sink18414 = phi i32 [ %i.jdy, %bb.bzy ], [ %i.jdr, %bb.bzz ]
  %.sink18412 = phi ptr [ %i.jec, %bb.bzy ], [ %.06052, %bb.bzz ]
  %i.jeh = zext nneg i32 %.sink18414 to i64
  %i.jei = getelementptr inbounds nuw i8, ptr %.sink18412, i64 %i.jeh
  %i.jej = load i64, ptr %i.jei, align 8, !tbaa !76
  br label %.thread15090

.thread15090:                                     ; preds = %.thread15090.sink.split, %bb.bzw
  %.25359 = phi i64 [ 0, %bb.bzw ], [ %i.jej, %.thread15090.sink.split ]
  %i.jek = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25359, i32 noundef 2) ; 2 uses
  %.not8166.not = icmp eq ptr %i.jek, null
  br i1 %.not8166.not, label %allocate_stack.exit.thread, label %.thread15090._crit_edge

.thread15090._crit_edge:                          ; preds = %.thread15090
  %.phi.trans.insert15804 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15805 = load i32, ptr %.phi.trans.insert15804, align 8, !tbaa !74
  br label %bb.caa

bb.caa:                                           ; preds = %.thread15090._crit_edge, %bb.bzu
  %i.jel = phi i32 [ %i.jdv, %bb.bzu ], [ %.pre15805, %.thread15090._crit_edge ]
  %.25362 = phi ptr [ %i.jdx, %bb.bzu ], [ %i.jek, %.thread15090._crit_edge ]
  %i.jem = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jen = load i32, ptr %i.jem, align 8, !tbaa !75 ; 3 uses
  %i.jeo = add i32 %i.jen, 1
  %.not8168 = icmp ugt i32 %i.jel, %i.jeo
  %i.jep = and i32 %i.jen, 1
  %.not8169 = icmp eq i32 %i.jep, 0
  %or.cond10946 = and i1 %.not8168, %.not8169
  br i1 %or.cond10946, label %.thread15107, label %.thread12286

.thread15107:                                     ; preds = %bb.caa
  %i.jeq = load i16, ptr %.25362, align 1, !tbaa !69
  %i.jer = zext i32 %i.jen to i64
  %i.jes = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jer
  store i16 %i.jeq, ptr %i.jes, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.cab:                                           ; preds = %bb.k
  %i.jet = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jeu = load i32, ptr %i.jet, align 8, !tbaa !69 ; 8 uses
  %i.jev = and i32 %i.jeu, 1073741824
  %.not8148 = icmp eq i32 %i.jev, 0
  br i1 %.not8148, label %bb.cad, label %bb.cac

bb.cac:                                           ; preds = %bb.cab
  %i.jew = and i32 %i.jeu, -1073741825            ; 2 uses
  %i.jex = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jey = load i32, ptr %i.jex, align 8, !tbaa !74 ; 2 uses
  %.not8156 = icmp ugt i32 %i.jey, %i.jew
  %i.jez = zext i32 %i.jew to i64
  %i.jfa = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jez
  br i1 %.not8156, label %bb.cai, label %.thread12286

bb.cad:                                           ; preds = %bb.cab
  %.not8149 = icmp sgt i32 %i.jeu, -1
  br i1 %.not8149, label %bb.cah, label %bb.cae

bb.cae:                                           ; preds = %bb.cad
  %i.jfb = and i32 %i.jeu, 1073741823             ; 3 uses
  %.not8152 = icmp eq i32 %i.jfb, 0
  br i1 %.not8152, label %.thread15113, label %bb.caf

bb.caf:                                           ; preds = %bb.cae
  %i.jfc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jfd = add nuw nsw i32 %i.jfb, 7
  %.not8153 = icmp ugt i32 %i.jfc, %i.jfd
  %i.jfe = and i32 %i.jeu, 7
  %.not8154 = icmp eq i32 %i.jfe, 0
  %or.cond10947 = and i1 %.not8154, %.not8153
  br i1 %or.cond10947, label %bb.cag, label %.thread12286

bb.cag:                                           ; preds = %bb.caf
  %i.jff = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15113.sink.split

bb.cah:                                           ; preds = %bb.cad
  %i.jfg = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jfh = load i32, ptr %i.jfg, align 8, !tbaa !74
  %i.jfi = add nuw nsw i32 %i.jeu, 7
  %.not8150 = icmp ugt i32 %i.jfh, %i.jfi
  %i.jfj = and i32 %i.jeu, 7
  %.not8151 = icmp eq i32 %i.jfj, 0
  %or.cond10948 = and i1 %.not8151, %.not8150
  br i1 %or.cond10948, label %.thread15113.sink.split, label %.thread12286

.thread15113.sink.split:                          ; preds = %bb.cah, %bb.cag
  %.sink18418 = phi i32 [ %i.jfb, %bb.cag ], [ %i.jeu, %bb.cah ]
  %.sink18416 = phi ptr [ %i.jff, %bb.cag ], [ %.06052, %bb.cah ]
  %i.jfk = zext nneg i32 %.sink18418 to i64
  %i.jfl = getelementptr inbounds nuw i8, ptr %.sink18416, i64 %i.jfk
  %i.jfm = load i64, ptr %i.jfl, align 8, !tbaa !76
  br label %.thread15113

.thread15113:                                     ; preds = %.thread15113.sink.split, %bb.cae
  %.25353 = phi i64 [ 0, %bb.cae ], [ %i.jfm, %.thread15113.sink.split ]
  %i.jfn = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25353, i32 noundef 4) ; 2 uses
  %.not8155.not = icmp eq ptr %i.jfn, null
  br i1 %.not8155.not, label %allocate_stack.exit.thread, label %.thread15113._crit_edge

.thread15113._crit_edge:                          ; preds = %.thread15113
  %.phi.trans.insert15802 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15803 = load i32, ptr %.phi.trans.insert15802, align 8, !tbaa !74
  br label %bb.cai

bb.cai:                                           ; preds = %.thread15113._crit_edge, %bb.cac
  %i.jfo = phi i32 [ %i.jey, %bb.cac ], [ %.pre15803, %.thread15113._crit_edge ]
  %.25356 = phi ptr [ %i.jfa, %bb.cac ], [ %i.jfn, %.thread15113._crit_edge ]
  %i.jfp = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jfq = load i32, ptr %i.jfp, align 8, !tbaa !75 ; 3 uses
  %i.jfr = add i32 %i.jfq, 3
  %.not8157 = icmp ugt i32 %i.jfo, %i.jfr
  %i.jfs = and i32 %i.jfq, 3
  %.not8158 = icmp eq i32 %i.jfs, 0
  %or.cond10949 = and i1 %.not8157, %.not8158
  br i1 %or.cond10949, label %.thread15130, label %.thread12286

.thread15130:                                     ; preds = %bb.cai
  %i.jft = load i32, ptr %.25356, align 1, !tbaa !69
  %i.jfu = zext i32 %i.jfq to i64
  %i.jfv = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jfu
  store i32 %i.jft, ptr %i.jfv, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.caj:                                           ; preds = %bb.k
  %i.jfw = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jfx = load i32, ptr %i.jfw, align 8, !tbaa !69 ; 8 uses
  %i.jfy = and i32 %i.jfx, 1073741824
  %.not8137 = icmp eq i32 %i.jfy, 0
  br i1 %.not8137, label %bb.cal, label %bb.cak

bb.cak:                                           ; preds = %bb.caj
  %i.jfz = and i32 %i.jfx, -1073741825            ; 2 uses
  %i.jga = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jgb = load i32, ptr %i.jga, align 8, !tbaa !74 ; 2 uses
  %.not8145 = icmp ugt i32 %i.jgb, %i.jfz
  %i.jgc = zext i32 %i.jfz to i64
  %i.jgd = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgc
  br i1 %.not8145, label %bb.caq, label %.thread12286

bb.cal:                                           ; preds = %bb.caj
  %.not8138 = icmp sgt i32 %i.jfx, -1
  br i1 %.not8138, label %bb.cap, label %bb.cam

bb.cam:                                           ; preds = %bb.cal
  %i.jge = and i32 %i.jfx, 1073741823             ; 3 uses
  %.not8141 = icmp eq i32 %i.jge, 0
  br i1 %.not8141, label %.thread15136, label %bb.can

bb.can:                                           ; preds = %bb.cam
  %i.jgf = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jgg = add nuw nsw i32 %i.jge, 7
  %.not8142 = icmp ugt i32 %i.jgf, %i.jgg
  %i.jgh = and i32 %i.jfx, 7
  %.not8143 = icmp eq i32 %i.jgh, 0
  %or.cond10950 = and i1 %.not8143, %.not8142
  br i1 %or.cond10950, label %bb.cao, label %.thread12286

bb.cao:                                           ; preds = %bb.can
  %i.jgi = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15136.sink.split

bb.cap:                                           ; preds = %bb.cal
  %i.jgj = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jgk = load i32, ptr %i.jgj, align 8, !tbaa !74
  %i.jgl = add nuw nsw i32 %i.jfx, 7
  %.not8139 = icmp ugt i32 %i.jgk, %i.jgl
  %i.jgm = and i32 %i.jfx, 7
  %.not8140 = icmp eq i32 %i.jgm, 0
  %or.cond10951 = and i1 %.not8140, %.not8139
  br i1 %or.cond10951, label %.thread15136.sink.split, label %.thread12286

.thread15136.sink.split:                          ; preds = %bb.cap, %bb.cao
  %.sink18422 = phi i32 [ %i.jge, %bb.cao ], [ %i.jfx, %bb.cap ]
  %.sink18420 = phi ptr [ %i.jgi, %bb.cao ], [ %.06052, %bb.cap ]
  %i.jgn = zext nneg i32 %.sink18422 to i64
  %i.jgo = getelementptr inbounds nuw i8, ptr %.sink18420, i64 %i.jgn
  %i.jgp = load i64, ptr %i.jgo, align 8, !tbaa !76
  br label %.thread15136

.thread15136:                                     ; preds = %.thread15136.sink.split, %bb.cam
  %.25347 = phi i64 [ 0, %bb.cam ], [ %i.jgp, %.thread15136.sink.split ]
  %i.jgq = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25347, i32 noundef 8) ; 2 uses
  %.not8144.not = icmp eq ptr %i.jgq, null
  br i1 %.not8144.not, label %allocate_stack.exit.thread, label %.thread15136._crit_edge

.thread15136._crit_edge:                          ; preds = %.thread15136
  %.phi.trans.insert15800 = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %.pre15801 = load i32, ptr %.phi.trans.insert15800, align 8, !tbaa !74
  br label %bb.caq

bb.caq:                                           ; preds = %.thread15136._crit_edge, %bb.cak
  %i.jgr = phi i32 [ %i.jgb, %bb.cak ], [ %.pre15801, %.thread15136._crit_edge ]
  %.25350 = phi ptr [ %i.jgd, %bb.cak ], [ %i.jgq, %.thread15136._crit_edge ]
  %i.jgs = getelementptr inbounds nuw i8, ptr %.012248, i64 8
  %i.jgt = load i32, ptr %i.jgs, align 8, !tbaa !75 ; 3 uses
  %i.jgu = add i32 %i.jgt, 7
  %.not8146 = icmp ugt i32 %i.jgr, %i.jgu
  %i.jgv = and i32 %i.jgt, 7
  %.not8147 = icmp eq i32 %i.jgv, 0
  %or.cond10952 = and i1 %.not8146, %.not8147
  br i1 %or.cond10952, label %.thread15153, label %.thread12286

.thread15153:                                     ; preds = %bb.caq
  %i.jgw = load i64, ptr %.25350, align 1, !tbaa !69
  %i.jgx = zext i32 %i.jgt to i64
  %i.jgy = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgx
  store i64 %i.jgw, ptr %i.jgy, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.car:                                           ; preds = %bb.k
  %i.jgz = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jha = load i32, ptr %i.jgz, align 4, !tbaa !69 ; 6 uses
  %.not8126 = icmp sgt i32 %i.jha, -1
  br i1 %.not8126, label %bb.cav, label %bb.cas

bb.cas:                                           ; preds = %bb.car
  %i.jhb = and i32 %i.jha, 2147483647             ; 3 uses
  %.not8129 = icmp eq i32 %i.jhb, 0
  br i1 %.not8129, label %allocate_stack.exit.thread, label %bb.cat

bb.cat:                                           ; preds = %bb.cas
  %i.jhc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jhd = add nuw i32 %i.jhb, 7
  %.not8130 = icmp ugt i32 %i.jhc, %i.jhd
  %i.jhe = and i32 %i.jha, 7
  %.not8131 = icmp eq i32 %i.jhe, 0
  %or.cond10953 = and i1 %.not8131, %.not8130
  br i1 %or.cond10953, label %bb.cau, label %.thread12286

bb.cau:                                           ; preds = %bb.cat
  %i.jhf = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15159

bb.cav:                                           ; preds = %bb.car
  %i.jhg = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jhh = load i32, ptr %i.jhg, align 8, !tbaa !74
  %i.jhi = add nuw i32 %i.jha, 7
  %.not8127 = icmp ugt i32 %i.jhh, %i.jhi
  %i.jhj = and i32 %i.jha, 7
  %.not8128 = icmp eq i32 %i.jhj, 0
  %or.cond10954 = and i1 %.not8128, %.not8127
  br i1 %or.cond10954, label %.thread15159, label %.thread12286

.thread15159:                                     ; preds = %bb.cav, %bb.cau
  %.sink18425 = phi i32 [ %i.jhb, %bb.cau ], [ %i.jha, %bb.cav ]
  %.sink18423 = phi ptr [ %i.jhf, %bb.cau ], [ %.06052, %bb.cav ]
  %i.jhk = zext nneg i32 %.sink18425 to i64
  %i.jhl = getelementptr inbounds nuw i8, ptr %.sink18423, i64 %i.jhk
  %.25340 = load i64, ptr %i.jhl, align 8, !tbaa !76 ; 4 uses
  %i.jhm = lshr i64 %.25340, 32                   ; 2 uses
  %i.jhn = trunc nuw i64 %i.jhm to i32            ; 2 uses
  %i.jho = trunc i64 %.25340 to i32
  %.not.i11112 = icmp eq i64 %i.jhm, 0
  br i1 %.not.i11112, label %allocate_stack.exit.thread, label %bb.caw, !prof !105

bb.caw:                                           ; preds = %.thread15159
  %i.jhp = icmp slt i64 %.25340, 0
  br i1 %i.jhp, label %bb.cax, label %bb.caz

bb.cax:                                           ; preds = %bb.caw
  %i.jhq = xor i32 %i.jhn, -1                     ; 2 uses
  %i.jhr = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11117 = icmp ugt i32 %i.jhr, %i.jhq
  br i1 %.not31.i11117, label %bb.cay, label %allocate_stack.exit.thread, !prof !22

bb.cay:                                           ; preds = %bb.cax
  %i.jhs = load ptr, ptr %4, align 8, !tbaa !21
  %i.jht = zext nneg i32 %i.jhq to i64
  %i.jhu = getelementptr inbounds nuw [16 x i8], ptr %i.jhs, i64 %i.jht
  br label %bb.cbb

bb.caz:                                           ; preds = %bb.caw
  %i.jhv = add nsw i32 %i.jhn, -1                 ; 2 uses
  %i.jhw = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11113 = icmp ult i32 %i.jhv, %i.jhw
  br i1 %.not30.i11113, label %bb.cba, label %allocate_stack.exit.thread, !prof !22

bb.cba:                                           ; preds = %bb.caz
  %i.jhx = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jhy = sext i32 %i.jhv to i64
  %i.jhz = getelementptr inbounds [16 x i8], ptr %i.jhx, i64 %i.jhy
  br label %bb.cbb

bb.cbb:                                           ; preds = %bb.cba, %bb.cay
  %.0.i11115 = phi ptr [ %i.jhu, %bb.cay ], [ %i.jhz, %bb.cba ] ; 2 uses
  %i.jia = getelementptr inbounds nuw i8, ptr %.0.i11115, i64 8
  %i.jib = load i32, ptr %i.jia, align 8, !tbaa !14
  %i.jic = icmp ugt i32 %i.jib, %i.jho
  br i1 %i.jic, label %bb.cbc, label %allocate_stack.exit.thread, !prof !22

bb.cbc:                                           ; preds = %bb.cbb
  %i.jid = load ptr, ptr %.0.i11115, align 8, !tbaa !13 ; 2 uses
  %i.jie = and i64 %.25340, 4294967295
  %i.jif = getelementptr inbounds nuw i8, ptr %i.jid, i64 %i.jie
  %.not8132.not = icmp eq ptr %i.jid, null
  br i1 %.not8132.not, label %allocate_stack.exit.thread, label %bb.cbd

bb.cbd:                                           ; preds = %bb.cbc
  %i.jig = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jih = load i32, ptr %i.jig, align 8, !tbaa !69 ; 4 uses
  %.not8133 = icmp sgt i32 %i.jih, -1
  br i1 %.not8133, label %bb.cbh, label %bb.cbe

bb.cbe:                                           ; preds = %bb.cbd
  %i.jii = and i32 %i.jih, 2147483647             ; 3 uses
  %.not8135 = icmp eq i32 %i.jii, 0
  br i1 %.not8135, label %.thread15179, label %bb.cbf

bb.cbf:                                           ; preds = %bb.cbe
  %i.jij = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8136 = icmp ugt i32 %i.jij, %i.jii
  br i1 %.not8136, label %bb.cbg, label %.thread12286

bb.cbg:                                           ; preds = %bb.cbf
  %i.jik = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15179.sink.split

bb.cbh:                                           ; preds = %bb.cbd
  %i.jil = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jim = load i32, ptr %i.jil, align 8, !tbaa !74
  %.not8134 = icmp ugt i32 %i.jim, %i.jih
  br i1 %.not8134, label %.thread15179.sink.split, label %.thread12286

.thread15179.sink.split:                          ; preds = %bb.cbh, %bb.cbg
  %.sink18429 = phi i32 [ %i.jii, %bb.cbg ], [ %i.jih, %bb.cbh ]
  %.sink18427 = phi ptr [ %i.jik, %bb.cbg ], [ %.06052, %bb.cbh ]
  %i.jin = zext nneg i32 %.sink18429 to i64
  %i.jio = getelementptr inbounds nuw i8, ptr %.sink18427, i64 %i.jin
  %i.jip = load i8, ptr %i.jio, align 1, !tbaa !69
  %i.jiq = and i8 %i.jip, 1
  br label %.thread15179

.thread15179:                                     ; preds = %.thread15179.sink.split, %bb.cbe
  %.25343 = phi i8 [ 0, %bb.cbe ], [ %i.jiq, %.thread15179.sink.split ]
  store i8 %.25343, ptr %i.jif, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cbi:                                           ; preds = %bb.k
  %i.jir = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jis = load i32, ptr %i.jir, align 4, !tbaa !69 ; 6 uses
  %.not8115 = icmp sgt i32 %i.jis, -1
  br i1 %.not8115, label %bb.cbm, label %bb.cbj

bb.cbj:                                           ; preds = %bb.cbi
  %i.jit = and i32 %i.jis, 2147483647             ; 3 uses
  %.not8118 = icmp eq i32 %i.jit, 0
  br i1 %.not8118, label %allocate_stack.exit.thread, label %bb.cbk

bb.cbk:                                           ; preds = %bb.cbj
  %i.jiu = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jiv = add nuw i32 %i.jit, 7
  %.not8119 = icmp ugt i32 %i.jiu, %i.jiv
  %i.jiw = and i32 %i.jis, 7
  %.not8120 = icmp eq i32 %i.jiw, 0
  %or.cond10955 = and i1 %.not8120, %.not8119
  br i1 %or.cond10955, label %bb.cbl, label %.thread12286

bb.cbl:                                           ; preds = %bb.cbk
  %i.jix = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15196

bb.cbm:                                           ; preds = %bb.cbi
  %i.jiy = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jiz = load i32, ptr %i.jiy, align 8, !tbaa !74
  %i.jja = add nuw i32 %i.jis, 7
  %.not8116 = icmp ugt i32 %i.jiz, %i.jja
  %i.jjb = and i32 %i.jis, 7
  %.not8117 = icmp eq i32 %i.jjb, 0
  %or.cond10956 = and i1 %.not8117, %.not8116
  br i1 %or.cond10956, label %.thread15196, label %.thread12286

.thread15196:                                     ; preds = %bb.cbm, %bb.cbl
  %.sink18432 = phi i32 [ %i.jit, %bb.cbl ], [ %i.jis, %bb.cbm ]
  %.sink18430 = phi ptr [ %i.jix, %bb.cbl ], [ %.06052, %bb.cbm ]
  %i.jjc = zext nneg i32 %.sink18432 to i64
  %i.jjd = getelementptr inbounds nuw i8, ptr %.sink18430, i64 %i.jjc
  %.25333 = load i64, ptr %i.jjd, align 8, !tbaa !76 ; 4 uses
  %i.jje = lshr i64 %.25333, 32                   ; 2 uses
  %i.jjf = trunc nuw i64 %i.jje to i32            ; 2 uses
  %i.jjg = trunc i64 %.25333 to i32
  %.not.i11119 = icmp eq i64 %i.jje, 0
  br i1 %.not.i11119, label %allocate_stack.exit.thread, label %bb.cbn, !prof !105

bb.cbn:                                           ; preds = %.thread15196
  %i.jjh = icmp slt i64 %.25333, 0
  br i1 %i.jjh, label %bb.cbo, label %bb.cbq

bb.cbo:                                           ; preds = %bb.cbn
  %i.jji = xor i32 %i.jjf, -1                     ; 2 uses
  %i.jjj = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11124 = icmp ugt i32 %i.jjj, %i.jji
  br i1 %.not31.i11124, label %bb.cbp, label %allocate_stack.exit.thread, !prof !22

bb.cbp:                                           ; preds = %bb.cbo
  %i.jjk = load ptr, ptr %4, align 8, !tbaa !21
  %i.jjl = zext nneg i32 %i.jji to i64
  %i.jjm = getelementptr inbounds nuw [16 x i8], ptr %i.jjk, i64 %i.jjl
  br label %bb.cbs

bb.cbq:                                           ; preds = %bb.cbn
  %i.jjn = add nsw i32 %i.jjf, -1                 ; 2 uses
  %i.jjo = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11120 = icmp ult i32 %i.jjn, %i.jjo
  br i1 %.not30.i11120, label %bb.cbr, label %allocate_stack.exit.thread, !prof !22

bb.cbr:                                           ; preds = %bb.cbq
  %i.jjp = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jjq = sext i32 %i.jjn to i64
  %i.jjr = getelementptr inbounds [16 x i8], ptr %i.jjp, i64 %i.jjq
  br label %bb.cbs

bb.cbs:                                           ; preds = %bb.cbr, %bb.cbp
  %.0.i11122 = phi ptr [ %i.jjm, %bb.cbp ], [ %i.jjr, %bb.cbr ] ; 2 uses
  %i.jjs = getelementptr inbounds nuw i8, ptr %.0.i11122, i64 8
  %i.jjt = load i32, ptr %i.jjs, align 8, !tbaa !14
  %i.jju = icmp ugt i32 %i.jjt, %i.jjg
  br i1 %i.jju, label %bb.cbt, label %allocate_stack.exit.thread, !prof !22

bb.cbt:                                           ; preds = %bb.cbs
  %i.jjv = load ptr, ptr %.0.i11122, align 8, !tbaa !13 ; 2 uses
  %i.jjw = and i64 %.25333, 4294967295
  %i.jjx = getelementptr inbounds nuw i8, ptr %i.jjv, i64 %i.jjw
  %.not8121.not = icmp eq ptr %i.jjv, null
  br i1 %.not8121.not, label %allocate_stack.exit.thread, label %bb.cbu

bb.cbu:                                           ; preds = %bb.cbt
  %i.jjy = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jjz = load i32, ptr %i.jjy, align 8, !tbaa !69 ; 4 uses
  %.not8122 = icmp sgt i32 %i.jjz, -1
  br i1 %.not8122, label %bb.cby, label %bb.cbv

bb.cbv:                                           ; preds = %bb.cbu
  %i.jka = and i32 %i.jjz, 2147483647             ; 3 uses
  %.not8124 = icmp eq i32 %i.jka, 0
  br i1 %.not8124, label %.thread15216, label %bb.cbw

bb.cbw:                                           ; preds = %bb.cbv
  %i.jkb = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8125 = icmp ugt i32 %i.jkb, %i.jka
  br i1 %.not8125, label %bb.cbx, label %.thread12286

bb.cbx:                                           ; preds = %bb.cbw
  %i.jkc = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15216.sink.split

bb.cby:                                           ; preds = %bb.cbu
  %i.jkd = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jke = load i32, ptr %i.jkd, align 8, !tbaa !74
  %.not8123 = icmp ugt i32 %i.jke, %i.jjz
  br i1 %.not8123, label %.thread15216.sink.split, label %.thread12286

.thread15216.sink.split:                          ; preds = %bb.cby, %bb.cbx
  %.sink18436 = phi i32 [ %i.jka, %bb.cbx ], [ %i.jjz, %bb.cby ]
  %.sink18434 = phi ptr [ %i.jkc, %bb.cbx ], [ %.06052, %bb.cby ]
  %i.jkf = zext nneg i32 %.sink18436 to i64
  %i.jkg = getelementptr inbounds nuw i8, ptr %.sink18434, i64 %i.jkf
  %i.jkh = load i8, ptr %i.jkg, align 1, !tbaa !69
  br label %.thread15216

.thread15216:                                     ; preds = %.thread15216.sink.split, %bb.cbv
  %.25336 = phi i8 [ 0, %bb.cbv ], [ %i.jkh, %.thread15216.sink.split ]
  store i8 %.25336, ptr %i.jjx, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cbz:                                           ; preds = %bb.k
  %i.jki = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jkj = load i32, ptr %i.jki, align 4, !tbaa !69 ; 6 uses
  %.not8102 = icmp sgt i32 %i.jkj, -1
  br i1 %.not8102, label %bb.ccd, label %bb.cca

bb.cca:                                           ; preds = %bb.cbz
  %i.jkk = and i32 %i.jkj, 2147483647             ; 3 uses
  %.not8105 = icmp eq i32 %i.jkk, 0
  br i1 %.not8105, label %allocate_stack.exit.thread, label %bb.ccb

bb.ccb:                                           ; preds = %bb.cca
  %i.jkl = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jkm = add nuw i32 %i.jkk, 7
  %.not8106 = icmp ugt i32 %i.jkl, %i.jkm
  %i.jkn = and i32 %i.jkj, 7
  %.not8107 = icmp eq i32 %i.jkn, 0
  %or.cond10957 = and i1 %.not8107, %.not8106
  br i1 %or.cond10957, label %bb.ccc, label %.thread12286

bb.ccc:                                           ; preds = %bb.ccb
  %i.jko = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15233

bb.ccd:                                           ; preds = %bb.cbz
  %i.jkp = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jkq = load i32, ptr %i.jkp, align 8, !tbaa !74
  %i.jkr = add nuw i32 %i.jkj, 7
  %.not8103 = icmp ugt i32 %i.jkq, %i.jkr
  %i.jks = and i32 %i.jkj, 7
  %.not8104 = icmp eq i32 %i.jks, 0
  %or.cond10958 = and i1 %.not8104, %.not8103
  br i1 %or.cond10958, label %.thread15233, label %.thread12286

.thread15233:                                     ; preds = %bb.ccd, %bb.ccc
  %.sink18439 = phi i32 [ %i.jkk, %bb.ccc ], [ %i.jkj, %bb.ccd ]
  %.sink18437 = phi ptr [ %i.jko, %bb.ccc ], [ %.06052, %bb.ccd ]
  %i.jkt = zext nneg i32 %.sink18439 to i64
  %i.jku = getelementptr inbounds nuw i8, ptr %.sink18437, i64 %i.jkt
  %.25326 = load i64, ptr %i.jku, align 8, !tbaa !76 ; 4 uses
  %i.jkv = lshr i64 %.25326, 32                   ; 2 uses
  %i.jkw = trunc nuw i64 %i.jkv to i32            ; 2 uses
  %i.jkx = trunc i64 %.25326 to i32               ; 2 uses
  %.not.i11126 = icmp eq i64 %i.jkv, 0
  br i1 %.not.i11126, label %allocate_stack.exit.thread, label %bb.cce, !prof !105

bb.cce:                                           ; preds = %.thread15233
  %i.jky = icmp slt i64 %.25326, 0
  br i1 %i.jky, label %bb.ccf, label %bb.cch

bb.ccf:                                           ; preds = %bb.cce
  %i.jkz = xor i32 %i.jkw, -1                     ; 2 uses
  %i.jla = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11131 = icmp ugt i32 %i.jla, %i.jkz
  br i1 %.not31.i11131, label %bb.ccg, label %allocate_stack.exit.thread, !prof !22

bb.ccg:                                           ; preds = %bb.ccf
  %i.jlb = load ptr, ptr %4, align 8, !tbaa !21
  %i.jlc = zext nneg i32 %i.jkz to i64
  %i.jld = getelementptr inbounds nuw [16 x i8], ptr %i.jlb, i64 %i.jlc
  br label %bb.ccj

bb.cch:                                           ; preds = %bb.cce
  %i.jle = add nsw i32 %i.jkw, -1                 ; 2 uses
  %i.jlf = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11127 = icmp ult i32 %i.jle, %i.jlf
  br i1 %.not30.i11127, label %bb.cci, label %allocate_stack.exit.thread, !prof !22

bb.cci:                                           ; preds = %bb.cch
  %i.jlg = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jlh = sext i32 %i.jle to i64
  %i.jli = getelementptr inbounds [16 x i8], ptr %i.jlg, i64 %i.jlh
  br label %bb.ccj

bb.ccj:                                           ; preds = %bb.cci, %bb.ccg
  %.0.i11129 = phi ptr [ %i.jld, %bb.ccg ], [ %i.jli, %bb.cci ] ; 2 uses
  %i.jlj = getelementptr inbounds nuw i8, ptr %.0.i11129, i64 8
  %i.jlk = load i32, ptr %i.jlj, align 8, !tbaa !14 ; 3 uses
  %i.jll = icmp ugt i32 %i.jlk, %i.jkx
  %.not32.i11130 = icmp ugt i32 %i.jlk, 1
  %or.cond.not.i = and i1 %i.jll, %.not32.i11130
  %i.jlm = add i32 %i.jkx, 2
  %i.jln = icmp ule i32 %i.jlm, %i.jlk
  %i.jlo = and i1 %i.jln, %or.cond.not.i
  br i1 %i.jlo, label %bb.cck, label %allocate_stack.exit.thread, !prof !22

bb.cck:                                           ; preds = %bb.ccj
  %i.jlp = load ptr, ptr %.0.i11129, align 8, !tbaa !13 ; 2 uses
  %i.jlq = and i64 %.25326, 4294967295
  %i.jlr = getelementptr inbounds nuw i8, ptr %i.jlp, i64 %i.jlq
  %.not8108.not = icmp eq ptr %i.jlp, null
  br i1 %.not8108.not, label %allocate_stack.exit.thread, label %bb.ccl

bb.ccl:                                           ; preds = %bb.cck
  %i.jls = getelementptr inbounds nuw i8, ptr %.012248, i64 16
  %i.jlt = load i32, ptr %i.jls, align 8, !tbaa !69 ; 6 uses
  %.not8109 = icmp sgt i32 %i.jlt, -1
  br i1 %.not8109, label %bb.ccp, label %bb.ccm

bb.ccm:                                           ; preds = %bb.ccl
  %i.jlu = and i32 %i.jlt, 2147483647             ; 3 uses
  %.not8112 = icmp eq i32 %i.jlu, 0
  br i1 %.not8112, label %.thread15253, label %bb.ccn

bb.ccn:                                           ; preds = %bb.ccm
  %i.jlv = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jlw = add nuw i32 %i.jlu, 1
  %.not8113 = icmp ugt i32 %i.jlv, %i.jlw
  %i.jlx = and i32 %i.jlt, 1
  %.not8114 = icmp eq i32 %i.jlx, 0
  %or.cond10959 = and i1 %.not8114, %.not8113
  br i1 %or.cond10959, label %bb.cco, label %.thread12286

bb.cco:                                           ; preds = %bb.ccn
  %i.jly = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15253.sink.split

bb.ccp:                                           ; preds = %bb.ccl
  %i.jlz = getelementptr inbounds nuw i8, ptr %.012264, i64 16
  %i.jma = load i32, ptr %i.jlz, align 8, !tbaa !74
  %i.jmb = add nuw i32 %i.jlt, 1
  %.not8110 = icmp ugt i32 %i.jma, %i.jmb
  %i.jmc = and i32 %i.jlt, 1
  %.not8111 = icmp eq i32 %i.jmc, 0
  %or.cond10960 = and i1 %.not8111, %.not8110
  br i1 %or.cond10960, label %.thread15253.sink.split, label %.thread12286

.thread15253.sink.split:                          ; preds = %bb.ccp, %bb.cco
  %.sink18443 = phi i32 [ %i.jlu, %bb.cco ], [ %i.jlt, %bb.ccp ]
  %.sink18441 = phi ptr [ %i.jly, %bb.cco ], [ %.06052, %bb.ccp ]
  %i.jmd = zext nneg i32 %.sink18443 to i64
  %i.jme = getelementptr inbounds nuw i8, ptr %.sink18441, i64 %i.jmd
  %i.jmf = load i16, ptr %i.jme, align 2, !tbaa !19
  br label %.thread15253

.thread15253:                                     ; preds = %.thread15253.sink.split, %bb.ccm
  %.25329 = phi i16 [ 0, %bb.ccm ], [ %i.jmf, %.thread15253.sink.split ]
  store i16 %.25329, ptr %i.jlr, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.ccq:                                           ; preds = %bb.k
  %i.jmg = getelementptr inbounds nuw i8, ptr %.012248, i64 20
  %i.jmh = load i32, ptr %i.jmg, align 4, !tbaa !69 ; 6 uses
  %.not8089 = icmp sgt i32 %i.jmh, -1
  br i1 %.not8089, label %bb.ccu, label %bb.ccr

bb.ccr:                                           ; preds = %bb.ccq
  %i.jmi = and i32 %i.jmh, 2147483647             ; 3 uses
  %.not8092 = icmp eq i32 %i.jmi, 0
  br i1 %.not8092, label %allocate_stack.exit.thread, label %bb.ccs

bb.ccs:                                           ; preds = %bb.ccr
  %i.jmj = load i32, ptr %i.ar, align 4, !tbaa !62
end_hunk_0
