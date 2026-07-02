inline.NumInlined: 1556
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@red_RewriteRedClause:bb.a
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.e, 1
  br i1 %i.h, label %bb.b, label %.preheader251

.preheader251:                                    ; preds = %bb.a
  %i.i = icmp slt i32 %.val3.i, %i.e
  br i1 %i.i, label %.lr.ph299, label %red_RewriteRedUnitClause.exit

.lr.ph299:                                        ; preds = %.preheader251
  %.not151 = icmp eq i32 %i.g, 0                  ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.l = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.m = sext i32 %.val3.i to i64
  %i.n = add i32 %.val.i, %.val4.i
  %i.o = add i32 %i.n, %.val3.i
  br label %bb.ba

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val181.i = load ptr, ptr %i.p, align 8
  %i.q = load ptr, ptr %.val181.i, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i.i = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val1.i.i, align 8
  %i.s = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.s
  br i1 %.not.i.i.i, label %bb.c, label %clause_GetLiteralAtom.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %.val1.i.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.u, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.c ], [ %.val1.i.i, %bb.b ] ; 3 uses
  %i.v = icmp sgt i32 %.val3.i, 0
  br i1 %i.v, label %red_RewriteRedUnitClause.exit, label %bb.d

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit.i
  %i.w = getelementptr i8, ptr %.0.i.i.i, i64 16
  %.val186.i = load ptr, ptr %i.w, align 8
  %.not.i = icmp eq ptr %.val186.i, null
  br i1 %.not.i, label %red_RewriteRedUnitClause.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr @red_STAMPID, align 4
  %i.y = tail call i32 @term_StampOverflow(i32 noundef %i.x) #14
  %.not141.i = icmp eq i32 %i.y, 0
  br i1 %.not141.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i176 = load ptr, ptr %i.p, align 8
  %i.z = load ptr, ptr %.val.i176, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %.val170.i = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val170.i, i64 24
  store i32 0, ptr %i.ab, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load i32, ptr @term_STAMP, align 4
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @term_STAMP, align 4
  %.not160.i = icmp eq i32 %i.g, 0                ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.ag = load i32, ptr @memory_ALIGN, align 4    ; 2 uses
  %.pre.i = load i32, ptr @stack_POINTER, align 4 ; 5 uses
  %i.ah = getelementptr i8, ptr %.0.i.i.i, i64 16
  %.0103.val.i444 = load ptr, ptr %i.ah, align 8
  tail call void @sharing_PushListOnStackNoStamps(ptr noundef %.0103.val.i444) #14
  %i.ai = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not225270.i445 = icmp eq i32 %i.ai, %.pre.i
  br i1 %.not225270.i445, label %.loopexit.thread.i, label %.lr.ph276.i.outer

.loopexit.i:                                      ; preds = %.loopexit404
  %i.aj = getelementptr i8, ptr %.2.lcssa387.i, i64 16
  %.0103.val.i = load ptr, ptr %i.aj, align 8
  tail call void @sharing_PushListOnStackNoStamps(ptr noundef %.0103.val.i) #14
  %i.ak = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not225270.i = icmp eq i32 %i.ak, %.pre.i
  br i1 %.not225270.i, label %.loopexit.thread.i, label %.lr.ph276.i.outer.backedge

.lr.ph276.i.outer:                                ; preds = %bb.g, %.lr.ph276.i.outer.backedge
  %.ph = phi i32 [ %.ph.be, %.lr.ph276.i.outer.backedge ], [ %i.ai, %bb.g ]
  %.1275.i.ph = phi ptr [ %.2.lcssa387.i, %.lr.ph276.i.outer.backedge ], [ %.0.i.i.i, %bb.g ] ; 5 uses
  %i.al = phi i1 [ %.not225.i, %.lr.ph276.i.outer.backedge ], [ true, %bb.g ]
  %.1112273.i.ph = phi ptr [ %.2113.lcssa385.i, %.lr.ph276.i.outer.backedge ], [ %0, %bb.g ] ; 6 uses
  %.1122272.i.ph = phi i32 [ %.2123.lcssa384.i, %.lr.ph276.i.outer.backedge ], [ 0, %bb.g ] ; 4 uses
  %.1132271.i.ph = phi i32 [ %.2133.lcssa383.i, %.lr.ph276.i.outer.backedge ], [ 0, %bb.g ]
  br label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %.lr.ph276.i.outer, %.thread342
  %i.am = phi i32 [ %i.id, %.thread342 ], [ %.ph, %.lr.ph276.i.outer ]
  %.1105274.i = phi i1 [ true, %.thread342 ], [ %i.al, %.lr.ph276.i.outer ] ; 2 uses
  %.1132271.i = phi i32 [ %.2133.lcssa.i211, %.thread342 ], [ %.1132271.i.ph, %.lr.ph276.i.outer ] ; 3 uses
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr @stack_POINTER, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val184.i = load ptr, ptr %1, align 8
  %i.as = tail call ptr @st_ExistGen(ptr noundef %i.ar, ptr noundef %.val184.i, ptr noundef %i.aq) #14 ; 2 uses
  %.not148255.i = icmp ne ptr %i.as, null
  %or.cond257.i = and i1 %.not148255.i, %.1105274.i
  br i1 %or.cond257.i, label %.lr.ph263.i, label %.critedge.i

