Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWritePla?download=true
inline.NumInlined: 88
inline.NumDeleted: 26
begin_hunk_0_@Io_WritePlaOne:bb.a
  %i.ae = getelementptr i8, ptr %.val158, i64 4
  %.val158.val = load i32, ptr %i.ae, align 4, !tbaa !29 ; 2 uses
  %i.af = sext i32 %.val158.val to i64            ; 2 uses
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.af, %bb.g ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %..critedge_crit_edge ], [ %.1, %bb.g ]
  %.val158.val.lcssa = phi i32 [ %.val158.val213, %..critedge_crit_edge ], [ %.val158.val, %bb.g ] ; 3 uses
  %i.ah = getelementptr i8, ptr %1, i64 56        ; 7 uses
  %.val173 = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr i8, ptr %.val173, i64 4
  %.val173.val = load i32, ptr %i.ai, align 4, !tbaa !29 ; 3 uses
  %i.aj = add nsw i32 %.val173.val, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #12 ; 11 uses
  %i.am = add nsw i32 %.val158.val.lcssa, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #12 ; 9 uses
  %i.ap = sext i32 %.val173.val to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 45, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 48, i64 %.pre-phi, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %.pre-phi
  store i8 0, ptr %i.ar, align 1, !tbaa !39
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %.val173.val) #11 ; 0 uses
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %.val158.val.lcssa) #11 ; 0 uses
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr %0) ; 0 uses
  %.val172218 = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.av = getelementptr i8, ptr %.val172218, i64 4
  %.val172.val219 = load i32, ptr %i.av, align 4, !tbaa !29
  %i.aw = icmp sgt i32 %.val172.val219, 0
  br i1 %i.aw, label %.lr.ph222, label %.critedge2

.lr.ph222:                                        ; preds = %.critedge, %.lr.ph222
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %.lr.ph222 ], [ 0, %.critedge ] ; 2 uses
  %.val172221 = phi ptr [ %.val172, %.lr.ph222 ], [ %.val172218, %.critedge ]
  %i.ax = getelementptr i8, ptr %.val172221, i64 8
  %.val176.val = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val176.val, i64 %indvars.iv253
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %.val177 = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr i8, ptr %i.az, i64 48
  %.val178 = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr i8, ptr %.val177, i64 32
  %.val177.val = load ptr, ptr %i.bb, align 8, !tbaa !36
  %.val178.val = load i32, ptr %.val178, align 4, !tbaa !37
  %i.bc = getelementptr i8, ptr %.val177.val, i64 8
  %.val177.val.val = load ptr, ptr %i.bc, align 8, !tbaa !30
  %i.bd = sext i32 %.val178.val to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val177.val.val, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = tail call ptr @Abc_ObjName(ptr noundef %i.bf) #11
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.bg) #11 ; 0 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %.val172 = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.bi = getelementptr i8, ptr %.val172, i64 4
  %.val172.val = load i32, ptr %i.bi, align 4, !tbaa !29
  %i.bj = sext i32 %.val172.val to i64
  %i.bk = icmp slt i64 %indvars.iv.next254, %i.bj
  br i1 %i.bk, label %.lr.ph222, label %.critedge2, !llvm.loop !67

.critedge2:                                       ; preds = %.lr.ph222, %.critedge
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %0) ; 0 uses
  %.val156223 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.bm = getelementptr i8, ptr %.val156223, i64 4
  %.val156.val224 = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bn = icmp sgt i32 %.val156.val224, 0
  br i1 %i.bn, label %.lr.ph227, label %.critedge4

