inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@tm_optimize_topology:bb.a
bb.m:                                             ; preds = %.lr.ph.i22
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i23
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !63
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.cf) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  %putchar8.i26 = call i32 @putchar(i32 58)       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next.i25, %i.ca
  br i1 %i.ch, label %.lr.ph.i22, label %tm_display_arity.exit27, !llvm.loop !74

tm_display_arity.exit27:                          ; preds = %bb.o, %bb.l
  %putchar.i21 = call i32 @putchar(i32 10)        ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %tm_display_arity.exit27, %topology_constraints_cpy.exit
  call void @free(ptr noundef %i.bh) #23
  call void @free(ptr noundef %i.ao) #23
  %i.ci = load ptr, ptr %0, align 8, !tbaa !78    ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !44
  call void @free(ptr noundef %i.ck) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45
  call void @free(ptr noundef %i.cm) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  call void @free(ptr noundef %i.co) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  call void @free(ptr noundef %i.cq) #23
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !39
  call void @free(ptr noundef %i.cr) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41
  call void @free(ptr noundef %i.ct) #23
  call void @free(ptr noundef %i.ci) #23
  store ptr %i.bj, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @optimize_arity(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !79     ; 16 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 4 uses
  %i.f = zext nneg i32 %3 to i64                  ; 17 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8    ; 6 uses
  %i.i = srem i32 %i.h, 3
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp sgt i32 %i.h, 3
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.m, ptr %2, align 4, !tbaa !8
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #27 ; 10 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !79
  %i.r = load i32, ptr %2, align 4, !tbaa !8
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #27 ; 10 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !80
  %.not109 = icmp eq i32 %3, 0
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !80 ; 8 uses
  %.pre122155 = ptrtoaddr ptr %.pre122 to i64     ; 2 uses
  br i1 %.not109, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.c
  %min.iters.check159 = icmp ult i32 %3, 12
  br i1 %min.iters.check159, label %.lr.ph103.preheader196, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph103.preheader
  %i.w = sub i64 %i.e, %i.q
  %diff.check154 = icmp ugt i64 %i.w, -16
  %i.x = sub i64 %.pre122155, %i.v
  %diff.check156 = icmp ugt i64 %i.x, -32
  %conflict.rdx157 = or i1 %diff.check154, %diff.check156
  br i1 %conflict.rdx157, label %.lr.ph103.preheader196, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec161 = and i64 %i.f, 2147483644            ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index163 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load164 = load <2 x i32>, ptr %i.y, align 4, !tbaa !8
  %wide.load165 = load <2 x i32>, ptr %i.z, align 4, !tbaa !8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index163 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x i32> %wide.load164, ptr %i.aa, align 4, !tbaa !8
  store <2 x i32> %wide.load165, ptr %i.ab, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %index163 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load166 = load <2 x double>, ptr %i.ac, align 8, !tbaa !63
  %wide.load167 = load <2 x double>, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index163 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load166, ptr %i.ae, align 8, !tbaa !63
  store <2 x double> %wide.load167, ptr %i.af, align 8, !tbaa !63
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.ag, label %middle.block169, label %vector.body162, !llvm.loop !82

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %n.vec161, %i.f
  br i1 %cmp.n170, label %._crit_edge104, label %.lr.ph103.preheader196

.lr.ph103.preheader196:                           ; preds = %vector.memcheck153, %.lr.ph103.preheader, %middle.block169
  %indvars.iv114.ph = phi i64 [ 0, %vector.memcheck153 ], [ 0, %.lr.ph103.preheader ], [ %n.vec161, %middle.block169 ] ; 7 uses
  %xtraiter199 = and i64 %i.f, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader196
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114.ph
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv114.ph
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114.ph
  %i.al = load double, ptr %i.ak, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv114.ph
  store double %i.al, ptr %i.am, align 8, !tbaa !63
  %indvars.iv.next115.prol = or disjoint i64 %indvars.iv114.ph, 1
  br label %.lr.ph103.prol.loopexit

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader196
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %.lr.ph103.preheader196 ], [ %indvars.iv.next115.prol, %.lr.ph103.prol ]
  %i.an = add nsw i64 %i.f, -1
  %i.ao = icmp eq i64 %indvars.iv114.ph, %i.an
  br i1 %i.ao, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.1, %.lr.ph103 ], [ %indvars.iv114.unr, %.lr.ph103.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv114
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114
  %i.at = load double, ptr %i.as, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv114
  store double %i.at, ptr %i.au, align 8, !tbaa !63
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next115
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next115
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv.next115
  %i.az = load double, ptr %i.ay, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next115
  store double %i.az, ptr %i.ba, align 8, !tbaa !63
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %exitcond118.not.1 = icmp eq i64 %indvars.iv.next115.1, %i.f
  br i1 %exitcond118.not.1, label %._crit_edge104, label %.lr.ph103, !llvm.loop !83

._crit_edge104:                                   ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block169, %bb.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.f
  store i32 3, ptr %i.bb, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.f
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !63 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.f
  store double %i.bd, ptr %i.be, align 8, !tbaa !63
  %i.bf = udiv i32 %i.h, 3
  %i.bg = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bh ; 2 uses
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bh
  store double %i.bd, ptr %i.bj, align 8, !tbaa !63
  %i.bk = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.bl = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %i.bn = zext nneg i32 %i.bk to i64              ; 6 uses
  %4 = add i32 %i.bl, -3
  %5 = sub i32 %4, %3                             ; 2 uses
  %i.bo = zext i32 %5 to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check178 = icmp ugt i32 %5, 26
  %i.bq = add i32 %i.bl, -2
  %.not192 = icmp ugt i32 %i.bq, %3
  %or.cond193 = and i1 %min.iters.check178, %.not192
  br i1 %or.cond193, label %vector.memcheck173, label %.lr.ph107.preheader195

vector.memcheck173:                               ; preds = %.lr.ph107.preheader
  %i.br = shl nuw nsw i64 %i.bn, 2
  %i.bs = add i64 %i.br, %i.q
  %i.bt = add nuw i32 %3, 1
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add i64 %i.bv, %i.e
  %i.bx = sub i64 %i.bw, %i.bs
  %diff.check174 = icmp ugt i64 %i.bx, -16
  %i.by = shl nuw nsw i64 %i.bn, 3
  %i.bz = add i64 %i.by, %i.v
  %i.ca = shl nuw nsw i64 %i.bu, 3
  %i.cb = add i64 %i.ca, %.pre122155
  %i.cc = sub i64 %i.cb, %i.bz
  %diff.check175 = icmp ugt i64 %i.cc, -32
  %conflict.rdx176 = or i1 %diff.check174, %diff.check175
  br i1 %conflict.rdx176, label %.lr.ph107.preheader195, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck173
  %n.vec180 = and i64 %i.bp, 8589934588           ; 3 uses
  %i.cd = add nuw nsw i64 %n.vec180, %i.bn
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.ce = add nuw i64 %index182, %i.bn            ; 3 uses
  %i.cf = add nuw i64 %i.ce, 4294967295
  %i.cg = and i64 %i.cf, 4294967295               ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load183 = load <2 x i32>, ptr %i.ch, align 4, !tbaa !8
  %wide.load184 = load <2 x i32>, ptr %i.ci, align 4, !tbaa !8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ce ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <2 x i32> %wide.load183, ptr %i.cj, align 4, !tbaa !8
  store <2 x i32> %wide.load184, ptr %i.ck, align 4, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.cg ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load185 = load <2 x double>, ptr %i.cl, align 8, !tbaa !63
  %wide.load186 = load <2 x double>, ptr %i.cm, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ce ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x double> %wide.load185, ptr %i.cn, align 8, !tbaa !63
  store <2 x double> %wide.load186, ptr %i.co, align 8, !tbaa !63
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.cp, label %middle.block188, label %vector.body181, !llvm.loop !84

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.bp, %n.vec180
  br i1 %cmp.n189, label %._crit_edge108, label %.lr.ph107.preheader195

.lr.ph107.preheader195:                           ; preds = %vector.memcheck173, %.lr.ph107.preheader, %middle.block188
  %indvars.iv119.ph = phi i64 [ %i.bn, %vector.memcheck173 ], [ %i.bn, %.lr.ph107.preheader ], [ %i.cd, %middle.block188 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader195, %.lr.ph107
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.lr.ph107 ], [ %indvars.iv119.ph, %.lr.ph107.preheader195 ] ; 4 uses
  %i.cq = add nuw i64 %indvars.iv119, 4294967295
  %i.cr = and i64 %i.cq, 4294967295               ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv119
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.cr
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv119
  store double %i.cw, ptr %i.cx, align 8, !tbaa !63
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cy = trunc nuw i64 %indvars.iv.next120 to i32
  %i.cz = icmp sgt i32 %i.bl, %i.cy
  br i1 %i.cz, label %.lr.ph107, label %._crit_edge108, !llvm.loop !85

._crit_edge108:                                   ; preds = %.lr.ph107, %middle.block188, %._crit_edge104
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.da = load ptr, ptr %1, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.da) #23
  %i.db = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.dc = icmp eq i32 %i.db, 3
  %. = select i1 %i.dc, i32 %3, i32 %i.bg
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.)
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr %i.dd, ptr %0, align 8, !tbaa !79
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !80
  store ptr %i.de, ptr %1, align 8, !tbaa !80
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.df = and i32 %i.h, 1
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = icmp sgt i32 %i.h, 2
  %or.cond3 = and i1 %i.dh, %i.dg
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.di = load i32, ptr %2, align 4, !tbaa !8
  %i.dj = add nsw i32 %i.di, 1                    ; 2 uses
  store i32 %i.dj, ptr %2, align 4, !tbaa !8
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 2
  %i.dm = tail call noalias ptr @malloc(i64 noundef %i.dl) #27 ; 10 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 2 uses
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !79
  %i.do = load i32, ptr %2, align 4, !tbaa !8
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 3
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dq) #27 ; 10 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64              ; 2 uses
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !80
  %.not = icmp eq i32 %3, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !80    ; 8 uses
  %.pre130 = ptrtoaddr ptr %.pre to i64           ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dt = sub i64 %i.e, %i.dn
  %diff.check = icmp ugt i64 %i.dt, -16
  %i.du = sub i64 %.pre130, %i.ds
  %diff.check131 = icmp ugt i64 %i.du, -32
  %conflict.rdx = or i1 %diff.check, %diff.check131
  br i1 %conflict.rdx, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %wide.load = load <2 x i32>, ptr %i.dv, align 4, !tbaa !8
  %wide.load132 = load <2 x i32>, ptr %i.dw, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store <2 x i32> %wide.load, ptr %i.dx, align 4, !tbaa !8
  store <2 x i32> %wide.load132, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load133 = load <2 x double>, ptr %i.dz, align 8, !tbaa !63
  %wide.load134 = load <2 x double>, ptr %i.ea, align 8, !tbaa !63
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> %wide.load133, ptr %i.eb, align 8, !tbaa !63
  store <2 x double> %wide.load134, ptr %i.ec, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader198
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.ph
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !8
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.ph
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !63
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.ph
  store double %i.ei, ptr %i.ej, align 8, !tbaa !63
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader198
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader198 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ek = add nsw i64 %i.f, -1
  %i.el = icmp eq i64 %indvars.iv.ph, %i.ek
  br i1 %i.el, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !8
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !63
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv
  store double %i.eq, ptr %i.er, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !63
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next
  store double %i.ew, ptr %i.ex, align 8, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.f
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.e
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.f
  store i32 2, ptr %i.ey, align 4, !tbaa !8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.f
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !63 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.f
  store double %i.fa, ptr %i.fb, align 8, !tbaa !63
  %i.fc = lshr exact i32 %i.h, 1
  %i.fd = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fe ; 2 uses
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fe
  store double %i.fa, ptr %i.fg, align 8, !tbaa !63
  %i.fh = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.fi = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.fk = zext nneg i32 %i.fh to i64              ; 6 uses
  %6 = add i32 %i.fi, -3
  %7 = sub i32 %6, %3                             ; 2 uses
  %i.fl = zext i32 %7 to i64
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check140 = icmp ugt i32 %7, 26
  %i.fn = add i32 %i.fi, -2
  %.not191 = icmp ugt i32 %i.fn, %3
  %or.cond194 = and i1 %min.iters.check140, %.not191
  br i1 %or.cond194, label %vector.memcheck135, label %.lr.ph99.preheader197