.lr.ph263.i:                                      ; preds = %.lr.ph276.i, %.critedge2.thread.i
  %.0129259.i = phi ptr [ %i.hz, %.critedge2.thread.i ], [ %i.as, %.lr.ph276.i ] ; 4 uses
  %.2133258.i = phi i32 [ %.3134.lcssa345.i, %.critedge2.thread.i ], [ %.1132271.i, %.lr.ph276.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %.0129259.i, i64 8
  %.0120242.i = load ptr, ptr %i.at, align 8      ; 2 uses
  %.not286.i = icmp eq ptr %.0120242.i, null
  br i1 %.not286.i, label %.critedge2.thread.i, label %.lr.ph248.i

.lr.ph248.i:                                      ; preds = %.lr.ph263.i, %.critedge4.i
  %.0120247.i = phi ptr [ %.0120.i, %.critedge4.i ], [ %.0120242.i, %.lr.ph263.i ] ; 2 uses
  %.3134243.i = phi i32 [ %.7138.i, %.critedge4.i ], [ %.2133258.i, %.lr.ph263.i ] ; 3 uses
  %i.au = getelementptr i8, ptr %.0120247.i, i64 8
  %.0120.val.i = load ptr, ptr %i.au, align 8     ; 3 uses
  %.val174.i = load i32, ptr %.0120.val.i, align 8
  %i.av = load i32, ptr @fol_EQUALITY, align 4
  %.not226.i = icmp eq i32 %.val174.i, %i.av
  br i1 %.not226.i, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph248.i
  %i.aw = getelementptr i8, ptr %.0120.val.i, i64 16 ; 2 uses
  %.val173.i = load ptr, ptr %i.aw, align 8       ; 2 uses
  %i.ax = getelementptr i8, ptr %.val173.i, i64 8
  %.val173.val.i = load ptr, ptr %i.ax, align 8   ; 2 uses
  %i.ay = icmp eq ptr %.0129259.i, %.val173.val.i
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val179.val.i = load ptr, ptr %.val173.i, align 8
  %i.az = getelementptr i8, ptr %.val179.val.i, i64 8
  %.val179.val.val.i = load ptr, ptr %i.az, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0102.i = phi ptr [ %.val179.val.val.i, %bb.i ], [ %.val173.val.i, %bb.h ] ; 2 uses
  %i.ba = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.0120.val.i) #14 ; 2 uses
  %.not287.i = icmp eq ptr %i.ba, null
  br i1 %.not287.i, label %.critedge4.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %.pre311 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ar
  %i.bb = phi i32 [ %i.hy, %bb.ar ], [ %.pre311, %.lr.ph.i.preheader ] ; 4 uses
  %.0119235.i = phi ptr [ %.0119.val178.i, %bb.ar ], [ %i.ba, %.lr.ph.i.preheader ] ; 2 uses
  %.4135232.i = phi i32 [ %.6137.i, %bb.ar ], [ %.3134243.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.bc = getelementptr i8, ptr %.0119235.i, i64 8
  %.0119.val.i = load ptr, ptr %i.bc, align 8     ; 3 uses
  %i.bd = getelementptr i8, ptr %.0119.val.i, i64 16
  %.val185.i = load ptr, ptr %i.bd, align 8       ; 12 uses
  %i.be = getelementptr i8, ptr %.0119.val.i, i64 24
  %.val189.i = load ptr, ptr %i.be, align 8
  %.val189.val.i = load i32, ptr %.val189.i, align 8
  %.not227.i = icmp eq i32 %.val189.val.i, %i.bb
  br i1 %.not227.i, label %bb.ar, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr i8, ptr %.val185.i, i64 64
  %.val3.i.i = load i32, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.val185.i, i64 68
  %.val.i.i = load i32, ptr %i.bg, align 4
  %i.bh = add nsw i32 %.val.i.i, %.val3.i.i
  %i.bi = getelementptr i8, ptr %.val185.i, i64 72
  %.val4.i.i = load i32, ptr %i.bi, align 8
  %i.bj = add nsw i32 %i.bh, %.val4.i.i
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.l, label %bb.ar

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr i8, ptr %.0119.val.i, i64 8
  %.val176.i = load i32, ptr %i.bl, align 8
  %.not157.i = icmp eq i32 %.val176.i, 0
  br i1 %.not157.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val171.i = load ptr, ptr %i.aw, align 8
  %i.bm = getelementptr i8, ptr %.val171.i, i64 8
  %.val171.val.i = load ptr, ptr %i.bm, align 8
  %.not228.i = icmp eq ptr %.0129259.i, %.val171.val.i
  br i1 %.not228.i, label %bb.o, label %bb.ar

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %.val185.i, i64 52
  %.val190.i = load i32, ptr %i.bn, align 4
  tail call void @term_StartMaxRenaming(i32 noundef %.val190.i) #14
  %i.bo = tail call ptr @term_Rename(ptr noundef %.1275.i.ph) #14 ; 0 uses
  %i.bp = load ptr, ptr @cont_LEFTCONTEXT, align 8 ; 2 uses
  %i.bq = tail call i32 @ord_ContGreater(ptr noundef %i.bp, ptr noundef nonnull %.0129259.i, ptr noundef %i.bp, ptr noundef %.0102.i, ptr noundef %2, ptr noundef %3) #14
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %._crit_edge311, label %bb.o

._crit_edge311:                                   ; preds = %bb.n
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %bb.ar

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5136206.i = phi i32 [ 1, %bb.n ], [ %.4135232.i, %bb.m ]
  %i.bs = icmp eq ptr %0, %.1112273.i.ph
  br i1 %i.bs, label %bb.p, label %clause_GetLiteralAtom.exit197.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not160.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr i8, ptr %.val185.i, i64 12
  %.val188.i = load i32, ptr %i.bt, align 4       ; 2 uses
  %.val187.i = load i32, ptr %i.ae, align 4
  %i.bu = icmp ule i32 %.val188.i, %.val187.i
  %i.bv = icmp ule i32 %.val188.i, %5
  %.not231.i = and i1 %i.bv, %i.bu
  br i1 %.not231.i, label %clause_GetLiteralAtom.exit197.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = tail call ptr @clause_Copy(ptr noundef %0) #14 ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 56
  %.val180.i = load ptr, ptr %i.bx, align 8
  %i.by = load ptr, ptr %.val180.i, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %.val1.i191.i = load ptr, ptr %i.bz, align 8    ; 3 uses
  %.val5.val.i.i192.i = load i32, ptr %.val1.i191.i, align 8
  %i.ca = load i32, ptr @fol_NOT, align 4
  %.not.i.i193.i = icmp eq i32 %.val5.val.i.i192.i, %i.ca
  br i1 %.not.i.i193.i, label %bb.s, label %clause_GetLiteralAtom.exit197.i

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %.val1.i191.i, i64 16
  %.val6.i.i195.i = load ptr, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %.val6.i.i195.i, i64 8
  %.val6.val.i.i196.i = load ptr, ptr %i.cc, align 8
  br label %clause_GetLiteralAtom.exit197.i

clause_GetLiteralAtom.exit197.i:                  ; preds = %bb.s, %bb.r, %bb.o
  %.5116.i = phi ptr [ %.1112273.i.ph, %bb.o ], [ %i.bw, %bb.s ], [ %i.bw, %bb.r ] ; 5 uses
  %.5.i = phi ptr [ %.1275.i.ph, %bb.o ], [ %.val6.val.i.i196.i, %bb.s ], [ %.val1.i191.i, %bb.r ] ; 3 uses
  %.not162.i = icmp eq i32 %.1122272.i.ph, 0
  br i1 %.not162.i, label %bb.t, label %.thread207.i

clause_GetLiteralAtom.exit197.thread.i:           ; preds = %bb.q
  %.not162212.i = icmp eq i32 %.1122272.i.ph, 0
  br i1 %.not162212.i, label %bb.t, label %.thread207.thread.i

bb.t:                                             ; preds = %clause_GetLiteralAtom.exit197.thread.i, %clause_GetLiteralAtom.exit197.i
  %.5220.i = phi ptr [ %.1275.i.ph, %clause_GetLiteralAtom.exit197.thread.i ], [ %.5.i, %clause_GetLiteralAtom.exit197.i ] ; 2 uses
  %.5116213.i = phi ptr [ %.1112273.i.ph, %clause_GetLiteralAtom.exit197.thread.i ], [ %.5116.i, %clause_GetLiteralAtom.exit197.i ] ; 8 uses
  %i.cd = load i32, ptr %i.af, align 4
  %.not163.i = icmp eq i32 %i.cd, 0
  br i1 %.not163.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr @stdout, align 8
  %i.cf = tail call i64 @fwrite(ptr nonnull @.str.27, i64 13, i64 1, ptr %i.ce) ; 0 uses
  tail call void @clause_Print(ptr noundef %.5116213.i) #14
  %i.cg = load ptr, ptr @stdout, align 8
  %i.ch = tail call i64 @fwrite(ptr nonnull @.str.28, i64 6, i64 1, ptr %i.cg) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not160.i, label %.thread207.thread.i, label %bb.w

.thread207.i:                                     ; preds = %clause_GetLiteralAtom.exit197.i
  br i1 %.not160.i, label %.thread207.thread.i, label %.thread209.i

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr i8, ptr %.5116213.i, i64 32 ; 4 uses
  %.val.i198.i = load ptr, ptr %i.ci, align 8     ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i198.i, null
  br i1 %.not6.i.i.i, label %list_Delete.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %.0.val.i.i.i, %.lr.ph.i.i.i ], [ %.val.i198.i, %bb.w ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.07.i.i.i, align 8 ; 2 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = sext i32 %i.cl to i64
  %i.cn = load i64, ptr @memory_FREEDBYTES, align 8
  %i.co = add i64 %i.cn, %i.cm
  store i64 %i.co, ptr @memory_FREEDBYTES, align 8
  %i.cp = load ptr, ptr %i.cj, align 8
  store ptr %i.cp, ptr %.07.i.i.i, align 8
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i.i, ptr %i.cq, align 8
  %.not.i.i199.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i199.i, label %list_Delete.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6

list_Delete.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %bb.w
  %i.cr = getelementptr i8, ptr %.5116213.i, i64 40 ; 4 uses
  %.val11.i.i = load ptr, ptr %i.cr, align 8      ; 2 uses
  %.not6.i14.i.i = icmp eq ptr %.val11.i.i, null
  br i1 %.not6.i14.i.i, label %red_DocumentRewriting.exit.i, label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %list_Delete.exit.i.i, %.lr.ph.i15.i.i
  %.07.i16.i.i = phi ptr [ %.0.val.i17.i.i, %.lr.ph.i15.i.i ], [ %.val11.i.i, %list_Delete.exit.i.i ] ; 3 uses
  %.0.val.i17.i.i = load ptr, ptr %.07.i16.i.i, align 8 ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr @memory_FREEDBYTES, align 8
  %i.cy = load ptr, ptr %i.cs, align 8
  store ptr %i.cy, ptr %.07.i16.i.i, align 8
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i16.i.i, ptr %i.cz, align 8
  %.not.i18.i.i = icmp eq ptr %.0.val.i17.i.i, null
  br i1 %.not.i18.i.i, label %red_DocumentRewriting.exit.i, label %.lr.ph.i15.i.i, !llvm.loop !6

red_DocumentRewriting.exit.i:                     ; preds = %.lr.ph.i15.i.i, %list_Delete.exit.i.i
  %.val13.i.i = load i32, ptr %.5116213.i, align 8
  %i.da = sext i32 %.val13.i.i to i64
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.dd, align 8
  store ptr null, ptr %i.dc, align 8
  store ptr %i.dc, ptr %i.ci, align 8
  %i.de = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store ptr %i.de, ptr %i.cr, align 8
  %i.df = load i32, ptr @clause_CLAUSECOUNTER, align 4 ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr @clause_CLAUSECOUNTER, align 4
  store i32 %i.df, ptr %.5116213.i, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.5116213.i, i64 76
  store i32 21, ptr %i.dh, align 4
  %.val12.i.i = load i32, ptr %.val185.i, align 8
  %i.di = sext i32 %.val12.i.i to i64
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load ptr, ptr %i.ci, align 8
  %i.dl = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dj, ptr %i.dm, align 8
  store ptr %i.dk, ptr %i.dl, align 8
  store ptr %i.dl, ptr %i.ci, align 8
  %i.dn = load ptr, ptr %i.cr, align 8
  %i.do = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr null, ptr %i.dp, align 8
  store ptr %i.dn, ptr %i.do, align 8
  store ptr %i.do, ptr %i.cr, align 8
  br label %.thread207.thread.i

.thread209.i:                                     ; preds = %.thread207.i
  %i.dq = getelementptr i8, ptr %.5116.i, i64 32  ; 4 uses
  %.val8.i.i = load ptr, ptr %i.dq, align 8       ; 2 uses
  %.val7.i.i = load ptr, ptr %.val8.i.i, align 8
  %i.dr = getelementptr i8, ptr %.val7.i.i, i64 8
  %.val.i200.i = load ptr, ptr %i.dr, align 8
  %i.ds = ptrtoint ptr %.val.i200.i to i64
  %sext.i.i = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext.i.i, 32
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.du, ptr %i.dw, align 8
  store ptr %.val8.i.i, ptr %i.dv, align 8
  store ptr %i.dv, ptr %i.dq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.5116.i, i64 40 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr null, ptr %i.ea, align 8
  store ptr %i.dy, ptr %i.dz, align 8
  store ptr %i.dz, ptr %i.dx, align 8
  %.val9.i.i = load i32, ptr %.val185.i, align 8
  %i.eb = sext i32 %.val9.i.i to i64
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load ptr, ptr %i.dq, align 8
  %i.ee = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  store ptr %i.ed, ptr %i.ee, align 8
  store ptr %i.ee, ptr %i.dq, align 8
  %i.eg = load ptr, ptr %i.dx, align 8
  %i.eh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr null, ptr %i.ei, align 8
  store ptr %i.eg, ptr %i.eh, align 8
  store ptr %i.eh, ptr %i.dx, align 8
  br label %.thread207.thread.i

.thread207.thread.i:                              ; preds = %.thread209.i, %red_DocumentRewriting.exit.i, %.thread207.i, %bb.v, %clause_GetLiteralAtom.exit197.thread.i
  %.5218.i = phi ptr [ %.5.i, %.thread207.i ], [ %.5220.i, %red_DocumentRewriting.exit.i ], [ %.5.i, %.thread209.i ], [ %.5220.i, %bb.v ], [ %.1275.i.ph, %clause_GetLiteralAtom.exit197.thread.i ] ; 2 uses
  %.5116216.i = phi ptr [ %.5116.i, %.thread207.i ], [ %.5116213.i, %red_DocumentRewriting.exit.i ], [ %.5116.i, %.thread209.i ], [ %.5116213.i, %bb.v ], [ %.1112273.i.ph, %clause_GetLiteralAtom.exit197.thread.i ] ; 9 uses
  %i.ej = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ek = tail call ptr @term_Copy(ptr noundef %.0102.i) #14
  %i.el = tail call ptr @cont_ApplyBindingsModuloMatching(ptr noundef %i.ej, ptr noundef %i.ek, i32 noundef 1) #14 ; 3 uses
  %i.em = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.en = tail call i32 @cont_BindingsAreRenamingModuloMatching(ptr noundef %i.em) #14
  %.not165.i = icmp eq i32 %i.en, 0
  br i1 %.not165.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread207.thread.i
end_hunk_0
begin_hunk_1_@red_RewriteRedClause:bb.a
  %i.es = load i32, ptr %i.er, align 8
  %i.et = or i32 %i.es, 8
  store i32 %i.et, ptr %i.er, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eu = getelementptr i8, ptr %.val185.i, i64 12
  %.val13.i201.i = load i32, ptr %i.eu, align 4   ; 2 uses
  %i.ev = icmp eq i32 %.val13.i201.i, 0
  br i1 %i.ev, label %clause_UpdateSplitDataFromPartner.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr i8, ptr %.5116216.i, i64 12 ; 2 uses
  %.val11.i202.i = load i32, ptr %i.ew, align 4
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %.val13.i201.i, i32 %.val11.i202.i)
  store i32 %spec.select.i.i, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.5116216.i, i64 24 ; 5 uses
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.val185.i, i64 24 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8            ; 6 uses
  %i.fb = icmp ult i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.fc = shl i32 %i.fa, 3
  %i.fd = tail call ptr @memory_Malloc(i32 noundef %i.fc) #14 ; 3 uses
  %i.fe = load i32, ptr %i.ex, align 8
  %.not28.i.i.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not28.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %.5116216.i, i64 16
  br label %bb.ad

