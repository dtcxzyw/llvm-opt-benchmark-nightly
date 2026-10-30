Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode_vm?download=true
inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_vm_execute:bb.a
  %i.izw = load i16, ptr %i.izv, align 2, !tbaa !19
  br label %.thread15025

.thread15025:                                     ; preds = %.thread15025.sink.split, %bb.bym
  %.25377 = phi i16 [ 0, %bb.bym ], [ %i.izw, %.thread15025.sink.split ]
  %i.izx = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.izy = load i32, ptr %i.izx, align 8, !tbaa !74
  %i.izz = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jaa = load i32, ptr %i.izz, align 4, !tbaa !69 ; 3 uses
  %i.jab = add i32 %i.jaa, 1
  %.not8200 = icmp ugt i32 %i.izy, %i.jab
  %i.jac = and i32 %i.jaa, 1
  %.not8201 = icmp eq i32 %i.jac, 0
  %or.cond10929 = and i1 %.not8200, %.not8201
  br i1 %or.cond10929, label %bb.byq, label %.thread12280

bb.byq:                                           ; preds = %.thread15025
  %i.jad = zext i32 %i.jaa to i64
  %i.jae = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jad
  store i16 %.25377, ptr %i.jae, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.byr:                                           ; preds = %bb.k
  %i.jaf = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jag = load i32, ptr %i.jaf, align 8, !tbaa !69 ; 6 uses
  %.not8186 = icmp sgt i32 %i.jag, -1
  br i1 %.not8186, label %bb.byv, label %bb.bys

bb.bys:                                           ; preds = %bb.byr
  %i.jah = and i32 %i.jag, 2147483647             ; 3 uses
  %.not8189 = icmp eq i32 %i.jah, 0
  br i1 %.not8189, label %.thread15034, label %bb.byt

bb.byt:                                           ; preds = %bb.bys
  %i.jai = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jaj = add nuw i32 %i.jah, 3
  %.not8190 = icmp ugt i32 %i.jai, %i.jaj
  %i.jak = and i32 %i.jag, 3
  %.not8191 = icmp eq i32 %i.jak, 0
  %or.cond10930 = and i1 %.not8191, %.not8190
  br i1 %or.cond10930, label %bb.byu, label %.thread12280

bb.byu:                                           ; preds = %bb.byt
  %i.jal = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15034.sink.split

bb.byv:                                           ; preds = %bb.byr
  %i.jam = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jan = load i32, ptr %i.jam, align 8, !tbaa !74
  %i.jao = add nuw i32 %i.jag, 3
  %.not8187 = icmp ugt i32 %i.jan, %i.jao
  %i.jap = and i32 %i.jag, 3
  %.not8188 = icmp eq i32 %i.jap, 0
  %or.cond10931 = and i1 %.not8188, %.not8187
  br i1 %or.cond10931, label %.thread15034.sink.split, label %.thread12280

.thread15034.sink.split:                          ; preds = %bb.byv, %bb.byu
  %.sink18397 = phi i32 [ %i.jah, %bb.byu ], [ %i.jag, %bb.byv ]
  %.sink18395 = phi ptr [ %i.jal, %bb.byu ], [ %.06052, %bb.byv ]
  %i.jaq = zext nneg i32 %.sink18397 to i64
  %i.jar = getelementptr inbounds nuw i8, ptr %.sink18395, i64 %i.jaq
  %i.jas = load i32, ptr %i.jar, align 4, !tbaa !48
  br label %.thread15034

.thread15034:                                     ; preds = %.thread15034.sink.split, %bb.bys
  %.25374 = phi i32 [ 0, %bb.bys ], [ %i.jas, %.thread15034.sink.split ]
  %i.jat = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jau = load i32, ptr %i.jat, align 8, !tbaa !74
  %i.jav = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jaw = load i32, ptr %i.jav, align 4, !tbaa !69 ; 3 uses
  %i.jax = add i32 %i.jaw, 3
  %.not8192 = icmp ugt i32 %i.jau, %i.jax
  %i.jay = and i32 %i.jaw, 3
  %.not8193 = icmp eq i32 %i.jay, 0
  %or.cond10932 = and i1 %.not8192, %.not8193
  br i1 %or.cond10932, label %bb.byw, label %.thread12280

bb.byw:                                           ; preds = %.thread15034
  %i.jaz = zext i32 %i.jaw to i64
  %i.jba = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jaz
  store i32 %.25374, ptr %i.jba, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.byx:                                           ; preds = %bb.k
  %i.jbb = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jbc = load i32, ptr %i.jbb, align 8, !tbaa !69 ; 6 uses
  %.not8178 = icmp sgt i32 %i.jbc, -1
  br i1 %.not8178, label %bb.bzb, label %bb.byy

bb.byy:                                           ; preds = %bb.byx
  %i.jbd = and i32 %i.jbc, 2147483647             ; 3 uses
  %.not8181 = icmp eq i32 %i.jbd, 0
  br i1 %.not8181, label %.thread15043, label %bb.byz

bb.byz:                                           ; preds = %bb.byy
  %i.jbe = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jbf = add nuw i32 %i.jbd, 7
  %.not8182 = icmp ugt i32 %i.jbe, %i.jbf
  %i.jbg = and i32 %i.jbc, 7
  %.not8183 = icmp eq i32 %i.jbg, 0
  %or.cond10933 = and i1 %.not8183, %.not8182
  br i1 %or.cond10933, label %bb.bza, label %.thread12280

bb.bza:                                           ; preds = %bb.byz
  %i.jbh = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15043.sink.split

bb.bzb:                                           ; preds = %bb.byx
  %i.jbi = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jbj = load i32, ptr %i.jbi, align 8, !tbaa !74
  %i.jbk = add nuw i32 %i.jbc, 7
  %.not8179 = icmp ugt i32 %i.jbj, %i.jbk
  %i.jbl = and i32 %i.jbc, 7
  %.not8180 = icmp eq i32 %i.jbl, 0
  %or.cond10934 = and i1 %.not8180, %.not8179
  br i1 %or.cond10934, label %.thread15043.sink.split, label %.thread12280

.thread15043.sink.split:                          ; preds = %bb.bzb, %bb.bza
  %.sink18401 = phi i32 [ %i.jbd, %bb.bza ], [ %i.jbc, %bb.bzb ]
  %.sink18399 = phi ptr [ %i.jbh, %bb.bza ], [ %.06052, %bb.bzb ]
  %i.jbm = zext nneg i32 %.sink18401 to i64
  %i.jbn = getelementptr inbounds nuw i8, ptr %.sink18399, i64 %i.jbm
  %i.jbo = load i64, ptr %i.jbn, align 8, !tbaa !76
  br label %.thread15043