vector.memcheck135:                               ; preds = %.lr.ph99.preheader
  %i.fo = shl nuw nsw i64 %i.fk, 2
  %i.fp = add i64 %i.fo, %i.dn
  %i.fq = add nuw i32 %3, 1
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 2
  %i.ft = add i64 %i.fs, %i.e
  %i.fu = sub i64 %i.ft, %i.fp
  %diff.check136 = icmp ugt i64 %i.fu, -16
  %i.fv = shl nuw nsw i64 %i.fk, 3
  %i.fw = add i64 %i.fv, %i.ds
  %i.fx = shl nuw nsw i64 %i.fr, 3
  %i.fy = add i64 %i.fx, %.pre130
  %i.fz = sub i64 %i.fy, %i.fw
  %diff.check137 = icmp ugt i64 %i.fz, -32
  %conflict.rdx138 = or i1 %diff.check136, %diff.check137
  br i1 %conflict.rdx138, label %.lr.ph99.preheader197, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck135
  %n.vec142 = and i64 %i.fm, 8589934588           ; 3 uses
  %i.ga = add nuw nsw i64 %n.vec142, %i.fk
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.gb = add nuw i64 %index144, %i.fk            ; 3 uses
  %i.gc = add nuw i64 %i.gb, 4294967295
  %i.gd = and i64 %i.gc, 4294967295               ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %wide.load145 = load <2 x i32>, ptr %i.ge, align 4, !tbaa !8
  %wide.load146 = load <2 x i32>, ptr %i.gf, align 4, !tbaa !8
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.gb ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store <2 x i32> %wide.load145, ptr %i.gg, align 4, !tbaa !8
  store <2 x i32> %wide.load146, ptr %i.gh, align 4, !tbaa !8
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gd ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load147 = load <2 x double>, ptr %i.gi, align 8, !tbaa !63
  %wide.load148 = load <2 x double>, ptr %i.gj, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gb ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <2 x double> %wide.load147, ptr %i.gk, align 8, !tbaa !63
  store <2 x double> %wide.load148, ptr %i.gl, align 8, !tbaa !63
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.gm, label %middle.block150, label %vector.body143, !llvm.loop !88

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.fm, %n.vec142
  br i1 %cmp.n151, label %._crit_edge100, label %.lr.ph99.preheader197

