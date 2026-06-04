inline.NumInlined: 23
inline.NumDeleted: 5
begin_hunk_0_@read_long_string:bb.a
  %i.ee = call ptr @luaS_newlstr(ptr noundef %i.ed, ptr noundef nonnull %i.dy, i64 noundef %i.ec) #5 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !33
  %i.ej = call ptr @luaH_setstr(ptr noundef %i.ed, ptr noundef %i.ei, ptr noundef %i.ee) #5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !39
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.au, label %luaX_newstring.exit

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %i.ej, align 8, !tbaa !8
  store i32 1, ptr %i.ek, align 8, !tbaa !39
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !41 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.es = load i64, ptr %i.er, align 8, !tbaa !55
  %.not.i65 = icmp ult i64 %i.eq, %i.es
  br i1 %.not.i65, label %luaX_newstring.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @luaC_step(ptr noundef nonnull %i.ed) #5
  br label %luaX_newstring.exit

luaX_newstring.exit:                              ; preds = %bb.at, %bb.au, %bb.av
  store ptr %i.ee, ptr %1, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %luaX_newstring.exit, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_numeral(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.c = phi i32 [ %i.m, %bb.d ], [ %.pre, %bb.a ]
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.c)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !61
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.g, align 8, !tbaa !63
  %i.j = load i8, ptr %i.h, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i32
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.l = tail call i32 @luaZ_fill(ptr noundef nonnull %i.d) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 7 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !64
  %i.n = tail call ptr @__ctype_b_loc() #6        ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !12
  %i.s = and i16 %i.r, 2048
  %.not27 = icmp ne i16 %i.s, 0
  %i.t = icmp eq i32 %i.m, 46
  %or.cond = or i1 %i.t, %.not27
  br i1 %or.cond, label %.critedge, label %bb.e, !llvm.loop !76

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i32 %i.m to i8
  switch i8 %i.u, label %check_next.exit37 [
    i8 69, label %.split
    i8 101, label %.split
    i8 0, label %.split
  ]

.split:                                           ; preds = %bb.e, %bb.e, %bb.e
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !61
  %.not8.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !63
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  br label %bb.h