.thread15043:                                     ; preds = %.thread15043.sink.split, %bb.byy
  %.25371 = phi i64 [ 0, %bb.byy ], [ %i.jbo, %.thread15043.sink.split ]
  %i.jbp = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jbq = load i32, ptr %i.jbp, align 8, !tbaa !74
  %i.jbr = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jbs = load i32, ptr %i.jbr, align 4, !tbaa !69 ; 3 uses
  %i.jbt = add i32 %i.jbs, 7
  %.not8184 = icmp ugt i32 %i.jbq, %i.jbt
  %i.jbu = and i32 %i.jbs, 7
  %.not8185 = icmp eq i32 %i.jbu, 0
  %or.cond10935 = and i1 %.not8184, %.not8185
  br i1 %or.cond10935, label %bb.bzc, label %.thread12280

bb.bzc:                                           ; preds = %.thread15043
  %i.jbv = zext i32 %i.jbs to i64
  %i.jbw = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jbv
  store i64 %.25371, ptr %i.jbw, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.bzd:                                           ; preds = %bb.k, %bb.k
  %i.jbx = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jby = load i32, ptr %i.jbx, align 8, !tbaa !69 ; 8 uses
  %i.jbz = and i32 %i.jby, 1073741824
  %.not8168 = icmp eq i32 %i.jbz, 0
  br i1 %.not8168, label %bb.bzf, label %bb.bze

bb.bze:                                           ; preds = %bb.bzd
  %i.jca = and i32 %i.jby, -1073741825            ; 2 uses
  %i.jcb = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jcc = load i32, ptr %i.jcb, align 8, !tbaa !74 ; 2 uses
  %.not8176 = icmp ugt i32 %i.jcc, %i.jca
  %i.jcd = zext i32 %i.jca to i64
  %i.jce = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jcd
  br i1 %.not8176, label %bb.bzr, label %.thread12280

bb.bzf:                                           ; preds = %bb.bzd
  %.not8169 = icmp sgt i32 %i.jby, -1
  br i1 %.not8169, label %bb.bzj, label %bb.bzg

bb.bzg:                                           ; preds = %bb.bzf
  %i.jcf = and i32 %i.jby, 1073741823             ; 3 uses
  %.not8172 = icmp eq i32 %i.jcf, 0
  br i1 %.not8172, label %allocate_stack.exit.thread, label %bb.bzh

bb.bzh:                                           ; preds = %bb.bzg
  %i.jcg = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jch = add nuw nsw i32 %i.jcf, 7
  %.not8173 = icmp ugt i32 %i.jcg, %i.jch
  %i.jci = and i32 %i.jby, 7
  %.not8174 = icmp eq i32 %i.jci, 0
  %or.cond10936 = and i1 %.not8174, %.not8173
  br i1 %or.cond10936, label %bb.bzi, label %.thread12280

bb.bzi:                                           ; preds = %bb.bzh
  %i.jcj = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15052

bb.bzj:                                           ; preds = %bb.bzf
  %i.jck = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jcl = load i32, ptr %i.jck, align 8, !tbaa !74
  %i.jcm = add nuw nsw i32 %i.jby, 7
  %.not8170 = icmp ugt i32 %i.jcl, %i.jcm
  %i.jcn = and i32 %i.jby, 7
  %.not8171 = icmp eq i32 %i.jcn, 0
  %or.cond10937 = and i1 %.not8171, %.not8170
  br i1 %or.cond10937, label %.thread15052, label %.thread12280

.thread15052:                                     ; preds = %bb.bzj, %bb.bzi
  %.sink18404 = phi i32 [ %i.jcf, %bb.bzi ], [ %i.jby, %bb.bzj ]
  %.sink18402 = phi ptr [ %i.jcj, %bb.bzi ], [ %.06052, %bb.bzj ]
  %i.jco = zext nneg i32 %.sink18404 to i64
  %i.jcp = getelementptr inbounds nuw i8, ptr %.sink18402, i64 %i.jco
  %.25365 = load i64, ptr %i.jcp, align 8, !tbaa !76 ; 4 uses
  %i.jcq = lshr i64 %.25365, 32                   ; 2 uses
  %i.jcr = trunc nuw i64 %i.jcq to i32            ; 2 uses
  %i.jcs = trunc i64 %.25365 to i32               ; 2 uses
  %.not.i11104 = icmp eq i64 %i.jcq, 0
  br i1 %.not.i11104, label %allocate_stack.exit.thread, label %bb.bzk, !prof !105

bb.bzk:                                           ; preds = %.thread15052
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
  %.0.i11105 = phi ptr [ %i.jcy, %bb.bzm ], [ %i.jdd, %bb.bzo ] ; 2 uses
  %i.jde = getelementptr inbounds nuw i8, ptr %.0.i11105, i64 8
  %i.jdf = load i32, ptr %i.jde, align 8, !tbaa !14 ; 2 uses
  %i.jdg = icmp ugt i32 %i.jdf, %i.jcs
  %7 = add i32 %i.jcs, 1
  %8 = icmp ule i32 %7, %i.jdf
  %9 = and i1 %8, %i.jdg
  br i1 %9, label %bb.bzq, label %allocate_stack.exit.thread, !prof !22

bb.bzq:                                           ; preds = %bb.bzp
  %i.jdh = load ptr, ptr %.0.i11105, align 8, !tbaa !13 ; 2 uses
  %.not8175.not = icmp eq ptr %i.jdh, null
  br i1 %.not8175.not, label %allocate_stack.exit.thread, label %._crit_edge15800

._crit_edge15800:                                 ; preds = %bb.bzq
  %i.jdi = and i64 %.25365, 4294967295
  %i.jdj = getelementptr inbounds nuw i8, ptr %i.jdh, i64 %i.jdi
  %.phi.trans.insert15801 = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %.pre15802 = load i32, ptr %.phi.trans.insert15801, align 8, !tbaa !74
  br label %bb.bzr

bb.bzr:                                           ; preds = %._crit_edge15800, %bb.bze
  %i.jdk = phi i32 [ %i.jcc, %bb.bze ], [ %.pre15802, %._crit_edge15800 ]
  %.25368 = phi ptr [ %i.jce, %bb.bze ], [ %i.jdj, %._crit_edge15800 ]
  %i.jdl = getelementptr inbounds nuw i8, ptr %.012242, i64 8
  %i.jdm = load i32, ptr %i.jdl, align 8, !tbaa !75 ; 2 uses
  %.not8177 = icmp ugt i32 %i.jdk, %i.jdm
  br i1 %.not8177, label %bb.bzs, label %.thread12280