.preheader.i.i.i.i:                               ; preds = %bb.ad, %bb.ac
  %.lcssa.i.i.i.i = phi i32 [ 0, %bb.ac ], [ %i.fs, %bb.ad ] ; 3 uses
  %i.fg = icmp ult i32 %.lcssa.i.i.i.i, %i.fa
  br i1 %i.fg, label %.lr.ph27.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph27.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.fh = zext i32 %.lcssa.i.i.i.i to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.fd, i64 %i.fi
  %i.fj = xor i32 %.lcssa.i.i.i.i, -1
  %i.fk = add i32 %i.fa, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.fn, i1 false)
  br label %._crit_edge.i.i.i.i

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ad ] ; 3 uses
  %i.fo = load ptr, ptr %i.ff, align 8
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i.i.i.i
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i.i.i.i
  store i64 %i.fq, ptr %i.fr, align 8
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.fs = load i32, ptr %i.ex, align 8            ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.ft
  br i1 %i.fu, label %bb.ad, label %.preheader.i.i.i.i, !llvm.loop !25

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph27.preheader.i.i.i.i, %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.5116216.i, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i, label %clause_ExpandSplitField.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fx = load i32, ptr %i.ex, align 8
  %i.fy = shl i32 %i.fx, 3                        ; 4 uses
  %i.fz = icmp ult i32 %i.fy, 1024
  br i1 %i.fz, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = urem i32 %i.fy, %i.ag                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ga, 0
  %i.gb = sub i32 %i.ag, %i.ga
  %i.gc = select i1 %.not.i.i.i.i.i.i.i, i32 0, i32 %i.gb
  %.1.i.i.i.i.i.i.i = add i32 %i.gc, %i.fy
  %i.gd = load i32, ptr @memory_OFFSET, align 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.fw, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gi, null
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 -8
  %i.gk = load ptr, ptr %i.gj, align 8            ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gk, ptr %i.gl, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %i.gk, ptr @memory_BIGBLOCKS, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not20.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not20.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load ptr, ptr %i.gh, align 8
  store ptr %i.gm, ptr %i.gk, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gn = load i32, ptr @memory_MARKSIZE, align 4
  %i.go = add i32 %.1.i.i.i.i.i.i.i, %i.gn
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, 16               ; 2 uses
  %i.gr = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gs = add i64 %i.gq, %i.gr
  store i64 %i.gs, ptr @memory_FREEDBYTES, align 8
  %i.gt = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  br i1 %i.gu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gv = add nuw i64 %i.gt, %i.gq
  store i64 %i.gv, ptr @memory_MAXMEM, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gw = getelementptr inbounds i8, ptr %i.fw, i64 -16
  tail call void @free(ptr noundef nonnull %i.gw) #14
  br label %clause_ExpandSplitField.exit.i.i.i

