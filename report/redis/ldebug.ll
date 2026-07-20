inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0_@lua_getinfo:bb.a
  %.not31 = icmp eq ptr %i.dy, null
  br i1 %.not31, label %bb.ag, label %bb.ab

auxgetinfo.exit.thread:                           ; preds = %bb.f
  %i.dz = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0, i32 noundef 102) #11
  %.not3148 = icmp eq ptr %i.dz, null
  br i1 %.not3148, label %.thread65, label %bb.ac

bb.ab:                                            ; preds = %auxgetinfo.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 0, ptr %i.ec, align 8, !tbaa !34
  br label %bb.ad

bb.ac:                                            ; preds = %auxgetinfo.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46 ; 2 uses
  store ptr %.028, ptr %i.ee, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 6, ptr %i.ef, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !46
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eg = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %.0394963 = phi ptr [ %.0, %bb.ac ], [ %.040, %bb.ab ]
  %.028365162 = phi ptr [ %.028, %bb.ac ], [ null, %bb.ab ]
  %.023.i5359 = phi i32 [ %.0.i, %bb.ac ], [ 1, %bb.ab ]
  %i.eh = phi ptr [ %.pre, %bb.ac ], [ %i.eb, %bb.ab ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !60
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp slt i64 %i.en, 17
  br i1 %i.eo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.eq, ptr %i.ek, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %auxgetinfo.exit
  %.023.i54 = phi i32 [ 1, %auxgetinfo.exit ], [ %.023.i5359, %bb.af ] ; 3 uses
  %.0283652 = phi ptr [ null, %auxgetinfo.exit ], [ %.028365162, %bb.af ]
  %.03950 = phi ptr [ %.040, %auxgetinfo.exit ], [ %.0394963, %bb.af ]
  %i.er = phi i1 [ true, %auxgetinfo.exit ], [ %i.eg, %bb.af ]
  %i.es = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03950, i32 noundef 76) #11
  %.not32 = icmp eq ptr %i.es, null
  br i1 %.not32, label %bb.am, label %bb.ah

.thread65:                                        ; preds = %auxgetinfo.exit.thread
  %i.et = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0, i32 noundef 76) #11
  %.not3269 = icmp eq ptr %i.et, null
  br i1 %.not3269, label %bb.am, label %.thread73

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.er, label %bb.ai, label %.thread73