bb.bzs:                                           ; preds = %bb.bzr
  %i.jdn = load i8, ptr %.25368, align 1, !tbaa !69
  %i.jdo = zext i32 %i.jdm to i64
  %i.jdp = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdo
  store i8 %i.jdn, ptr %i.jdp, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.bzt:                                           ; preds = %bb.k
  %i.jdq = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jdr = load i32, ptr %i.jdq, align 8, !tbaa !69 ; 8 uses
  %i.jds = and i32 %i.jdr, 1073741824
  %.not8157 = icmp eq i32 %i.jds, 0
  br i1 %.not8157, label %bb.bzv, label %bb.bzu

bb.bzu:                                           ; preds = %bb.bzt
  %i.jdt = and i32 %i.jdr, -1073741825            ; 2 uses
  %i.jdu = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jdv = load i32, ptr %i.jdu, align 8, !tbaa !74 ; 2 uses
  %.not8165 = icmp ugt i32 %i.jdv, %i.jdt
  %i.jdw = zext i32 %i.jdt to i64
  %i.jdx = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jdw
  br i1 %.not8165, label %bb.caa, label %.thread12280

bb.bzv:                                           ; preds = %bb.bzt
  %.not8158 = icmp sgt i32 %i.jdr, -1
  br i1 %.not8158, label %bb.bzz, label %bb.bzw

bb.bzw:                                           ; preds = %bb.bzv
  %i.jdy = and i32 %i.jdr, 1073741823             ; 3 uses
  %.not8161 = icmp eq i32 %i.jdy, 0
  br i1 %.not8161, label %.thread15084, label %bb.bzx

bb.bzx:                                           ; preds = %bb.bzw
  %i.jdz = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jea = add nuw nsw i32 %i.jdy, 7
  %.not8162 = icmp ugt i32 %i.jdz, %i.jea
  %i.jeb = and i32 %i.jdr, 7
  %.not8163 = icmp eq i32 %i.jeb, 0
  %or.cond10938 = and i1 %.not8163, %.not8162
  br i1 %or.cond10938, label %bb.bzy, label %.thread12280

bb.bzy:                                           ; preds = %bb.bzx
  %i.jec = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15084.sink.split

bb.bzz:                                           ; preds = %bb.bzv
  %i.jed = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jee = load i32, ptr %i.jed, align 8, !tbaa !74
  %i.jef = add nuw nsw i32 %i.jdr, 7
  %.not8159 = icmp ugt i32 %i.jee, %i.jef
  %i.jeg = and i32 %i.jdr, 7
  %.not8160 = icmp eq i32 %i.jeg, 0
  %or.cond10939 = and i1 %.not8160, %.not8159
  br i1 %or.cond10939, label %.thread15084.sink.split, label %.thread12280

.thread15084.sink.split:                          ; preds = %bb.bzz, %bb.bzy
  %.sink18408 = phi i32 [ %i.jdy, %bb.bzy ], [ %i.jdr, %bb.bzz ]
  %.sink18406 = phi ptr [ %i.jec, %bb.bzy ], [ %.06052, %bb.bzz ]
  %i.jeh = zext nneg i32 %.sink18408 to i64
  %i.jei = getelementptr inbounds nuw i8, ptr %.sink18406, i64 %i.jeh
  %i.jej = load i64, ptr %i.jei, align 8, !tbaa !76
  br label %.thread15084

.thread15084:                                     ; preds = %.thread15084.sink.split, %bb.bzw
  %.25359 = phi i64 [ 0, %bb.bzw ], [ %i.jej, %.thread15084.sink.split ]
  %i.jek = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25359, i32 noundef 2) ; 2 uses
  %.not8164.not = icmp eq ptr %i.jek, null
  br i1 %.not8164.not, label %allocate_stack.exit.thread, label %.thread15084._crit_edge

.thread15084._crit_edge:                          ; preds = %.thread15084
  %.phi.trans.insert15798 = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %.pre15799 = load i32, ptr %.phi.trans.insert15798, align 8, !tbaa !74
  br label %bb.caa

bb.caa:                                           ; preds = %.thread15084._crit_edge, %bb.bzu
  %i.jel = phi i32 [ %i.jdv, %bb.bzu ], [ %.pre15799, %.thread15084._crit_edge ]
  %.25362 = phi ptr [ %i.jdx, %bb.bzu ], [ %i.jek, %.thread15084._crit_edge ]
  %i.jem = getelementptr inbounds nuw i8, ptr %.012242, i64 8
  %i.jen = load i32, ptr %i.jem, align 8, !tbaa !75 ; 3 uses
  %i.jeo = add i32 %i.jen, 1
  %.not8166 = icmp ugt i32 %i.jel, %i.jeo
  %i.jep = and i32 %i.jen, 1
  %.not8167 = icmp eq i32 %i.jep, 0
  %or.cond10940 = and i1 %.not8166, %.not8167
  br i1 %or.cond10940, label %.thread15101, label %.thread12280

.thread15101:                                     ; preds = %bb.caa
  %i.jeq = load i16, ptr %.25362, align 1, !tbaa !69
  %i.jer = zext i32 %i.jen to i64
  %i.jes = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jer
  store i16 %i.jeq, ptr %i.jes, align 2, !tbaa !19
  br label %allocate_stack.exit.thread

bb.cab:                                           ; preds = %bb.k
  %i.jet = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jeu = load i32, ptr %i.jet, align 8, !tbaa !69 ; 8 uses
  %i.jev = and i32 %i.jeu, 1073741824
  %.not8146 = icmp eq i32 %i.jev, 0
  br i1 %.not8146, label %bb.cad, label %bb.cac

bb.cac:                                           ; preds = %bb.cab
  %i.jew = and i32 %i.jeu, -1073741825            ; 2 uses
  %i.jex = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jey = load i32, ptr %i.jex, align 8, !tbaa !74 ; 2 uses
  %.not8154 = icmp ugt i32 %i.jey, %i.jew
  %i.jez = zext i32 %i.jew to i64
  %i.jfa = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jez
  br i1 %.not8154, label %bb.cai, label %.thread12280

bb.cad:                                           ; preds = %bb.cab
  %.not8147 = icmp sgt i32 %i.jeu, -1
  br i1 %.not8147, label %bb.cah, label %bb.cae

bb.cae:                                           ; preds = %bb.cad
  %i.jfb = and i32 %i.jeu, 1073741823             ; 3 uses
  %.not8150 = icmp eq i32 %i.jfb, 0
  br i1 %.not8150, label %.thread15107, label %bb.caf