bb.an:                                            ; preds = %bb.ae
  %i.gx = zext nneg i32 %i.fy to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load i32, ptr %i.ha, align 8
  %i.hc = sext i32 %i.hb to i64
  %i.hd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.he = add i64 %i.hd, %i.hc
  store i64 %i.he, ptr @memory_FREEDBYTES, align 8
  %i.hf = load ptr, ptr %i.gz, align 8
  store ptr %i.hf, ptr %i.fw, align 8
  %i.hg = load ptr, ptr %i.gy, align 8
  store ptr %i.fw, ptr %i.hg, align 8
  br label %clause_ExpandSplitField.exit.i.i.i

clause_ExpandSplitField.exit.i.i.i:               ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i
  store ptr %i.fd, ptr %i.fv, align 8
  store i32 %i.fa, ptr %i.ex, align 8
  %.pre.i.i.i = load i32, ptr %i.ez, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %clause_ExpandSplitField.exit.i.i.i, %bb.ab
  %i.hh = phi i32 [ %.pre.i.i.i, %clause_ExpandSplitField.exit.i.i.i ], [ %i.fa, %bb.ab ]
  %.not.i.i203.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i203.i, label %clause_UpdateSplitDataFromPartner.exit.i, label %.lr.ph.i.i204.i

.lr.ph.i.i204.i:                                  ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %.5116216.i, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.val185.i, i64 16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i.i204.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i204.i ], [ %indvars.iv.next.i.i.i, %bb.ap ] ; 3 uses
  %i.hk = load ptr, ptr %i.hi, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i.i.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.hj, align 8
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i.i.i
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = or i64 %i.hp, %i.hm
  store i64 %i.hq, ptr %i.hl, align 8
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.hr = load i32, ptr %i.ez, align 8
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.hs
  br i1 %i.ht, label %bb.ap, label %clause_UpdateSplitDataFromPartner.exit.i, !llvm.loop !26

clause_UpdateSplitDataFromPartner.exit.i:         ; preds = %bb.ap, %bb.ao, %bb.aa
  tail call void @term_Delete(ptr noundef %i.el) #14
  store i32 %.pre.i, ptr @stack_POINTER, align 4
  %i.hu = load i32, ptr %i.af, align 4
  %.not166.i = icmp eq i32 %i.hu, 0
  br i1 %.not166.i, label %.critedge.thread.i, label %bb.aq

bb.aq:                                            ; preds = %clause_UpdateSplitDataFromPartner.exit.i
  %.val182.i = load i32, ptr %.val185.i, align 8
  %i.hv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.val182.i, i32 noundef 0) ; 0 uses
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.aq, %clause_UpdateSplitDataFromPartner.exit.i
  %i.hw = tail call i32 @clause_ComputeWeight(ptr noundef %.5116216.i, ptr noundef nonnull %2) #14
  %i.hx = getelementptr inbounds nuw i8, ptr %.5116216.i, i64 4
  store i32 %i.hw, ptr %i.hx, align 4
  tail call void @st_CancelExistRetrieval() #14
  br label %.loopexit404

bb.ar:                                            ; preds = %._crit_edge311, %bb.m, %bb.k, %.lr.ph.i
  %i.hy = phi i32 [ %.pre, %._crit_edge311 ], [ %i.bb, %bb.m ], [ %i.bb, %bb.k ], [ %i.bb, %.lr.ph.i ]
  %.6137.i = phi i32 [ 1, %._crit_edge311 ], [ %.4135232.i, %bb.m ], [ %.4135232.i, %bb.k ], [ %.4135232.i, %.lr.ph.i ] ; 2 uses
  %.0119.val178.i = load ptr, ptr %.0119235.i, align 8 ; 2 uses
  %.not393.i = icmp eq ptr %.0119.val178.i, null
  br i1 %.not393.i, label %.critedge4.i, label %.lr.ph.i, !llvm.loop !70

.critedge4.i:                                     ; preds = %bb.ar, %bb.j, %.lr.ph248.i
  %.7138.i = phi i32 [ %.3134243.i, %.lr.ph248.i ], [ %.3134243.i, %bb.j ], [ %.6137.i, %bb.ar ] ; 2 uses
  %.0120.i = load ptr, ptr %.0120247.i, align 8   ; 2 uses
  %.not394.i = icmp eq ptr %.0120.i, null
  br i1 %.not394.i, label %.critedge2.thread.i, label %.lr.ph248.i, !llvm.loop !71

.critedge2.thread.i:                              ; preds = %.critedge4.i, %.lr.ph263.i
  %.3134.lcssa345.i = phi i32 [ %.2133258.i, %.lr.ph263.i ], [ %.7138.i, %.critedge4.i ] ; 2 uses
  %i.hz = tail call ptr @st_NextCandidate() #14   ; 2 uses
  %.not148.not.i = icmp eq ptr %i.hz, null
  br i1 %.not148.not.i, label %.critedge.i.thread, label %.lr.ph263.i, !llvm.loop !72