bb.g:                                             ; preds = %.split
  %i.ad = tail call i32 @luaZ_fill(ptr noundef nonnull %i.v) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi i32 [ %i.ac, %bb.f ], [ %i.ad, %bb.g ] ; 4 uses
  store i32 %i.ae, ptr %0, align 8, !tbaa !64
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %memchr.bounds = icmp samesign ugt i32 %i.af, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, 43980465111041
  %memchr.bits = icmp eq i64 %i.ai, 0
  %memchr43.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr43.not, label %check_next.exit37, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.ae)
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !58  ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !61
  %.not8.i35 = icmp eq i64 %i.ak, 0
  br i1 %.not8.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call i32 @luaZ_fill(ptr noundef nonnull %i.aj) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i32 [ %i.aq, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  store i32 %i.as, ptr %0, align 8, !tbaa !64
  br label %check_next.exit37

check_next.exit37:                                ; preds = %bb.e, %bb.l, %bb.h
  %i.at = phi i32 [ %i.ae, %bb.h ], [ %i.as, %bb.l ], [ %i.m, %bb.e ] ; 3 uses
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !12
  %i.ay = and i16 %i.ax, 8
  %.not2949 = icmp ne i16 %i.ay, 0
  %i.az = icmp eq i32 %i.at, 95
  %or.cond3250 = or i1 %i.az, %.not2949
  br i1 %or.cond3250, label %.critedge2, label %._crit_edge

.critedge2:                                       ; preds = %check_next.exit37, %bb.o
  %i.ba = phi i32 [ %i.bk, %bb.o ], [ %i.at, %check_next.exit37 ]
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !58  ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !61
  %.not31 = icmp eq i64 %i.bc, 0
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !63
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i32
  br label %bb.o

bb.n:                                             ; preds = %.critedge2
  %i.bj = tail call i32 @luaZ_fill(ptr noundef nonnull %i.bb) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = phi i32 [ %i.bi, %bb.m ], [ %i.bj, %bb.n ] ; 4 uses
  store i32 %i.bk, ptr %0, align 8, !tbaa !64
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !12
  %i.bp = and i16 %i.bo, 8
  %.not29 = icmp ne i16 %i.bp, 0
  %i.bq = icmp eq i32 %i.bk, 95
  %or.cond32 = or i1 %i.bq, %.not29
  br i1 %or.cond32, label %.critedge2, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.o, %check_next.exit37
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef 0)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !56  ; 25 uses
  %i.bt = getelementptr i8, ptr %0, i64 72        ; 6 uses
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !28 ; 26 uses
  %i.bu = getelementptr i8, ptr %.val, i64 8
  %.val.val33 = load i64, ptr %i.bu, align 8, !tbaa !66 ; 13 uses
  %.not1.i = icmp eq i64 %.val.val33, 0
  br i1 %.not1.i, label %buffreplace.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %.val.val33, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check61 = icmp ult i64 %.val.val33, 16
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.val.val33, 8
  %n.vec = and i64 %.val.val33, -16               ; 3 uses
  %i.bv = and i64 %.val.val33, 15
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue91, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue91 ] ; 2 uses
  %i.bw = sub i64 %.val.val33, %index             ; 16 uses
  %i.bx = getelementptr i8, ptr %.val.val, i64 %i.bw ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -16
  %wide.load = load <16 x i8>, ptr %i.by, align 1, !tbaa !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bz = icmp eq <16 x i8> %reverse, splat (i8 46) ; 16 uses
  %i.ca = extractelement <16 x i1> %i.bz, i64 0
  br i1 %i.ca, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cb = getelementptr i8, ptr %i.bx, i64 -1
  store i8 %i.bs, ptr %i.cb, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cc = extractelement <16 x i1> %i.bz, i64 1
  br i1 %i.cc, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue
  %i.cd = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  store i8 %i.bs, ptr %i.ce, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue
  %i.cf = extractelement <16 x i1> %i.bz, i64 2
  br i1 %i.cf, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.cg = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.ch = getelementptr i8, ptr %i.cg, i64 -3
  store i8 %i.bs, ptr %i.ch, align 1, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.ci = extractelement <16 x i1> %i.bz, i64 3
  br i1 %i.ci, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.cj = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  store i8 %i.bs, ptr %i.ck, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.cl = extractelement <16 x i1> %i.bz, i64 4
  br i1 %i.cl, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.cm = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.cn = getelementptr i8, ptr %i.cm, i64 -5
  store i8 %i.bs, ptr %i.cn, align 1, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.co = extractelement <16 x i1> %i.bz, i64 5
  br i1 %i.co, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.cp = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.cq = getelementptr i8, ptr %i.cp, i64 -6
  store i8 %i.bs, ptr %i.cq, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.cr = extractelement <16 x i1> %i.bz, i64 6
  br i1 %i.cr, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.cs = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.ct = getelementptr i8, ptr %i.cs, i64 -7
  store i8 %i.bs, ptr %i.ct, align 1, !tbaa !8
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.cu = extractelement <16 x i1> %i.bz, i64 7
  br i1 %i.cu, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.cv = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  store i8 %i.bs, ptr %i.cw, align 1, !tbaa !8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.cx = extractelement <16 x i1> %i.bz, i64 8
  br i1 %i.cx, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.cy = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.cz = getelementptr i8, ptr %i.cy, i64 -9
  store i8 %i.bs, ptr %i.cz, align 1, !tbaa !8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.da = extractelement <16 x i1> %i.bz, i64 9
  br i1 %i.da, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.db = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.dc = getelementptr i8, ptr %i.db, i64 -10
  store i8 %i.bs, ptr %i.dc, align 1, !tbaa !8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.dd = extractelement <16 x i1> %i.bz, i64 10
  br i1 %i.dd, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.de = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.df = getelementptr i8, ptr %i.de, i64 -11
  store i8 %i.bs, ptr %i.df, align 1, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.dg = extractelement <16 x i1> %i.bz, i64 11
  br i1 %i.dg, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.dh = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.di = getelementptr i8, ptr %i.dh, i64 -12
  store i8 %i.bs, ptr %i.di, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.dj = extractelement <16 x i1> %i.bz, i64 12
  br i1 %i.dj, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.dk = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.dl = getelementptr i8, ptr %i.dk, i64 -13
  store i8 %i.bs, ptr %i.dl, align 1, !tbaa !8
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.dm = extractelement <16 x i1> %i.bz, i64 13
  br i1 %i.dm, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.dn = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.do = getelementptr i8, ptr %i.dn, i64 -14
  store i8 %i.bs, ptr %i.do, align 1, !tbaa !8
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.dp = extractelement <16 x i1> %i.bz, i64 14
  br i1 %i.dp, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.dq = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.dr = getelementptr i8, ptr %i.dq, i64 -15
  store i8 %i.bs, ptr %i.dr, align 1, !tbaa !8
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.ds = extractelement <16 x i1> %i.bz, i64 15
  br i1 %i.ds, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.dt = getelementptr i8, ptr %.val.val, i64 %i.bw
  %i.du = getelementptr i8, ptr %i.dt, i64 -16
  store i8 %i.bs, ptr %i.du, align 1, !tbaa !8
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue91
  %cmp.n = icmp eq i64 %.val.val33, %n.vec
  br i1 %cmp.n, label %buffreplace.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %.val.val33, -8              ; 2 uses
  %i.dw = and i64 %.val.val33, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue104.a, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %pred.store.continue104.a ] ; 2 uses
  %i.dx = sub i64 %.val.val33, %index94           ; 8 uses
  %i.dy = getelementptr i8, ptr %.val.val, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %wide.load95 = load <8 x i8>, ptr %i.dz, align 1, !tbaa !8
  %reverse96 = shufflevector <8 x i8> %wide.load95, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %2 = icmp eq <8 x i8> %reverse96, splat (i8 46) ; 8 uses
  %i.ea = extractelement <8 x i1> %2, i64 0
  br i1 %i.ea, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %vec.epilog.vector.body
  %3 = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %i.bs, ptr %3, align 1, !tbaa !8
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %vec.epilog.vector.body
  %4 = extractelement <8 x i1> %2, i64 1
  br i1 %4, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  %5 = getelementptr i8, ptr %.val.val, i64 %i.dx
  %6 = getelementptr i8, ptr %5, i64 -2
  store i8 %i.bs, ptr %6, align 1, !tbaa !8
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %7 = extractelement <8 x i1> %2, i64 2
  br i1 %7, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  %8 = getelementptr i8, ptr %.val.val, i64 %i.dx
  %9 = getelementptr i8, ptr %8, i64 -3
  store i8 %i.bs, ptr %9, align 1, !tbaa !8
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %10 = extractelement <8 x i1> %2, i64 3
  br i1 %10, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  %11 = getelementptr i8, ptr %.val.val, i64 %i.dx
  %12 = getelementptr i8, ptr %11, i64 -4
  store i8 %i.bs, ptr %12, align 1, !tbaa !8
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %13 = extractelement <8 x i1> %2, i64 4
  br i1 %13, label %pred.store.if97.a, label %pred.store.continue98.a

pred.store.if97.a:                                ; preds = %pred.store.continue104
  %14 = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.eb = getelementptr i8, ptr %14, i64 -5
  store i8 %i.bs, ptr %i.eb, align 1, !tbaa !8
  br label %pred.store.continue98.a