bb.caf:                                           ; preds = %bb.cae
  %i.jfc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jfd = add nuw nsw i32 %i.jfb, 7
  %.not8151 = icmp ugt i32 %i.jfc, %i.jfd
  %i.jfe = and i32 %i.jeu, 7
  %.not8152 = icmp eq i32 %i.jfe, 0
  %or.cond10941 = and i1 %.not8152, %.not8151
  br i1 %or.cond10941, label %bb.cag, label %.thread12280

bb.cag:                                           ; preds = %bb.caf
  %i.jff = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15107.sink.split

bb.cah:                                           ; preds = %bb.cad
  %i.jfg = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jfh = load i32, ptr %i.jfg, align 8, !tbaa !74
  %i.jfi = add nuw nsw i32 %i.jeu, 7
  %.not8148 = icmp ugt i32 %i.jfh, %i.jfi
  %i.jfj = and i32 %i.jeu, 7
  %.not8149 = icmp eq i32 %i.jfj, 0
  %or.cond10942 = and i1 %.not8149, %.not8148
  br i1 %or.cond10942, label %.thread15107.sink.split, label %.thread12280

.thread15107.sink.split:                          ; preds = %bb.cah, %bb.cag
  %.sink18412 = phi i32 [ %i.jfb, %bb.cag ], [ %i.jeu, %bb.cah ]
  %.sink18410 = phi ptr [ %i.jff, %bb.cag ], [ %.06052, %bb.cah ]
  %i.jfk = zext nneg i32 %.sink18412 to i64
  %i.jfl = getelementptr inbounds nuw i8, ptr %.sink18410, i64 %i.jfk
  %i.jfm = load i64, ptr %i.jfl, align 8, !tbaa !76
  br label %.thread15107

.thread15107:                                     ; preds = %.thread15107.sink.split, %bb.cae
  %.25353 = phi i64 [ 0, %bb.cae ], [ %i.jfm, %.thread15107.sink.split ]
  %i.jfn = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25353, i32 noundef 4) ; 2 uses
  %.not8153.not = icmp eq ptr %i.jfn, null
  br i1 %.not8153.not, label %allocate_stack.exit.thread, label %.thread15107._crit_edge

.thread15107._crit_edge:                          ; preds = %.thread15107
  %.phi.trans.insert15796 = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %.pre15797 = load i32, ptr %.phi.trans.insert15796, align 8, !tbaa !74
  br label %bb.cai

bb.cai:                                           ; preds = %.thread15107._crit_edge, %bb.cac
  %i.jfo = phi i32 [ %i.jey, %bb.cac ], [ %.pre15797, %.thread15107._crit_edge ]
  %.25356 = phi ptr [ %i.jfa, %bb.cac ], [ %i.jfn, %.thread15107._crit_edge ]
  %i.jfp = getelementptr inbounds nuw i8, ptr %.012242, i64 8
  %i.jfq = load i32, ptr %i.jfp, align 8, !tbaa !75 ; 3 uses
  %i.jfr = add i32 %i.jfq, 3
  %.not8155 = icmp ugt i32 %i.jfo, %i.jfr
  %i.jfs = and i32 %i.jfq, 3
  %.not8156 = icmp eq i32 %i.jfs, 0
  %or.cond10943 = and i1 %.not8155, %.not8156
  br i1 %or.cond10943, label %.thread15124, label %.thread12280

.thread15124:                                     ; preds = %bb.cai
  %i.jft = load i32, ptr %.25356, align 1, !tbaa !69
  %i.jfu = zext i32 %i.jfq to i64
  %i.jfv = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jfu
  store i32 %i.jft, ptr %i.jfv, align 4, !tbaa !48
  br label %allocate_stack.exit.thread

bb.caj:                                           ; preds = %bb.k
  %i.jfw = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jfx = load i32, ptr %i.jfw, align 8, !tbaa !69 ; 8 uses
  %i.jfy = and i32 %i.jfx, 1073741824
  %.not8135 = icmp eq i32 %i.jfy, 0
  br i1 %.not8135, label %bb.cal, label %bb.cak

bb.cak:                                           ; preds = %bb.caj
  %i.jfz = and i32 %i.jfx, -1073741825            ; 2 uses
  %i.jga = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jgb = load i32, ptr %i.jga, align 8, !tbaa !74 ; 2 uses
  %.not8143 = icmp ugt i32 %i.jgb, %i.jfz
  %i.jgc = zext i32 %i.jfz to i64
  %i.jgd = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgc
  br i1 %.not8143, label %bb.caq, label %.thread12280

bb.cal:                                           ; preds = %bb.caj
  %.not8136 = icmp sgt i32 %i.jfx, -1
  br i1 %.not8136, label %bb.cap, label %bb.cam

bb.cam:                                           ; preds = %bb.cal
  %i.jge = and i32 %i.jfx, 1073741823             ; 3 uses
  %.not8139 = icmp eq i32 %i.jge, 0
  br i1 %.not8139, label %.thread15130, label %bb.can

bb.can:                                           ; preds = %bb.cam
  %i.jgf = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jgg = add nuw nsw i32 %i.jge, 7
  %.not8140 = icmp ugt i32 %i.jgf, %i.jgg
  %i.jgh = and i32 %i.jfx, 7
  %.not8141 = icmp eq i32 %i.jgh, 0
  %or.cond10944 = and i1 %.not8141, %.not8140
  br i1 %or.cond10944, label %bb.cao, label %.thread12280

bb.cao:                                           ; preds = %bb.can
  %i.jgi = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15130.sink.split

bb.cap:                                           ; preds = %bb.cal
  %i.jgj = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jgk = load i32, ptr %i.jgj, align 8, !tbaa !74
  %i.jgl = add nuw nsw i32 %i.jfx, 7
  %.not8137 = icmp ugt i32 %i.jgk, %i.jgl
  %i.jgm = and i32 %i.jfx, 7
  %.not8138 = icmp eq i32 %i.jgm, 0
  %or.cond10945 = and i1 %.not8138, %.not8137
  br i1 %or.cond10945, label %.thread15130.sink.split, label %.thread12280

.thread15130.sink.split:                          ; preds = %bb.cap, %bb.cao
  %.sink18416 = phi i32 [ %i.jge, %bb.cao ], [ %i.jfx, %bb.cap ]
  %.sink18414 = phi ptr [ %i.jgi, %bb.cao ], [ %.06052, %bb.cap ]
  %i.jgn = zext nneg i32 %.sink18416 to i64
  %i.jgo = getelementptr inbounds nuw i8, ptr %.sink18414, i64 %i.jgn
  %i.jgp = load i64, ptr %i.jgo, align 8, !tbaa !76
  br label %.thread15130