.critedge.i.thread:                               ; preds = %.critedge2.thread.i
  tail call void @st_CancelExistRetrieval() #14
  br label %.thread342

.critedge.i:                                      ; preds = %.lr.ph276.i
  tail call void @st_CancelExistRetrieval() #14
  br i1 %.1105274.i, label %.thread342, label %.loopexit404

.loopexit404:                                     ; preds = %.critedge.i, %.critedge.thread.i
  %.2.lcssa387.i = phi ptr [ %.5218.i, %.critedge.thread.i ], [ %.1275.i.ph, %.critedge.i ] ; 2 uses
  %.2113.lcssa385.i = phi ptr [ %.5116216.i, %.critedge.thread.i ], [ %.1112273.i.ph, %.critedge.i ] ; 2 uses
  %.2123.lcssa384.i = phi i32 [ 1, %.critedge.thread.i ], [ %.1122272.i.ph, %.critedge.i ] ; 2 uses
  %.2133.lcssa383.i = phi i32 [ %.5136206.i, %.critedge.thread.i ], [ %.1132271.i, %.critedge.i ] ; 2 uses
  %i.ia = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not225.i = icmp eq i32 %i.ia, %.pre.i         ; 2 uses
  br i1 %.not225.i, label %.loopexit.i, label %.lr.ph276.i.outer.backedge

.lr.ph276.i.outer.backedge:                       ; preds = %.loopexit404, %.loopexit.i
  %.ph.be = phi i32 [ %i.ia, %.loopexit404 ], [ %i.ak, %.loopexit.i ]
  br label %.lr.ph276.i.outer, !llvm.loop !73

.thread342:                                       ; preds = %.critedge.i, %.critedge.i.thread
  %.2133.lcssa.i211 = phi i32 [ %.3134.lcssa345.i, %.critedge.i.thread ], [ %.1132271.i, %.critedge.i ] ; 2 uses
  %i.ib = load i32, ptr @term_STAMP, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.ib, ptr %i.ic, align 8
  %i.id = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not225.i348 = icmp eq i32 %i.id, %.pre.i
  br i1 %.not225.i348, label %.loopexit.thread.i, label %.lr.ph276.i, !llvm.loop !74

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.thread342, %bb.g
  %.1112.lcssa310.i = phi ptr [ %.1112273.i.ph, %.thread342 ], [ %0, %bb.g ], [ %.2113.lcssa385.i, %.loopexit.i ] ; 15 uses
  %.1122.lcssa309.i = phi i32 [ %.1122272.i.ph, %.thread342 ], [ 0, %bb.g ], [ %.2123.lcssa384.i, %.loopexit.i ]
  %.1132.lcssa308.i = phi i32 [ %.2133.lcssa.i211, %.thread342 ], [ 0, %bb.g ], [ %.2133.lcssa383.i, %.loopexit.i ]
  %.not143.i = icmp eq i32 %.1122.lcssa309.i, 0
  br i1 %.not143.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit.thread.i
  tail call void @clause_OrientEqualities(ptr noundef %.1112.lcssa310.i, ptr noundef %2, ptr noundef %3) #14
  tail call void @clause_Normalize(ptr noundef %.1112.lcssa310.i) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %.1112.lcssa310.i, ptr noundef %2, ptr noundef %3) #14
  %i.ie = tail call i32 @clause_ComputeWeight(ptr noundef %.1112.lcssa310.i, ptr noundef %2) #14
  %i.if = getelementptr inbounds nuw i8, ptr %.1112.lcssa310.i, i64 4
  store i32 %i.ie, ptr %i.if, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %.1112.lcssa310.i) #14
  %.not145.i = icmp eq ptr %.1112.lcssa310.i, %0  ; 2 uses
  br i1 %.not145.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @clause_OrientEqualities(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14
  tail call void @clause_Normalize(ptr noundef %0) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14
  %i.ig = tail call i32 @clause_ComputeWeight(ptr noundef %0, ptr noundef %2) #14
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ig, ptr %i.ih, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %0) #14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ii = load i32, ptr %i.af, align 4
  %.not146.i = icmp eq i32 %i.ii, 0
  br i1 %.not146.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ij = load ptr, ptr @stdout, align 8
  %i.ik = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %i.ij) ; 0 uses
  tail call void @clause_Print(ptr noundef nonnull %.1112.lcssa310.i) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %.not145.i, label %red_RewriteRedUnitClause.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %.1112.lcssa310.i, ptr %4, align 8
  br label %red_RewriteRedUnitClause.exit

bb.ay:                                            ; preds = %.loopexit.thread.i
  %.not144.i = icmp eq i32 %.1132.lcssa308.i, 0
  br i1 %.not144.i, label %red_RewriteRedUnitClause.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @clause_OrientEqualities(ptr noundef %.1112.lcssa310.i, ptr noundef %2, ptr noundef %3) #14
  tail call void @clause_Normalize(ptr noundef %.1112.lcssa310.i) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %.1112.lcssa310.i, ptr noundef %2, ptr noundef %3) #14
  %i.il = tail call i32 @clause_ComputeWeight(ptr noundef %.1112.lcssa310.i, ptr noundef %2) #14
  %i.im = getelementptr inbounds nuw i8, ptr %.1112.lcssa310.i, i64 4
  store i32 %i.il, ptr %i.im, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %.1112.lcssa310.i) #14
  br label %red_RewriteRedUnitClause.exit

bb.ba:                                            ; preds = %.lr.ph299, %.loopexit
  %indvars.iv = phi i64 [ %i.m, %.lr.ph299 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.0112297 = phi ptr [ %0, %.lr.ph299 ], [ %.10, %.loopexit ] ; 3 uses
  %.0122296 = phi i32 [ 0, %.lr.ph299 ], [ %.9131, %.loopexit ] ; 2 uses
  %i.in = getelementptr i8, ptr %.0112297, i64 56
  %.0112.val = load ptr, ptr %i.in, align 8
  %i.io = getelementptr inbounds [8 x i8], ptr %.0112.val, i64 %indvars.iv
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr i8, ptr %i.ip, i64 24
  %.val1.i = load ptr, ptr %i.iq, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.ir = load i32, ptr @fol_NOT, align 4
  %.not.i.i177 = icmp eq i32 %.val5.val.i.i, %i.ir
  br i1 %.not.i.i177, label %bb.bb, label %clause_GetLiteralAtom.exit

bb.bb:                                            ; preds = %bb.ba
  %i.is = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.is, align 8
  %i.it = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.it, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.ba, %bb.bb
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.bb ], [ %.val1.i, %bb.ba ]
  %i.iu = getelementptr i8, ptr %.0.i.i, i64 16
  %.val171 = load ptr, ptr %i.iu, align 8
  %.not243 = icmp eq ptr %.val171, null
  br i1 %.not243, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %clause_GetLiteralAtom.exit
  %i.iv = inttoptr i64 %indvars.iv to ptr         ; 2 uses
  %i.iw = trunc nsw i64 %indvars.iv to i32
  br label %bb.bd

