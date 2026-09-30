Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Run?download=true
inline.NumInlined: 1400
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@l___private_Lake_Build_Run_0__Lake_Monitor_reportJob:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 23 uses
  %.val.i.i1312 = load i32, ptr %i.au, align 4, !tbaa !17 ; 3 uses
  %i.av = icmp sgt i32 %.val.i.i1312, 0
  br i1 %i.av, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_inc_ref.exit1311
  %i.aw = add nuw i32 %.val.i.i1312, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !17
  br label %lean_inc_ref.exit1314

bb.n:                                             ; preds = %lean_inc_ref.exit1311
  %.not.i.i1313 = icmp eq i32 %.val.i.i1312, 0
  br i1 %.not.i.i1313, label %lean_inc_ref.exit1314, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw sub ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1314

lean_inc_ref.exit1314:                            ; preds = %bb.m, %bb.n, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !18
  %i.ba = load i32, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %lean_inc_ref.exit1314
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %0, align 8, !tbaa !17
  br label %lean_dec_ref.exit1091

bb.q:                                             ; preds = %lean_inc_ref.exit1314
  %.not.i1090 = icmp eq i32 %i.ba, 0
  br i1 %.not.i1090, label %lean_dec_ref.exit1091, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit1091

lean_dec_ref.exit1091:                            ; preds = %bb.p, %bb.q, %bb.r
  %i.bd = tail call ptr @lean_task_get(ptr noundef nonnull %i.ap) #8 ; 8 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i.i1315 = icmp eq i64 %i.bf, 0            ; 2 uses
  br i1 %.not.i.i1315, label %bb.s, label %lean_inc.exit.i

bb.s:                                             ; preds = %lean_dec_ref.exit1091
  %.val.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !17 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bg, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.bh = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !17
  br label %lean_inc.exit.i

bb.u:                                             ; preds = %bb.s
  %.not.i.i5.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i5.i, label %lean_inc.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %lean_dec_ref.exit1091, %bb.t, %bb.u, %bb.v
  %i.bj = load i32, ptr %i.ap, align 4, !tbaa !17 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %lean_inc.exit.i
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.ap, align 4, !tbaa !17
  br label %lean_task_get_own.exit

bb.x:                                             ; preds = %lean_inc.exit.i
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i, label %lean_task_get_own.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #8
  br label %lean_task_get_own.exit

lean_task_get_own.exit:                           ; preds = %bb.w, %bb.x, %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !10 ; 11 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i1133 = icmp eq i64 %i.bp, 0
  br i1 %.not.i1133, label %bb.z, label %lean_inc.exit1134

bb.z:                                             ; preds = %lean_task_get_own.exit
  %.val.i.i1316 = load i32, ptr %i.bn, align 4, !tbaa !17 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i1316, 0
  br i1 %i.bq, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.br = add nuw i32 %.val.i.i1316, 1
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !17
  br label %lean_inc.exit1134

bb.ab:                                            ; preds = %bb.z
  %.not.i.i1317 = icmp eq i32 %.val.i.i1316, 0
  br i1 %.not.i.i1317, label %lean_inc.exit1134, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = atomicrmw sub ptr %i.bn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1134

lean_inc.exit1134:                                ; preds = %bb.ac, %bb.ab, %bb.aa, %lean_task_get_own.exit
  br i1 %.not.i.i1315, label %bb.ad, label %lean_dec.exit1291

bb.ad:                                            ; preds = %lean_inc.exit1134
  %i.bt = load i32, ptr %i.bd, align 8, !tbaa !17 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ae, label %bb.af, !prof !15

bb.ae:                                            ; preds = %bb.ad
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bd, align 8, !tbaa !17
  br label %lean_dec.exit1291

bb.af:                                            ; preds = %bb.ad
  %.not.i.i1289 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i1289, label %lean_dec.exit1291, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #8
  br label %lean_dec.exit1291

lean_dec.exit1291:                                ; preds = %bb.ae, %bb.af, %bb.ag, %lean_inc.exit1134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !10 ; 27 uses
  %.val.i.i1319 = load i32, ptr %i.bx, align 4, !tbaa !17 ; 3 uses
  %i.by = icmp sgt i32 %.val.i.i1319, 0
  br i1 %i.by, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %lean_dec.exit1291
  %i.bz = add nuw i32 %.val.i.i1319, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !17
  br label %lean_inc_ref.exit1321