.thread15130:                                     ; preds = %.thread15130.sink.split, %bb.cam
  %.25347 = phi i64 [ 0, %bb.cam ], [ %i.jgp, %.thread15130.sink.split ]
  %i.jgq = call fastcc ptr @ptr_torealptr(ptr noundef %4, i64 noundef %.25347, i32 noundef 8) ; 2 uses
  %.not8142.not = icmp eq ptr %i.jgq, null
  br i1 %.not8142.not, label %allocate_stack.exit.thread, label %.thread15130._crit_edge

.thread15130._crit_edge:                          ; preds = %.thread15130
  %.phi.trans.insert15794 = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %.pre15795 = load i32, ptr %.phi.trans.insert15794, align 8, !tbaa !74
  br label %bb.caq

bb.caq:                                           ; preds = %.thread15130._crit_edge, %bb.cak
  %i.jgr = phi i32 [ %i.jgb, %bb.cak ], [ %.pre15795, %.thread15130._crit_edge ]
  %.25350 = phi ptr [ %i.jgd, %bb.cak ], [ %i.jgq, %.thread15130._crit_edge ]
  %i.jgs = getelementptr inbounds nuw i8, ptr %.012242, i64 8
  %i.jgt = load i32, ptr %i.jgs, align 8, !tbaa !75 ; 3 uses
  %i.jgu = add i32 %i.jgt, 7
  %.not8144 = icmp ugt i32 %i.jgr, %i.jgu
  %i.jgv = and i32 %i.jgt, 7
  %.not8145 = icmp eq i32 %i.jgv, 0
  %or.cond10946 = and i1 %.not8144, %.not8145
  br i1 %or.cond10946, label %.thread15147, label %.thread12280

.thread15147:                                     ; preds = %bb.caq
  %i.jgw = load i64, ptr %.25350, align 1, !tbaa !69
  %i.jgx = zext i32 %i.jgt to i64
  %i.jgy = getelementptr inbounds nuw i8, ptr %.06052, i64 %i.jgx
  store i64 %i.jgw, ptr %i.jgy, align 8, !tbaa !76
  br label %allocate_stack.exit.thread

bb.car:                                           ; preds = %bb.k
  %i.jgz = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jha = load i32, ptr %i.jgz, align 4, !tbaa !69 ; 6 uses
  %.not8124 = icmp sgt i32 %i.jha, -1
  br i1 %.not8124, label %bb.cav, label %bb.cas

bb.cas:                                           ; preds = %bb.car
  %i.jhb = and i32 %i.jha, 2147483647             ; 3 uses
  %.not8127 = icmp eq i32 %i.jhb, 0
  br i1 %.not8127, label %allocate_stack.exit.thread, label %bb.cat

bb.cat:                                           ; preds = %bb.cas
  %i.jhc = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jhd = add nuw i32 %i.jhb, 7
  %.not8128 = icmp ugt i32 %i.jhc, %i.jhd
  %i.jhe = and i32 %i.jha, 7
  %.not8129 = icmp eq i32 %i.jhe, 0
  %or.cond10947 = and i1 %.not8129, %.not8128
  br i1 %or.cond10947, label %bb.cau, label %.thread12280

bb.cau:                                           ; preds = %bb.cat
  %i.jhf = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15153

bb.cav:                                           ; preds = %bb.car
  %i.jhg = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jhh = load i32, ptr %i.jhg, align 8, !tbaa !74
  %i.jhi = add nuw i32 %i.jha, 7
  %.not8125 = icmp ugt i32 %i.jhh, %i.jhi
  %i.jhj = and i32 %i.jha, 7
  %.not8126 = icmp eq i32 %i.jhj, 0
  %or.cond10948 = and i1 %.not8126, %.not8125
  br i1 %or.cond10948, label %.thread15153, label %.thread12280

.thread15153:                                     ; preds = %bb.cav, %bb.cau
  %.sink18419 = phi i32 [ %i.jhb, %bb.cau ], [ %i.jha, %bb.cav ]
  %.sink18417 = phi ptr [ %i.jhf, %bb.cau ], [ %.06052, %bb.cav ]
  %i.jhk = zext nneg i32 %.sink18419 to i64
  %i.jhl = getelementptr inbounds nuw i8, ptr %.sink18417, i64 %i.jhk
  %.25340 = load i64, ptr %i.jhl, align 8, !tbaa !76 ; 4 uses
  %i.jhm = lshr i64 %.25340, 32                   ; 2 uses
  %i.jhn = trunc nuw i64 %i.jhm to i32            ; 2 uses
  %i.jho = trunc i64 %.25340 to i32               ; 2 uses
  %.not.i11106 = icmp eq i64 %i.jhm, 0
  br i1 %.not.i11106, label %allocate_stack.exit.thread, label %bb.caw, !prof !105

bb.caw:                                           ; preds = %.thread15153
  %i.jhp = icmp slt i64 %.25340, 0
  br i1 %i.jhp, label %bb.cax, label %bb.caz

bb.cax:                                           ; preds = %bb.caw
  %i.jhq = xor i32 %i.jhn, -1                     ; 2 uses
  %i.jhr = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11111 = icmp ugt i32 %i.jhr, %i.jhq
  br i1 %.not31.i11111, label %bb.cay, label %allocate_stack.exit.thread, !prof !22

bb.cay:                                           ; preds = %bb.cax
  %i.jhs = load ptr, ptr %4, align 8, !tbaa !21
  %i.jht = zext nneg i32 %i.jhq to i64
  %i.jhu = getelementptr inbounds nuw [16 x i8], ptr %i.jhs, i64 %i.jht
  br label %bb.cbb

bb.caz:                                           ; preds = %bb.caw
  %i.jhv = add nsw i32 %i.jhn, -1                 ; 2 uses
  %i.jhw = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11107 = icmp ult i32 %i.jhv, %i.jhw
  br i1 %.not30.i11107, label %bb.cba, label %allocate_stack.exit.thread, !prof !22

bb.cba:                                           ; preds = %bb.caz
  %i.jhx = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jhy = sext i32 %i.jhv to i64
  %i.jhz = getelementptr inbounds [16 x i8], ptr %i.jhx, i64 %i.jhy
  br label %bb.cbb

bb.cbb:                                           ; preds = %bb.cba, %bb.cay
  %.0.i11109 = phi ptr [ %i.jhu, %bb.cay ], [ %i.jhz, %bb.cba ] ; 2 uses
  %i.jia = getelementptr inbounds nuw i8, ptr %.0.i11109, i64 8
  %i.jib = load i32, ptr %i.jia, align 8, !tbaa !14 ; 2 uses
  %i.jic = icmp ugt i32 %i.jib, %i.jho
  %10 = add i32 %i.jho, 1
  %11 = icmp ule i32 %10, %i.jib
  %12 = and i1 %11, %i.jic
  br i1 %12, label %bb.cbc, label %allocate_stack.exit.thread, !prof !22

