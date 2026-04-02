begin_hunk_0
; Function Attrs: nounwind uwtable
define hidden ptr @luaU_undump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
  %4 = alloca %struct.LoadState, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = load i8, ptr %3, align 1, !tbaa !8
  switch i8 %i.c, label %bb.c [
    i8 64, label %bb.b
end_hunk_0
begin_hunk_1
  store ptr %1, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 1635077147, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <8 x i8> <i8 81, i8 0, i8 1, i8 4, i8 8, i8 4, i8 8, i8 0>, ptr %i.h, align 4, !tbaa !8
  %i.i = call i64 @luaZ_read(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 12) #7
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %LoadBlock.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.1.sink, ptr noundef nonnull @.str.4) #7 ; 0 uses
  call void @luaD_throw(ptr noundef %0, i32 noundef 3) #7
  br label %LoadBlock.exit.i

LoadBlock.exit.i:                                 ; preds = %bb.e, %bb.d
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.a, ptr noundef nonnull dereferenceable(12) %i.b, i64 12)
  %.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i, label %LoadHeader.exit, label %bb.f

bb.f:                                             ; preds = %LoadBlock.exit.i
  %i.k = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.1.sink, ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @luaD_throw(ptr noundef %0, i32 noundef 3) #7
  br label %LoadHeader.exit

LoadHeader.exit:                                  ; preds = %LoadBlock.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.l = call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef 2) #7
  %i.m = call fastcc ptr @LoadFunction(ptr noundef %4, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret ptr %i.m
}

end_hunk_1
begin_hunk_2
bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.5, ptr noundef %i.n, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @luaD_throw(ptr noundef %i.p, i32 noundef 3) #7
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %i.r = tail call ptr @luaF_newproto(ptr noundef %i.q) #7 ; 30 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
end_hunk_2
begin_hunk_3
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @luaD_growstack(ptr noundef nonnull %i.w, i32 noundef 1) #7
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !16  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre79, i64 16
  %.pre80 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
end_hunk_3
begin_hunk_4
  %i.ao = tail call fastcc i32 @LoadInt(ptr noundef %0)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.as = call i64 @luaZ_read(ptr noundef %i.ar, ptr noundef nonnull %i.g, i64 noundef 1) #7
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %LoadChar.exit, label %bb.f

end_hunk_4
begin_hunk_5
  %i.at = load ptr, ptr %0, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.aw = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.at, ptr noundef nonnull @.str.5, ptr noundef %i.av, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ax, i32 noundef 3) #7
  br label %LoadChar.exit

LoadChar.exit:                                    ; preds = %bb.e, %bb.f
  %i.ay = load i8, ptr %i.g, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store i8 %i.ay, ptr %i.az, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bb = call i64 @luaZ_read(ptr noundef %i.ba, ptr noundef nonnull %i.f, i64 noundef 1) #7
  %.not.i.i39 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i39, label %LoadChar.exit40, label %bb.g

end_hunk_5
begin_hunk_6
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bf = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bc, ptr noundef nonnull @.str.5, ptr noundef %i.be, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.bg, i32 noundef 3) #7
  br label %LoadChar.exit40

LoadChar.exit40:                                  ; preds = %LoadChar.exit, %bb.g
  %i.bh = load i8, ptr %i.f, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 113
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bk = call i64 @luaZ_read(ptr noundef %i.bj, ptr noundef nonnull %i.e, i64 noundef 1) #7
  %.not.i.i41 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i41, label %LoadChar.exit42, label %bb.h

end_hunk_6
begin_hunk_7
  %i.bl = load ptr, ptr %0, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bo = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bl, ptr noundef nonnull @.str.5, ptr noundef %i.bn, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.bp, i32 noundef 3) #7
  br label %LoadChar.exit42

LoadChar.exit42:                                  ; preds = %LoadChar.exit40, %bb.h
  %i.bq = load i8, ptr %i.e, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bt = call i64 @luaZ_read(ptr noundef %i.bs, ptr noundef nonnull %i.d, i64 noundef 1) #7
  %.not.i.i43 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i43, label %LoadChar.exit44, label %bb.i