bb.ai:                                            ; preds = %lean_dec.exit1291
  %.not.i.i1320 = icmp eq i32 %.val.i.i1319, 0
  br i1 %.not.i.i1320, label %lean_inc_ref.exit1321, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = atomicrmw sub ptr %i.bx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1321

lean_inc_ref.exit1321:                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !18  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 33
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !10 ; 25 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i1092 = icmp eq i64 %i.ci, 0              ; 7 uses
  br i1 %.not.i1092, label %bb.ak, label %lean_inc.exit

bb.ak:                                            ; preds = %lean_inc_ref.exit1321
  %.val.i.i1322 = load i32, ptr %i.cg, align 4, !tbaa !17 ; 3 uses
  %i.cj = icmp sgt i32 %.val.i.i1322, 0
  br i1 %i.cj, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.ck = add nuw i32 %.val.i.i1322, 1
  store i32 %i.ck, ptr %i.cg, align 4, !tbaa !17
  br label %lean_inc.exit

bb.am:                                            ; preds = %bb.ak
  %.not.i.i1323 = icmp eq i32 %.val.i.i1322, 0
  br i1 %.not.i.i1323, label %lean_inc.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = atomicrmw sub ptr %i.cg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.an, %bb.am, %bb.al, %lean_inc_ref.exit1321
  %i.cm = load i32, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.ao, label %bb.ap, !prof !15

bb.ao:                                            ; preds = %lean_inc.exit
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %i.bn, align 8, !tbaa !17
  br label %lean_nat_eq.exit

bb.ap:                                            ; preds = %lean_inc.exit
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %lean_nat_eq.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bn) #8
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.cp = tail call zeroext i8 @l_Lake_Log_maxLv(ptr noundef nonnull %i.bx) #8 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 8
  %.val1304 = load i64, ptr %i.cq, align 8, !tbaa !12 ; 2 uses
  %.mask = and i64 %.val1304, 9223372036854775807
  %i.cr = icmp ne i64 %.mask, 0                   ; 3 uses
  %i.cs = tail call zeroext i8 @l_Lake_instOrdLogLevel_ord(i8 noundef zeroext %i.ad, i8 noundef zeroext %i.cp) #8
  %i.ct = icmp ne i8 %i.cs, 2
  %narrow = select i1 %i.ct, i1 %i.cr, i1 false   ; 3 uses
  %spec.select = zext i1 %narrow to i8            ; 2 uses
  %i.cu = tail call zeroext i8 @l_Lake_instOrdLogLevel_ord(i8 noundef zeroext %i.ab, i8 noundef zeroext %i.cp) #8
  %i.cv = icmp ne i8 %i.cu, 2
  %i.cw = tail call zeroext i8 @l_Lake_instOrdJobAction_ord(i8 noundef zeroext %i.af, i8 noundef zeroext %i.cc) #8
  %i.cx = icmp eq i8 %i.cw, 2
  %i.cy = icmp ne i8 %i.ce, 0
  %i.cz = icmp eq i8 %i.p, 0
  %or.cond1035 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond1035, label %bb.mf, label %bb.ku

lean_dec.exit1231:                                ; preds = %lean_dec.exit1175, %bb.kt, %bb.ks, %bb.kr, %lean_dec.exit1195, %bb.jz, %bb.jy, %bb.jx, %lean_dec.exit1215, %bb.jf, %bb.je, %bb.jd, %lean_dec.exit1235, %bb.ik, %bb.ij, %bb.ii
  tail call void @lean_inc_heartbeat() #8
  %i.da = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ar, label %lean_alloc_ctor.exit

bb.ar:                                            ; preds = %lean_dec.exit1231
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec_ref.exit1089:                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz
  %.0773 = phi ptr [ %.0820, %bb.cf ], [ %i.es, %bb.cb ], [ %i.es, %bb.bz ], [ %i.es, %bb.ca ], [ %.0820, %bb.cd ], [ %.0820, %bb.ce ], [ %.0820, %bb.cv ], [ %.0820, %bb.cw ], [ %.0820, %bb.cx ]
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !10 ; 4 uses
  %.val.i.i1325 = load i32, ptr %i.de, align 4, !tbaa !17 ; 3 uses
  %i.df = icmp sgt i32 %.val.i.i1325, 0
  br i1 %i.df, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %lean_dec_ref.exit1089
  %i.dg = add nuw i32 %.val.i.i1325, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !17
  br label %lean_inc_ref.exit1327