bb.bc:                                            ; preds = %.critedge
  %i.ix = icmp eq i32 %.1106.lcssa, 0
  br i1 %i.ix, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.preheader, %bb.bc
  %.1123 = phi i32 [ %.3125.lcssa, %bb.bc ], [ %.0122296, %.preheader ] ; 2 uses
  %.1113 = phi ptr [ %.3115.lcssa, %bb.bc ], [ %.0112297, %.preheader ] ; 3 uses
  %i.iy = getelementptr i8, ptr %.1113, i64 56
  %.1113.val = load ptr, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds [8 x i8], ptr %.1113.val, i64 %indvars.iv
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 24
  %.val1.i178 = load ptr, ptr %i.jb, align 8      ; 3 uses
  %.val5.val.i.i179 = load i32, ptr %.val1.i178, align 8
  %i.jc = load i32, ptr @fol_NOT, align 4
  %.not.i.i180 = icmp eq i32 %.val5.val.i.i179, %i.jc
  br i1 %.not.i.i180, label %bb.be, label %clause_GetLiteralAtom.exit184

bb.be:                                            ; preds = %bb.bd
  %i.jd = getelementptr i8, ptr %.val1.i178, i64 16
  %.val6.i.i182 = load ptr, ptr %i.jd, align 8
  %i.je = getelementptr i8, ptr %.val6.i.i182, i64 8
  %.val6.val.i.i183 = load ptr, ptr %i.je, align 8
  br label %clause_GetLiteralAtom.exit184

clause_GetLiteralAtom.exit184:                    ; preds = %bb.bd, %bb.be
  %.0.i.i181 = phi ptr [ %.val6.val.i.i183, %bb.be ], [ %.val1.i178, %bb.bd ] ; 2 uses
  %i.jf = load i32, ptr @stack_POINTER, align 4   ; 3 uses
  %i.jg = getelementptr i8, ptr %.0.i.i181, i64 16
  %.val170 = load ptr, ptr %i.jg, align 8
  tail call void @sharing_PushListReverseOnStack(ptr noundef %.val170) #14
  %i.jh = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not244287 = icmp eq i32 %i.jh, %i.jf
  br i1 %.not244287, label %.loopexit, label %.lr.ph292, !llvm.loop !75

.lr.ph292:                                        ; preds = %clause_GetLiteralAtom.exit184
  br label %bb.bf, !llvm.loop !75

bb.bf:                                            ; preds = %.lr.ph292, %.critedge
  %i.ji = phi i32 [ %i.jh, %.lr.ph292 ], [ %i.qu, %.critedge ]
  %.0103291 = phi ptr [ %.0.i.i181, %.lr.ph292 ], [ %.1.lcssa, %.critedge ] ; 5 uses
  %.0105290 = phi i32 [ 0, %.lr.ph292 ], [ %.1106.lcssa, %.critedge ] ; 2 uses
  %.2114289 = phi ptr [ %.1113, %.lr.ph292 ], [ %.3115.lcssa, %.critedge ] ; 7 uses
  %.2124288 = phi i32 [ %.1123, %.lr.ph292 ], [ %.3125.lcssa, %.critedge ] ; 4 uses
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  store i32 %i.jj, ptr @stack_POINTER, align 4
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jn = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val168 = load ptr, ptr %1, align 8
  %i.jo = tail call ptr @st_ExistGen(ptr noundef %i.jn, ptr noundef %.val168, ptr noundef %i.jm) #14 ; 2 uses
  %.not140275 = icmp ne ptr %i.jo, null
  %.not141276 = icmp eq i32 %.0105290, 0
  %or.cond277 = select i1 %.not140275, i1 %.not141276, i1 false
  br i1 %or.cond277, label %.lr.ph282, label %.critedge

.lr.ph282:                                        ; preds = %bb.bf, %.critedge2.thread384
  %.0132278 = phi ptr [ %i.qt, %.critedge2.thread384 ], [ %i.jo, %bb.bf ] ; 3 uses
  %.0132.val = load i32, ptr %.0132278, align 8
end_hunk_1
begin_hunk_2_@red_SortSimplification:bb.a

.lr.ph.i137:                                      ; preds = %bb.ar, %.lr.ph.i137
  %.07.i138 = phi ptr [ %.0.val.i139, %.lr.ph.i137 ], [ %.190, %bb.ar ] ; 3 uses
  %.0.val.i139 = load ptr, ptr %.07.i138, align 8 ; 2 uses
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = sext i32 %i.fp to i64
  %i.fr = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fs = add i64 %i.fr, %i.fq
  store i64 %i.fs, ptr @memory_FREEDBYTES, align 8
  %i.ft = load ptr, ptr %i.fn, align 8
  store ptr %i.ft, ptr %.07.i138, align 8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i138, ptr %i.fu, align 8
  %.not.i140 = icmp eq ptr %.0.val.i139, null
  br i1 %.not.i140, label %list_Delete.exit142, label %.lr.ph.i137, !llvm.loop !6

list_Delete.exit142:                              ; preds = %.lr.ph.i137, %bb.ar, %red_DocumentSortSimplification.exit
  tail call void @clause_Normalize(ptr noundef %.3) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %.3, ptr noundef %4, ptr noundef %5) #14
  %i.fv = tail call i32 @clause_ComputeWeight(ptr noundef %.3, ptr noundef %4) #14
  %i.fw = getelementptr inbounds nuw i8, ptr %.3, i64 4
  store i32 %i.fv, ptr %i.fw, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %.3) #14
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.fy = load i32, ptr %i.fx, align 4
  %.not96 = icmp eq i32 %i.fy, 0
  br i1 %.not96, label %bb.at, label %bb.as