.lr.ph227:                                        ; preds = %.critedge2, %.lr.ph227
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %.lr.ph227 ], [ 0, %.critedge2 ] ; 2 uses
  %.val156226 = phi ptr [ %.val156, %.lr.ph227 ], [ %.val156223, %.critedge2 ]
  %i.bo = getelementptr i8, ptr %.val156226, i64 8
  %.val160.val = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val160.val, i64 %indvars.iv256
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31 ; 2 uses
  %.val164 = load ptr, ptr %i.bq, align 8, !tbaa !34
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %.val165 = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr i8, ptr %.val164, i64 32
  %.val164.val = load ptr, ptr %i.bs, align 8, !tbaa !36
  %.val165.val = load i32, ptr %.val165, align 4, !tbaa !37
  %i.bt = getelementptr i8, ptr %.val164.val, i64 8
  %.val164.val.val = load ptr, ptr %i.bt, align 8, !tbaa !30
  %i.bu = sext i32 %.val165.val to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val164.val.val, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = tail call ptr @Abc_ObjName(ptr noundef %i.bw) #11
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.bx) #11 ; 0 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %.val156 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val156, i64 4
  %.val156.val = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.ca = sext i32 %.val156.val to i64
  %i.cb = icmp slt i64 %indvars.iv.next257, %i.ca
  br i1 %i.cb, label %.lr.ph227, label %.critedge4, !llvm.loop !68

.critedge4:                                       ; preds = %.lr.ph227, %.critedge2
  %fputc143 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %.0.lcssa) #11 ; 0 uses
  %.val171228 = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val171228, i64 4
  %.val171.val229 = load i32, ptr %i.cd, align 4, !tbaa !29
  %i.ce = icmp sgt i32 %.val171.val229, 0
  br i1 %i.ce, label %.lr.ph232, label %.critedge6

.lr.ph232:                                        ; preds = %.critedge4, %.lr.ph232
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph232 ], [ 0, %.critedge4 ] ; 3 uses
  %.val171231 = phi ptr [ %.val171, %.lr.ph232 ], [ %.val171228, %.critedge4 ]
  %i.cf = getelementptr i8, ptr %.val171231, i64 8
  %.val175.val = load ptr, ptr %i.cf, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val175.val, i64 %indvars.iv259
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = inttoptr i64 %indvars.iv259 to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !39
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %.val171 = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val171, i64 4
  %.val171.val = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cl = sext i32 %.val171.val to i64
  %i.cm = icmp slt i64 %indvars.iv.next260, %i.cl
  br i1 %i.cm, label %.lr.ph232, label %.critedge6, !llvm.loop !69

.critedge6:                                       ; preds = %.lr.ph232, %.critedge4
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.co = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.cn, i32 noundef %.val158.val.lcssa) #11 ; 4 uses
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.cp = getelementptr i8, ptr %.val241, i64 4
  %.val.val242 = load i32, ptr %i.cp, align 4, !tbaa !29
  %i.cq = icmp sgt i32 %.val.val242, 0
  br i1 %i.cq, label %.lr.ph245, label %.critedge8

.lr.ph245:                                        ; preds = %.critedge6
  %.not.i208 = icmp eq ptr %i.co, null
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph245, %Extra_ProgressBarUpdate.exit
  %indvars.iv268 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next269, %Extra_ProgressBarUpdate.exit ] ; 7 uses
  %.val244 = phi ptr [ %.val241, %.lr.ph245 ], [ %.val, %Extra_ProgressBarUpdate.exit ]
  %i.cr = getelementptr i8, ptr %.val244, i64 8
  %.val159.val = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val159.val, i64 %indvars.iv268
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 3 uses
  %.not145 = icmp eq i64 %indvars.iv268, 0
  br i1 %.not145, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr i8, ptr %i.ao, i64 %indvars.iv268
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1
  store i8 48, ptr %i.cv, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv268
  store i8 49, ptr %i.cw, align 1, !tbaa !39
  %.val162 = load ptr, ptr %i.ct, align 8, !tbaa !34
  %i.cx = getelementptr i8, ptr %i.ct, i64 32
  %.val163 = load ptr, ptr %i.cx, align 8, !tbaa !35
  %i.cy = getelementptr i8, ptr %.val162, i64 32
  %.val162.val = load ptr, ptr %i.cy, align 8, !tbaa !36
  %.val163.val = load i32, ptr %.val163, align 4, !tbaa !37
  %i.cz = getelementptr i8, ptr %.val162.val, i64 8
  %.val162.val.val = load ptr, ptr %i.cz, align 8, !tbaa !30
  %i.da = sext i32 %.val163.val to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val162.val.val, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %.val4.i187 = load i32, ptr %i.dd, align 8, !tbaa !38
  %.not.i188 = icmp eq i32 %.val4.i187, 1
  br i1 %.not.i188, label %bb.k, label %Abc_ObjFanin0Ntk.exit193

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr i8, ptr %i.dc, i64 32
  %.val3.i189 = load ptr, ptr %i.de, align 8, !tbaa !35
  %i.df = getelementptr i8, ptr %i.dd, i64 32
  %.val.val.i190 = load ptr, ptr %i.df, align 8, !tbaa !36
  %.val3.val.i191 = load i32, ptr %.val3.i189, align 4, !tbaa !37
  %i.dg = getelementptr i8, ptr %.val.val.i190, i64 8
  %.val.val.val.i192 = load ptr, ptr %i.dg, align 8, !tbaa !30
  %i.dh = sext i32 %.val3.val.i191 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %.val.val.val.i192, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31
  br label %Abc_ObjFanin0Ntk.exit193