pred.store.continue98.a:                          ; preds = %pred.store.if97.a, %pred.store.continue104
  %i.ec = extractelement <8 x i1> %2, i64 5
  br i1 %i.ec, label %pred.store.if99.a, label %pred.store.continue100.a

pred.store.if99.a:                                ; preds = %pred.store.continue98.a
  %i.ed = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.ee = getelementptr i8, ptr %i.ed, i64 -6
  store i8 %i.bs, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue100.a

pred.store.continue100.a:                         ; preds = %pred.store.if99.a, %pred.store.continue98.a
  %i.ef = extractelement <8 x i1> %2, i64 6
  br i1 %i.ef, label %pred.store.if101.a, label %pred.store.continue102.a

pred.store.if101.a:                               ; preds = %pred.store.continue100.a
  %i.eg = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.eh = getelementptr i8, ptr %i.eg, i64 -7
  store i8 %i.bs, ptr %i.eh, align 1, !tbaa !8
  br label %pred.store.continue102.a

pred.store.continue102.a:                         ; preds = %pred.store.if101.a, %pred.store.continue100.a
  %i.ei = extractelement <8 x i1> %2, i64 7
  br i1 %i.ei, label %pred.store.if103.a, label %pred.store.continue104.a

pred.store.if103.a:                               ; preds = %pred.store.continue102.a
  %i.ej = getelementptr i8, ptr %.val.val, i64 %i.dx
  %i.ek = getelementptr i8, ptr %i.ej, i64 -8
  store i8 %i.bs, ptr %i.ek, align 1, !tbaa !8
  br label %pred.store.continue104.a

pred.store.continue104.a:                         ; preds = %pred.store.if103.a, %pred.store.continue102.a
  %index.next105 = add nuw i64 %index94, 8        ; 2 uses
  %i.el = icmp eq i64 %index.next105, %n.vec93
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %pred.store.continue104.a
  %cmp.n106 = icmp eq i64 %.val.val33, %n.vec93
  br i1 %cmp.n106, label %buffreplace.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.in.i.ph = phi i64 [ %.val.val33, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.q
  %.in.i = phi i64 [ %i.em, %bb.q ], [ %.in.i.ph, %.lr.ph.i.preheader ]
  %i.em = add i64 %.in.i, -1                      ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.em ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ep = icmp eq i8 %i.eo, 46
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  store i8 %i.bs, ptr %i.en, align 1, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.not.i38 = icmp eq i64 %i.em, 0
  br i1 %.not.i38, label %buffreplace.exit.loopexit, label %.lr.ph.i, !llvm.loop !83

buffreplace.exit.loopexit:                        ; preds = %bb.q, %vec.epilog.middle.block, %middle.block
  %.pre52 = load ptr, ptr %i.bt, align 8, !tbaa !27
  %.pre53 = load ptr, ptr %.pre52, align 8, !tbaa !28
  br label %buffreplace.exit

buffreplace.exit:                                 ; preds = %buffreplace.exit.loopexit, %._crit_edge
  %i.eq = phi ptr [ %.pre53, %buffreplace.exit.loopexit ], [ %.val.val, %._crit_edge ]
  %i.er = tail call i32 @luaO_str2d(ptr noundef %i.eq, ptr noundef %1) #5
  %.not30 = icmp eq i32 %i.er, 0
  br i1 %.not30, label %bb.r, label %trydecpoint.exit

bb.r:                                             ; preds = %buffreplace.exit
  %i.es = tail call ptr @localeconv() #5          ; 2 uses
  %i.et = load i8, ptr %i.br, align 8, !tbaa !56  ; 3 uses
  %.not.i39 = icmp eq ptr %i.es, null
  br i1 %.not.i39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !84
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ew = phi i8 [ %i.ev, %bb.s ], [ 46, %bb.r ]  ; 26 uses
  store i8 %i.ew, ptr %i.br, align 8, !tbaa !56
  %.val12.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val12.val.i = load ptr, ptr %.val12.i, align 8, !tbaa !28 ; 26 uses
  %i.ex = getelementptr i8, ptr %.val12.i, i64 8
  %.val12.val13.i = load i64, ptr %i.ex, align 8, !tbaa !66 ; 13 uses
  %.not1.i.i = icmp eq i64 %.val12.val13.i, 0
  br i1 %.not1.i.i, label %buffreplace.exit.i, label %iter.check154

iter.check154:                                    ; preds = %bb.t
  %min.iters.check108 = icmp ult i64 %.val12.val13.i, 8
  br i1 %min.iters.check108, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check154
  %min.iters.check110 = icmp ult i64 %.val12.val13.i, 16
  br i1 %min.iters.check110, label %vec.epilog.ph158, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %n.mod.vf112 = and i64 %.val12.val13.i, 8
  %n.vec113 = and i64 %.val12.val13.i, -16        ; 3 uses
  %i.ey = and i64 %.val12.val13.i, 15
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body114

vector.body114:                                   ; preds = %pred.store.continue149, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next150, %pred.store.continue149 ] ; 2 uses
  %i.ez = sub i64 %.val12.val13.i, %index115      ; 16 uses
  %i.fa = getelementptr i8, ptr %.val12.val.i, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 -16
  %wide.load116 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !8
  %reverse117 = shufflevector <16 x i8> %wide.load116, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fc = icmp eq <16 x i8> %reverse117, %broadcast.splat ; 16 uses
  %i.fd = extractelement <16 x i1> %i.fc, i64 0
  br i1 %i.fd, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %vector.body114
  %i.fe = getelementptr i8, ptr %i.fa, i64 -1
  store i8 %i.ew, ptr %i.fe, align 1, !tbaa !8
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %vector.body114
  %i.ff = extractelement <16 x i1> %i.fc, i64 1
  br i1 %i.ff, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.fg = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 -2
  store i8 %i.ew, ptr %i.fh, align 1, !tbaa !8
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.fi = extractelement <16 x i1> %i.fc, i64 2
  br i1 %i.fi, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %i.fj = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fk = getelementptr i8, ptr %i.fj, i64 -3
  store i8 %i.ew, ptr %i.fk, align 1, !tbaa !8
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.fl = extractelement <16 x i1> %i.fc, i64 3
  br i1 %i.fl, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  %i.fm = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  store i8 %i.ew, ptr %i.fn, align 1, !tbaa !8
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.fo = extractelement <16 x i1> %i.fc, i64 4
  br i1 %i.fo, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %i.fp = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fq = getelementptr i8, ptr %i.fp, i64 -5
  store i8 %i.ew, ptr %i.fq, align 1, !tbaa !8
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.fr = extractelement <16 x i1> %i.fc, i64 5
  br i1 %i.fr, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.fs = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.ft = getelementptr i8, ptr %i.fs, i64 -6
  store i8 %i.ew, ptr %i.ft, align 1, !tbaa !8
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.fu = extractelement <16 x i1> %i.fc, i64 6
  br i1 %i.fu, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.fv = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fw = getelementptr i8, ptr %i.fv, i64 -7
  store i8 %i.ew, ptr %i.fw, align 1, !tbaa !8
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.fx = extractelement <16 x i1> %i.fc, i64 7
  br i1 %i.fx, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  %i.fy = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  store i8 %i.ew, ptr %i.fz, align 1, !tbaa !8
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.ga = extractelement <16 x i1> %i.fc, i64 8
  br i1 %i.ga, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  %i.gb = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gc = getelementptr i8, ptr %i.gb, i64 -9
  store i8 %i.ew, ptr %i.gc, align 1, !tbaa !8
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.gd = extractelement <16 x i1> %i.fc, i64 9
  br i1 %i.gd, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  %i.ge = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gf = getelementptr i8, ptr %i.ge, i64 -10
  store i8 %i.ew, ptr %i.gf, align 1, !tbaa !8
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %i.gg = extractelement <16 x i1> %i.fc, i64 10
  br i1 %i.gg, label %pred.store.if138, label %pred.store.continue139

