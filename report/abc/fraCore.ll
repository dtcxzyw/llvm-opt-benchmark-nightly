Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraCore?download=true
inline.NumInlined: 105
inline.NumDeleted: 32
begin_hunk_0_@Fra_FraigVerifyCounterEx:.critedge

.critedge10.preheader:                            ; preds = %.critedge8, %.critedge8.preheader
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !44 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %.val92127 = load i32, ptr %i.ek, align 4, !tbaa !43
  %i.el = icmp sgt i32 %.val92127, 0
  br i1 %i.el, label %.lr.ph129, label %.critedge12

.lr.ph126:                                        ; preds = %.critedge8.preheader, %.critedge8
  %i.em = phi ptr [ %i.fn, %.critedge8 ], [ %i.dh, %.critedge8.preheader ]
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.critedge8 ], [ 0, %.critedge8.preheader ] ; 2 uses
  %i.en = phi ptr [ %i.fp, %.critedge8 ], [ %i.dj, %.critedge8.preheader ]
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %.val85 = load ptr, ptr %i.eo, align 8, !tbaa !28
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.val85, i64 %indvars.iv144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !49 ; 2 uses
  %.not121 = icmp eq ptr %i.es, null
  br i1 %.not121, label %.critedge8, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.lr.ph126
  %.pre152 = load ptr, ptr %i.eq, align 8, !tbaa !49
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.f
  %i.et = phi ptr [ %.pre152, %.lr.ph123.preheader ], [ %i.fk, %bb.f ] ; 3 uses
  %indvars.iv141 = phi i64 [ 1, %.lr.ph123.preheader ], [ %indvars.iv.next142, %bb.f ]
  %i.eu = phi ptr [ %i.es, %.lr.ph123.preheader ], [ %i.fm, %bb.f ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = xor i64 %i.ey, %i.ew
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = lshr i32 %i.fa, 5
  %i.fd = xor i32 %i.fb, %i.fc
  %i.fe = and i32 %i.fd, 1
  %.not82 = icmp eq i32 %i.fe, 0
  br i1 %.not82, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph123
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !48
  %i.fj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.fg, i32 noundef %i.fi) ; 0 uses
  %.pre151 = load ptr, ptr %i.eq, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph123, %bb.e
  %i.fk = phi ptr [ %i.et, %.lr.ph123 ], [ %.pre151, %bb.e ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next142
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.fm, null
  br i1 %.not, label %.critedge8.loopexit, label %.lr.ph123, !llvm.loop !72

.critedge8.loopexit:                              ; preds = %bb.f
  %.pre153 = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.lr.ph126
  %i.fn = phi ptr [ %.pre153, %.critedge8.loopexit ], [ %i.em, %.lr.ph126 ] ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !78 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 4
  %.val93 = load i32, ptr %i.fq, align 4, !tbaa !43
  %i.fr = sext i32 %.val93 to i64
  %i.fs = icmp slt i64 %indvars.iv.next145, %i.fr
  br i1 %i.fs, label %.lr.ph126, label %.critedge10.preheader, !llvm.loop !73

.lr.ph129:                                        ; preds = %.critedge10.preheader, %.critedge10
  %i.ft = phi ptr [ %i.gc, %.critedge10 ], [ %i.eh, %.critedge10.preheader ]
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %.critedge10 ], [ 0, %.critedge10.preheader ] ; 2 uses
  %i.fu = phi ptr [ %i.ge, %.critedge10 ], [ %i.ej, %.critedge10.preheader ]
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val = load ptr, ptr %i.fv, align 8, !tbaa !28
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv147
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %.critedge10, label %bb.g

bb.g:                                             ; preds = %.lr.ph129
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = and i64 %i.ga, -33
  store i64 %i.gb, ptr %i.fz, align 8
  %.pre154 = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %.critedge10