bb.at:                                            ; preds = %lean_dec_ref.exit1089
  %.not.i.i1326 = icmp eq i32 %.val.i.i1325, 0
  br i1 %.not.i.i1326, label %lean_inc_ref.exit1327, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = atomicrmw sub ptr %i.de, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1327

lean_inc_ref.exit1327:                            ; preds = %bb.as, %bb.at, %bb.au
  %i.di = tail call ptr @lean_apply_1(ptr noundef nonnull %i.de, ptr noundef nonnull inttoptr (i64 1 to ptr)) #8 ; 12 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i1328 = icmp eq i64 %i.dk, 0
  br i1 %.not.i1328, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %lean_inc_ref.exit1327
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = trunc i64 %i.dl to i32
  br label %lean_obj_tag.exit

bb.aw:                                            ; preds = %lean_inc_ref.exit1327
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %.val.i = load i32, ptr %i.dn, align 4
  %i.do = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.av, %bb.aw
  %.0.i1329 = phi i32 [ %i.dm, %bb.av ], [ %i.do, %bb.aw ]
  %i.dp = icmp eq i32 %.0.i1329, 0
  br i1 %i.dp, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %lean_obj_tag.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10 ; 8 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i1131 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1131, label %bb.ay, label %lean_inc.exit1132

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i1330 = load i32, ptr %i.dr, align 4, !tbaa !17 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i1330, 0
  br i1 %i.du, label %bb.az, label %bb.ba, !prof !15

bb.az:                                            ; preds = %bb.ay
  %i.dv = add nuw i32 %.val.i.i1330, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !17
  br label %lean_inc.exit1132

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i1331 = icmp eq i32 %.val.i.i1330, 0
  br i1 %.not.i.i1331, label %lean_inc.exit1132, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dw = atomicrmw sub ptr %i.dr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1132

lean_inc.exit1132:                                ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %.val.i1333 = load i32, ptr %i.di, align 8, !tbaa !17 ; 4 uses
  %i.dx = icmp eq i32 %.val.i1333, 1
  br i1 %i.dx, label %.preheader.i.preheader, label %bb.bg

.preheader.i.preheader:                           ; preds = %lean_inc.exit1132
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !10 ; 4 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i7.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i7.i, label %bb.bc, label %lean_dec.exit.i

bb.bc:                                            ; preds = %.preheader.i.preheader
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !17 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !17
  br label %lean_dec.exit.i

bb.be:                                            ; preds = %bb.bc
  %.not.i.i.i1336 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i1336, label %lean_dec.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bf, %bb.be, %bb.bd, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.di) #8
  br label %lean_dec_ref_known.exit

bb.bg:                                            ; preds = %lean_inc.exit1132
  %i.ee = icmp sgt i32 %.val.i1333, 1
  br i1 %i.ee, label %bb.bh, label %bb.bi, !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.ef = add nsw i32 %.val.i1333, -1
  store i32 %i.ef, ptr %i.di, align 8, !tbaa !17
  br label %lean_dec_ref_known.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i1334 = icmp eq i32 %.val.i1333, 0
  br i1 %.not.i.i1334, label %lean_dec_ref_known.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #8
  br label %lean_dec_ref_known.exit

bb.bk:                                            ; preds = %lean_obj_tag.exit
  %.val.i1337 = load i32, ptr %i.di, align 4, !tbaa !17 ; 4 uses
  %i.eg = icmp eq i32 %.val.i1337, 1
  br i1 %i.eg, label %.preheader.i1340, label %bb.bp

.preheader.i1340:                                 ; preds = %bb.bk
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !10 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i7.i1342 = icmp eq i64 %i.ek, 0
  br i1 %.not.i7.i1342, label %bb.bl, label %lean_dec.exit.i1343

bb.bl:                                            ; preds = %.preheader.i1340
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !17 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.bm, label %bb.bn, !prof !15

bb.bm:                                            ; preds = %bb.bl
  %i.en = add nsw i32 %i.el, -1
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !17
  br label %lean_dec.exit.i1343

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i.i1346 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i1346, label %lean_dec.exit.i1343, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ei) #8
  br label %lean_dec.exit.i1343