end_hunk_7
begin_hunk_8
  %i.bu = load ptr, ptr %0, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.bx = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bu, ptr noundef nonnull @.str.5, ptr noundef %i.bw, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.by, i32 noundef 3) #7
  br label %LoadChar.exit44

LoadChar.exit44:                                  ; preds = %LoadChar.exit42, %bb.i
  %i.bz = load i8, ptr %i.d, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 115
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !45
  %i.cb = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0) ; 4 uses
end_hunk_8
begin_hunk_9
bb.j:                                             ; preds = %LoadChar.exit44
  %i.ce = sext i32 %i.cb to i64
  %i.cf = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.cg = call ptr @luaM_realloc_(ptr noundef %i.cd, ptr noundef null, i64 noundef 0, i64 noundef %i.cf) #7
  br label %bb.l

bb.k:                                             ; preds = %LoadChar.exit44
  %i.ch = call ptr @luaM_toobig(ptr noundef %i.cd) #7
  %.pre.i = sext i32 %i.cb to i64
  %.pre10.i = shl nsw i64 %.pre.i, 2
  br label %bb.l
end_hunk_9
begin_hunk_10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i32 %i.cb, ptr %i.ck, align 8, !tbaa !47
  %i.cl = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.cm = call i64 @luaZ_read(ptr noundef %i.cl, ptr noundef %i.ci, i64 noundef %.pre-phi11.i) #7
  %.not.i.i45 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i45, label %LoadCode.exit, label %bb.m

end_hunk_10
begin_hunk_11
  %i.cn = load ptr, ptr %0, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9
  %i.cq = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.cn, ptr noundef nonnull @.str.5, ptr noundef %i.cp, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.cr, i32 noundef 3) #7
  br label %LoadCode.exit

LoadCode.exit:                                    ; preds = %bb.l, %bb.m
end_hunk_11
begin_hunk_12
bb.n:                                             ; preds = %LoadCode.exit
  %i.cv = sext i32 %i.cs to i64
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = call ptr @luaM_realloc_(ptr noundef %i.cu, ptr noundef null, i64 noundef 0, i64 noundef %i.cw) #7 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 76
end_hunk_12
begin_hunk_13
  br label %.lr.ph

.preheader56:                                     ; preds = %LoadCode.exit
  %i.dc = call ptr @luaM_toobig(ptr noundef %i.cu) #7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 76
end_hunk_13
begin_hunk_14
  %indvars.iv66 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next67, %bb.x ] ; 2 uses
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv66 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ea = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.eb = call i64 @luaZ_read(ptr noundef %i.ea, ptr noundef nonnull %i.a, i64 noundef 1) #7
  %.not.i.i53 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i53, label %LoadChar.exit55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load ptr, ptr %0, align 8, !tbaa !16
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.ee = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ec, ptr noundef nonnull @.str.5, ptr noundef %i.ed, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ef, i32 noundef 3) #7
  br label %LoadChar.exit55

LoadChar.exit55:                                  ; preds = %bb.o, %bb.p
  %i.eg = load i8, ptr %i.a, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i8 %i.eg, label %bb.w [
    i8 0, label %bb.q
    i8 1, label %bb.r
end_hunk_14
begin_hunk_15
  br label %bb.x

bb.r:                                             ; preds = %LoadChar.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ei = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.ej = call i64 @luaZ_read(ptr noundef %i.ei, ptr noundef nonnull %i.b, i64 noundef 1) #7
  %.not.i.i50 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i50, label %LoadChar.exit52, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %0, align 8, !tbaa !16
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.em = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ek, ptr noundef nonnull @.str.5, ptr noundef %i.el, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.en, i32 noundef 3) #7
  br label %LoadChar.exit52

LoadChar.exit52:                                  ; preds = %bb.r, %bb.s
  %i.eo = load i8, ptr %i.b, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ep = icmp ne i8 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  store i32 %i.eq, ptr %i.dz, align 8, !tbaa !8
end_hunk_15
begin_hunk_16
  br label %bb.x