Abc_ObjFanin0Ntk.exit193:                         ; preds = %bb.j, %bb.k
  %i.dk = phi ptr [ %i.dj, %bb.k ], [ %i.dc, %bb.j ] ; 10 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 20
  %.val168 = load i32, ptr %i.dl, align 4
  %i.dm = and i32 %.val168, 15
  %.not209 = icmp eq i32 %i.dm, 7
  br i1 %.not209, label %bb.m, label %bb.l

bb.l:                                             ; preds = %Abc_ObjFanin0Ntk.exit193
  %i.dn = getelementptr i8, ptr %i.ct, i64 20
  %.val179 = load i32, ptr %i.dn, align 4
  %2 = lshr i32 %.val179, 10
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  %5 = sub nuw nsw i8 49, %4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 72 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.dq = ptrtoint ptr %i.dp to i64
  %sext = shl i64 %i.dq, 32
  %i.dr = ashr exact i64 %sext, 32
  %i.ds = getelementptr inbounds i8, ptr %i.al, i64 %i.dr
  store i8 %5, ptr %i.ds, align 1, !tbaa !39
  %i.dt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %i.al, ptr noundef nonnull %i.ao) #11 ; 0 uses
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.dv = ptrtoint ptr %i.du to i64
  %sext147 = shl i64 %i.dv, 32
  %i.dw = ashr exact i64 %sext147, 32
  %i.dx = getelementptr inbounds i8, ptr %i.al, i64 %i.dw
  store i8 45, ptr %i.dx, align 1, !tbaa !39
  br label %Extra_ProgressBarUpdate.exit

bb.m:                                             ; preds = %Abc_ObjFanin0Ntk.exit193
  %i.dy = tail call i32 @Abc_NodeIsConst(ptr noundef nonnull %i.dk) #11
  %.not148 = icmp eq i32 %i.dy, 0
  br i1 %.not148, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = tail call i32 @Abc_NodeIsConst1(ptr noundef nonnull %i.dk) #11
  %.not152 = icmp eq i32 %i.dz, 0
  br i1 %.not152, label %Extra_ProgressBarUpdate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %i.al, ptr noundef nonnull %i.ao) #11 ; 0 uses
  br label %Extra_ProgressBarUpdate.exit

bb.p:                                             ; preds = %bb.m
  %i.eb = getelementptr i8, ptr %i.dk, i64 28     ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !39 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !39
  %.not149236 = icmp eq i8 %i.ee, 0
  br i1 %.not149236, label %.preheader211, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %.val182 = load i32, ptr %i.eb, align 4, !tbaa !76 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dk, i64 32
  %i.eg = sext i32 %.val182 to i64
  br label %.preheader

.preheader211:                                    ; preds = %.critedge10, %bb.p
  %.val180238 = load i32, ptr %i.eb, align 4, !tbaa !76
  %i.eh = icmp sgt i32 %.val180238, 0
  br i1 %i.eh, label %.lr.ph240, label %.critedge12

.lr.ph240:                                        ; preds = %.preheader211
  %i.ei = getelementptr i8, ptr %i.dk, i64 32
  br label %bb.r

.preheaderthread-pre-split:                       ; preds = %.critedge10
  %.val181233.pr = load i32, ptr %i.eb, align 4, !tbaa !76
  br label %.preheader