.lr.ph99.preheader197:                            ; preds = %vector.memcheck135, %.lr.ph99.preheader, %middle.block150
  %indvars.iv111.ph = phi i64 [ %i.fk, %vector.memcheck135 ], [ %i.fk, %.lr.ph99.preheader ], [ %i.ga, %middle.block150 ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader197, %.lr.ph99
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph99 ], [ %indvars.iv111.ph, %.lr.ph99.preheader197 ] ; 4 uses
  %i.gn = add nuw i64 %indvars.iv111, 4294967295
  %i.go = and i64 %i.gn, 4294967295               ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !8
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv111
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !8
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.go
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !63
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv111
  store double %i.gt, ptr %i.gu, align 8, !tbaa !63
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.gv = trunc nuw i64 %indvars.iv.next112 to i32
  %i.gw = icmp sgt i32 %i.fi, %i.gv
  br i1 %i.gw, label %.lr.ph99, label %._crit_edge100, !llvm.loop !89

._crit_edge100:                                   ; preds = %.lr.ph99, %middle.block150, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.gx = load ptr, ptr %1, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.gx) #23
  %i.gy = load i32, ptr %i.ff, align 4, !tbaa !8
  %i.gz = icmp eq i32 %i.gy, 2
  %.129 = select i1 %i.gz, i32 %3, i32 %i.fd
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.129)
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr %i.ha, ptr %0, align 8, !tbaa !79
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !80
  store ptr %i.hb, ptr %1, align 8, !tbaa !80
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.hc = add nsw i32 %3, -1
  tail call fastcc void @optimize_arity(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.hc)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge108, %bb.f, %._crit_edge100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @tm_build_synthetic_topology(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #27 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 1, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !37
  %i.f = sext i32 %2 to i64                       ; 3 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #27 ; 4 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !39
  %i.i = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !38
  %.not = icmp ne ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #30 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %1, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi ptr [ null, %.thread ], [ %i.l, %bb.b ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %bb.c
  %i.p = add nsw i32 %2, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.t = zext nneg i32 %i.p to i64
  %wide.trip.count78 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph70, %.loopexit66
  %indvars.iv75 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next76, %.loopexit66 ] ; 4 uses
  %.069 = phi i32 [ 1, %.lr.ph70 ], [ %i.bi, %.loopexit66 ] ; 8 uses
  %i.u = sext i32 %.069 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv75
  store i64 %i.u, ptr %i.v, align 8, !tbaa !42
  %i.w = icmp eq i64 %indvars.iv75, %i.t
  br i1 %i.w, label %bb.e, label %.loopexit66

bb.e:                                             ; preds = %bb.d
  %i.x = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.y, ptr %i.q, align 8, !tbaa !44
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.z, ptr %i.r, align 8, !tbaa !45
  store i32 %.069, ptr %i.b, align 8, !tbaa !35
  store i32 %.069, ptr %i.s, align 8, !tbaa !9
  %i.aa = icmp sgt i32 %.069, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit66

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %.069 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %.069, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ad = srem i32 %i.ac, %4                      ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = sub nsw i32 %i.ac, %i.ad
  %i.ai = add nsw i32 %i.ag, %i.ah                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  store i32 %i.ac, ptr %i.al, align 4, !tbaa !8
end_hunk_0