bb.t:                                             ; preds = %LoadChar.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.es = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.et = call i64 @luaZ_read(ptr noundef %i.es, ptr noundef nonnull %i.c, i64 noundef 8) #7
  %.not.i.i48 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i48, label %LoadNumber.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = load ptr, ptr %0, align 8, !tbaa !16
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.ew = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.eu, ptr noundef nonnull @.str.5, ptr noundef %i.ev, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.ex = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ex, i32 noundef 3) #7
  br label %LoadNumber.exit

LoadNumber.exit:                                  ; preds = %bb.t, %bb.u
  %i.ey = load double, ptr %i.c, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store double %i.ey, ptr %i.dz, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 3, ptr %i.ez, align 8, !tbaa !31
end_hunk_16
begin_hunk_17
bb.w:                                             ; preds = %LoadChar.exit55
  %i.fc = load ptr, ptr %0, align 8, !tbaa !16
  %i.fd = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.fe = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.fc, ptr noundef nonnull @.str.5, ptr noundef %i.fd, ptr noundef nonnull @.str.9) #7 ; 0 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ff, i32 noundef 3) #7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %LoadNumber.exit, %LoadChar.exit52, %bb.q
end_hunk_17
begin_hunk_18
bb.y:                                             ; preds = %._crit_edge
  %i.fj = sext i32 %i.fg to i64
  %i.fk = shl nsw i64 %i.fj, 3
  %i.fl = call ptr @luaM_realloc_(ptr noundef %i.fi, ptr noundef null, i64 noundef 0, i64 noundef %i.fk) #7 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 88
end_hunk_18
begin_hunk_19
  br i1 %i.fo, label %.lr.ph64.preheader, label %LoadConstants.exit

.preheader:                                       ; preds = %._crit_edge
  %i.fp = call ptr @luaM_toobig(ptr noundef %i.fi) #7
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 88
end_hunk_19
begin_hunk_20
bb.z:                                             ; preds = %LoadConstants.exit
  %i.gb = sext i32 %i.fy to i64
  %i.gc = shl nsw i64 %i.gb, 2                    ; 2 uses
  %i.gd = call ptr @luaM_realloc_(ptr noundef %i.ga, ptr noundef null, i64 noundef 0, i64 noundef %i.gc) #7
  br label %bb.ab

bb.aa:                                            ; preds = %LoadConstants.exit
  %i.ge = call ptr @luaM_toobig(ptr noundef %i.ga) #7
  %.pre.i46 = sext i32 %i.fy to i64
  %.pre80.i = shl nsw i64 %.pre.i46, 2
  br label %bb.ab
end_hunk_20
begin_hunk_21
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  store i32 %i.fy, ptr %i.gh, align 4, !tbaa !63
  %i.gi = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.gj = call i64 @luaZ_read(ptr noundef %i.gi, ptr noundef %i.gf, i64 noundef %.pre-phi81.i) #7
  %.not.i.i47 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i47, label %LoadBlock.exit.i, label %bb.ac

end_hunk_21
begin_hunk_22
  %i.gk = load ptr, ptr %0, align 8, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !9
  %i.gn = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.gk, ptr noundef nonnull @.str.5, ptr noundef %i.gm, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.go = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.go, i32 noundef 3) #7
  br label %LoadBlock.exit.i

LoadBlock.exit.i:                                 ; preds = %bb.ac, %bb.ab
end_hunk_22
begin_hunk_23
bb.ad:                                            ; preds = %LoadBlock.exit.i
  %i.gs = sext i32 %i.gp to i64
  %i.gt = shl nsw i64 %i.gs, 4
  %i.gu = call ptr @luaM_realloc_(ptr noundef %i.gr, ptr noundef null, i64 noundef 0, i64 noundef %i.gt) #7 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.r, i64 92
end_hunk_23
begin_hunk_24
  br label %.lr.ph.i