.critedge10:                                      ; preds = %bb.g, %.lr.ph129
  %i.gc = phi ptr [ %.pre154, %bb.g ], [ %i.ft, %.lr.ph129 ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !44 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %.val92 = load i32, ptr %i.gf, align 4, !tbaa !43
  %i.gg = sext i32 %.val92 to i64
  %i.gh = icmp slt i64 %indvars.iv.next148, %i.gg
  br i1 %i.gh, label %.lr.ph129, label %.critedge12, !llvm.loop !74

.critedge12:                                      ; preds = %.critedge10, %.critedge10.preheader
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Fra_FraigSweep(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 136
  %.val72 = load i32, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr i8, ptr %i.b, i64 104
  %.val = load i32, ptr %i.d, align 8, !tbaa !25
  %i.e = sub nsw i32 %.val72, %.val               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val7085 = load i32, ptr %i.h, align 4, !tbaa !43
  %i.i = icmp slt i32 %i.e, %.val7085
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.y, %bb.d ]
  %.087 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val68 = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds [8 x i8], ptr %.val68, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  tail call fastcc void @Fra_FraigNode(ptr noundef nonnull %0, ptr noundef %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !81
  %.not66 = icmp eq i32 %i.r, 0
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.v = tail call i32 @Fra_ImpCheckForNode(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef %i.o, i32 noundef %.087) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %.087, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val70 = load i32, ptr %i.z, align 4, !tbaa !43
  %i.aa = sext i32 %.val70 to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %.critedge, !llvm.loop !79

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.ac = phi ptr [ %i.b, %bb.a ], [ %i.w, %bb.d ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !83
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val6988 = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.al = icmp sgt i32 %.val6988, 0
  br i1 %i.al, label %.lr.ph91, label %.critedge2

.lr.ph91:                                         ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %bb.s
  %indvars.iv93 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next94, %bb.s ] ; 2 uses
  %i.ao = phi ptr [ %i.aj, %.lr.ph91 ], [ %i.dy, %bb.s ]
  %.290 = phi i32 [ %.0.lcssa, %.lr.ph91 ], [ %.3, %bb.s ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val67 = load ptr, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val67, i64 %indvars.iv93
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 10 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.ar, i64 24
  %.val71 = load i64, ptr %i.at, align 8
  %i.au = trunc i64 %.val71 to i32
  %i.av = and i32 %i.au, 7
  %i.aw = add nsw i32 %i.av, -7
  %narrow.i = icmp ult i32 %i.aw, -2
  br i1 %narrow.i, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.ay = load ptr, ptr %0, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 8
  %.val78 = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bc = ptrtoint ptr %.val78 to i64             ; 2 uses
  %i.bd = and i64 %i.bc, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %Fra_ObjChild0Fra.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 36
  %.val5.i = load i32, ptr %i.bf, align 4, !tbaa !48
  %i.bg = getelementptr i8, ptr %i.be, i64 40
  %.val6.i = load ptr, ptr %i.bg, align 8, !tbaa !32 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val6.i, i64 24
  %.val6.val.i = load i32, ptr %i.bh, align 8, !tbaa !56
  %i.bi = getelementptr i8, ptr %.val6.i, i64 32
  %.val6.val7.i = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bj = mul nsw i32 %.val6.val.i, %.val5.i
  %i.bk = add nsw i32 %i.bj, %i.ba
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.val6.val7.i, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  %i.bo = and i64 %i.bc, 1
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr
  br label %Fra_ObjChild0Fra.exit

Fra_ObjChild0Fra.exit:                            ; preds = %bb.h, %bb.i
  %i.bs = phi ptr [ %i.br, %bb.i ], [ null, %bb.h ]
  %i.bt = getelementptr i8, ptr %i.ar, i64 16
  %.val79 = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bu = ptrtoint ptr %.val79 to i64             ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %.not.i80 = icmp eq i64 %i.bv, 0
  br i1 %.not.i80, label %Fra_ObjChild1Fra.exit, label %bb.j

bb.j:                                             ; preds = %Fra_ObjChild0Fra.exit
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 36
  %.val5.i81 = load i32, ptr %i.bx, align 4, !tbaa !48
  %i.by = getelementptr i8, ptr %i.bw, i64 40
  %.val6.i82 = load ptr, ptr %i.by, align 8, !tbaa !32 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val6.i82, i64 24
  %.val6.val.i83 = load i32, ptr %i.bz, align 8, !tbaa !56
  %i.ca = getelementptr i8, ptr %.val6.i82, i64 32
  %.val6.val7.i84 = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cb = mul nsw i32 %.val6.val.i83, %.val5.i81
  %i.cc = add nsw i32 %i.cb, %i.ba
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val6.val7.i84, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  %i.cg = and i64 %i.bu, 1
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = inttoptr i64 %i.ci to ptr
  br label %Fra_ObjChild1Fra.exit

Fra_ObjChild1Fra.exit:                            ; preds = %Fra_ObjChild0Fra.exit, %bb.j
  %i.ck = phi ptr [ %i.cj, %bb.j ], [ null, %Fra_ObjChild0Fra.exit ]
  %i.cl = tail call ptr @Aig_And(ptr noundef %i.ax, ptr noundef %i.bs, ptr noundef %i.ck) #11 ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  %i.cp = getelementptr i8, ptr %i.ar, i64 36
  %.val73 = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.cq = getelementptr i8, ptr %i.ar, i64 40
  %.val74 = load ptr, ptr %i.cq, align 8, !tbaa !32 ; 2 uses
  %i.cr = getelementptr i8, ptr %.val74, i64 24
  %.val74.val = load i32, ptr %i.cr, align 8, !tbaa !56
  %i.cs = getelementptr i8, ptr %.val74, i64 32
  %.val74.val75 = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.ct = mul nsw i32 %.val74.val, %.val73
  %i.cu = add nsw i32 %i.ct, %i.co
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.val74.val75, i64 %i.cv
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !49
  %i.cx = ptrtoint ptr %i.cl to i64
  %i.cy = and i64 %i.cx, -2
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %0, ptr %i.da, align 8, !tbaa !32
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 296
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !23
  %.not62 = icmp eq ptr %i.dd, null
  br i1 %.not62, label %bb.k, label %bb.s

bb.k:                                             ; preds = %Fra_ObjChild1Fra.exit
  %i.de = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %.not63 = icmp eq i32 %i.dg, 0
  br i1 %.not63, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %1 = getelementptr i8, ptr %i.ar, i64 28
  %2 = load i32, ptr %1, align 4
  %i.dh = and i32 %2, 16777215
  %i.di = icmp sgt i32 %i.dh, %i.dg
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store i32 5, ptr %i.dj, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  tail call fastcc void @Fra_FraigNode(ptr noundef nonnull %0, ptr noundef nonnull %i.ar)
  %i.dk = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !58 ; 2 uses
  %.not64 = icmp eq i32 %i.dm, 0
  br i1 %.not64, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %3 = getelementptr i8, ptr %i.ar, i64 28
  %4 = load i32, ptr %3, align 4
  %i.dn = and i32 %4, 16777215
  %i.do = icmp sgt i32 %i.dn, %i.dm
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  store i32 %i.ah, ptr %i.dp, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 100
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !81
  %.not65 = icmp eq i32 %i.dr, 0
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !82
  %i.dv = tail call i32 @Fra_ImpCheckForNode(ptr noundef nonnull %0, ptr noundef %i.du, ptr noundef nonnull %i.ar, i32 noundef %.290) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.f, %bb.r, %bb.q, %Fra_ObjChild1Fra.exit
  %.3 = phi i32 [ %.290, %bb.f ], [ %.290, %Fra_ObjChild1Fra.exit ], [ %i.dv, %bb.r ], [ %.290, %bb.q ], [ %.290, %bb.g ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !44 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %.val69 = load i32, ptr %i.dz, align 4, !tbaa !43
  %i.ea = sext i32 %.val69 to i64
  %i.eb = icmp slt i64 %indvars.iv.next94, %i.ea
  br i1 %i.eb, label %bb.f, label %.critedge2.loopexit, !llvm.loop !80

.critedge2.loopexit:                              ; preds = %bb.s
  %.pre = load ptr, ptr %0, align 8, !tbaa !50
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.e
  %i.ec = phi ptr [ %.pre, %.critedge2.loopexit ], [ %i.ad, %bb.e ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !54 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 148
  %.val76 = load i32, ptr %i.ef, align 4, !tbaa !24
  %i.eg = getelementptr i8, ptr %i.ee, i64 152
  %.val77 = load i32, ptr %i.eg, align 8, !tbaa !24
  %i.eh = add nsw i32 %.val77, %.val76
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !84
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 100
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !81
  %.not60 = icmp eq i32 %i.ek, 0
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !46
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !82
  tail call void @Fra_ImpCompactArray(ptr noundef %i.eo) #11
  br label %bb.u

bb.u:                                             ; preds = %.critedge2, %bb.t, %.critedge
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Fra_FraigNode(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 36         ; 4 uses
  %.val55 = load i32, ptr %i.b, align 4, !tbaa !48 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %.val56 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 3 uses
  %i.d = getelementptr i8, ptr %.val56, i64 48
  %.val56.val = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %.val56.val, i64 8
  %.val56.val.val = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.f = sext i32 %.val55 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val56.val.val, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %.val = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.p = icmp eq ptr %i.h, %.val
  br i1 %i.p, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %i.s = getelementptr i8, ptr %.val56, i64 24
  %.val60.val = load i32, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr i8, ptr %.val56, i64 32
  %.val60.val61 = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.u = mul nsw i32 %.val60.val, %.val55
  %i.v = add nsw i32 %i.u, %i.r
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val60.val61, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = getelementptr i8, ptr %i.h, i64 36
  %.val57 = load i32, ptr %i.z, align 4, !tbaa !48
  %i.aa = getelementptr i8, ptr %i.h, i64 40
  %.val58 = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val58, i64 24
  %.val58.val = load i32, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr i8, ptr %.val58, i64 32
  %.val58.val62 = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ad = mul nsw i32 %.val58.val, %.val57
  %i.ae = add nsw i32 %i.ad, %i.r
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val58.val62, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = and i64 %i.ai, -2                       ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.am = and i64 %i.al, -2                       ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = icmp eq i64 %i.aj, %i.am
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !87
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !87
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  %i.as = tail call i32 @Fra_NodesAreEquiv(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.ak) #11
  switch i32 %i.as, label %bb.v [
    i32 1, label %bb.g
    i32 -1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = xor i64 %i.aw, %i.au
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1
  %i.ba = xor i64 %i.az, %i.al
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %0, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !55
  %.val65 = load i32, ptr %i.b, align 4, !tbaa !48
  %.val66 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  %i.bf = getelementptr i8, ptr %.val66, i64 24
  %.val66.val = load i32, ptr %i.bf, align 8, !tbaa !56
  %i.bg = getelementptr i8, ptr %.val66, i64 32
  %.val66.val67 = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bh = mul nsw i32 %.val66.val, %.val65
  %i.bi = add nsw i32 %i.bh, %i.be
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.val66.val67, i64 %i.bj
  store ptr %i.bb, ptr %i.bk, align 8, !tbaa !49
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 10 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.bo = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 0, ptr %i.bp, align 4, !tbaa !43
  store i32 100, ptr %i.bo, align 8, !tbaa !88
  %i.bq = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !28
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43 ; 2 uses
  %.pre77 = load i32, ptr %i.bm, align 8, !tbaa !88 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 4 uses
  %i.bu = icmp eq i32 %.pre, %.pre77
  br i1 %i.bu, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bv = icmp slt i32 %.pre77, 16
end_hunk_0