bb.cbc:                                           ; preds = %bb.cbb
  %i.jid = load ptr, ptr %.0.i11109, align 8, !tbaa !13 ; 2 uses
  %i.jie = and i64 %.25340, 4294967295
  %i.jif = getelementptr inbounds nuw i8, ptr %i.jid, i64 %i.jie
  %.not8130.not = icmp eq ptr %i.jid, null
  br i1 %.not8130.not, label %allocate_stack.exit.thread, label %bb.cbd

bb.cbd:                                           ; preds = %bb.cbc
  %i.jig = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jih = load i32, ptr %i.jig, align 8, !tbaa !69 ; 4 uses
  %.not8131 = icmp sgt i32 %i.jih, -1
  br i1 %.not8131, label %bb.cbh, label %bb.cbe

bb.cbe:                                           ; preds = %bb.cbd
  %i.jii = and i32 %i.jih, 2147483647             ; 3 uses
  %.not8133 = icmp eq i32 %i.jii, 0
  br i1 %.not8133, label %.thread15173, label %bb.cbf

bb.cbf:                                           ; preds = %bb.cbe
  %i.jij = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8134 = icmp ugt i32 %i.jij, %i.jii
  br i1 %.not8134, label %bb.cbg, label %.thread12280

bb.cbg:                                           ; preds = %bb.cbf
  %i.jik = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15173.sink.split

bb.cbh:                                           ; preds = %bb.cbd
  %i.jil = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jim = load i32, ptr %i.jil, align 8, !tbaa !74
  %.not8132 = icmp ugt i32 %i.jim, %i.jih
  br i1 %.not8132, label %.thread15173.sink.split, label %.thread12280

.thread15173.sink.split:                          ; preds = %bb.cbh, %bb.cbg
  %.sink18423 = phi i32 [ %i.jii, %bb.cbg ], [ %i.jih, %bb.cbh ]
  %.sink18421 = phi ptr [ %i.jik, %bb.cbg ], [ %.06052, %bb.cbh ]
  %i.jin = zext nneg i32 %.sink18423 to i64
  %i.jio = getelementptr inbounds nuw i8, ptr %.sink18421, i64 %i.jin
  %i.jip = load i8, ptr %i.jio, align 1, !tbaa !69
  %i.jiq = and i8 %i.jip, 1
  br label %.thread15173

.thread15173:                                     ; preds = %.thread15173.sink.split, %bb.cbe
  %.25343 = phi i8 [ 0, %bb.cbe ], [ %i.jiq, %.thread15173.sink.split ]
  store i8 %.25343, ptr %i.jif, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cbi:                                           ; preds = %bb.k
  %i.jir = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jis = load i32, ptr %i.jir, align 4, !tbaa !69 ; 6 uses
  %.not8113 = icmp sgt i32 %i.jis, -1
  br i1 %.not8113, label %bb.cbm, label %bb.cbj

bb.cbj:                                           ; preds = %bb.cbi
  %i.jit = and i32 %i.jis, 2147483647             ; 3 uses
  %.not8116 = icmp eq i32 %i.jit, 0
  br i1 %.not8116, label %allocate_stack.exit.thread, label %bb.cbk

bb.cbk:                                           ; preds = %bb.cbj
  %i.jiu = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jiv = add nuw i32 %i.jit, 7
  %.not8117 = icmp ugt i32 %i.jiu, %i.jiv
  %i.jiw = and i32 %i.jis, 7
  %.not8118 = icmp eq i32 %i.jiw, 0
  %or.cond10949 = and i1 %.not8118, %.not8117
  br i1 %or.cond10949, label %bb.cbl, label %.thread12280

bb.cbl:                                           ; preds = %bb.cbk
  %i.jix = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15190

bb.cbm:                                           ; preds = %bb.cbi
  %i.jiy = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jiz = load i32, ptr %i.jiy, align 8, !tbaa !74
  %i.jja = add nuw i32 %i.jis, 7
  %.not8114 = icmp ugt i32 %i.jiz, %i.jja
  %i.jjb = and i32 %i.jis, 7
  %.not8115 = icmp eq i32 %i.jjb, 0
  %or.cond10950 = and i1 %.not8115, %.not8114
  br i1 %or.cond10950, label %.thread15190, label %.thread12280

.thread15190:                                     ; preds = %bb.cbm, %bb.cbl
  %.sink18426 = phi i32 [ %i.jit, %bb.cbl ], [ %i.jis, %bb.cbm ]
  %.sink18424 = phi ptr [ %i.jix, %bb.cbl ], [ %.06052, %bb.cbm ]
  %i.jjc = zext nneg i32 %.sink18426 to i64
  %i.jjd = getelementptr inbounds nuw i8, ptr %.sink18424, i64 %i.jjc
  %.25333 = load i64, ptr %i.jjd, align 8, !tbaa !76 ; 4 uses
  %i.jje = lshr i64 %.25333, 32                   ; 2 uses
  %i.jjf = trunc nuw i64 %i.jje to i32            ; 2 uses
  %i.jjg = trunc i64 %.25333 to i32               ; 2 uses
  %.not.i11113 = icmp eq i64 %i.jje, 0
  br i1 %.not.i11113, label %allocate_stack.exit.thread, label %bb.cbn, !prof !105

bb.cbn:                                           ; preds = %.thread15190
  %i.jjh = icmp slt i64 %.25333, 0
  br i1 %i.jjh, label %bb.cbo, label %bb.cbq

bb.cbo:                                           ; preds = %bb.cbn
  %i.jji = xor i32 %i.jjf, -1                     ; 2 uses
  %i.jjj = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11118 = icmp ugt i32 %i.jjj, %i.jji
  br i1 %.not31.i11118, label %bb.cbp, label %allocate_stack.exit.thread, !prof !22

bb.cbp:                                           ; preds = %bb.cbo
  %i.jjk = load ptr, ptr %4, align 8, !tbaa !21
  %i.jjl = zext nneg i32 %i.jji to i64
  %i.jjm = getelementptr inbounds nuw [16 x i8], ptr %i.jjk, i64 %i.jjl
  br label %bb.cbs