.thread73:                                        ; preds = %.thread65, %bb.ah
  %.023.i547078 = phi i32 [ %.023.i54, %bb.ah ], [ %.0.i, %.thread65 ] ; 2 uses
  %.02836527276 = phi ptr [ %.0283652, %bb.ah ], [ %.028, %.thread65 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02836527276, i64 10
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !27
  %.not.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread73, %bb.ah
  %.023.i547079 = phi i32 [ %.023.i547078, %.thread73 ], [ %.023.i54, %bb.ah ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 0, ptr %i.ey, align 8, !tbaa !34
  br label %bb.ak

bb.aj:                                            ; preds = %.thread73
  %i.ez = tail call ptr @luaH_new(ptr noundef %0, i32 noundef 0, i32 noundef 0) #10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02836527276, i64 32 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !54
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 84
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !61
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aj ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = tail call ptr @luaH_setnum(ptr noundef %0, ptr noundef %i.ez, i32 noundef %i.fi) #10 ; 2 uses
  store i32 1, ptr %i.fj, align 8, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 1, ptr %i.fk, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 84
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !61
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next.i, %i.fo
  br i1 %i.fp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 2 uses
  store ptr %i.ez, ptr %i.fr, align 8, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 5, ptr %i.fs, align 8, !tbaa !34
  %.pre.i = load ptr, ptr %i.fq, align 8, !tbaa !46
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i, %bb.ai
  %.023.i547077 = phi i32 [ %.023.i547078, %._crit_edge.i ], [ %.023.i547079, %bb.ai ]
  %i.ft = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp slt i64 %i.fy, 17
  br i1 %i.fz, label %bb.al, label %collectvalidlines.exit

bb.al:                                            ; preds = %bb.ak
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #10
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !46
  br label %collectvalidlines.exit

collectvalidlines.exit:                           ; preds = %bb.ak, %bb.al
  %i.ga = phi ptr [ %i.ft, %bb.ak ], [ %.pre42, %bb.al ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.gc, ptr %i.gb, align 8, !tbaa !46
  br label %bb.am

bb.am:                                            ; preds = %.thread65, %collectvalidlines.exit, %bb.ag
  %.023.i5471 = phi i32 [ %.0.i, %.thread65 ], [ %.023.i547077, %collectvalidlines.exit ], [ %.023.i54, %bb.ag ]
  ret i32 %.023.i5471
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @luaG_checkopenop(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 63
  switch i32 %i.a, label %bb.c [
    i32 28, label %bb.b
    i32 29, label %bb.b
    i32 30, label %bb.b
    i32 34, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = icmp ult i32 %0, 8388608
  %. = zext i1 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @luaG_checkcode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call fastcc i32 @symbexec(ptr noundef %0, i32 noundef %i.b, i32 noundef 255)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @symbexec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64    ; 2 uses
  %i.e = icmp ult i8 %i.d, -5
  br i1 %i.e, label %bb.b, label %.critedge232

bb.b:                                             ; preds = %bb.a
  %i.f = zext i8 %i.d to i32                      ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.k = load i8, ptr %i.j, align 2, !tbaa !66    ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %i.i
  %.not.i = icmp samesign ugt i32 %i.n, %i.f
  br i1 %.not.i, label %.critedge232, label %3

3:                                                ; preds = %bb.b
  %4 = and i32 %i.l, 4
  %.not17.i = icmp eq i32 %4, 0
  %.not18.i = trunc i8 %i.k to i1
  %or.cond.i = or i1 %.not17.i, %.not18.i
  br i1 %or.cond.i, label %bb.c, label %.critedge232

bb.c:                                             ; preds = %3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load i8, ptr %i.q, align 8, !tbaa !68
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.not19.i = icmp sgt i32 %i.p, %i.s
  br i1 %.not19.i, label %.critedge232, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61   ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.b
  %i.w = icmp eq i32 %i.u, 0
  %or.cond20.i = or i1 %i.w, %i.v
  %i.x = icmp sgt i32 %i.b, 0
  %or.cond21.i = and i1 %i.x, %or.cond20.i
  br i1 %or.cond21.i, label %precheck.exit, label %.critedge232

precheck.exit:                                    ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 5 uses
  %i.aa = zext nneg i32 %i.b to i64
  %i.ab = getelementptr [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = and i32 %i.ad, 63
  %.not = icmp eq i32 %i.ae, 30
  br i1 %.not, label %bb.e, label %.critedge232

bb.e:                                             ; preds = %precheck.exit
  %i.af = add nsw i32 %i.b, -1                    ; 3 uses
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not204 = icmp eq i32 %2, 255                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = and i8 %i.k, 6
  %or.cond230 = icmp eq i8 %i.al, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph281, %bb.bg
  %.0162279 = phi i32 [ 0, %.lr.ph281 ], [ %i.ff, %bb.bg ] ; 31 uses
  %.0168278 = phi i32 [ %i.af, %.lr.ph281 ], [ %.2170, %bb.bg ] ; 2 uses
  %i.am = sext i32 %.0162279 to i64               ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.am ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 7 uses
  %i.ap = and i32 %i.ao, 63                       ; 3 uses
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = and i32 %i.aq, 255                      ; 12 uses
  %i.as = icmp samesign ult i32 %i.ap, 38
  %i.at = icmp samesign ult i32 %i.ar, %i.f
  %or.cond285 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond285, label %bb.g, label %.critedge232

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27  ; 4 uses
  %i.ax = zext i8 %i.aw to i32                    ; 4 uses
  %i.ay = and i32 %i.ax, 3
  switch i32 %i.ay, label %default.unreachable306 [
    i32 0, label %bb.h
    i32 1, label %bb.s
    i32 2, label %bb.u
    i32 3, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.az = lshr i32 %i.ao, 23                      ; 9 uses
  %i.ba = lshr i32 %i.ax, 4
  %i.bb = and i32 %i.ba, 3
  switch i32 %i.bb, label %default.unreachable306 [
    i32 0, label %bb.i
    i32 3, label %bb.k
    i32 2, label %bb.j
    i32 1, label %checkArgMode.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp eq i32 %i.az, 0
  br i1 %i.bc, label %checkArgMode.exit, label %.critedge232

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp samesign ult i32 %i.az, %i.f
  br i1 %i.bd, label %checkArgMode.exit, label %.critedge232

bb.k:                                             ; preds = %bb.h
  %.not.i235 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i235, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %i.az, 255
  %i.bf = load i32, ptr %i.ah, align 4, !tbaa !69
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %checkArgMode.exit, label %.critedge232

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp samesign ult i32 %i.az, %i.f
  br i1 %i.bh, label %checkArgMode.exit, label %.critedge232

checkArgMode.exit:                                ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %i.bi = lshr i32 %i.ao, 14                      ; 2 uses
  %i.bj = and i32 %i.bi, 511                      ; 8 uses
  %i.bk = lshr i8 %i.aw, 2
  %i.bl = and i8 %i.bk, 3
  switch i8 %i.bl, label %default.unreachable306 [
    i8 0, label %bb.n
    i8 3, label %bb.p
    i8 2, label %bb.o
    i8 1, label %.critedge
  ]

bb.n:                                             ; preds = %checkArgMode.exit
  %i.bm = icmp eq i32 %i.bj, 0
  br i1 %i.bm, label %.critedge, label %.critedge232

bb.o:                                             ; preds = %checkArgMode.exit
  %i.bn = icmp samesign ult i32 %i.bj, %i.f
  br i1 %i.bn, label %.critedge, label %.critedge232

bb.p:                                             ; preds = %checkArgMode.exit
  %.not.i237 = icmp samesign ult i32 %i.bj, 256
  br i1 %.not.i237, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.bi, 255
  %i.bp = load i32, ptr %i.ah, align 4, !tbaa !69
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.critedge, label %.critedge232

bb.r:                                             ; preds = %bb.p
  %i.br = icmp samesign ult i32 %i.bj, %i.f
  br i1 %i.br, label %.critedge, label %.critedge232

bb.s:                                             ; preds = %bb.g
  %i.bs = lshr i32 %i.ao, 14                      ; 3 uses
  %i.bt = and i32 %i.ax, 48
  %i.bu = icmp eq i32 %i.bt, 48
  br i1 %i.bu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.ah, align 4, !tbaa !69
  %i.bw = icmp slt i32 %i.bs, %i.bv
  br i1 %i.bw, label %.critedge, label %.critedge232

bb.u:                                             ; preds = %bb.g
  %i.bx = lshr i32 %i.ao, 14
  %i.by = add nsw i32 %i.bx, -131071              ; 5 uses
  %i.bz = and i32 %i.ax, 48
  %i.ca = icmp eq i32 %i.bz, 32
  br i1 %i.ca, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i32 %.0162279, 1
  %i.cc = add nsw i32 %i.cb, %i.by                ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  %i.ce = icmp slt i32 %i.cc, %i.b
  %or.cond256 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond256, label %bb.w, label %.critedge232

bb.w:                                             ; preds = %bb.v
  %.not194 = icmp eq i32 %i.cc, 0
  br i1 %.not194, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.cf = add i32 %i.by, %.0162279
  %wide.trip.count = zext nneg i32 %i.cc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = and i32 %i.ck, 8372287
  %or.cond221 = icmp eq i32 %i.cl, 34
  br i1 %or.cond221, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.x, %.lr.ph
  %.0178.lcssa.ph = phi i32 [ %i.cc, %bb.x ], [ %i.cg, %.lr.ph ]
  %5 = trunc nuw i32 %.0178.lcssa.ph to i1
  br i1 %5, label %.critedge232, label %.critedge

default.unreachable306:                           ; preds = %checkArgMode.exit, %bb.h, %bb.g
  unreachable

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %checkArgMode.exit, %bb.w, %._crit_edge, %bb.u, %bb.s, %bb.t, %bb.g
  %.0180 = phi i32 [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.u ], [ 0, %._crit_edge ], [ %i.bj, %checkArgMode.exit ], [ 0, %bb.n ], [ %i.bj, %bb.o ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ] ; 7 uses
  %.0179 = phi i32 [ %i.by, %bb.w ], [ %i.bs, %bb.t ], [ %i.bs, %bb.s ], [ 0, %bb.g ], [ %i.by, %bb.u ], [ %i.by, %._crit_edge ], [ %i.az, %checkArgMode.exit ], [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.q ], [ %i.az, %bb.r ] ; 16 uses
  %i.cm = and i8 %i.aw, 64
  %.not197 = icmp ne i8 %i.cm, 0
  %i.cn = icmp eq i32 %i.ar, %2
  %or.cond222 = and i1 %i.cn, %.not197
  %.1169 = select i1 %or.cond222, i32 %.0162279, i32 %.0168278 ; 17 uses
  %.not198 = icmp sgt i8 %i.aw, -1
  br i1 %.not198, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.co = add nsw i32 %.0162279, 2
  %i.cp = icmp slt i32 %i.co, %i.b
  br i1 %i.cp, label %bb.z, label %.critedge232

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr i8, ptr %i.an, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = and i32 %i.cr, 63
  %i.ct = icmp eq i32 %i.cs, 22
  br i1 %i.ct, label %bb.aa, label %.critedge232

bb.aa:                                            ; preds = %bb.z, %.critedge
  switch i32 %i.ap, label %bb.bg [
    i32 2, label %bb.ab
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 8, label %bb.af
    i32 5, label %bb.ag
    i32 7, label %bb.ag
    i32 11, label %bb.ah
    i32 21, label %bb.aj
    i32 33, label %bb.ak
    i32 31, label %bb.an
    i32 32, label %bb.an
    i32 22, label %bb.ao
    i32 28, label %bb.ap
    i32 29, label %bb.ap
    i32 30, label %bb.au
    i32 34, label %bb.aw
    i32 36, label %bb.az
    i32 37, label %bb.bc
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cu = icmp eq i32 %.0180, 1
  br i1 %i.cu, label %bb.ac, label %bb.bg

bb.ac:                                            ; preds = %bb.ab
  %i.cv = add nsw i32 %.0162279, 2
  %i.cw = icmp slt i32 %i.cv, %i.b
  br i1 %i.cw, label %bb.ad, label %.critedge232

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr i8, ptr %i.an, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = and i32 %i.cy, 8372287
  %or.cond223 = icmp eq i32 %i.cz, 34
  br i1 %or.cond223, label %.critedge232, label %bb.bg

bb.ae:                                            ; preds = %bb.aa
  %.not216 = icmp sgt i32 %i.ar, %2
  %.not217 = icmp sgt i32 %2, %.0179
  %or.cond224 = select i1 %.not216, i1 true, i1 %.not217
  %spec.select233 = select i1 %or.cond224, i32 %.1169, i32 %.0162279
  br label %bb.bg

bb.af:                                            ; preds = %bb.aa, %bb.aa
  %i.da = icmp slt i32 %.0179, %i.s
  br i1 %i.da, label %bb.bg, label %.critedge232

bb.ag:                                            ; preds = %bb.aa, %bb.aa
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !71
  %i.dc = sext i32 %.0179 to i64
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !34
  %i.dg = icmp eq i32 %i.df, 4
  br i1 %i.dg, label %bb.bg, label %.critedge232

bb.ah:                                            ; preds = %bb.aa
  %i.dh = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.di = icmp samesign ult i32 %i.dh, %i.f
  br i1 %i.di, label %bb.ai, label %.critedge232

bb.ai:                                            ; preds = %bb.ah
  %i.dj = icmp eq i32 %2, %i.dh
  %spec.select = select i1 %i.dj, i32 %.0162279, i32 %.1169
  br label %bb.bg

bb.aj:                                            ; preds = %bb.aa
  %i.dk = icmp slt i32 %.0179, %.0180
  br i1 %i.dk, label %bb.bg, label %.critedge232

bb.ak:                                            ; preds = %bb.aa
  %.not214 = icmp eq i32 %.0180, 0
  br i1 %.not214, label %.critedge232, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = add nuw nsw i32 %i.ar, 2                ; 2 uses
  %i.dm = add nuw nsw i32 %.0180, %i.dl
  %i.dn = icmp samesign ult i32 %i.dm, %i.f
  br i1 %i.dn, label %bb.am, label %.critedge232

bb.am:                                            ; preds = %bb.al
  %.not215 = icmp slt i32 %2, %i.dl
  %spec.select225 = select i1 %.not215, i32 %.1169, i32 %.0162279
  br label %bb.bg

bb.an:                                            ; preds = %bb.aa, %bb.aa
  %i.do = add nuw nsw i32 %i.ar, 3
  %i.dp = icmp samesign ult i32 %i.do, %i.f
  br i1 %i.dp, label %bb.ao, label %.critedge232

bb.ao:                                            ; preds = %bb.an, %bb.aa
  %i.dq = add nsw i32 %.0162279, 1
  %i.dr = add nsw i32 %i.dq, %.0179               ; 2 uses
  %i.ds = icmp sge i32 %.0162279, %i.dr
  %.not213 = icmp sgt i32 %i.dr, %1
  %i.dt = or i1 %i.ds, %.not213
  %or.cond227 = select i1 %.not204, i1 true, i1 %i.dt
  %i.du = select i1 %or.cond227, i32 0, i32 %.0179
  %.1163 = add nsw i32 %i.du, %.0162279
  br label %bb.bg

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %.not206 = icmp ne i32 %.0179, 0
  %i.dv = add nsw i32 %.0179, %i.ar
  %.not207 = icmp sgt i32 %i.dv, %i.f
  %or.cond257 = select i1 %.not206, i1 %.not207, i1 false
  br i1 %or.cond257, label %.critedge232, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = icmp eq i32 %.0180, 0
  br i1 %i.dw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dx = getelementptr i8, ptr %i.an, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %i.dz = and i32 %i.dy, 63
  switch i32 %i.dz, label %.critedge232 [
    i32 28, label %luaG_checkopenop.exit
    i32 29, label %luaG_checkopenop.exit
    i32 30, label %luaG_checkopenop.exit
    i32 34, label %luaG_checkopenop.exit
  ]

luaG_checkopenop.exit:                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %6 = icmp ult i32 %i.dy, 8388608
  br i1 %6, label %bb.at, label %.critedge232

bb.as:                                            ; preds = %bb.aq
  %i.ea = add nsw i32 %.0180, -1                  ; 2 uses
  %.not208 = icmp ne i32 %i.ea, 0
  %i.eb = add nuw nsw i32 %i.ea, %i.ar
  %.not209 = icmp sgt i32 %i.eb, %i.f
  %or.cond258 = select i1 %.not208, i1 %.not209, i1 false
  br i1 %or.cond258, label %.critedge232, label %bb.at

bb.at:                                            ; preds = %bb.as, %luaG_checkopenop.exit
  %.not211 = icmp slt i32 %2, %i.ar
  %spec.select228 = select i1 %.not211, i32 %.0168278, i32 %.0162279
  br label %bb.bg

bb.au:                                            ; preds = %bb.aa
  %i.ec = icmp sgt i32 %.0179, 1
  br i1 %i.ec, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.ed = add nsw i32 %i.ar, -1
  %i.ee = add nsw i32 %i.ed, %.0179
  %.not205 = icmp sgt i32 %i.ee, %i.f
  br i1 %.not205, label %.critedge232, label %bb.bg

bb.aw:                                            ; preds = %bb.aa
  %i.ef = icmp slt i32 %.0179, 1
  %i.eg = add nuw nsw i32 %.0179, %i.ar
  %i.eh = icmp slt i32 %i.eg, %i.f
  %or.cond260 = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond260, label %bb.ax, label %.critedge232

bb.ax:                                            ; preds = %bb.aw
  %i.ei = icmp eq i32 %.0180, 0
  br i1 %i.ei, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.ej = add nsw i32 %.0162279, 1                ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %i.af
  br i1 %i.ek, label %bb.bg, label %.critedge232

bb.az:                                            ; preds = %bb.aa
  %i.el = load i32, ptr %i.ai, align 8, !tbaa !72
  %i.em = icmp slt i32 %.0179, %i.el
  br i1 %i.em, label %bb.ba, label %.critedge232

bb.ba:                                            ; preds = %bb.az
  %i.en = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.eo = sext i32 %.0179 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 112
  %i.es = load i8, ptr %i.er, align 8, !tbaa !68  ; 2 uses
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = add nsw i32 %.0162279, %i.et            ; 2 uses
  %i.ev = icmp slt i32 %i.eu, %i.b
  br i1 %i.ev, label %.preheader, label %.critedge232

.preheader:                                       ; preds = %bb.ba
  %.not203274 = icmp eq i8 %i.es, 0
  br i1 %.not203274, label %._crit_edge277, label %.lr.ph276.preheader

.lr.ph276.preheader:                              ; preds = %.preheader
  %i.ew = add nuw nsw i32 %i.et, 1
  %wide.trip.count291 = zext nneg i32 %i.ew to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.am
  br label %.lr.ph276

bb.bb:                                            ; preds = %.lr.ph276
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge277, label %.lr.ph276, !llvm.loop !76

.lr.ph276:                                        ; preds = %.lr.ph276.preheader, %bb.bb
  %indvars.iv288 = phi i64 [ 1, %.lr.ph276.preheader ], [ %indvars.iv.next289, %bb.bb ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv288
  %i.ex = load i32, ptr %gep, align 4, !tbaa !4
  %i.ey = and i32 %i.ex, 59
  %or.cond = icmp eq i32 %i.ey, 0
  br i1 %or.cond, label %bb.bb, label %.critedge232

._crit_edge277:                                   ; preds = %bb.bb, %.preheader
  %spec.select229 = select i1 %.not204, i32 %.0162279, i32 %i.eu
  br label %bb.bg

bb.bc:                                            ; preds = %bb.aa
  br i1 %or.cond230, label %bb.bd, label %.critedge232

bb.bd:                                            ; preds = %bb.bc
  %i.ez = icmp eq i32 %.0179, 0
  br i1 %i.ez, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fa = getelementptr i8, ptr %i.an, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 2 uses
  %i.fc = and i32 %i.fb, 63
  switch i32 %i.fc, label %.critedge232 [
    i32 28, label %luaG_checkopenop.exit243
    i32 29, label %luaG_checkopenop.exit243
    i32 30, label %luaG_checkopenop.exit243
    i32 34, label %luaG_checkopenop.exit243
  ]

luaG_checkopenop.exit243:                         ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %i.fd = icmp ugt i32 %i.fb, 8388607
  br i1 %i.fd, label %.critedge232, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.fe = add nsw i32 %.0179, -1
  %.old = add nsw i32 %i.fe, %i.ar
  %.not202.old = icmp sgt i32 %.old, %i.f
  br i1 %.not202.old, label %.critedge232, label %bb.bg

bb.bg:                                            ; preds = %luaG_checkopenop.exit243, %._crit_edge277, %bb.ae, %bb.at, %bb.am, %bb.ai, %bb.aa, %bb.bf, %bb.ax, %bb.ay, %bb.au, %bb.av, %bb.aj, %bb.ag, %bb.af, %bb.ab, %bb.ad, %bb.ao
  %.2170 = phi i32 [ %.1169, %bb.aa ], [ %.1169, %bb.ad ], [ %.1169, %bb.bf ], [ %.1169, %bb.ab ], [ %.1169, %bb.au ], [ %.1169, %._crit_edge277 ], [ %.1169, %bb.av ], [ %.1169, %bb.af ], [ %.1169, %bb.ag ], [ %.1169, %bb.ax ], [ %spec.select233, %bb.ae ], [ %.1169, %bb.aj ], [ %spec.select, %bb.ai ], [ %.1169, %bb.ay ], [ %.1169, %bb.ao ], [ %spec.select225, %bb.am ], [ %spec.select228, %bb.at ], [ %.1169, %luaG_checkopenop.exit243 ] ; 2 uses
  %.4166 = phi i32 [ %.0162279, %bb.aa ], [ %.0162279, %bb.ad ], [ %.0162279, %bb.bf ], [ %.0162279, %bb.ab ], [ %.0162279, %bb.au ], [ %spec.select229, %._crit_edge277 ], [ %.0162279, %bb.av ], [ %.0162279, %bb.af ], [ %.0162279, %bb.ag ], [ %.0162279, %bb.ax ], [ %.0162279, %bb.ae ], [ %.0162279, %bb.aj ], [ %.0162279, %bb.ai ], [ %i.ej, %bb.ay ], [ %.1163, %bb.ao ], [ %.0162279, %bb.am ], [ %.0162279, %bb.at ], [ %.0162279, %luaG_checkopenop.exit243 ]
  %i.ff = add nsw i32 %.4166, 1                   ; 2 uses
  %i.fg = icmp slt i32 %i.ff, %1
  br i1 %i.fg, label %bb.f, label %._crit_edge282, !llvm.loop !77

._crit_edge282:                                   ; preds = %bb.bg, %bb.e
  %.0168.lcssa = phi i32 [ %i.af, %bb.e ], [ %.2170, %bb.bg ]
  %i.fh = sext i32 %.0168.lcssa to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  br label %.critedge232

.critedge232:                                     ; preds = %bb.aw, %bb.as, %bb.ap, %bb.be, %bb.ba, %bb.az, %bb.ar, %bb.q, %bb.r, %bb.o, %bb.n, %bb.l, %bb.m, %bb.j, %bb.i, %bb.ac, %bb.z, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.aj, %bb.al, %luaG_checkopenop.exit, %bb.an, %bb.av, %bb.ay, %luaG_checkopenop.exit243, %bb.bc, %bb.y, %._crit_edge, %bb.t, %bb.f, %bb.v, %bb.bf, %.lr.ph276, %bb.a, %bb.b, %3, %bb.c, %bb.d, %precheck.exit, %._crit_edge282
  %.10 = phi i32 [ 0, %precheck.exit ], [ %i.fj, %._crit_edge282 ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %3 ], [ 0, %bb.b ], [ 0, %.lr.ph276 ], [ 0, %bb.d ], [ 0, %bb.bf ], [ 0, %bb.v ], [ 0, %bb.f ], [ 0, %bb.t ], [ 0, %._crit_edge ], [ 0, %bb.y ], [ 0, %bb.bc ], [ 0, %luaG_checkopenop.exit243 ], [ 0, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.an ], [ 0, %luaG_checkopenop.exit ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.ar ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.be ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.aw ]
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_typeerror(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %.thread

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %.thread, !llvm.loop !80

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.o = icmp eq ptr %1, %.07.i
  br i1 %i.o, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 4
  %i.v = trunc i64 %i.u to i32
  %i.w = call fastcc ptr @getobjname(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef %i.v, ptr noundef nonnull %i.a) ; 2 uses
  %.not15 = icmp eq ptr %i.w, null
  br i1 %.not15, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull %i.w, ptr noundef %i.x, ptr noundef %i.f)
  br label %bb.e

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @getobjname(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %.tr56 = phi i32 [ %2, %bb.a ], [ %i.am, %bb.g ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %tailrecurse
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !27
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 7 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.n = icmp eq ptr %1, %i.m
  br i1 %i.n, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %currentpc.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  store ptr %i.o, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  %.pre9.i = load ptr, ptr %i.d, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre9.i, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %currentpc.exit

currentpc.exit:                                   ; preds = %._crit_edge.i, %bb.d
  %i.p = phi ptr [ %i.l, %._crit_edge.i ], [ %.pre, %bb.d ]
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  %i.z = add nsw i32 %.tr56, 1
  %i.aa = tail call ptr @luaF_getlocalname(ptr noundef %i.l, i32 noundef %i.z, i32 noundef %i.y) #10 ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !78
  %.not45 = icmp eq ptr %i.aa, null
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %currentpc.exit
  %i.ab = tail call fastcc i32 @symbexec(ptr noundef %i.l, i32 noundef %i.y, i32 noundef %.tr56) ; 9 uses
  %i.ac = and i32 %i.ab, 63
  switch i32 %i.ac, label %.thread [
    i32 5, label %bb.f
    i32 0, label %bb.g
    i32 6, label %bb.h
    i32 4, label %bb.k
    i32 11, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr i32 %i.ab, 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = lshr i32 %i.ab, 6
  %i.al = and i32 %i.ak, 255
  %i.am = lshr i32 %i.ab, 23                      ; 2 uses
  %.not47 = icmp samesign ult i32 %i.am, %i.al
  br i1 %.not47, label %tailrecurse, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.an = and i32 %i.ab, 4194304
  %.not.i48.not.not = icmp eq i32 %i.an, 0
  br i1 %.not.i48.not.not, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = lshr i32 %i.ab, 14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !71
  %i.ar = and i32 %i.ao, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  br label %.thread.sink.split

bb.k:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %.not46 = icmp eq ptr %i.ba, null
  br i1 %.not46, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = lshr i32 %i.ab, 23
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.e
  %i.bg = and i32 %i.ab, 4194304
  %.not.i50.not.not = icmp eq i32 %i.bg, 0
  br i1 %.not.i50.not.not, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = lshr i32 %i.ab, 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !71
  %i.bk = and i32 %i.bh, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !34
  %i.bp = icmp eq i32 %i.bo, 4
  br i1 %i.bp, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
end_hunk_0