bb.as:                                            ; preds = %list_Delete.exit142
  %i.fz = load ptr, ptr @stdout, align 8
  %i.ga = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %i.fz) ; 0 uses
  tail call void @clause_Print(ptr noundef nonnull %.3) #14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %list_Delete.exit142
  %.not97 = icmp eq ptr %.3, %1
  br i1 %.not97, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %.3, ptr %6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.au, %bb.at, %bb.a, %._crit_edge161
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge161 ], [ 1, %bb.at ], [ 1, %bb.au ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @red_MatchingReplacementResolution(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val3.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val.i, %.val3.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.not103 = icmp eq i32 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.077152 = phi ptr [ null, %.lr.ph ], [ %.178, %bb.t ] ; 4 uses
  %.079151 = phi ptr [ null, %.lr.ph ], [ %.180, %bb.t ] ; 3 uses
  %.081150 = phi ptr [ null, %.lr.ph ], [ %.182, %bb.t ] ; 3 uses
  %.083149 = phi i32 [ %i.e, %.lr.ph ], [ %.184, %bb.t ] ; 3 uses
  %.085148 = phi i32 [ 0, %.lr.ph ], [ %.186, %bb.t ] ; 4 uses
  %.087147 = phi i32 [ 0, %.lr.ph ], [ %.188, %bb.t ] ; 6 uses
  %.089146 = phi ptr [ %0, %.lr.ph ], [ %.2, %bb.t ] ; 8 uses
  %i.j = getelementptr i8, ptr %.089146, i64 56
  %.089.val = load ptr, ptr %i.j, align 8
  %i.k = sext i32 %.087147 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.089.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %.val = load ptr, ptr %i.n, align 8             ; 4 uses
  %.val5.val.i = load i32, ptr %.val, align 8
  %i.o = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.o        ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.val, i64 16
  %.val6.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.q, align 8
  %.val105.pre = load i32, ptr %.val6.val.i, align 8
  %i.r = load i32, ptr @fol_EQUALITY, align 4
  %.not139 = icmp eq i32 %.val105.pre, %i.r
  br i1 %.not139, label %bb.s, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b, %clause_LiteralAtom.exit
  %i.s = getelementptr i8, ptr %i.m, i64 16
  %.val28.i = load ptr, ptr %i.s, align 8         ; 2 uses
  %i.t = getelementptr i8, ptr %.val28.i, i64 56
  %.val.i.i = load ptr, ptr %i.t, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %clause_LiteralAtom.exit.thread
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 0, %clause_LiteralAtom.exit.thread ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i = icmp eq ptr %i.v, %i.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i, label %clause_LiteralGetIndex.exit.i, label %bb.c, !llvm.loop !10

clause_LiteralGetIndex.exit.i:                    ; preds = %bb.c
  %i.w = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.x = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val25.i = load ptr, ptr %1, align 8
  br i1 %.not.i, label %bb.d, label %clause_LiteralAtom.exit.i

bb.d:                                             ; preds = %clause_LiteralGetIndex.exit.i
  %i.y = getelementptr i8, ptr %.val, i64 16
  %.val6.i.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.z, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.d, %clause_LiteralGetIndex.exit.i
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.d ], [ %.val, %clause_LiteralGetIndex.exit.i ]
  %i.aa = tail call ptr @st_ExistGen(ptr noundef %i.x, ptr noundef %.val25.i, ptr noundef %.0.i.i) #14 ; 2 uses
  %.not49.i = icmp eq ptr %i.aa, null
  br i1 %.not49.i, label %.loopexit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %clause_LiteralAtom.exit.i, %.loopexit.i
  %.01850.i = phi ptr [ %i.at, %.loopexit.i ], [ %i.aa, %clause_LiteralAtom.exit.i ] ; 2 uses
  %.018.val.i = load i32, ptr %.01850.i, align 8
  %i.ab = icmp slt i32 %.018.val.i, 1
  br i1 %i.ab, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph51.i
  %i.ac = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.01850.i) #14 ; 2 uses
  %.not4347.i = icmp eq ptr %i.ac, null
  br i1 %.not4347.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.pre54.i = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clause_LiteralsAreComplementary.exit.thread.i, %.lr.ph.preheader.i
  %i.ad = phi i32 [ %i.as, %clause_LiteralsAreComplementary.exit.thread.i ], [ %.pre54.i, %.lr.ph.preheader.i ] ; 4 uses
  %.048.i = phi ptr [ %.0.val24.i, %clause_LiteralsAreComplementary.exit.thread.i ], [ %i.ac, %.lr.ph.preheader.i ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.048.i, i64 8
  %.0.val.i = load ptr, ptr %i.ae, align 8        ; 5 uses
  %.val29.i = load ptr, ptr %i.n, align 8
  %.val29.val.i = load i32, ptr %.val29.i, align 8
  %.not.i31.i = icmp eq i32 %.val29.val.i, %i.ad
  %i.af = getelementptr i8, ptr %.0.val.i, i64 24
  %.val8.i.i = load ptr, ptr %i.af, align 8
  %.val8.val.i.i = load i32, ptr %.val8.i.i, align 8
  %.not1.i.i = icmp eq i32 %.val8.val.i.i, %i.ad  ; 2 uses
  br i1 %.not.i31.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  br i1 %.not1.i.i, label %clause_LiteralsAreComplementary.exit.thread.i, label %clause_LiteralsAreComplementary.exit.thread41.i

bb.g:                                             ; preds = %.lr.ph.i
  br i1 %.not1.i.i, label %clause_LiteralsAreComplementary.exit.thread41.i, label %clause_LiteralsAreComplementary.exit.thread.i

clause_LiteralsAreComplementary.exit.thread41.i:  ; preds = %bb.g, %bb.f
  %i.ag = getelementptr i8, ptr %.0.val.i, i64 16
  %.val27.i = load ptr, ptr %i.ag, align 8        ; 5 uses
  %i.ah = getelementptr i8, ptr %.val27.i, i64 64
  %.val3.i.i = load i32, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val27.i, i64 68
  %.val.i32.i = load i32, ptr %i.ai, align 4
  %i.aj = add nsw i32 %.val.i32.i, %.val3.i.i
  %i.ak = getelementptr i8, ptr %.val27.i, i64 72
  %.val4.i33.i = load i32, ptr %i.ak, align 8
  %i.al = add nsw i32 %i.aj, %.val4.i33.i
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %bb.h

bb.h:                                             ; preds = %clause_LiteralsAreComplementary.exit.thread41.i
  %i.an = getelementptr i8, ptr %.val27.i, i64 56
  %.val.i35.i = load ptr, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i36.i = phi i64 [ %indvars.iv.next.i38.i, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i35.i, i64 %indvars.iv.i36.i
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i37.i = icmp eq ptr %i.ap, %.0.val.i
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i36.i, 1
  br i1 %.not.i37.i, label %clause_LiteralGetIndex.exit39.i, label %bb.i, !llvm.loop !10

clause_LiteralGetIndex.exit39.i:                  ; preds = %bb.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.i36.i to i32
  %i.ar = tail call i32 @subs_SubsumesBasic(ptr noundef nonnull %.val27.i, ptr noundef %.val28.i, i32 noundef %i.aq, i32 noundef %i.w) #14
  %.not23.i = icmp eq i32 %i.ar, 0
  br i1 %.not23.i, label %clause_LiteralGetIndex.exit39.clause_LiteralsAreComplementary.exit.thread_crit_edge.i, label %bb.j

clause_LiteralGetIndex.exit39.clause_LiteralsAreComplementary.exit.thread_crit_edge.i: ; preds = %clause_LiteralGetIndex.exit39.i
  %.pre.i = load i32, ptr @fol_NOT, align 4
  br label %clause_LiteralsAreComplementary.exit.thread.i

clause_LiteralsAreComplementary.exit.thread.i:    ; preds = %clause_LiteralGetIndex.exit39.clause_LiteralsAreComplementary.exit.thread_crit_edge.i, %bb.g, %bb.f
  %i.as = phi i32 [ %.pre.i, %clause_LiteralGetIndex.exit39.clause_LiteralsAreComplementary.exit.thread_crit_edge.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ]
  %.0.val24.i = load ptr, ptr %.048.i, align 8    ; 2 uses
  %.not43.i = icmp eq ptr %.0.val24.i, null
  br i1 %.not43.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !91

.loopexit.i:                                      ; preds = %clause_LiteralsAreComplementary.exit.thread.i, %bb.e, %.lr.ph51.i
  %i.at = tail call ptr @st_NextCandidate() #14   ; 2 uses
  %.not.i116 = icmp eq ptr %i.at, null
  br i1 %.not.i116, label %.loopexit, label %.lr.ph51.i, !llvm.loop !92

bb.j:                                             ; preds = %clause_LiteralGetIndex.exit39.i, %clause_LiteralsAreComplementary.exit.thread41.i
  %i.au = getelementptr i8, ptr %.0.val.i, i64 16 ; 2 uses
  tail call void @st_CancelExistRetrieval() #14
  %.not141 = icmp eq ptr %.077152, null
  br i1 %.not141, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.i, align 4
  %.not102 = icmp eq i32 %i.av, 0
  br i1 %.not102, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr @stdout, align 8
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.36, i64 33, i64 1, ptr %i.aw) ; 0 uses
  tail call void @clause_Print(ptr noundef %.089146) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.val111 = load ptr, ptr %i.au, align 8         ; 3 uses
  %.val110 = load i32, ptr %.val111, align 8
  %i.ay = sext i32 %.val110 to i64
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  store ptr %.081150, ptr %i.ba, align 8
  %.val4.i117 = load ptr, ptr %i.au, align 8
  %i.bc = getelementptr i8, ptr %.val4.i117, i64 56
  %.val.i118 = load ptr, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val.i118, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8
  %.not.i119 = icmp eq ptr %i.be, %.0.val.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i119, label %clause_LiteralGetIndex.exit, label %bb.n, !llvm.loop !10

clause_LiteralGetIndex.exit:                      ; preds = %bb.n
  %sext = shl i64 %indvars.iv.i, 32
  %i.bf = ashr exact i64 %sext, 32
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  store ptr %.077152, ptr %i.bh, align 8
  %i.bj = add nsw i32 %.085148, %.087147
  %i.bk = sext i32 %i.bj to i64
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  store ptr %.079151, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %.089146, %0
  br i1 %i.bo, label %bb.o, label %bb.r

bb.o:                                             ; preds = %clause_LiteralGetIndex.exit
  br i1 %.not103, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %.val111, i64 12
  %.val113 = load i32, ptr %i.bp, align 4         ; 2 uses
  %i.bq = getelementptr i8, ptr %.089146, i64 12
  %.089.val112 = load i32, ptr %i.bq, align 4
  %i.br = icmp ule i32 %.val113, %.089.val112
  %i.bs = icmp ule i32 %.val113, %5
  %.not144 = and i1 %i.bs, %i.br
  br i1 %.not144, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = tail call ptr @clause_Copy(ptr noundef %0) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %clause_LiteralGetIndex.exit
  %.190 = phi ptr [ %i.bt, %bb.q ], [ %.089146, %bb.p ], [ %.089146, %clause_LiteralGetIndex.exit ] ; 3 uses
  tail call fastcc void @clause_UpdateSplitDataFromPartner(ptr noundef %.190, ptr noundef nonnull %.val111)
  tail call void @clause_DeleteLiteral(ptr noundef %.190, i32 noundef %.087147, ptr noundef %2, ptr noundef %3) #14
  %i.bu = add nsw i32 %.083149, -1
  %i.bv = add nsw i32 %.085148, 1
  br label %bb.t

.loopexit:                                        ; preds = %.loopexit.i, %clause_LiteralAtom.exit.i
  %i.bw = add nsw i32 %.087147, 1
  br label %bb.t

bb.s:                                             ; preds = %clause_LiteralAtom.exit
  %i.bx = add nsw i32 %.087147, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.loopexit, %bb.s
  %.2 = phi ptr [ %.190, %bb.r ], [ %.089146, %.loopexit ], [ %.089146, %bb.s ] ; 6 uses
  %.188 = phi i32 [ %.087147, %bb.r ], [ %i.bw, %.loopexit ], [ %i.bx, %bb.s ] ; 2 uses
  %.186 = phi i32 [ %i.bv, %bb.r ], [ %.085148, %.loopexit ], [ %.085148, %bb.s ]
  %.184 = phi i32 [ %i.bu, %bb.r ], [ %.083149, %.loopexit ], [ %.083149, %bb.s ] ; 2 uses
  %.182 = phi ptr [ %i.ba, %bb.r ], [ %.081150, %.loopexit ], [ %.081150, %bb.s ] ; 5 uses
  %.180 = phi ptr [ %i.bm, %bb.r ], [ %.079151, %.loopexit ], [ %.079151, %bb.s ] ; 5 uses
  %.178 = phi ptr [ %i.bh, %bb.r ], [ %.077152, %.loopexit ], [ %.077152, %bb.s ] ; 4 uses
  %i.by = icmp slt i32 %.188, %.184
  br i1 %i.by, label %bb.b, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.t
  %.not = icmp eq ptr %.182, null
  br i1 %.not, label %._crit_edge.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %.not92 = icmp eq i32 %i.g, 0
  br i1 %.not92, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call ptr @list_NReverse(ptr noundef nonnull %.182) #14 ; 3 uses
  %i.ca = tail call ptr @list_NReverse(ptr noundef %.180) #14 ; 2 uses
  %i.cb = tail call ptr @list_NReverse(ptr noundef %.178) #14
  tail call fastcc void @red_DocumentMatchingReplacementResolution(ptr noundef %.2, ptr noundef %i.ca, ptr noundef %i.bz, ptr noundef %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cd = load i32, ptr %i.cc, align 4
  %.not95 = icmp eq i32 %i.cd, 0
  br i1 %.not95, label %list_Delete.exit134, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr @stdout, align 8
  %i.cf = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr %i.ce) ; 0 uses
  %.not137156 = icmp eq ptr %i.bz, null
  br i1 %.not137156, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.w, %.lr.ph160
  %.074158 = phi ptr [ %.074.val108, %.lr.ph160 ], [ %i.ca, %bb.w ] ; 2 uses
  %.075157 = phi ptr [ %.075.val109, %.lr.ph160 ], [ %i.bz, %bb.w ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.075157, i64 8
  %.075.val = load ptr, ptr %i.cg, align 8
  %i.ch = ptrtoint ptr %.075.val to i64
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr i8, ptr %.074158, i64 8
  %.074.val = load ptr, ptr %i.cj, align 8
  %i.ck = ptrtoint ptr %.074.val to i64
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.ci, i32 noundef %i.cl) ; 0 uses
  %.075.val109 = load ptr, ptr %.075157, align 8  ; 2 uses
  %.074.val108 = load ptr, ptr %.074158, align 8
  %.not137 = icmp eq ptr %.075.val109, null
  br i1 %.not137, label %._crit_edge161, label %.lr.ph160, !llvm.loop !94

._crit_edge161:                                   ; preds = %.lr.ph160, %bb.w
  %i.cn = load ptr, ptr @stdout, align 8
  %i.co = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %i.cn) ; 0 uses
  tail call void @clause_Print(ptr noundef %.2) #14
  br label %list_Delete.exit134

