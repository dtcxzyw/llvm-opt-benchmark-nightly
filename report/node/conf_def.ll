inline.NumInlined: 62
inline.NumDeleted: 12
begin_hunk_0_@eat_alpha_numeric:bb.a
  %.0.be = phi ptr [ %i.aa, %bb.c ], [ %spec.select, %is_keytype.exit19 ], [ %i.n, %is_keytype.exit19.thread ] ; 3 uses
  %i.t = load i8, ptr %.0.be, align 1, !tbaa !26  ; 2 uses
  %i.u = icmp slt i8 %i.t, 0
  br i1 %i.u, label %is_keytype.exit25.thread, label %is_keytype.exit

is_keytype.exit22:                                ; preds = %is_keytype.exit
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.w = load i16, ptr %i.v, align 2, !tbaa !31
  %i.x = and i16 %i.w, 775
  %.not.i20.not = icmp eq i16 %i.x, 0
  br i1 %.not.i20.not, label %.thread33, label %bb.c

.thread33:                                        ; preds = %is_keytype.exit22
  %i.y = load i32, ptr %i.a, align 8, !tbaa !36
  %.not1434 = icmp eq i32 %i.y, 0
  %i.z = and i16 %i.i, 4096
  %.not15 = icmp eq i16 %i.z, 0
  %or.cond = or i1 %.not1434, %.not15
  br i1 %or.cond, label %is_keytype.exit25.thread, label %bb.c

is_keytype.exit25.thread:                         ; preds = %.thread33, %.backedge, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.0.be, %.backedge ], [ %.039, %.thread33 ]
  ret ptr %.0.lcssa

bb.c:                                             ; preds = %.thread33, %is_keytype.exit22
  %i.aa = getelementptr inbounds nuw i8, ptr %.039, i64 1
  br label %.backedge
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @str_copy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @BUF_MEM_new() #14         ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.d = shl i64 %i.c, 32
  %sext = add i64 %i.d, 4294967296
  %i.e = ashr exact i64 %sext, 32
  %i.f = tail call i64 @BUF_MEM_grow(ptr noundef nonnull %i.a, i64 noundef %i.e) #14
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread276, label %.preheader285