pred.store.if138:                                 ; preds = %pred.store.continue137
  %i.gh = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gi = getelementptr i8, ptr %i.gh, i64 -11
  store i8 %i.ew, ptr %i.gi, align 1, !tbaa !8
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.if138, %pred.store.continue137
  %i.gj = extractelement <16 x i1> %i.fc, i64 11
  br i1 %i.gj, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue139
  %i.gk = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gl = getelementptr i8, ptr %i.gk, i64 -12
  store i8 %i.ew, ptr %i.gl, align 1, !tbaa !8
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue139
  %i.gm = extractelement <16 x i1> %i.fc, i64 12
  br i1 %i.gm, label %pred.store.if142, label %pred.store.continue143

pred.store.if142:                                 ; preds = %pred.store.continue141
  %i.gn = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.go = getelementptr i8, ptr %i.gn, i64 -13
  store i8 %i.ew, ptr %i.go, align 1, !tbaa !8
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.gp = extractelement <16 x i1> %i.fc, i64 13
  br i1 %i.gp, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  %i.gq = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gr = getelementptr i8, ptr %i.gq, i64 -14
  store i8 %i.ew, ptr %i.gr, align 1, !tbaa !8
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %i.gs = extractelement <16 x i1> %i.fc, i64 14
  br i1 %i.gs, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  %i.gt = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gu = getelementptr i8, ptr %i.gt, i64 -15
  store i8 %i.ew, ptr %i.gu, align 1, !tbaa !8
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %i.gv = extractelement <16 x i1> %i.fc, i64 15
  br i1 %i.gv, label %pred.store.if148, label %pred.store.continue149

pred.store.if148:                                 ; preds = %pred.store.continue147
  %i.gw = getelementptr i8, ptr %.val12.val.i, i64 %i.ez
  %i.gx = getelementptr i8, ptr %i.gw, i64 -16
  store i8 %i.ew, ptr %i.gx, align 1, !tbaa !8
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.if148, %pred.store.continue147
  %index.next150 = add nuw i64 %index115, 16      ; 2 uses
  %i.gy = icmp eq i64 %index.next150, %n.vec113
  br i1 %i.gy, label %middle.block151, label %vector.body114, !llvm.loop !86

middle.block151:                                  ; preds = %pred.store.continue149
  %cmp.n152 = icmp eq i64 %.val12.val13.i, %n.vec113
  br i1 %cmp.n152, label %buffreplace.exit.loopexit.i, label %vec.epilog.iter.check156

vec.epilog.iter.check156:                         ; preds = %middle.block151
  %min.epilog.iters.check157 = icmp eq i64 %n.mod.vf112, 0
  br i1 %min.epilog.iters.check157, label %.lr.ph.i.i.preheader, label %vec.epilog.ph158, !prof !81

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check156
  %vec.epilog.resume.val153 = phi i64 [ %n.vec113, %vec.epilog.iter.check156 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec160 = and i64 %.val12.val13.i, -8         ; 2 uses
  %i.gz = and i64 %.val12.val13.i, 7
  %broadcast.splatinsert169 = insertelement <8 x i8> poison, i8 %i.et, i64 0
  %broadcast.splat170 = shufflevector <8 x i8> %broadcast.splatinsert169, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %pred.store.continue174, %vec.epilog.ph158
  %index164 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph158 ], [ %index.next175, %pred.store.continue174 ] ; 2 uses
  %i.ha = sub i64 %.val12.val13.i, %index164      ; 8 uses
  %i.hb = getelementptr i8, ptr %.val12.val.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %wide.load173 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !8
  %reverse174 = shufflevector <8 x i8> %wide.load173, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %15 = icmp eq <8 x i8> %reverse174, %broadcast.splat170 ; 8 uses
  %i.hd = extractelement <8 x i1> %15, i64 0
  br i1 %i.hd, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %vec.epilog.vector.body163
  %16 = getelementptr i8, ptr %i.hb, i64 -1
  store i8 %i.ew, ptr %16, align 1, !tbaa !8
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %vec.epilog.vector.body163
  %17 = extractelement <8 x i1> %15, i64 1
  br i1 %17, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %18 = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %19 = getelementptr i8, ptr %18, i64 -2
  store i8 %i.ew, ptr %19, align 1, !tbaa !8
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %pred.store.if177, %pred.store.continue176
  %20 = extractelement <8 x i1> %15, i64 2
  br i1 %20, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue178
  %21 = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %22 = getelementptr i8, ptr %21, i64 -3
  store i8 %i.ew, ptr %22, align 1, !tbaa !8
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue178
  %23 = extractelement <8 x i1> %15, i64 3
  br i1 %23, label %pred.store.if181, label %pred.store.continue182