lean_dec.exit.i1343:                              ; preds = %bb.bo, %bb.bn, %bb.bm, %.preheader.i1340
  tail call void @lean_free_object(ptr noundef nonnull %i.di) #8
  br label %lean_dec_ref_known.exit

bb.bp:                                            ; preds = %bb.bk
  %i.eo = icmp sgt i32 %.val.i1337, 1
  br i1 %i.eo, label %bb.bq, label %bb.br, !prof !15

bb.bq:                                            ; preds = %bb.bp
  %i.ep = add nsw i32 %.val.i1337, -1
  store i32 %i.ep, ptr %i.di, align 4, !tbaa !17
  br label %lean_dec_ref_known.exit

bb.br:                                            ; preds = %bb.bp
  %.not.i.i1338 = icmp eq i32 %.val.i1337, 0
  br i1 %.not.i.i1338, label %lean_dec_ref_known.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %bb.bs, %bb.br, %bb.bq, %lean_dec.exit.i1343, %bb.bj, %bb.bi, %bb.bh, %lean_dec.exit.i
  %.0771 = phi ptr [ %i.dr, %bb.bj ], [ %i.dr, %lean_dec.exit.i ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bi ], [ inttoptr (i64 1 to ptr), %lean_dec.exit.i1343 ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.br ], [ inttoptr (i64 1 to ptr), %bb.bs ]
  tail call void @lean_inc_heartbeat() #8
  %i.eq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.bt, label %lean_alloc_ctor.exit

bb.bt:                                            ; preds = %lean_dec_ref_known.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.bu:                                            ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.es = phi ptr [ %.0820, %bb.cs ], [ %.0820, %bb.ct ], [ %.pre, %bb.cu ] ; 7 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, 1
  %.not.i1129 = icmp eq i64 %i.eu, 0
  br i1 %.not.i1129, label %bb.bv, label %lean_inc.exit1130

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i1349 = load i32, ptr %i.es, align 4, !tbaa !17 ; 3 uses
  %i.ev = icmp sgt i32 %.val.i.i1349, 0
  br i1 %i.ev, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %i.ew = add nuw i32 %.val.i.i1349, 1
  store i32 %i.ew, ptr %i.es, align 4, !tbaa !17
  br label %lean_inc.exit1130

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i1350 = icmp eq i32 %.val.i.i1349, 0
  br i1 %.not.i.i1350, label %lean_inc.exit1130, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ex = atomicrmw sub ptr %i.es, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1130

lean_inc.exit1130:                                ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu
  %i.ey = load i32, ptr %i.fr, align 8, !tbaa !17 ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.bz, label %bb.ca, !prof !15

bb.bz:                                            ; preds = %lean_inc.exit1130
  %i.fa = add nsw i32 %i.ey, -1
  store i32 %i.fa, ptr %i.fr, align 8, !tbaa !17
  br label %lean_dec_ref.exit1089

bb.ca:                                            ; preds = %lean_inc.exit1130
  %.not.i1088 = icmp eq i32 %i.ey, 0
  br i1 %.not.i1088, label %lean_dec_ref.exit1089, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #8
  br label %lean_dec_ref.exit1089

bb.cc:                                            ; preds = %lean_dec.exit1287
  %i.fb = load i32, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %bb.cc
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %i.bx, align 8, !tbaa !17
  br label %lean_dec_ref.exit1089

bb.ce:                                            ; preds = %bb.cc
  %.not.i1086 = icmp eq i32 %i.fb, 0
  br i1 %.not.i1086, label %lean_dec_ref.exit1089, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #8
  br label %lean_dec_ref.exit1089

lean_nat_le.exit.thread:                          ; preds = %lean_dec.exit1287
  %i.fe = and i64 %.val1304, 9223372036854775807  ; 2 uses
  %.val.i.i1363 = load i32, ptr %i.z, align 4, !tbaa !17 ; 3 uses
  %i.ff = icmp sgt i32 %.val.i.i1363, 0
  br i1 %i.ff, label %bb.cg, label %bb.ch, !prof !15

bb.cg:                                            ; preds = %lean_nat_le.exit.thread
  %i.fg = add nuw i32 %.val.i.i1363, 1
  store i32 %i.fg, ptr %i.z, align 4, !tbaa !17
  br label %lean_inc_ref.exit1365

bb.ch:                                            ; preds = %lean_nat_le.exit.thread
  %.not.i.i1364 = icmp eq i32 %.val.i.i1363, 0
  br i1 %.not.i.i1364, label %lean_inc_ref.exit1365, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fh = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1365