.preheader285:                                    ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge, %.preheader285
  %.0159.ph = phi i8 [ %.1160, %._crit_edge ], [ 0, %.preheader285 ] ; 5 uses
  %.0153.ph = phi i32 [ %.3156.lcssa, %._crit_edge ], [ 0, %.preheader285 ]
  %.0138.ph = phi ptr [ %.3148, %._crit_edge ], [ %3, %.preheader285 ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.0153 = phi i32 [ %.0153.ph, %.outer ], [ %.0153.be, %.backedge ] ; 9 uses
  %.0138 = phi ptr [ %.0138.ph, %.outer ], [ %.0138.be, %.backedge ] ; 10 uses
  %i.j = load i8, ptr %.0138, align 1, !tbaa !26  ; 11 uses
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.thread256, label %is_keytype.exit

is_keytype.exit:                                  ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  %i.m = zext nneg i8 %i.j to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !31   ; 4 uses
  %i.p = and i16 %i.o, 64
  %.not171 = icmp eq i16 %i.p, 0
  br i1 %.not171, label %is_keytype.exit208, label %.preheader284.preheader

.preheader284.preheader:                          ; preds = %is_keytype.exit
  %i.q = sext i32 %.0153 to i64
  br label %.preheader284

.preheader284:                                    ; preds = %.preheader284.preheader, %is_keytype.exit202.thread
  %indvars.iv = phi i64 [ %i.q, %.preheader284.preheader ], [ %indvars.iv.next, %is_keytype.exit202.thread ] ; 3 uses
  %.0138.pn193 = phi ptr [ %.0138, %.preheader284.preheader ], [ %.2, %is_keytype.exit202.thread ] ; 3 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0138.pn193, i64 1 ; 3 uses
  %i.r = load i8, ptr %.1, align 1, !tbaa !26     ; 6 uses
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %is_keytype.exit202.thread, label %is_keytype.exit199

is_keytype.exit199:                               ; preds = %.preheader284
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !31   ; 2 uses
  %i.x = and i16 %i.w, 8
  %.not189 = icmp ne i16 %i.x, 0
  %.not190237 = icmp eq i8 %i.r, %i.j
  %or.cond = or i1 %.not190237, %.not189
  br i1 %or.cond, label %.critedge, label %is_keytype.exit202

is_keytype.exit202:                               ; preds = %is_keytype.exit199
  %i.y = and i16 %i.w, 32
  %.not191 = icmp eq i16 %i.y, 0
  br i1 %.not191, label %is_keytype.exit202.thread, label %bb.d

bb.d:                                             ; preds = %is_keytype.exit202
  %i.z = getelementptr inbounds nuw i8, ptr %.0138.pn193, i64 2 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !26   ; 5 uses
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %is_keytype.exit202.thread, label %is_keytype.exit205

is_keytype.exit205:                               ; preds = %bb.d
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !31
  %i.af = and i16 %i.ae, 8
  %.not192 = icmp eq i16 %i.af, 0
  br i1 %.not192, label %is_keytype.exit202.thread, label %.critedge

is_keytype.exit202.thread:                        ; preds = %.preheader284, %bb.d, %is_keytype.exit205, %is_keytype.exit202
  %i.ag = phi i8 [ %i.aa, %is_keytype.exit205 ], [ %i.r, %is_keytype.exit202 ], [ %i.aa, %bb.d ], [ %i.r, %.preheader284 ]
  %.2 = phi ptr [ %i.z, %is_keytype.exit205 ], [ %.1, %is_keytype.exit202 ], [ %i.z, %bb.d ], [ %.1, %.preheader284 ]
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !26
  br label %.preheader284, !llvm.loop !44

.critedge:                                        ; preds = %is_keytype.exit199, %is_keytype.exit205
  %i.aj = phi i8 [ %i.r, %is_keytype.exit199 ], [ %i.aa, %is_keytype.exit205 ]
  %i.ak = phi i64 [ 1, %is_keytype.exit199 ], [ 2, %is_keytype.exit205 ]
  %i.al = trunc nsw i64 %indvars.iv to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.0138.pn193, i64 %i.ak
  %i.an = icmp eq i8 %i.aj, %i.j
  %spec.select.idx = zext i1 %i.an to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.am, i64 %spec.select.idx
  br label %.backedge

is_keytype.exit208:                               ; preds = %is_keytype.exit
  %i.ao = and i16 %i.o, 1024
  %.not172 = icmp eq i16 %i.ao, 0
  br i1 %.not172, label %is_keytype.exit214, label %.preheader283.preheader

.preheader283.preheader:                          ; preds = %is_keytype.exit208
  %i.ap = sext i32 %.0153 to i64
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.preheader, %bb.f
  %indvars.iv324 = phi i64 [ %i.ap, %.preheader283.preheader ], [ %indvars.iv.next325, %bb.f ] ; 3 uses
  %.0138.pn = phi ptr [ %.0138, %.preheader283.preheader ], [ %.5, %bb.f ] ; 3 uses
  %.4 = getelementptr inbounds nuw i8, ptr %.0138.pn, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.4, align 1, !tbaa !26    ; 5 uses
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %is_keytype.exit211.thread, label %is_keytype.exit211

is_keytype.exit211:                               ; preds = %.preheader283
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31
  %i.aw = and i16 %i.av, 8
  %.not188 = icmp eq i16 %i.aw, 0
  br i1 %.not188, label %is_keytype.exit211.thread, label %bb.g

is_keytype.exit211.thread:                        ; preds = %.preheader283, %is_keytype.exit211
  %i.ax = icmp eq i8 %i.aq, %i.j
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %is_keytype.exit211.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %.0138.pn, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  %i.ba = icmp eq i8 %i.az, %i.j
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %is_keytype.exit211.thread
  %i.bb = phi i8 [ %i.aq, %is_keytype.exit211.thread ], [ %i.j, %bb.e ]
  %.5 = phi ptr [ %.4, %is_keytype.exit211.thread ], [ %i.ay, %bb.e ]
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !23
  %indvars.iv.next325 = add nsw i64 %indvars.iv324, 1
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %indvars.iv324
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !26
  br label %.preheader283, !llvm.loop !45

bb.g:                                             ; preds = %bb.e, %is_keytype.exit211
  %.lcssa = phi i8 [ %i.j, %bb.e ], [ %i.aq, %is_keytype.exit211 ]
  %i.be = trunc nsw i64 %indvars.iv324 to i32
  %i.bf = icmp eq i8 %.lcssa, %i.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.0138.pn, i64 2
  %spec.select194 = select i1 %i.bf, ptr %i.bg, ptr %.4
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %.critedge, %.thread256, %bb.i
  %.0153.be = phi i32 [ %i.be, %bb.g ], [ %i.ei, %.thread256 ], [ %i.bt, %bb.i ], [ %i.al, %.critedge ]
  %.0138.be = phi ptr [ %spec.select194, %bb.g ], [ %i.eg, %.thread256 ], [ %i.bj, %bb.i ], [ %spec.select, %.critedge ]
  br label %bb.c

is_keytype.exit214:                               ; preds = %is_keytype.exit208
  %i.bh = and i16 %i.o, 32
  %.not173 = icmp eq i16 %i.bh, 0
  br i1 %.not173, label %is_keytype.exit220, label %bb.h

bb.h:                                             ; preds = %is_keytype.exit214
  %i.bi = getelementptr inbounds nuw i8, ptr %.0138, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0138, i64 2
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !26  ; 5 uses
  %i.bl = icmp slt i8 %i.bk, 0
  br i1 %i.bl, label %is_keytype.exit217.thread, label %is_keytype.exit217

is_keytype.exit217:                               ; preds = %bb.h
  %i.bm = zext nneg i8 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !31
  %i.bp = and i16 %i.bo, 8
  %.not187 = icmp eq i16 %i.bp, 0
  br i1 %.not187, label %is_keytype.exit217.thread, label %bb.x

is_keytype.exit217.thread:                        ; preds = %bb.h, %is_keytype.exit217
  %4 = add i8 %i.bk, -98                          ; 2 uses
  %5 = tail call i8 @llvm.fshl.i8(i8 %4, i8 %4, i8 7) ; 3 uses
  %i.bq = icmp ult i8 %5, 10
  br i1 %i.bq, label %switch.hole_check, label %bb.i

switch.hole_check:                                ; preds = %is_keytype.exit217.thread
  %switch.maskindex = zext nneg i8 %5 to i16
  %switch.shifted = lshr i16 833, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.br = zext nneg i8 %5 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.str_copy, i64 %i.br
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.i

bb.i:                                             ; preds = %is_keytype.exit217.thread, %switch.hole_check, %switch.lookup
  %.0139 = phi i8 [ %switch.load, %switch.lookup ], [ %i.bk, %switch.hole_check ], [ %i.bk, %is_keytype.exit217.thread ]
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.bt = add nsw i32 %.0153, 1
  %i.bu = sext i32 %.0153 to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  store i8 %.0139, ptr %i.bv, align 1, !tbaa !26
  br label %.backedge

is_keytype.exit220:                               ; preds = %is_keytype.exit214
  %i.bw = and i16 %i.o, 8
  %.not174 = icmp eq i16 %i.bw, 0
  br i1 %.not174, label %bb.j, label %bb.x

bb.j:                                             ; preds = %is_keytype.exit220
  %i.bx = icmp eq i8 %i.j, 36
  br i1 %i.bx, label %bb.k, label %.thread256

bb.k:                                             ; preds = %bb.j
  %i.by = load i32, ptr %i.i, align 8, !tbaa !36
  %.not175 = icmp eq i32 %i.by, 0                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0138, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !26 ; 3 uses
  br i1 %.not175, label %._crit_edge329, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %.pre, label %.thread256 [
    i8 123, label %._crit_edge329
    i8 40, label %._crit_edge329
  ]

._crit_edge329:                                   ; preds = %bb.k, %bb.l, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0138, i64 1
  switch i8 %.pre, label %bb.n [
    i8 123, label %.thread257
    i8 40, label %bb.m
  ]

bb.m:                                             ; preds = %._crit_edge329
  br label %.thread257

.thread257:                                       ; preds = %bb.m, %._crit_edge329
  %.0144.ph = phi i32 [ 125, %._crit_edge329 ], [ 41, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0138, i64 2 ; 2 uses
  %.pre330 = load i8, ptr %i.ca, align 1, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge329, %.thread257
  %i.cb = phi i8 [ %.pre330, %.thread257 ], [ %.pre, %._crit_edge329 ] ; 4 uses
  %.0144261 = phi i32 [ %.0144.ph, %.thread257 ], [ 0, %._crit_edge329 ]
  %.not176260 = phi i1 [ false, %.thread257 ], [ true, %._crit_edge329 ]
  %i.cc = phi ptr [ %i.ca, %.thread257 ], [ %i.bz, %._crit_edge329 ] ; 11 uses
  %i.cd = icmp slt i8 %i.cb, 0
  br i1 %i.cd, label %.critedge8, label %is_keytype.exit223.lr.ph

is_keytype.exit223.lr.ph:                         ; preds = %bb.n
  br i1 %.not175, label %is_keytype.exit223.us, label %is_keytype.exit223

is_keytype.exit223.us:                            ; preds = %is_keytype.exit223.lr.ph, %.critedge2.us
  %i.ce = phi i8 [ %i.ck, %.critedge2.us ], [ %i.cb, %is_keytype.exit223.lr.ph ] ; 2 uses
  %.0145293.us = phi ptr [ %i.cj, %.critedge2.us ], [ %i.cc, %is_keytype.exit223.lr.ph ] ; 2 uses
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !31
  %i.ci = and i16 %i.ch, 263
  %.not.i221.not.us = icmp eq i16 %i.ci, 0
  br i1 %.not.i221.not.us, label %.critedge4, label %.critedge2.us

.critedge2.us:                                    ; preds = %is_keytype.exit223.us
  %i.cj = getelementptr inbounds nuw i8, ptr %.0145293.us, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !26  ; 3 uses
  %i.cl = icmp slt i8 %i.ck, 0
  br i1 %i.cl, label %.critedge8, label %is_keytype.exit223.us, !llvm.loop !46

is_keytype.exit223:                               ; preds = %is_keytype.exit223.lr.ph, %.critedge2
  %i.cm = phi i8 [ %i.cs, %.critedge2 ], [ %i.cb, %is_keytype.exit223.lr.ph ] ; 2 uses
  %.0145293 = phi ptr [ %i.cr, %.critedge2 ], [ %i.cc, %is_keytype.exit223.lr.ph ] ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !31
  %i.cq = and i16 %i.cp, 4359
  %or.cond373 = icmp eq i16 %i.cq, 0
  br i1 %or.cond373, label %.critedge4, label %.critedge2

.critedge2:                                       ; preds = %is_keytype.exit223
  %i.cr = getelementptr inbounds nuw i8, ptr %.0145293, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !26  ; 3 uses
  %i.ct = icmp slt i8 %i.cs, 0
  br i1 %i.ct, label %.critedge8, label %is_keytype.exit223, !llvm.loop !46

.critedge4:                                       ; preds = %is_keytype.exit223, %is_keytype.exit223.us
  %.us-phi = phi ptr [ %.0145293.us, %is_keytype.exit223.us ], [ %.0145293, %is_keytype.exit223 ] ; 8 uses
  %.us-phi294 = phi i8 [ %i.ce, %is_keytype.exit223.us ], [ %i.cm, %is_keytype.exit223 ] ; 2 uses
  %.old = icmp eq i8 %.us-phi294, 58
  br i1 %.old, label %bb.o, label %.critedge8

bb.o:                                             ; preds = %.critedge4
  %i.cu = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !26
  %i.cw = icmp eq i8 %i.cv, 58
  br i1 %i.cw, label %bb.p, label %.critedge8

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %.us-phi, align 1, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 2 ; 6 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26  ; 3 uses
  %i.cz = icmp slt i8 %i.cy, 0
  br i1 %i.cz, label %.critedge8, label %is_keytype.exit229.lr.ph

is_keytype.exit229.lr.ph:                         ; preds = %bb.p
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %is_keytype.exit229

is_keytype.exit229:                               ; preds = %is_keytype.exit229.lr.ph, %.critedge6
  %i.db = phi i8 [ %i.cy, %is_keytype.exit229.lr.ph ], [ %i.dj, %.critedge6 ] ; 2 uses
  %.1146299 = phi ptr [ %i.cx, %is_keytype.exit229.lr.ph ], [ %i.di, %.critedge6 ] ; 2 uses
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !31 ; 2 uses
  %i.df = and i16 %i.de, 263
  %.not.i227.not = icmp eq i16 %i.df, 0
  br i1 %.not.i227.not, label %.thread270, label %.critedge6

.thread270:                                       ; preds = %is_keytype.exit229
  %i.dg = load i32, ptr %i.i, align 8, !tbaa !36
  %.not181271 = icmp eq i32 %i.dg, 0
  %i.dh = and i16 %i.de, 4096
  %.not182 = icmp eq i16 %i.dh, 0
  %or.cond375 = or i1 %.not181271, %.not182
  br i1 %or.cond375, label %.critedge8, label %.critedge6

.critedge6:                                       ; preds = %.thread270, %is_keytype.exit229
  %i.di = getelementptr inbounds nuw i8, ptr %.1146299, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !26  ; 3 uses
  %i.dk = icmp slt i8 %i.dj, 0
  br i1 %i.dk, label %.critedge8, label %is_keytype.exit229, !llvm.loop !47

.critedge8:                                       ; preds = %.critedge2, %.critedge2.us, %.thread270, %.critedge6, %bb.n, %bb.p, %bb.o, %.critedge4
  %i.dl = phi i8 [ %.us-phi294, %.critedge4 ], [ %i.cy, %bb.p ], [ 58, %bb.o ], [ %i.ck, %.critedge2.us ], [ %i.dj, %.critedge6 ], [ %i.cb, %bb.n ], [ %i.db, %.thread270 ], [ %i.cs, %.critedge2 ] ; 3 uses
  %.1160 = phi i8 [ %.0159.ph, %.critedge4 ], [ 58, %bb.p ], [ %.0159.ph, %bb.o ], [ %.0159.ph, %.critedge2.us ], [ 58, %.thread270 ], [ %.0159.ph, %bb.n ], [ 58, %.critedge6 ], [ %.0159.ph, %.critedge2 ] ; 2 uses
  %.2147 = phi ptr [ %.us-phi, %.critedge4 ], [ %i.cx, %bb.p ], [ %.us-phi, %bb.o ], [ %i.cj, %.critedge2.us ], [ %i.di, %.critedge6 ], [ %i.cc, %bb.n ], [ %.1146299, %.thread270 ], [ %i.cr, %.critedge2 ] ; 5 uses
  %.0142 = phi ptr [ null, %.critedge4 ], [ %.us-phi, %bb.p ], [ null, %bb.o ], [ null, %.critedge2.us ], [ %.us-phi, %.thread270 ], [ null, %bb.n ], [ %.us-phi, %.critedge6 ], [ null, %.critedge2 ] ; 2 uses
  %.0141 = phi ptr [ %i.cc, %.critedge4 ], [ %i.cx, %bb.p ], [ %i.cc, %bb.o ], [ %i.cc, %.critedge2.us ], [ %i.cx, %.thread270 ], [ %i.cc, %bb.n ], [ %i.cx, %.critedge6 ], [ %i.cc, %.critedge2 ]
  %.0140 = phi ptr [ %1, %.critedge4 ], [ %i.cc, %bb.p ], [ %1, %bb.o ], [ %1, %.critedge2.us ], [ %i.cc, %.thread270 ], [ %1, %bb.n ], [ %i.cc, %.critedge6 ], [ %1, %.critedge2 ]
  store i8 0, ptr %.2147, align 1, !tbaa !26
  br i1 %.not176260, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge8
  %i.dm = sext i8 %i.dl to i32
  %.not183 = icmp eq i32 %.0144261, %i.dm
  br i1 %.not183, label %bb.r, label %.thread276.sink.split

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %.2147, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge8
  %.3148 = phi ptr [ %i.dn, %bb.r ], [ %.2147, %.critedge8 ] ; 2 uses
  %i.do = tail call ptr @_CONF_get_string(ptr noundef %0, ptr noundef %.0140, ptr noundef nonnull %.0141) #14 ; 4 uses
  %.not184 = icmp eq ptr %.0142, null
  br i1 %.not184, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 %.1160, ptr %.0142, align 1, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i8 %i.dl, ptr %.2147, align 1, !tbaa !26
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.thread276.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.do) #15
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !48
  %i.ds = ptrtoint ptr %.3148 to i64
  %i.dt = ptrtoint ptr %.0138 to i64
  %.neg = sub i64 %i.dt, %i.ds
  %i.du = add i64 %.neg, %i.dq
  %i.dv = add i64 %i.du, %i.dr                    ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 65536
  br i1 %i.dw, label %.thread276.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = tail call i64 @BUF_MEM_grow_clean(ptr noundef nonnull %i.a, i64 noundef %i.dv) #14
  %.not185 = icmp eq i64 %i.dx, 0
  br i1 %.not185, label %.thread276.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.dy = load i8, ptr %i.do, align 1, !tbaa !26  ; 2 uses
  %.not186303 = icmp eq i8 %i.dy, 0
  br i1 %.not186303, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.dz = sext i32 %.0153 to i64
  br label %.lr.ph

end_hunk_0