.preheader:                                       ; preds = %.preheaderthread-pre-split, %.preheader.lr.ph
  %.val181233 = phi i32 [ %.val181233.pr, %.preheaderthread-pre-split ], [ %.val182, %.preheader.lr.ph ]
  %.0139237 = phi ptr [ %i.fk, %.preheaderthread-pre-split ], [ %i.ed, %.preheader.lr.ph ] ; 2 uses
  %i.ej = icmp sgt i32 %.val181233, 0
  br i1 %i.ej, label %.lr.ph235, label %.critedge10

.lr.ph235:                                        ; preds = %.preheader, %Abc_ObjFanin0Ntk.exit200
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %Abc_ObjFanin0Ntk.exit200 ], [ 0, %.preheader ] ; 3 uses
  %.val185 = load ptr, ptr %i.dk, align 8, !tbaa !34
  %.val186 = load ptr, ptr %i.ef, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %.val185, i64 32
  %.val185.val = load ptr, ptr %i.ek, align 8, !tbaa !36
  %i.el = getelementptr i8, ptr %.val185.val, i64 8
  %.val185.val.val = load ptr, ptr %i.el, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val186, i64 %indvars.iv262
  %i.en = load i32, ptr %i.em, align 4, !tbaa !37
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %.val185.val.val, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34 ; 2 uses
  %.val4.i194 = load i32, ptr %i.er, align 8, !tbaa !38
  %.not.i195 = icmp eq i32 %.val4.i194, 1
  br i1 %.not.i195, label %bb.q, label %Abc_ObjFanin0Ntk.exit200

bb.q:                                             ; preds = %.lr.ph235
  %i.es = getelementptr i8, ptr %i.eq, i64 32
  %.val3.i196 = load ptr, ptr %i.es, align 8, !tbaa !35
  %i.et = getelementptr i8, ptr %i.er, i64 32
  %.val.val.i197 = load ptr, ptr %i.et, align 8, !tbaa !36
  %.val3.val.i198 = load i32, ptr %.val3.i196, align 4, !tbaa !37
  %i.eu = getelementptr i8, ptr %.val.val.i197, i64 8
  %.val.val.val.i199 = load ptr, ptr %i.eu, align 8, !tbaa !30
  %i.ev = sext i32 %.val3.val.i198 to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %.val.val.val.i199, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31
  br label %Abc_ObjFanin0Ntk.exit200

Abc_ObjFanin0Ntk.exit200:                         ; preds = %.lr.ph235, %bb.q
  %i.ey = phi ptr [ %i.ex, %bb.q ], [ %i.eq, %.lr.ph235 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0139237, i64 %indvars.iv262
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !39
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !39
  %i.fd = ptrtoint ptr %i.fc to i64
  %sext151 = shl i64 %i.fd, 32
  %i.fe = ashr exact i64 %sext151, 32
  %i.ff = getelementptr inbounds i8, ptr %i.al, i64 %i.fe
  store i8 %i.fa, ptr %i.ff, align 1, !tbaa !39
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %.val181 = load i32, ptr %i.eb, align 4, !tbaa !76
  %i.fg = sext i32 %.val181 to i64
  %i.fh = icmp slt i64 %indvars.iv.next263, %i.fg
  br i1 %i.fh, label %.lr.ph235, label %.critedge10, !llvm.loop !70

.critedge10:                                      ; preds = %Abc_ObjFanin0Ntk.exit200, %.preheader
  %i.fi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %i.al, ptr noundef %i.ao) #11 ; 0 uses
  %i.fj = getelementptr i8, ptr %.0139237, i64 %i.eg
  %i.fk = getelementptr i8, ptr %i.fj, i64 3      ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !39
  %.not149 = icmp eq i8 %i.fl, 0
  br i1 %.not149, label %.preheader211, label %.preheaderthread-pre-split, !llvm.loop !71