pred.store.if181:                                 ; preds = %pred.store.continue180
  %24 = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %25 = getelementptr i8, ptr %24, i64 -4
  store i8 %i.ew, ptr %25, align 1, !tbaa !8
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.if181, %pred.store.continue180
  %26 = extractelement <8 x i1> %15, i64 4
  br i1 %26, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue182
  %27 = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.he = getelementptr i8, ptr %27, i64 -5
  store i8 %i.ew, ptr %i.he, align 1, !tbaa !8
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue182
  %i.hf = extractelement <8 x i1> %15, i64 5
  br i1 %i.hf, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.hg = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hh = getelementptr i8, ptr %i.hg, i64 -6
  store i8 %i.ew, ptr %i.hh, align 1, !tbaa !8
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.hi = extractelement <8 x i1> %15, i64 6
  br i1 %i.hi, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.hj = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hk = getelementptr i8, ptr %i.hj, i64 -7
  store i8 %i.ew, ptr %i.hk, align 1, !tbaa !8
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.hl = extractelement <8 x i1> %15, i64 7
  br i1 %i.hl, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.hm = getelementptr i8, ptr %.val12.val.i, i64 %i.ha
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  store i8 %i.ew, ptr %i.hn, align 1, !tbaa !8
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %index.next175 = add nuw i64 %index164, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next175, %n.vec160
  br i1 %i.ho, label %vec.epilog.middle.block176, label %vec.epilog.vector.body163, !llvm.loop !87