.preheader56.i:                                   ; preds = %LoadBlock.exit.i
  %i.gz = call ptr @luaM_toobig(ptr noundef %i.gr) #7
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.r, i64 92
end_hunk_24
begin_hunk_25
bb.ae:                                            ; preds = %._crit_edge.i
  %i.hy = sext i32 %i.hv to i64
  %i.hz = shl nsw i64 %i.hy, 3
  %i.ia = call ptr @luaM_realloc_(ptr noundef %i.hx, ptr noundef null, i64 noundef 0, i64 noundef %i.hz) #7 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !73
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 72
end_hunk_25
begin_hunk_26
  br i1 %i.id, label %.lr.ph64.preheader.i, label %LoadDebug.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.ie = call ptr @luaM_toobig(ptr noundef %i.hx) #7
  %i.if = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !73
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 72
end_hunk_26
begin_hunk_27
  br i1 %exitcond79.not.i, label %LoadDebug.exit, label %.lr.ph64.i, !llvm.loop !76

LoadDebug.exit:                                   ; preds = %.lr.ph64.i, %bb.ae, %.preheader.i
  %i.im = call i32 @luaG_checkcode(ptr noundef nonnull %i.r) #7
  %.not = icmp eq i32 %i.im, 0
  br i1 %.not, label %bb.af, label %bb.ag

end_hunk_27
begin_hunk_28
  %i.in = load ptr, ptr %0, align 8, !tbaa !16
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !9
  %i.iq = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.in, ptr noundef nonnull @.str.5, ptr noundef %i.ip, ptr noundef nonnull @.str.7) #7 ; 0 uses
  %i.ir = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ir, i32 noundef 3) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %LoadDebug.exit
end_hunk_28
begin_hunk_29
define internal fastcc ptr @LoadString(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = call i64 @luaZ_read(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 8) #7
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %LoadBlock.exit, label %bb.b

end_hunk_29
begin_hunk_30
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.e, ptr noundef nonnull @.str.5, ptr noundef %i.g, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.i, i32 noundef 3) #7
  br label %LoadBlock.exit

LoadBlock.exit:                                   ; preds = %bb.a, %bb.b
end_hunk_30
begin_hunk_31
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = call ptr @luaZ_openspace(ptr noundef %i.l, ptr noundef %i.n, i64 noundef %i.j) #7 ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !77
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.r = call i64 @luaZ_read(ptr noundef %i.q, ptr noundef %i.o, i64 noundef %i.p) #7
  %.not.i9 = icmp eq i64 %i.r, 0
  br i1 %.not.i9, label %LoadBlock.exit10, label %bb.d

end_hunk_31
begin_hunk_32
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.s, ptr noundef nonnull @.str.5, ptr noundef %i.u, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.w, i32 noundef 3) #7
  br label %LoadBlock.exit10

LoadBlock.exit10:                                 ; preds = %bb.c, %bb.d
  %i.x = load ptr, ptr %0, align 8, !tbaa !16
  %i.y = load i64, ptr %i.a, align 8, !tbaa !77
  %i.z = add i64 %i.y, -1
  %i.aa = call ptr @luaS_newlstr(ptr noundef %i.x, ptr noundef %i.o, i64 noundef %i.z) #7
  br label %bb.e

bb.e:                                             ; preds = %LoadBlock.exit, %LoadBlock.exit10
  %.0 = phi ptr [ %i.aa, %LoadBlock.exit10 ], [ null, %LoadBlock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

end_hunk_32
begin_hunk_33
define internal fastcc i32 @LoadInt(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = call i64 @luaZ_read(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 4) #7
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %LoadBlock.exit, label %bb.b

end_hunk_33
begin_hunk_34
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.e, ptr noundef nonnull @.str.5, ptr noundef %i.g, ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.i, i32 noundef 3) #7
  br label %LoadBlock.exit

LoadBlock.exit:                                   ; preds = %bb.a, %bb.b
end_hunk_34
begin_hunk_35
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.l, ptr noundef nonnull @.str.5, ptr noundef %i.n, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.p, i32 noundef 3) #7
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %LoadBlock.exit
  %i.q = phi i32 [ %.pre, %bb.c ], [ %i.j, %LoadBlock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.q
}

end_hunk_35
begin_hunk_36

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_36