bb.r:                                             ; preds = %.lr.ph240, %Abc_ObjFanin0Ntk.exit207
  %indvars.iv265 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next266, %Abc_ObjFanin0Ntk.exit207 ] ; 2 uses
  %.val183 = load ptr, ptr %i.dk, align 8, !tbaa !34
  %.val184 = load ptr, ptr %i.ei, align 8, !tbaa !35
  %i.fm = getelementptr i8, ptr %.val183, i64 32
  %.val183.val = load ptr, ptr %i.fm, align 8, !tbaa !36
  %i.fn = getelementptr i8, ptr %.val183.val, i64 8
  %.val183.val.val = load ptr, ptr %i.fn, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val184, i64 %indvars.iv265
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !37
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %.val183.val.val, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !31 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !34 ; 2 uses
  %.val4.i201 = load i32, ptr %i.ft, align 8, !tbaa !38
  %.not.i202 = icmp eq i32 %.val4.i201, 1
  br i1 %.not.i202, label %bb.s, label %Abc_ObjFanin0Ntk.exit207

bb.s:                                             ; preds = %bb.r
  %i.fu = getelementptr i8, ptr %i.fs, i64 32
  %.val3.i203 = load ptr, ptr %i.fu, align 8, !tbaa !35
  %i.fv = getelementptr i8, ptr %i.ft, i64 32
  %.val.val.i204 = load ptr, ptr %i.fv, align 8, !tbaa !36
  %.val3.val.i205 = load i32, ptr %.val3.i203, align 4, !tbaa !37
  %i.fw = getelementptr i8, ptr %.val.val.i204, i64 8
  %.val.val.val.i206 = load ptr, ptr %i.fw, align 8, !tbaa !30
  %i.fx = sext i32 %.val3.val.i205 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %.val.val.val.i206, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !31
  br label %Abc_ObjFanin0Ntk.exit207

Abc_ObjFanin0Ntk.exit207:                         ; preds = %bb.r, %bb.s
  %i.ga = phi ptr [ %i.fz, %bb.s ], [ %i.fs, %bb.r ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !39
  %i.gd = ptrtoint ptr %i.gc to i64
  %sext150 = shl i64 %i.gd, 32
  %i.ge = ashr exact i64 %sext150, 32
  %i.gf = getelementptr inbounds i8, ptr %i.al, i64 %i.ge
  store i8 45, ptr %i.gf, align 1, !tbaa !39
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %.val180 = load i32, ptr %i.eb, align 4, !tbaa !76
  %i.gg = sext i32 %.val180 to i64
  %i.gh = icmp slt i64 %indvars.iv.next266, %i.gg
  br i1 %i.gh, label %bb.r, label %.critedge12, !llvm.loop !72

.critedge12:                                      ; preds = %Abc_ObjFanin0Ntk.exit207, %.preheader211
  br i1 %.not.i208, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge12
  %i.gi = load i32, ptr %i.co, align 4, !tbaa !37
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv268, %i.gj
  br i1 %i.gk, label %Extra_ProgressBarUpdate.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge12
  %i.gl = trunc nuw nsw i64 %indvars.iv268 to i32
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef %i.co, i32 noundef %i.gl, ptr noundef null) #11
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.u, %bb.t, %bb.n, %bb.o, %bb.l
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.gm = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.gm, align 4, !tbaa !29
  %i.gn = sext i32 %.val.val to i64
  %i.go = icmp slt i64 %indvars.iv.next269, %i.gn
  br i1 %i.go, label %bb.h, label %.critedge8, !llvm.loop !73

.critedge8:                                       ; preds = %Extra_ProgressBarUpdate.exit, %.critedge6
  tail call void @Extra_ProgressBarStop(ptr noundef %i.co) #11
  %i.gp = tail call i64 @fwrite(ptr nonnull @.str.8, i64 3, i64 1, ptr %0) ; 0 uses
  %.val170246 = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.gq = getelementptr i8, ptr %.val170246, i64 4
  %.val170.val247 = load i32, ptr %i.gq, align 4, !tbaa !29
  %i.gr = icmp sgt i32 %.val170.val247, 0
  br i1 %i.gr, label %.lr.ph250, label %.critedge14

.lr.ph250:                                        ; preds = %.critedge8, %.lr.ph250
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %.lr.ph250 ], [ 0, %.critedge8 ] ; 2 uses
  %.val170249 = phi ptr [ %.val170, %.lr.ph250 ], [ %.val170246, %.critedge8 ]
end_hunk_0