vec.epilog.middle.block176:                       ; preds = %pred.store.continue174
  %cmp.n177 = icmp eq i64 %.val12.val13.i, %n.vec160
  br i1 %cmp.n177, label %buffreplace.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check154, %vec.epilog.iter.check156, %vec.epilog.middle.block176
  %.in.i.i.ph = phi i64 [ %.val12.val13.i, %iter.check154 ], [ %i.ey, %vec.epilog.iter.check156 ], [ %i.gz, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.v
  %.in.i.i = phi i64 [ %i.hp, %bb.v ], [ %.in.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.hp = add i64 %.in.i.i, -1                    ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val12.val.i, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8
  %i.hs = icmp eq i8 %i.hr, %i.et
  br i1 %i.hs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  store i8 %i.ew, ptr %i.hq, align 1, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i, label %buffreplace.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !88

buffreplace.exit.loopexit.i:                      ; preds = %bb.v, %vec.epilog.middle.block176, %middle.block151
  %.pre.i = load ptr, ptr %i.bt, align 8, !tbaa !27
  %.pre20.i = load ptr, ptr %.pre.i, align 8, !tbaa !28
  br label %buffreplace.exit.i

buffreplace.exit.i:                               ; preds = %buffreplace.exit.loopexit.i, %bb.t
  %i.ht = phi ptr [ %.pre20.i, %buffreplace.exit.loopexit.i ], [ %.val12.val.i, %bb.t ]
  %i.hu = tail call i32 @luaO_str2d(ptr noundef %i.ht, ptr noundef %1) #5
  %.not11.i = icmp eq i32 %i.hu, 0
  br i1 %.not11.i, label %bb.w, label %trydecpoint.exit

bb.w:                                             ; preds = %buffreplace.exit.i
  %i.hv = load i8, ptr %i.br, align 8, !tbaa !56  ; 3 uses
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !28 ; 25 uses
  %i.hw = getelementptr i8, ptr %.val.i, i64 8
  %.val.val14.i = load i64, ptr %i.hw, align 8, !tbaa !66 ; 13 uses
  %.not1.i15.i = icmp eq i64 %.val.val14.i, 0
  br i1 %.not1.i15.i, label %buffreplace.exit19.i, label %iter.check227

iter.check227:                                    ; preds = %bb.w
  %min.iters.check179 = icmp ult i64 %.val.val14.i, 8
  br i1 %min.iters.check179, label %.lr.ph.i16.i.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check227
  %min.iters.check181 = icmp ult i64 %.val.val14.i, 16
  br i1 %min.iters.check181, label %vec.epilog.ph231, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %n.mod.vf183 = and i64 %.val.val14.i, 8
  %n.vec184 = and i64 %.val.val14.i, -16          ; 3 uses
  %i.hx = and i64 %.val.val14.i, 15
  %broadcast.splatinsert185 = insertelement <16 x i8> poison, i8 %i.hv, i64 0
  %broadcast.splat186 = shufflevector <16 x i8> %broadcast.splatinsert185, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body187

vector.body187:                                   ; preds = %pred.store.continue222, %vector.ph182
  %index188 = phi i64 [ 0, %vector.ph182 ], [ %index.next223, %pred.store.continue222 ] ; 2 uses
  %i.hy = sub i64 %.val.val14.i, %index188        ; 16 uses
  %i.hz = getelementptr i8, ptr %.val.val.i, i64 %i.hy ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -16
  %wide.load189 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !8
  %reverse190 = shufflevector <16 x i8> %wide.load189, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ib = icmp eq <16 x i8> %reverse190, %broadcast.splat186 ; 16 uses
  %i.ic = extractelement <16 x i1> %i.ib, i64 0
  br i1 %i.ic, label %pred.store.if191, label %pred.store.continue192

pred.store.if191:                                 ; preds = %vector.body187
  %i.id = getelementptr i8, ptr %i.hz, i64 -1
  store i8 46, ptr %i.id, align 1, !tbaa !8
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.if191, %vector.body187
  %i.ie = extractelement <16 x i1> %i.ib, i64 1
  br i1 %i.ie, label %pred.store.if193, label %pred.store.continue194

pred.store.if193:                                 ; preds = %pred.store.continue192
  %i.if = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.ig = getelementptr i8, ptr %i.if, i64 -2
  store i8 46, ptr %i.ig, align 1, !tbaa !8
  br label %pred.store.continue194

pred.store.continue194:                           ; preds = %pred.store.if193, %pred.store.continue192
  %i.ih = extractelement <16 x i1> %i.ib, i64 2
  br i1 %i.ih, label %pred.store.if195, label %pred.store.continue196

pred.store.if195:                                 ; preds = %pred.store.continue194
  %i.ii = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.ij = getelementptr i8, ptr %i.ii, i64 -3
  store i8 46, ptr %i.ij, align 1, !tbaa !8
  br label %pred.store.continue196

pred.store.continue196:                           ; preds = %pred.store.if195, %pred.store.continue194
  %i.ik = extractelement <16 x i1> %i.ib, i64 3
  br i1 %i.ik, label %pred.store.if197, label %pred.store.continue198

pred.store.if197:                                 ; preds = %pred.store.continue196
  %i.il = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.im = getelementptr i8, ptr %i.il, i64 -4
  store i8 46, ptr %i.im, align 1, !tbaa !8
  br label %pred.store.continue198

pred.store.continue198:                           ; preds = %pred.store.if197, %pred.store.continue196
  %i.in = extractelement <16 x i1> %i.ib, i64 4
  br i1 %i.in, label %pred.store.if199, label %pred.store.continue200

pred.store.if199:                                 ; preds = %pred.store.continue198
  %i.io = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.ip = getelementptr i8, ptr %i.io, i64 -5
  store i8 46, ptr %i.ip, align 1, !tbaa !8
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.if199, %pred.store.continue198
  %i.iq = extractelement <16 x i1> %i.ib, i64 5
  br i1 %i.iq, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue200
  %i.ir = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.is = getelementptr i8, ptr %i.ir, i64 -6
  store i8 46, ptr %i.is, align 1, !tbaa !8
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue200
  %i.it = extractelement <16 x i1> %i.ib, i64 6
  br i1 %i.it, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  %i.iu = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.iv = getelementptr i8, ptr %i.iu, i64 -7
  store i8 46, ptr %i.iv, align 1, !tbaa !8
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.iw = extractelement <16 x i1> %i.ib, i64 7
  br i1 %i.iw, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  %i.ix = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.iy = getelementptr i8, ptr %i.ix, i64 -8
  store i8 46, ptr %i.iy, align 1, !tbaa !8
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.iz = extractelement <16 x i1> %i.ib, i64 8
  br i1 %i.iz, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  %i.ja = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jb = getelementptr i8, ptr %i.ja, i64 -9
  store i8 46, ptr %i.jb, align 1, !tbaa !8
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.jc = extractelement <16 x i1> %i.ib, i64 9
  br i1 %i.jc, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.jd = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.je = getelementptr i8, ptr %i.jd, i64 -10
  store i8 46, ptr %i.je, align 1, !tbaa !8
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.jf = extractelement <16 x i1> %i.ib, i64 10
  br i1 %i.jf, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.jg = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jh = getelementptr i8, ptr %i.jg, i64 -11
  store i8 46, ptr %i.jh, align 1, !tbaa !8
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.ji = extractelement <16 x i1> %i.ib, i64 11
  br i1 %i.ji, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.jj = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jk = getelementptr i8, ptr %i.jj, i64 -12
  store i8 46, ptr %i.jk, align 1, !tbaa !8
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.jl = extractelement <16 x i1> %i.ib, i64 12
  br i1 %i.jl, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.jm = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jn = getelementptr i8, ptr %i.jm, i64 -13
  store i8 46, ptr %i.jn, align 1, !tbaa !8
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.jo = extractelement <16 x i1> %i.ib, i64 13
  br i1 %i.jo, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.jp = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jq = getelementptr i8, ptr %i.jp, i64 -14
  store i8 46, ptr %i.jq, align 1, !tbaa !8
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.jr = extractelement <16 x i1> %i.ib, i64 14
  br i1 %i.jr, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %i.js = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jt = getelementptr i8, ptr %i.js, i64 -15
  store i8 46, ptr %i.jt, align 1, !tbaa !8
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.ju = extractelement <16 x i1> %i.ib, i64 15
  br i1 %i.ju, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  %i.jv = getelementptr i8, ptr %.val.val.i, i64 %i.hy
  %i.jw = getelementptr i8, ptr %i.jv, i64 -16
  store i8 46, ptr %i.jw, align 1, !tbaa !8
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %index.next223 = add nuw i64 %index188, 16      ; 2 uses
  %i.jx = icmp eq i64 %index.next223, %n.vec184
  br i1 %i.jx, label %middle.block224, label %vector.body187, !llvm.loop !89

middle.block224:                                  ; preds = %pred.store.continue222
  %cmp.n225 = icmp eq i64 %.val.val14.i, %n.vec184
  br i1 %cmp.n225, label %buffreplace.exit19.i, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block224
  %min.epilog.iters.check230 = icmp eq i64 %n.mod.vf183, 0
  br i1 %min.epilog.iters.check230, label %.lr.ph.i16.i.preheader, label %vec.epilog.ph231, !prof !81

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check229
  %vec.epilog.resume.val226 = phi i64 [ %n.vec184, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec233 = and i64 %.val.val14.i, -8           ; 2 uses
  %i.jy = and i64 %.val.val14.i, 7
  %broadcast.splatinsert250 = insertelement <8 x i8> poison, i8 %i.hv, i64 0
  %broadcast.splat251 = shufflevector <8 x i8> %broadcast.splatinsert250, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %pred.store.continue247, %vec.epilog.ph231
  %index237 = phi i64 [ %vec.epilog.resume.val226, %vec.epilog.ph231 ], [ %index.next248, %pred.store.continue247 ] ; 2 uses
  %i.jz = sub i64 %.val.val14.i, %index237        ; 8 uses
  %i.ka = getelementptr i8, ptr %.val.val.i, i64 %i.jz ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8
  %wide.load254 = load <8 x i8>, ptr %i.kb, align 1, !tbaa !8
  %reverse255 = shufflevector <8 x i8> %wide.load254, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %28 = icmp eq <8 x i8> %reverse255, %broadcast.splat251 ; 8 uses
  %i.kc = extractelement <8 x i1> %28, i64 0
  br i1 %i.kc, label %pred.store.if256, label %pred.store.continue257

pred.store.if256:                                 ; preds = %vec.epilog.vector.body236
  %29 = getelementptr i8, ptr %i.ka, i64 -1
  store i8 46, ptr %29, align 1, !tbaa !8
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %vec.epilog.vector.body236
  %30 = extractelement <8 x i1> %28, i64 1
  br i1 %30, label %pred.store.if258, label %pred.store.continue259

pred.store.if258:                                 ; preds = %pred.store.continue257
  %31 = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %32 = getelementptr i8, ptr %31, i64 -2
  store i8 46, ptr %32, align 1, !tbaa !8
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %33 = extractelement <8 x i1> %28, i64 2
  br i1 %33, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %pred.store.continue259
  %34 = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %35 = getelementptr i8, ptr %34, i64 -3
  store i8 46, ptr %35, align 1, !tbaa !8
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %36 = extractelement <8 x i1> %28, i64 3
  br i1 %36, label %pred.store.if262, label %pred.store.continue263

pred.store.if262:                                 ; preds = %pred.store.continue261
  %37 = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %38 = getelementptr i8, ptr %37, i64 -4
  store i8 46, ptr %38, align 1, !tbaa !8
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %39 = extractelement <8 x i1> %28, i64 4
  br i1 %39, label %pred.store.if240, label %pred.store.continue241

pred.store.if240:                                 ; preds = %pred.store.continue263
  %40 = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.kd = getelementptr i8, ptr %40, i64 -5
  store i8 46, ptr %i.kd, align 1, !tbaa !8
  br label %pred.store.continue241

pred.store.continue241:                           ; preds = %pred.store.if240, %pred.store.continue263
  %i.ke = extractelement <8 x i1> %28, i64 5
  br i1 %i.ke, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %pred.store.continue241
  %i.kf = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.kg = getelementptr i8, ptr %i.kf, i64 -6
  store i8 46, ptr %i.kg, align 1, !tbaa !8
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %i.kh = extractelement <8 x i1> %28, i64 6
  br i1 %i.kh, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  %i.ki = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.kj = getelementptr i8, ptr %i.ki, i64 -7
  store i8 46, ptr %i.kj, align 1, !tbaa !8
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.kk = extractelement <8 x i1> %28, i64 7
  br i1 %i.kk, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  %i.kl = getelementptr i8, ptr %.val.val.i, i64 %i.jz
  %i.km = getelementptr i8, ptr %i.kl, i64 -8
  store i8 46, ptr %i.km, align 1, !tbaa !8
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %index.next248 = add nuw i64 %index237, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next248, %n.vec233
  br i1 %i.kn, label %vec.epilog.middle.block249, label %vec.epilog.vector.body236, !llvm.loop !90

vec.epilog.middle.block249:                       ; preds = %pred.store.continue247
  %cmp.n250 = icmp eq i64 %.val.val14.i, %n.vec233
  br i1 %cmp.n250, label %buffreplace.exit19.i, label %.lr.ph.i16.i.preheader

.lr.ph.i16.i.preheader:                           ; preds = %iter.check227, %vec.epilog.iter.check229, %vec.epilog.middle.block249
  %.in.i17.i.ph = phi i64 [ %.val.val14.i, %iter.check227 ], [ %i.hx, %vec.epilog.iter.check229 ], [ %i.jy, %vec.epilog.middle.block249 ]
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i.preheader, %bb.y
  %.in.i17.i = phi i64 [ %i.ko, %bb.y ], [ %.in.i17.i.ph, %.lr.ph.i16.i.preheader ]
  %i.ko = add i64 %.in.i17.i, -1                  ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 %i.ko ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !8
  %i.kr = icmp eq i8 %i.kq, %i.hv
  br i1 %i.kr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i16.i
  store i8 46, ptr %i.kp, align 1, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i16.i
  %.not.i18.i = icmp eq i64 %i.ko, 0
  br i1 %.not.i18.i, label %buffreplace.exit19.i, label %.lr.ph.i16.i, !llvm.loop !91

buffreplace.exit19.i:                             ; preds = %bb.y, %middle.block224, %vec.epilog.middle.block249, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  call void @luaO_chunkid(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ku, i64 noundef 80) #5, !inline_history !69
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !25
  %i.kz = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.kw, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, i32 noundef %i.ky, ptr noundef nonnull @.str.46) #5, !inline_history !69
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !14
  call fastcc void @save(ptr noundef nonnull readonly %0, i32 noundef 0), !inline_history !71
  %i.lb = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !28
  %i.ld = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.la, ptr noundef nonnull @.str.34, ptr noundef %i.kz, ptr noundef %i.lc) #5, !inline_history !69 ; 0 uses
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !14
  call void @luaD_throw(ptr noundef %i.le, i32 noundef 3) #5, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %trydecpoint.exit

trydecpoint.exit:                                 ; preds = %buffreplace.exit19.i, %buffreplace.exit.i, %buffreplace.exit
  ret void
}