lean_inc_ref.exit1365:                            ; preds = %bb.cg, %bb.ch, %bb.ci
  %.not31.i1366 = icmp eq i64 %i.fe, 0
  br i1 %.not31.i1366, label %._crit_edge.i1372, label %.lr.ph.i1367

.lr.ph.i1367:                                     ; preds = %lean_inc_ref.exit1365
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cr, %.lr.ph.i1367
  %.02232.i1368 = phi i64 [ 0, %.lr.ph.i1367 ], [ %i.fu, %bb.cr ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.02232.i1368
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !10
  %.val.i.i.i1369 = load i32, ptr %i.z, align 4, !tbaa !17 ; 3 uses
  %i.fl = icmp sgt i32 %.val.i.i.i1369, 0
  br i1 %i.fl, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.fm = add nuw i32 %.val.i.i.i1369, 1
  store i32 %i.fm, ptr %i.z, align 4, !tbaa !17
  br label %bb.cr

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i.i1370 = icmp eq i32 %.val.i.i.i1369, 0
  br i1 %.not.i.i.i1370, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fn = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cr

._crit_edge.i1372:                                ; preds = %bb.cr, %lean_inc_ref.exit1365
  %.024.lcssa.i1373 = phi ptr [ inttoptr (i64 1 to ptr), %lean_inc_ref.exit1365 ], [ %i.ft, %bb.cr ]
  %i.fo = load i32, ptr %i.z, align 4, !tbaa !17  ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.cn, label %bb.co, !prof !15

bb.cn:                                            ; preds = %._crit_edge.i1372
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.z, align 4, !tbaa !17
  br label %lean_dec_ref.exit.i1375

bb.co:                                            ; preds = %._crit_edge.i1372
  %.not.i.i1374 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i1374, label %lean_dec_ref.exit.i1375, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #8
  br label %lean_dec_ref.exit.i1375

lean_dec_ref.exit.i1375:                          ; preds = %bb.cp, %bb.co, %bb.cn
  tail call void @lean_inc_heartbeat() #8
  %i.fr = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 8 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.cq, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Run_0__Lake_Monitor_reportJob_spec__0___redArg.exit1376

bb.cq:                                            ; preds = %lean_dec_ref.exit.i1375
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.cr:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.ft = tail call ptr @l_Lake_logToStream(ptr noundef %i.fk, ptr noundef nonnull %i.z, i8 noundef zeroext %.0791, i8 noundef zeroext %i.aj) #8
  %i.fu = add nuw nsw i64 %.02232.i1368, 1        ; 2 uses
  %.not.i1371 = icmp eq i64 %i.fu, %i.fe
  br i1 %.not.i1371, label %._crit_edge.i1372, label %bb.cj

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Run_0__Lake_Monitor_reportJob_spec__0___redArg.exit1376: ; preds = %lean_dec_ref.exit.i1375
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 1, ptr %i.fr, align 4, !tbaa !17
  store i32 131096, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %.024.lcssa.i1373, ptr %i.fw, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store ptr %.0820, ptr %i.fx, align 8, !tbaa !10
  %i.fy = load i32, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.cs, label %bb.ct, !prof !15

bb.cs:                                            ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Run_0__Lake_Monitor_reportJob_spec__0___redArg.exit1376
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.bx, align 8, !tbaa !17
  br label %bb.bu

bb.ct:                                            ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Build_Run_0__Lake_Monitor_reportJob_spec__0___redArg.exit1376
  %.not.i1082 = icmp eq i32 %i.fy, 0
  br i1 %.not.i1082, label %bb.bu, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #8
  %.pre = load ptr, ptr %i.fx, align 8, !tbaa !10
  br label %bb.bu

lean_dec.exit1271:                                ; preds = %lean_dec_ref.exit1077
  %i.gb = load i32, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.cv, label %bb.cw, !prof !15

bb.cv:                                            ; preds = %lean_dec.exit1271
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.bx, align 8, !tbaa !17
  br label %lean_dec_ref.exit1089

bb.cw:                                            ; preds = %lean_dec.exit1271
  %.not.i1080 = icmp eq i32 %i.gb, 0
  br i1 %.not.i1080, label %lean_dec_ref.exit1089, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #8
  br label %lean_dec_ref.exit1089

lean_dec.exit1287:                                ; preds = %lean_dec_ref.exit1077
  %.0791 = select i1 %narrow, i8 0, i8 %i.ab
  br i1 %i.cr, label %lean_nat_le.exit.thread, label %bb.cc

lean_dec_ref.exit1065:                            ; preds = %lean_dec_ref.exit1055, %bb.gj, %bb.gi, %bb.gh
  %.0835 = phi ptr [ %i.lv, %bb.gj ], [ %i.lv, %bb.gh ], [ %i.lv, %bb.gi ], [ %i.nb, %lean_dec_ref.exit1055 ] ; 4 uses
  %i.ge = load ptr, ptr %i.y, align 8, !tbaa !10  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.092215031509, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !10 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.092215031509, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !10 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.092215031509, i64 56
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.092215031509, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !10 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.092215031509, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !10 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.092215031509, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.092215031509, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !10 ; 5 uses
  %.0833.val = load i32, ptr %.092215031509, align 8, !tbaa !17
  %i.gt = icmp eq i32 %.0833.val, 1
  br i1 %i.gt, label %bb.ea, label %bb.cy

bb.cy:                                            ; preds = %lean_dec_ref.exit1065
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = and i64 %i.gu, 1
  %.not.i1127 = icmp eq i64 %i.gv, 0
  br i1 %.not.i1127, label %bb.cz, label %lean_inc.exit1128

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i1377 = load i32, ptr %i.gs, align 4, !tbaa !17 ; 3 uses
  %i.gw = icmp sgt i32 %.val.i.i1377, 0
  br i1 %i.gw, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.gx = add nuw i32 %.val.i.i1377, 1
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !17
  br label %lean_inc.exit1128

bb.db:                                            ; preds = %bb.cz
  %.not.i.i1378 = icmp eq i32 %.val.i.i1377, 0
  br i1 %.not.i.i1378, label %lean_inc.exit1128, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gy = atomicrmw sub ptr %i.gs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1128

lean_inc.exit1128:                                ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  %i.gz = ptrtoint ptr %i.gq to i64
  %i.ha = and i64 %i.gz, 1
  %.not.i1125 = icmp eq i64 %i.ha, 0
  br i1 %.not.i1125, label %bb.dd, label %lean_inc.exit1126

bb.dd:                                            ; preds = %lean_inc.exit1128
  %.val.i.i1380 = load i32, ptr %i.gq, align 4, !tbaa !17 ; 3 uses
  %i.hb = icmp sgt i32 %.val.i.i1380, 0
  br i1 %i.hb, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %bb.dd
  %i.hc = add nuw i32 %.val.i.i1380, 1
  store i32 %i.hc, ptr %i.gq, align 4, !tbaa !17
  br label %lean_inc.exit1126

bb.df:                                            ; preds = %bb.dd
  %.not.i.i1381 = icmp eq i32 %.val.i.i1380, 0
  br i1 %.not.i.i1381, label %lean_inc.exit1126, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hd = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1126

lean_inc.exit1126:                                ; preds = %bb.dg, %bb.df, %bb.de, %lean_inc.exit1128
  %i.he = ptrtoint ptr %i.go to i64
  %i.hf = and i64 %i.he, 1
  %.not.i1123 = icmp eq i64 %i.hf, 0
  br i1 %.not.i1123, label %bb.dh, label %lean_inc.exit1124

bb.dh:                                            ; preds = %lean_inc.exit1126
  %.val.i.i1383 = load i32, ptr %i.go, align 4, !tbaa !17 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i1383, 0
  br i1 %i.hg, label %bb.di, label %bb.dj, !prof !15

bb.di:                                            ; preds = %bb.dh
  %i.hh = add nuw i32 %.val.i.i1383, 1
  store i32 %i.hh, ptr %i.go, align 4, !tbaa !17
  br label %lean_inc.exit1124

bb.dj:                                            ; preds = %bb.dh
  %.not.i.i1384 = icmp eq i32 %.val.i.i1383, 0
  br i1 %.not.i.i1384, label %lean_inc.exit1124, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hi = atomicrmw sub ptr %i.go, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1124

lean_inc.exit1124:                                ; preds = %bb.dk, %bb.dj, %bb.di, %lean_inc.exit1126
  %i.hj = ptrtoint ptr %i.gm to i64
  %i.hk = and i64 %i.hj, 1
  %.not.i1121 = icmp eq i64 %i.hk, 0
  br i1 %.not.i1121, label %bb.dl, label %lean_inc.exit1122

bb.dl:                                            ; preds = %lean_inc.exit1124
  %.val.i.i1386 = load i32, ptr %i.gm, align 4, !tbaa !17 ; 3 uses
  %i.hl = icmp sgt i32 %.val.i.i1386, 0
  br i1 %i.hl, label %bb.dm, label %bb.dn, !prof !15

bb.dm:                                            ; preds = %bb.dl
  %i.hm = add nuw i32 %.val.i.i1386, 1
  store i32 %i.hm, ptr %i.gm, align 4, !tbaa !17
  br label %lean_inc.exit1122

bb.dn:                                            ; preds = %bb.dl
  %.not.i.i1387 = icmp eq i32 %.val.i.i1386, 0
  br i1 %.not.i.i1387, label %lean_inc.exit1122, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.hn = atomicrmw sub ptr %i.gm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1122

lean_inc.exit1122:                                ; preds = %bb.do, %bb.dn, %bb.dm, %lean_inc.exit1124
  %i.ho = ptrtoint ptr %i.gi to i64
  %i.hp = and i64 %i.ho, 1
  %.not.i1119 = icmp eq i64 %i.hp, 0
  br i1 %.not.i1119, label %bb.dp, label %lean_inc.exit1120

bb.dp:                                            ; preds = %lean_inc.exit1122
  %.val.i.i1389 = load i32, ptr %i.gi, align 4, !tbaa !17 ; 3 uses
  %i.hq = icmp sgt i32 %.val.i.i1389, 0
  br i1 %i.hq, label %bb.dq, label %bb.dr, !prof !15

bb.dq:                                            ; preds = %bb.dp
  %i.hr = add nuw i32 %.val.i.i1389, 1
  store i32 %i.hr, ptr %i.gi, align 4, !tbaa !17
  br label %lean_inc.exit1120

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i1390 = icmp eq i32 %.val.i.i1389, 0
  br i1 %.not.i.i1390, label %lean_inc.exit1120, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hs = atomicrmw sub ptr %i.gi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1120

lean_inc.exit1120:                                ; preds = %bb.ds, %bb.dr, %bb.dq, %lean_inc.exit1122
  %i.ht = ptrtoint ptr %i.gg to i64
  %i.hu = and i64 %i.ht, 1
  %.not.i1117 = icmp eq i64 %i.hu, 0
  br i1 %.not.i1117, label %bb.dt, label %lean_inc.exit1118

bb.dt:                                            ; preds = %lean_inc.exit1120
  %.val.i.i1392 = load i32, ptr %i.gg, align 4, !tbaa !17 ; 3 uses
  %i.hv = icmp sgt i32 %.val.i.i1392, 0
  br i1 %i.hv, label %bb.du, label %bb.dv, !prof !15

bb.du:                                            ; preds = %bb.dt
  %i.hw = add nuw i32 %.val.i.i1392, 1
  store i32 %i.hw, ptr %i.gg, align 4, !tbaa !17
  br label %lean_inc.exit1118

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i1393 = icmp eq i32 %.val.i.i1392, 0
  br i1 %.not.i.i1393, label %lean_inc.exit1118, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hx = atomicrmw sub ptr %i.gg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1118

lean_inc.exit1118:                                ; preds = %lean_inc.exit1120, %bb.du, %bb.dv, %bb.dw
  %i.hy = load i32, ptr %.092215031509, align 8, !tbaa !17 ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.dx, label %bb.dy, !prof !15

bb.dx:                                            ; preds = %lean_inc.exit1118
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %.092215031509, align 8, !tbaa !17
  br label %bb.eb

bb.dy:                                            ; preds = %lean_inc.exit1118
  %.not.i.i1261 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i1261, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.092215031509) #8
  br label %bb.eb

bb.ea:                                            ; preds = %lean_dec_ref.exit1065
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !10
  store ptr @l___private_Lake_Build_Run_0__Lake_Monitor_renderProgress___redArg___closed__1_value, ptr %i.gn, align 8, !tbaa !10
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.id = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.if = tail call noalias ptr @mi_malloc_small(i64 noundef 64) #8 ; 11 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ec, label %lean_alloc_ctor.exit1395

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_internal_panic_out_of_memory() #9
end_hunk_0