bb.cbq:                                           ; preds = %bb.cbn
  %i.jjn = add nsw i32 %i.jjf, -1                 ; 2 uses
  %i.jjo = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11114 = icmp ult i32 %i.jjn, %i.jjo
  br i1 %.not30.i11114, label %bb.cbr, label %allocate_stack.exit.thread, !prof !22

bb.cbr:                                           ; preds = %bb.cbq
  %i.jjp = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jjq = sext i32 %i.jjn to i64
  %i.jjr = getelementptr inbounds [16 x i8], ptr %i.jjp, i64 %i.jjq
  br label %bb.cbs

bb.cbs:                                           ; preds = %bb.cbr, %bb.cbp
  %.0.i11116 = phi ptr [ %i.jjm, %bb.cbp ], [ %i.jjr, %bb.cbr ] ; 2 uses
  %i.jjs = getelementptr inbounds nuw i8, ptr %.0.i11116, i64 8
  %i.jjt = load i32, ptr %i.jjs, align 8, !tbaa !14 ; 2 uses
  %i.jju = icmp ugt i32 %i.jjt, %i.jjg
  %13 = add i32 %i.jjg, 1
  %14 = icmp ule i32 %13, %i.jjt
  %15 = and i1 %14, %i.jju
  br i1 %15, label %bb.cbt, label %allocate_stack.exit.thread, !prof !22

bb.cbt:                                           ; preds = %bb.cbs
  %i.jjv = load ptr, ptr %.0.i11116, align 8, !tbaa !13 ; 2 uses
  %i.jjw = and i64 %.25333, 4294967295
  %i.jjx = getelementptr inbounds nuw i8, ptr %i.jjv, i64 %i.jjw
  %.not8119.not = icmp eq ptr %i.jjv, null
  br i1 %.not8119.not, label %allocate_stack.exit.thread, label %bb.cbu

bb.cbu:                                           ; preds = %bb.cbt
  %i.jjy = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jjz = load i32, ptr %i.jjy, align 8, !tbaa !69 ; 4 uses
  %.not8120 = icmp sgt i32 %i.jjz, -1
  br i1 %.not8120, label %bb.cby, label %bb.cbv

bb.cbv:                                           ; preds = %bb.cbu
  %i.jka = and i32 %i.jjz, 2147483647             ; 3 uses
  %.not8122 = icmp eq i32 %i.jka, 0
  br i1 %.not8122, label %.thread15210, label %bb.cbw

bb.cbw:                                           ; preds = %bb.cbv
  %i.jkb = load i32, ptr %i.ar, align 4, !tbaa !62
  %.not8123 = icmp ugt i32 %i.jkb, %i.jka
  br i1 %.not8123, label %bb.cbx, label %.thread12280

bb.cbx:                                           ; preds = %bb.cbw
  %i.jkc = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15210.sink.split

bb.cby:                                           ; preds = %bb.cbu
  %i.jkd = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jke = load i32, ptr %i.jkd, align 8, !tbaa !74
  %.not8121 = icmp ugt i32 %i.jke, %i.jjz
  br i1 %.not8121, label %.thread15210.sink.split, label %.thread12280

.thread15210.sink.split:                          ; preds = %bb.cby, %bb.cbx
  %.sink18430 = phi i32 [ %i.jka, %bb.cbx ], [ %i.jjz, %bb.cby ]
  %.sink18428 = phi ptr [ %i.jkc, %bb.cbx ], [ %.06052, %bb.cby ]
  %i.jkf = zext nneg i32 %.sink18430 to i64
  %i.jkg = getelementptr inbounds nuw i8, ptr %.sink18428, i64 %i.jkf
  %i.jkh = load i8, ptr %i.jkg, align 1, !tbaa !69
  br label %.thread15210

.thread15210:                                     ; preds = %.thread15210.sink.split, %bb.cbv
  %.25336 = phi i8 [ 0, %bb.cbv ], [ %i.jkh, %.thread15210.sink.split ]
  store i8 %.25336, ptr %i.jjx, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.cbz:                                           ; preds = %bb.k
  %i.jki = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jkj = load i32, ptr %i.jki, align 4, !tbaa !69 ; 6 uses
  %.not8100 = icmp sgt i32 %i.jkj, -1
  br i1 %.not8100, label %bb.ccd, label %bb.cca

bb.cca:                                           ; preds = %bb.cbz
  %i.jkk = and i32 %i.jkj, 2147483647             ; 3 uses
  %.not8103 = icmp eq i32 %i.jkk, 0
  br i1 %.not8103, label %allocate_stack.exit.thread, label %bb.ccb

bb.ccb:                                           ; preds = %bb.cca
  %i.jkl = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jkm = add nuw i32 %i.jkk, 7
  %.not8104 = icmp ugt i32 %i.jkl, %i.jkm
  %i.jkn = and i32 %i.jkj, 7
  %.not8105 = icmp eq i32 %i.jkn, 0
  %or.cond10951 = and i1 %.not8105, %.not8104
  br i1 %or.cond10951, label %bb.ccc, label %.thread12280

bb.ccc:                                           ; preds = %bb.ccb
  %i.jko = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15227

bb.ccd:                                           ; preds = %bb.cbz
  %i.jkp = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jkq = load i32, ptr %i.jkp, align 8, !tbaa !74
  %i.jkr = add nuw i32 %i.jkj, 7
  %.not8101 = icmp ugt i32 %i.jkq, %i.jkr
  %i.jks = and i32 %i.jkj, 7
  %.not8102 = icmp eq i32 %i.jks, 0
  %or.cond10952 = and i1 %.not8102, %.not8101
  br i1 %or.cond10952, label %.thread15227, label %.thread12280

.thread15227:                                     ; preds = %bb.ccd, %bb.ccc
  %.sink18433 = phi i32 [ %i.jkk, %bb.ccc ], [ %i.jkj, %bb.ccd ]
  %.sink18431 = phi ptr [ %i.jko, %bb.ccc ], [ %.06052, %bb.ccd ]
  %i.jkt = zext nneg i32 %.sink18433 to i64
  %i.jku = getelementptr inbounds nuw i8, ptr %.sink18431, i64 %i.jkt
  %.25326 = load i64, ptr %i.jku, align 8, !tbaa !76 ; 4 uses
  %i.jkv = lshr i64 %.25326, 32                   ; 2 uses
  %i.jkw = trunc nuw i64 %i.jkv to i32            ; 2 uses
  %i.jkx = trunc i64 %.25326 to i32               ; 2 uses
  %.not.i11120 = icmp eq i64 %i.jkv, 0
  br i1 %.not.i11120, label %allocate_stack.exit.thread, label %bb.cce, !prof !105

bb.cce:                                           ; preds = %.thread15227
  %i.jky = icmp slt i64 %.25326, 0
  br i1 %i.jky, label %bb.ccf, label %bb.cch