bb.x:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cq = load i32, ptr %i.cp, align 4
  %.not93 = icmp eq i32 %i.cq, 0
  br i1 %.not93, label %.lr.ph.i120.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr @stdout, align 8
  %i.cs = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr %i.cr) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.z
  %.1163 = phi ptr [ %.180, %bb.y ], [ %.1.val106, %bb.z ] ; 2 uses
  %.176162 = phi ptr [ %.182, %bb.y ], [ %.176.val107, %bb.z ] ; 2 uses
  %i.ct = getelementptr i8, ptr %.176162, i64 8
  %.176.val = load ptr, ptr %i.ct, align 8
  %i.cu = ptrtoint ptr %.176.val to i64
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = getelementptr i8, ptr %.1163, i64 8
  %.1.val = load ptr, ptr %i.cw, align 8
  %i.cx = ptrtoint ptr %.1.val to i64
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.cv, i32 noundef %i.cy) ; 0 uses
  %.176.val107 = load ptr, ptr %.176162, align 8  ; 2 uses
  %.1.val106 = load ptr, ptr %.1163, align 8
  %.not138 = icmp eq ptr %.176.val107, null
  br i1 %.not138, label %bb.aa, label %bb.z, !llvm.loop !95

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr @stdout, align 8
  %i.db = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %i.da) ; 0 uses
  tail call void @clause_Print(ptr noundef %.2) #14
  br label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %bb.aa, %bb.x
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %.07.i = phi ptr [ %.0.val.i121, %.lr.ph.i120 ], [ %.182, %.lr.ph.i120.preheader ] ; 3 uses
  %.0.val.i121 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8
end_hunk_2