declare hidden i32 @luaO_str2d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !18, i64 56}
!15 = !{!"LexState", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !16, i64 32, !17, i64 48, !18, i64 56, !19, i64 64, !20, i64 72, !21, i64 80, !6, i64 88}
!16 = !{!"Token", !5, i64 0, !6, i64 8}
!17 = !{!"p1 _ZTS9FuncState", !11, i64 0}
!18 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!19 = !{!"p1 _ZTS3Zio", !11, i64 0}
!20 = !{!"p1 _ZTS7Mbuffer", !11, i64 0}
!21 = !{!"p1 _ZTS7TString", !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!15, !21, i64 80}
!25 = !{!15, !5, i64 4}
!26 = distinct !{null}
!27 = !{!15, !20, i64 72}
!28 = !{!29, !23, i64 0}
!29 = !{!"Mbuffer", !23, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"long", !6, i64 0}
!31 = !{!15, !5, i64 16}
!32 = !{!15, !17, i64 48}
!33 = !{!34, !36, i64 8}
!34 = !{!"FuncState", !35, i64 0, !36, i64 8, !17, i64 16, !37, i64 24, !18, i64 32, !38, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !13, i64 72, !6, i64 74, !6, i64 75, !6, i64 196}
!35 = !{!"p1 _ZTS5Proto", !11, i64 0}
!36 = !{!"p1 _ZTS5Table", !11, i64 0}
!37 = !{!"p1 _ZTS8LexState", !11, i64 0}
!38 = !{!"p1 _ZTS8BlockCnt", !11, i64 0}
!39 = !{!40, !5, i64 8}
!40 = !{!"lua_TValue", !6, i64 0, !5, i64 8}
!41 = !{!42, !45, i64 32}
!42 = !{!"lua_State", !43, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !44, i64 16, !44, i64 24, !45, i64 32, !46, i64 40, !47, i64 48, !44, i64 56, !44, i64 64, !46, i64 72, !46, i64 80, !5, i64 88, !5, i64 92, !13, i64 96, !13, i64 98, !6, i64 100, !6, i64 101, !5, i64 104, !5, i64 108, !11, i64 112, !40, i64 120, !40, i64 136, !43, i64 152, !43, i64 160, !48, i64 168, !30, i64 176}
!43 = !{!"p1 _ZTS8GCObject", !11, i64 0}
!44 = !{!"p1 _ZTS10lua_TValue", !11, i64 0}
!45 = !{!"p1 _ZTS12global_State", !11, i64 0}
!46 = !{!"p1 _ZTS8CallInfo", !11, i64 0}
!47 = !{!"p1 int", !11, i64 0}
!48 = !{!"p1 _ZTS11lua_longjmp", !11, i64 0}
!49 = !{!50, !30, i64 120}
!50 = !{!"global_State", !51, i64 0, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 33, !5, i64 36, !43, i64 40, !52, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !29, i64 88, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !5, i64 144, !5, i64 148, !11, i64 152, !40, i64 160, !18, i64 176, !54, i64 184, !6, i64 224, !6, i64 296}
!51 = !{!"stringtable", !52, i64 0, !5, i64 8, !5, i64 12}
!52 = !{!"p2 _ZTS8GCObject", !53, i64 0}
!53 = !{!"any p2 pointer", !11, i64 0}
!54 = !{!"UpVal", !43, i64 0, !6, i64 8, !6, i64 9, !44, i64 16, !6, i64 24}
!55 = !{!50, !30, i64 112}
!56 = !{!15, !6, i64 88}
!57 = !{!15, !5, i64 32}
!58 = !{!15, !19, i64 64}
!59 = !{!15, !5, i64 8}
!60 = !{!29, !30, i64 16}
!61 = !{!62, !30, i64 0}
!62 = !{!"Zio", !30, i64 0, !23, i64 8, !11, i64 16, !11, i64 24, !18, i64 32}
!63 = !{!62, !23, i64 8}
!64 = !{!15, !5, i64 0}
!65 = !{i64 0, i64 4, !4, i64 8, i64 8, !8}
!66 = !{!29, !30, i64 8}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{ptr @luaX_lexerror}
!70 = distinct !{!70, !68}
!71 = distinct !{ptr @luaX_lexerror, null}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !68}
!74 = !{ptr @save, ptr @luaX_lexerror}
!75 = !{ptr @save}
!76 = distinct !{!76, !68}
!77 = distinct !{!77, !68}
!78 = distinct !{!78, !68, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 8, i32 8}
!82 = distinct !{!82, !68, !79, !80}
!83 = distinct !{!83, !68, !80, !79}
!84 = !{!85, !23, i64 0}
!85 = !{!"lconv", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !6, i64 84, !6, i64 85, !6, i64 86, !6, i64 87, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93}
!86 = distinct !{!86, !68, !79, !80}
!87 = distinct !{!87, !68, !79, !80}
!88 = distinct !{!88, !68, !80, !79}
!89 = distinct !{!89, !68, !79, !80}
!90 = distinct !{!90, !68, !79, !80}
!91 = distinct !{!91, !68, !80, !79}
end_hunk_0