bb.ccf:                                           ; preds = %bb.cce
  %i.jkz = xor i32 %i.jkw, -1                     ; 2 uses
  %i.jla = load i32, ptr %i.bx, align 8, !tbaa !20
  %.not31.i11125 = icmp ugt i32 %i.jla, %i.jkz
  br i1 %.not31.i11125, label %bb.ccg, label %allocate_stack.exit.thread, !prof !22

bb.ccg:                                           ; preds = %bb.ccf
  %i.jlb = load ptr, ptr %4, align 8, !tbaa !21
  %i.jlc = zext nneg i32 %i.jkz to i64
  %i.jld = getelementptr inbounds nuw [16 x i8], ptr %i.jlb, i64 %i.jlc
  br label %bb.ccj

bb.cch:                                           ; preds = %bb.cce
  %i.jle = add nsw i32 %i.jkw, -1                 ; 2 uses
  %i.jlf = load i32, ptr %i.au, align 4, !tbaa !18
  %.not30.i11121 = icmp ult i32 %i.jle, %i.jlf
  br i1 %.not30.i11121, label %bb.cci, label %allocate_stack.exit.thread, !prof !22

bb.cci:                                           ; preds = %bb.cch
  %i.jlg = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.jlh = sext i32 %i.jle to i64
  %i.jli = getelementptr inbounds [16 x i8], ptr %i.jlg, i64 %i.jlh
  br label %bb.ccj

bb.ccj:                                           ; preds = %bb.cci, %bb.ccg
  %.0.i11123 = phi ptr [ %i.jld, %bb.ccg ], [ %i.jli, %bb.cci ] ; 2 uses
  %i.jlj = getelementptr inbounds nuw i8, ptr %.0.i11123, i64 8
  %i.jlk = load i32, ptr %i.jlj, align 8, !tbaa !14 ; 3 uses
  %i.jll = icmp ugt i32 %i.jlk, %i.jkx
  %.not32.i11124 = icmp ugt i32 %i.jlk, 1
  %or.cond.not.i = and i1 %i.jll, %.not32.i11124
  %i.jlm = add i32 %i.jkx, 2
  %i.jln = icmp ule i32 %i.jlm, %i.jlk
  %i.jlo = and i1 %i.jln, %or.cond.not.i
  br i1 %i.jlo, label %bb.cck, label %allocate_stack.exit.thread, !prof !22

bb.cck:                                           ; preds = %bb.ccj
  %i.jlp = load ptr, ptr %.0.i11123, align 8, !tbaa !13 ; 2 uses
  %i.jlq = and i64 %.25326, 4294967295
  %i.jlr = getelementptr inbounds nuw i8, ptr %i.jlp, i64 %i.jlq
  %.not8106.not = icmp eq ptr %i.jlp, null
  br i1 %.not8106.not, label %allocate_stack.exit.thread, label %bb.ccl

bb.ccl:                                           ; preds = %bb.cck
  %i.jls = getelementptr inbounds nuw i8, ptr %.012242, i64 16
  %i.jlt = load i32, ptr %i.jls, align 8, !tbaa !69 ; 6 uses
  %.not8107 = icmp sgt i32 %i.jlt, -1
  br i1 %.not8107, label %bb.ccp, label %bb.ccm

bb.ccm:                                           ; preds = %bb.ccl
  %i.jlu = and i32 %i.jlt, 2147483647             ; 3 uses
  %.not8110 = icmp eq i32 %i.jlu, 0
  br i1 %.not8110, label %.thread15247, label %bb.ccn

bb.ccn:                                           ; preds = %bb.ccm
  %i.jlv = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.jlw = add nuw i32 %i.jlu, 1
  %.not8111 = icmp ugt i32 %i.jlv, %i.jlw
  %i.jlx = and i32 %i.jlt, 1
  %.not8112 = icmp eq i32 %i.jlx, 0
  %or.cond10953 = and i1 %.not8112, %.not8111
  br i1 %or.cond10953, label %bb.cco, label %.thread12280

bb.cco:                                           ; preds = %bb.ccn
  %i.jly = load ptr, ptr %i.ap, align 8, !tbaa !61
  br label %.thread15247.sink.split

bb.ccp:                                           ; preds = %bb.ccl
  %i.jlz = getelementptr inbounds nuw i8, ptr %.012258, i64 16
  %i.jma = load i32, ptr %i.jlz, align 8, !tbaa !74
  %i.jmb = add nuw i32 %i.jlt, 1
  %.not8108 = icmp ugt i32 %i.jma, %i.jmb
  %i.jmc = and i32 %i.jlt, 1
  %.not8109 = icmp eq i32 %i.jmc, 0
  %or.cond10954 = and i1 %.not8109, %.not8108
  br i1 %or.cond10954, label %.thread15247.sink.split, label %.thread12280

.thread15247.sink.split:                          ; preds = %bb.ccp, %bb.cco
  %.sink18437 = phi i32 [ %i.jlu, %bb.cco ], [ %i.jlt, %bb.ccp ]
  %.sink18435 = phi ptr [ %i.jly, %bb.cco ], [ %.06052, %bb.ccp ]
  %i.jmd = zext nneg i32 %.sink18437 to i64
  %i.jme = getelementptr inbounds nuw i8, ptr %.sink18435, i64 %i.jmd
  %i.jmf = load i16, ptr %i.jme, align 2, !tbaa !19
  br label %.thread15247

.thread15247:                                     ; preds = %.thread15247.sink.split, %bb.ccm
  %.25329 = phi i16 [ 0, %bb.ccm ], [ %i.jmf, %.thread15247.sink.split ]
  store i16 %.25329, ptr %i.jlr, align 1, !tbaa !69
  br label %allocate_stack.exit.thread

bb.ccq:                                           ; preds = %bb.k
  %i.jmg = getelementptr inbounds nuw i8, ptr %.012242, i64 20
  %i.jmh = load i32, ptr %i.jmg, align 4, !tbaa !69 ; 6 uses
  %.not8087 = icmp sgt i32 %i.jmh, -1
  br i1 %.not8087, label %bb.ccu, label %bb.ccr

bb.ccr:                                           ; preds = %bb.ccq
  %i.jmi = and i32 %i.jmh, 2147483647             ; 3 uses
  %.not8090 = icmp eq i32 %i.jmi, 0
  br i1 %.not8090, label %allocate_stack.exit.thread, label %bb.ccs

bb.ccs:                                           ; preds = %bb.ccr
  %i.jmj = load i32, ptr %i.ar, align 4, !tbaa !62
end_hunk_0
