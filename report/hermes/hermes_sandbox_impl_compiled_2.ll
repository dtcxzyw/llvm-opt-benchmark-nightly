inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AnumberToString0x28double0x2C0x20char0x2A0x2C0x20unsigned0x20long0x29:bb.a
  %i.e = tail call i32 @w2c_hermes_dtoa_alloc_init(ptr noundef %0, i32 noundef %i.d) #7 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 95 uses
  %i.g = zext i32 %i.c to i64                     ; 6 uses
  %i.h = add nuw nsw i64 %i.g, 1288               ; 3 uses
  %.val1165 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.h
  store i32 %i.e, ptr %i.i, align 1
  %i.j = fcmp uno double %1, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %2 to i64
  %.val1164 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.k
  store i32 5136718, ptr %i.l, align 1
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp oeq double %1, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %2 to i64
  %.val1168 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.n
  store i16 48, ptr %i.o, align 1
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  %i.p = fcmp oeq double %1, +inf
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val1170 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val1170, i64 16736
  %.0.copyload.i = load i64, ptr %i.q, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !22
  %i.r = zext i32 %2 to i64                       ; 2 uses
  %.val1172 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.r
  store i64 %.0.copyload.i, ptr %i.s, align 1
  %.val1161 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val1161, i64 16744
  %.0.copyload.i1174 = load i8, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1174) #7, !srcloc !20
  %.val1120 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val1120, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.0.copyload.i1174, ptr %i.v, align 1
  br label %bb.am

bb.g:                                             ; preds = %bb.e
  %i.w = fcmp oeq double %1, -inf
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val1169 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val1169, i64 16735
  %.0.copyload.i1175 = load i64, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1175) #7, !srcloc !22
  %i.y = zext i32 %2 to i64                       ; 2 uses
  %.val1171 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.y
  store i64 %.0.copyload.i1175, ptr %i.z, align 1
  %.val1173 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1173, i64 16743
  %.0.copyload.i1176 = load i16, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1176) #7, !srcloc !23
  %.val1167 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i16 %.0.copyload.i1176, ptr %i.ac, align 1
  br label %bb.am

bb.i:                                             ; preds = %bb.g
  %i.ad = add i32 %i.b, -1212
  %i.ae = add i32 %i.b, -1216
  %i.af = add i32 %i.b, -1220
  %i.ag = tail call i32 @w2c_hermes_g_dtoa(ptr noundef nonnull %0, i32 noundef %i.e, double noundef %1, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af) #7 ; 28 uses
  %.val1128 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1128, i64 %i.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.0.copyload.i1177 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1177) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i1177, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = zext i32 %2 to i64
  %.val1119 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1119, i64 %i.aj
  store i8 45, ptr %i.ak, align 1
  %i.al = add i32 %2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.01022 = phi i32 [ %i.al, %bb.j ], [ %2, %bb.i ] ; 11 uses
  %.val1127 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val1127, i64 %i.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %.0.copyload.i1178 = load i32, ptr %i.an, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1178) #7, !srcloc !19
  %i.ao = sub i32 %.0.copyload.i1178, %i.ag       ; 12 uses
  %i.ap = add nuw nsw i64 %i.g, 84                ; 4 uses
  %.val1126 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1126, i64 %i.ap
  %.0.copyload.i1179 = load i32, ptr %i.aq, align 1 ; 15 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1179) #7, !srcloc !19
  %i.ar = icmp sgt i32 %.0.copyload.i1179, 21
  %i.as = icmp slt i32 %.0.copyload.i1179, %i.ao  ; 2 uses
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp slt i32 %i.ao, 1
  br i1 %i.at, label %.loopexit1234, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %i.ao, 3                        ; 2 uses
  %i.av = sub i32 %i.ag, %.0.copyload.i1178
  %i.aw = icmp ugt i32 %i.av, -4
  br i1 %i.aw, label %.loopexit1235, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = and i32 %i.ao, 2147483644               ; 2 uses
  %i.ay = add i32 %i.ag, 1
  %i.az = add i32 %i.ag, 2
  %i.ba = add i32 %i.ag, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.11023 = phi i32 [ %i.bw, %bb.o ], [ %.01022, %bb.n ] ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 4 uses
  %i.bc = add i32 %i.ag, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %.val1160 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.bd
  %.0.copyload.i1180 = load i8, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1180) #7, !srcloc !20
  %i.bf = zext i32 %.11023 to i64                 ; 4 uses
  %.val1118 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1118, i64 %i.bf
  store i8 %.0.copyload.i1180, ptr %i.bg, align 1
  %i.bh = add i32 %i.ay, %i.bb
  %i.bi = zext i32 %i.bh to i64
  %.val1159 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.bi
  %.0.copyload.i1181 = load i8, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1181) #7, !srcloc !20
  %.val1117 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1117, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %.0.copyload.i1181, ptr %i.bl, align 1
  %i.bm = add i32 %i.az, %i.bb
  %i.bn = zext i32 %i.bm to i64
  %.val1158 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.bn
  %.0.copyload.i1182 = load i8, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1182) #7, !srcloc !20
  %.val1116 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1116, i64 %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %.0.copyload.i1182, ptr %i.bq, align 1
  %i.br = add i32 %i.ba, %i.bb
  %i.bs = zext i32 %i.br to i64
  %.val1157 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.bs
  %.0.copyload.i1183 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1183) #7, !srcloc !20
  %.val1115 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1115, i64 %i.bf
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %.0.copyload.i1183, ptr %i.bv, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1275 = trunc i64 %indvars.iv.next to i32
  %i.bw = add i32 %.11023, 4                      ; 2 uses
  %.not1062 = icmp eq i32 %i.ax, %indvars1275
  br i1 %.not1062, label %.loopexit1235.loopexit, label %bb.o

bb.p:                                             ; preds = %bb.k
  %i.bx = add i32 %.0.copyload.i1179, -1          ; 3 uses
  %i.by = icmp ult i32 %i.bx, 21
  br i1 %i.by, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bz = and i32 %.0.copyload.i1179, 3           ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bx, 3
  br i1 %i.ca, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = and i32 %.0.copyload.i1179, 28          ; 2 uses
  %i.cc = add i32 %i.ag, 1
  %i.cd = add i32 %i.ag, 2
  %i.ce = add i32 %i.ag, 3
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %indvars.iv1302 = phi i64 [ %indvars.iv.next1303, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.21024 = phi i32 [ %i.da, %bb.s ], [ %.01022, %bb.r ] ; 3 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv1302 to i32 ; 4 uses
  %i.cg = add i32 %i.ag, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %.val1156 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.ch
  %.0.copyload.i1184 = load i8, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1184) #7, !srcloc !20
  %i.cj = zext i32 %.21024 to i64                 ; 4 uses
  %.val1114 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1114, i64 %i.cj
  store i8 %.0.copyload.i1184, ptr %i.ck, align 1
  %i.cl = add i32 %i.cc, %i.cf
  %i.cm = zext i32 %i.cl to i64
  %.val1155 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.cm
  %.0.copyload.i1185 = load i8, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1185) #7, !srcloc !20
  %.val1113 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1113, i64 %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %.0.copyload.i1185, ptr %i.cp, align 1
  %i.cq = add i32 %i.cd, %i.cf
  %i.cr = zext i32 %i.cq to i64
  %.val1154 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1154, i64 %i.cr
  %.0.copyload.i1186 = load i8, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1186) #7, !srcloc !20
  %.val1112 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.cj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i8 %.0.copyload.i1186, ptr %i.cu, align 1
  %i.cv = add i32 %i.ce, %i.cf
  %i.cw = zext i32 %i.cv to i64
  %.val1153 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1153, i64 %i.cw
  %.0.copyload.i1187 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1187) #7, !srcloc !20
  %.val1111 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.cj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  store i8 %.0.copyload.i1187, ptr %i.cz, align 1
  %indvars.iv.next1303 = add nuw nsw i64 %indvars.iv1302, 4 ; 2 uses
  %indvars1305 = trunc i64 %indvars.iv.next1303 to i32
  %i.da = add i32 %.21024, 4                      ; 2 uses
  %.not1074 = icmp eq i32 %i.cb, %indvars1305
  br i1 %.not1074, label %bb.ai, label %bb.s

bb.t:                                             ; preds = %bb.p
  %i.db = add i32 %.0.copyload.i1179, 5
  %i.dc = icmp ult i32 %i.db, 6
  br i1 %i.dc, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dd = zext i32 %.01022 to i64
  %.val1166 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.dd
  store i16 11824, ptr %i.de, align 1
  %i.df = add i32 %.01022, 2                      ; 2 uses
  %i.dg = icmp slt i32 %.0.copyload.i1179, 0
  br i1 %i.dg, label %.preheader1225, label %.loopexit1226

.preheader1225:                                   ; preds = %bb.u, %.preheader1225
  %.21030 = phi i32 [ %i.dj, %.preheader1225 ], [ %i.df, %bb.u ] ; 2 uses
  %.31025 = phi i32 [ %i.dk, %.preheader1225 ], [ 0, %bb.u ]
  %i.dh = zext i32 %.21030 to i64
  %.val1110 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.dh
  store i8 48, ptr %i.di, align 1
  %i.dj = add i32 %.21030, 1                      ; 2 uses
  %i.dk = add nuw nsw i32 %.31025, 1              ; 2 uses
  %.val1125 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1125, i64 %i.ap
  %.0.copyload.i1188 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1188) #7, !srcloc !19
  %i.dm = sub i32 0, %.0.copyload.i1188
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br i1 %i.dn, label %.preheader1225, label %.loopexit1226

.loopexit1226:                                    ; preds = %.preheader1225, %bb.u
  %.31031 = phi i32 [ %i.df, %bb.u ], [ %i.dj, %.preheader1225 ] ; 3 uses
  %i.do = icmp slt i32 %i.ao, 1
  br i1 %i.do, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.loopexit1226
  %i.dp = and i32 %i.ao, 3                        ; 2 uses
  %i.dq = sub i32 %i.ag, %.0.copyload.i1178
  %i.dr = icmp ugt i32 %i.dq, -4
  br i1 %i.dr, label %.loopexit1224, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = and i32 %i.ao, 2147483644               ; 2 uses
  %i.dt = add i32 %i.ag, 1
  %i.du = add i32 %i.ag, 2
  %i.dv = add i32 %i.ag, 3
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv1294 = phi i64 [ %indvars.iv.next1295, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.41032 = phi i32 [ %i.er, %bb.x ], [ %.31031, %bb.w ] ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv1294 to i32    ; 4 uses
  %i.dx = add i32 %i.ag, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %.val1152 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1152, i64 %i.dy
  %.0.copyload.i1189 = load i8, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1189) #7, !srcloc !20
  %i.ea = zext i32 %.41032 to i64                 ; 4 uses
  %.val1109 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.ea
  store i8 %.0.copyload.i1189, ptr %i.eb, align 1
  %i.ec = add i32 %i.dt, %i.dw
  %i.ed = zext i32 %i.ec to i64
  %.val1151 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1151, i64 %i.ed
  %.0.copyload.i1190 = load i8, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1190) #7, !srcloc !20
  %.val1108 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1108, i64 %i.ea
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %.0.copyload.i1190, ptr %i.eg, align 1
  %i.eh = add i32 %i.du, %i.dw
  %i.ei = zext i32 %i.eh to i64
  %.val1150 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1150, i64 %i.ei
  %.0.copyload.i1191 = load i8, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1191) #7, !srcloc !20
  %.val1107 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.ea
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i8 %.0.copyload.i1191, ptr %i.el, align 1
  %i.em = add i32 %i.dv, %i.dw
  %i.en = zext i32 %i.em to i64
  %.val1149 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1149, i64 %i.en
  %.0.copyload.i1192 = load i8, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1192) #7, !srcloc !20
  %.val1106 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.ea
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  store i8 %.0.copyload.i1192, ptr %i.eq, align 1
  %indvars.iv.next1295 = add nuw nsw i64 %indvars.iv1294, 4 ; 2 uses
  %indvars1297 = trunc i64 %indvars.iv.next1295 to i32
  %i.er = add i32 %.41032, 4                      ; 2 uses
  %.not1071 = icmp eq i32 %i.ds, %indvars1297
  br i1 %.not1071, label %.loopexit1224.loopexit, label %bb.x

.loopexit1224.loopexit:                           ; preds = %bb.x
  %i.es = zext nneg i32 %i.ds to i64
  br label %.loopexit1224

.loopexit1224:                                    ; preds = %.loopexit1224.loopexit, %bb.v
  %.51033 = phi i32 [ %.31031, %bb.v ], [ %i.er, %.loopexit1224.loopexit ] ; 2 uses
  %.51027 = phi i64 [ 0, %bb.v ], [ %i.es, %.loopexit1224.loopexit ]
  %.not1072 = icmp eq i32 %i.dp, 0
  br i1 %.not1072, label %.loopexit, label %.preheader1222

.preheader1222:                                   ; preds = %.loopexit1224, %.preheader1222
  %indvars.iv1299 = phi i64 [ %indvars.iv.next1300, %.preheader1222 ], [ %.51027, %.loopexit1224 ] ; 2 uses
  %.61034 = phi i32 [ %i.ez, %.preheader1222 ], [ %.51033, %.loopexit1224 ] ; 2 uses
  %.01016 = phi i32 [ %i.fa, %.preheader1222 ], [ 0, %.loopexit1224 ]
  %i.et = trunc nuw nsw i64 %indvars.iv1299 to i32
  %i.eu = add i32 %i.ag, %i.et
  %i.ev = zext i32 %i.eu to i64
  %.val1148 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1148, i64 %i.ev
  %.0.copyload.i1193 = load i8, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1193) #7, !srcloc !20
  %i.ex = zext i32 %.61034 to i64
  %.val1105 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1105, i64 %i.ex
  store i8 %.0.copyload.i1193, ptr %i.ey, align 1
  %indvars.iv.next1300 = add nuw nsw i64 %indvars.iv1299, 1
  %i.ez = add i32 %.61034, 1                      ; 2 uses
  %i.fa = add nuw nsw i32 %.01016, 1              ; 2 uses
  %.not1073 = icmp eq i32 %i.fa, %i.dp
  br i1 %.not1073, label %.loopexit, label %.preheader1222

bb.y:                                             ; preds = %bb.t
  %i.fb = sub i32 1, %.0.copyload.i1179
  %i.fc = icmp slt i32 %.0.copyload.i1179, 1
  %i.fd = select i1 %i.fc, i32 %i.fb, i32 %i.bx   ; 2 uses
  %i.fe = icmp eq i32 %i.ao, 1
  br i1 %i.fe, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.val1163 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.g
  store i32 %i.fd, ptr %i.ff, align 1
  %i.fg = add i32 %i.b, -1264                     ; 2 uses
  %i.fh = tail call i32 @w2c_hermes_snprintf(ptr noundef nonnull %0, i32 noundef %i.fg, i32 noundef 32, i32 noundef 55702, i32 noundef %i.c) #7 ; 3 uses
  %i.fi = zext i32 %i.ag to i64
  %.val1147 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1147, i64 %i.fi
  %.0.copyload.i1194 = load i8, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1194) #7, !srcloc !20
  %i.fk = zext i32 %.01022 to i64                 ; 3 uses
  %.val1104 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1104, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 101, ptr %i.fm, align 1
  %.val1103 = load ptr, ptr %i.f, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a

bb.aw:                                            ; preds = %bb.au
  %i.ib = udiv i64 %.0.copyload.i3137, %i.cc      ; 2 uses
  %i.ic = zext i32 %.0.copyload.i3136 to i64
  %.val3077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val3077, i64 %i.ic
  store i64 %i.ib, ptr %i.id, align 1
  %.val2957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val2957, i64 %i.ck
  %.0.copyload.i3138 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3138) #7, !srcloc !19
  %i.if = add i32 %.0.copyload.i3138, 8
  %i.ig = lshr i64 %i.dt, 3
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 1073741816
  %i.ij = add nsw i32 %i.ii, -8
  %i.ik = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.if, i32 noundef 0, i32 noundef %i.ij) #7 ; 0 uses
  %i.il = mul i64 %i.ib, %i.cc                    ; 0 uses
  %.recomposed3421 = urem i64 %.0.copyload.i3137, %i.cc
  %.val3076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val3076, i64 %i.cm
  store i64 %.recomposed3421, ptr %i.im, align 1
  br label %bb.eh

bb.ax:                                            ; preds = %bb.at
  %i.in = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.io = add i32 %i.in, -512                     ; 7 uses
  store i32 %i.io, ptr %i.a, align 8, !tbaa !7
  %i.ip = shl nuw nsw i32 %i.ep, 1                ; 5 uses
  %i.iq = add nsw i32 %i.ip, -2                   ; 2 uses
  %i.ir = shl nsw i32 %i.iq, 1
  %i.is = add nsw i32 %i.ir, %i.cn
  %i.it = icmp ult i32 %i.is, 128
  %i.iu = shl nuw nsw i32 %i.ep, 3
  %i.iv = or disjoint i32 %i.iu, 4                ; 2 uses
  br i1 %i.it, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add i32 %i.io, %i.iv                    ; 2 uses
  %i.ix = add nuw nsw i32 %i.ip, 3                ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ix, 2
  %i.iz = add i32 %i.io, %i.iy                    ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nuw nsw i32 %i.ix, %i.ip
  %i.jb = shl nuw nsw i32 %i.ja, 2
  %i.jc = add i32 %i.io, %i.jb
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.jd = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.iv) #7 ; 2 uses
  %i.je = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7 ; 2 uses
  %i.jf = shl nuw nsw i32 %i.ep, 3
  %i.jg = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jf) #7 ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jh = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.ay, %bb.bb, %bb.az
  %.02796 = phi i32 [ %i.iw, %bb.ay ], [ %i.iw, %bb.az ], [ %i.je, %bb.ba ], [ %i.je, %bb.bb ]
  %.02787 = phi i32 [ %i.io, %bb.ay ], [ %i.io, %bb.az ], [ %i.jd, %bb.ba ], [ %i.jd, %bb.bb ]
  %.02767 = phi i32 [ %i.iz, %bb.ay ], [ %i.iz, %bb.az ], [ %i.jg, %bb.ba ], [ %i.jg, %bb.bb ]
  %.12760 = phi i32 [ 0, %bb.ay ], [ %i.jc, %bb.az ], [ 0, %bb.ba ], [ %i.jh, %bb.bb ] ; 11 uses
  %i.ji = shl nuw nsw i32 %i.ep, 3                ; 4 uses
  %i.jj = or disjoint i32 %i.ji, 4
  %i.jk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02787, i32 noundef 0, i32 noundef %i.jj) #7 ; 21 uses
  %i.jl = and i32 %i.ep, 134217726                ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv3280 = phi i64 [ %indvars.iv.next3281, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.jm = trunc nuw i64 %indvars.iv3280 to i32
  %i.jn = shl i32 %i.jm, 3                        ; 3 uses
  %i.jo = add i32 %i.jn, %i.jk
  %i.jp = add i32 %i.jn, %.0.copyload.i3135
  %i.jq = zext i32 %i.jp to i64
  %.val3045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val3045, i64 %i.jq
  %.0.copyload.i3140 = load i64, ptr %i.jr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3140) #7, !srcloc !22
  %i.js = zext i32 %i.jo to i64                   ; 2 uses
  %.val3102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = trunc i64 %.0.copyload.i3140 to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %.val3102, i64 %i.js
  store i32 %i.jt, ptr %i.ju, align 1
  %i.jv = lshr i64 %.0.copyload.i3140, 32
  %.val3101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = trunc nuw i64 %i.jv to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %.val3101, i64 %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i32 %i.jw, ptr %i.jy, align 1
  %i.jz = or disjoint i32 %i.jn, 8                ; 2 uses
  %i.ka = add i32 %i.jz, %i.jk
  %i.kb = add i32 %i.jz, %.0.copyload.i3135
  %i.kc = zext i32 %i.kb to i64
  %.val3044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val3044, i64 %i.kc
  %.0.copyload.i3141 = load i64, ptr %i.kd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3141) #7, !srcloc !22
  %i.ke = zext i32 %i.ka to i64                   ; 2 uses
  %.val3100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = trunc i64 %.0.copyload.i3141 to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %.val3100, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 1
  %i.kh = lshr i64 %.0.copyload.i3141, 32
  %.val3099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ki = trunc nuw i64 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %.val3099, i64 %i.ke
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store i32 %i.ki, ptr %i.kk, align 1
  %indvars.iv.next3281 = add nuw nsw i64 %indvars.iv3280, 2 ; 2 uses
  %indvars3282 = trunc i64 %indvars.iv.next3281 to i32
  %.not2866 = icmp eq i32 %i.jl, %indvars3282
  br i1 %.not2866, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %bb.bd
  %i.kl = and i32 %i.ep, 1
  %.not2867 = icmp eq i32 %i.kl, 0                ; 2 uses
  br i1 %.not2867, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.km = shl nuw nsw i32 %i.jl, 3                ; 2 uses
  %i.kn = add i32 %i.km, %i.jk
  %i.ko = add i32 %i.km, %.0.copyload.i3135
  %i.kp = zext i32 %i.ko to i64
  %.val3043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val3043, i64 %i.kp
  %.0.copyload.i3142 = load i64, ptr %i.kq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3142) #7, !srcloc !22
  %i.kr = zext i32 %i.kn to i64                   ; 2 uses
  %.val3098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = trunc i64 %.0.copyload.i3142 to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %.val3098, i64 %i.kr
  store i32 %i.ks, ptr %i.kt, align 1
  %i.ku = lshr i64 %.0.copyload.i3142, 32
  %.val3097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = trunc nuw i64 %i.ku to i32
  %i.kw = getelementptr inbounds nuw i8, ptr %.val3097, i64 %i.kr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store i32 %i.kv, ptr %i.kx, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ky = add i32 %i.jk, %i.ji
  %i.kz = zext i32 %i.ky to i64
  %.val3004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val3004, i64 %i.kz
  store i32 0, ptr %i.la, align 1
  %i.lb = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02796, i32 noundef 0, i32 noundef 8) #7 ; 8 uses
  %.val3042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val3042, i64 %i.cv
  %.0.copyload.i3143 = load i64, ptr %i.lc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3143) #7, !srcloc !22
  %i.ld = zext i32 %i.lb to i64                   ; 4 uses
  %.val3096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = trunc i64 %.0.copyload.i3143 to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %.val3096, i64 %i.ld
  store i32 %i.le, ptr %i.lf, align 1
  %i.lg = lshr i64 %.0.copyload.i3143, 32
  %.val3095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = trunc nuw i64 %i.lg to i32
  %i.li = getelementptr inbounds nuw i8, ptr %.val3095, i64 %i.ld
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.lh, ptr %i.lj, align 1
  %i.lk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02767, i32 noundef 0, i32 noundef %i.ji) #7 ; 10 uses
  br i1 %.not2864, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ll = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.12760, i32 noundef 0, i32 noundef 8) #7 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lm = add i32 %i.lb, 4
  %i.ln = zext i32 %i.lm to i64
  %.val2955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val2955, i64 %i.ln
  %.0.copyload.i3144 = load i32, ptr %i.lo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144) #7, !srcloc !19
  %.not2868 = icmp eq i32 %.0.copyload.i3144, 0
  br i1 %.not2868, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lp = add nsw i32 %i.ip, -1
  %.val2955.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val2955.1, i64 %i.ld
  %.0.copyload.i3144.1 = load i32, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144.1) #7, !srcloc !19
  %.not2868.1 = icmp eq i32 %.0.copyload.i3144.1, 0
  br i1 %.not2868.1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.12807 = phi i32 [ %i.iq, %bb.bi ], [ %i.ip, %bb.bk ], [ %i.lp, %bb.bj ] ; 3 uses
  %i.lr = phi i1 [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.not2879 = phi i1 [ false, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bj ] ; 4 uses
  %.12797 = phi i32 [ 2, %bb.bi ], [ 0, %bb.bk ], [ 1, %bb.bj ] ; 10 uses
  %i.ls = add nsw i32 %.12797, %.12807            ; 2 uses
  %.not2870 = icmp eq i32 %i.ls, 0
  br i1 %.not2870, label %.loopexit3233, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lt = sub nsw i32 0, %.12797
  %i.lu = zext i32 %i.ls to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %indvars.iv3286 = phi i64 [ %indvars.iv.next3287, %bb.bo ], [ %i.lu, %bb.bm ]
  %.22808 = phi i32 [ %i.lz, %bb.bo ], [ %.12807, %bb.bm ] ; 2 uses
  %indvars.iv.next3287 = add nsw i64 %indvars.iv3286, -1 ; 2 uses
  %indvars3288 = trunc i64 %indvars.iv.next3287 to i32 ; 2 uses
  %i.lv = shl i32 %indvars3288, 2
  %i.lw = add i32 %i.lv, %i.jk
  %i.lx = zext i32 %i.lw to i64
  %.val2954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.val2954, i64 %i.lx
  %.0.copyload.i3145 = load i32, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3145) #7, !srcloc !19
  %.not2871 = icmp eq i32 %.0.copyload.i3145, 0
  br i1 %.not2871, label %bb.bo, label %.loopexit3233

bb.bo:                                            ; preds = %bb.bn
  %i.lz = add i32 %.22808, -1
  %.not2872 = icmp eq i32 %indvars3288, 0
  br i1 %.not2872, label %.loopexit3233, label %bb.bn

.loopexit3233:                                    ; preds = %bb.bo, %bb.bn, %bb.bl
  %.32809 = phi i32 [ %.12807, %bb.bl ], [ %i.lt, %bb.bo ], [ %.22808, %bb.bn ] ; 4 uses
  br i1 %i.lr, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %.loopexit3233
  %i.ma = icmp sgt i32 %.32809, -1
  br i1 %i.ma, label %bb.bq, label %.loopexit3226

bb.bq:                                            ; preds = %bb.bp
  %.val2953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val2953, i64 %i.ld
  %.0.copyload.i3146 = load i32, ptr %i.mb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3146) #7, !srcloc !19
  %i.mc = zext i32 %.0.copyload.i3146 to i64      ; 3 uses
  %i.md = icmp eq i32 %.0.copyload.i3146, 0
  %i.me = zext nneg i32 %.32809 to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.ca, %bb.bq
  %indvars.iv3318 = phi i64 [ %indvars.iv.next3319, %bb.ca ], [ %i.me, %bb.bq ] ; 3 uses
  %.22798 = phi i32 [ %.32799, %bb.ca ], [ 0, %bb.bq ]
  %i.mf = zext i32 %.22798 to i64
  %i.mg = shl nuw i64 %i.mf, 32
  %i.mh = trunc nuw nsw i64 %indvars.iv3318 to i32
  %i.mi = shl i32 %i.mh, 2                        ; 5 uses
  %i.mj = add i32 %i.mi, %i.jk
  %i.mk = zext i32 %i.mj to i64
  %.val2952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.val2952, i64 %i.mk
  %.0.copyload.i3147 = load i32, ptr %i.ml, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3147) #7, !srcloc !19
  %i.mm = zext i32 %.0.copyload.i3147 to i64
  %i.mn = or disjoint i64 %i.mg, %i.mm            ; 4 uses
  %.not2893 = icmp eq i64 %i.mn, 0
  br i1 %.not2893, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mo = add i32 %i.mi, %i.lk
  %i.mp = zext i32 %i.mo to i64
  %.val3003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val3003, i64 %i.mp
  store i32 0, ptr %i.mq, align 1
  br label %bb.ca

bb.bt:                                            ; preds = %bb.br
  %i.mr = icmp ult i64 %i.mn, %i.mc
  br i1 %i.mr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ms = add i32 %i.mi, %i.lk
  %i.mt = zext i32 %i.ms to i64
  %.val3002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val3002, i64 %i.mt
  store i32 0, ptr %i.mu, align 1
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bt
  %i.mv = icmp eq i64 %i.mn, %i.mc
  br i1 %i.mv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mw = add i32 %i.mi, %i.lk
  %i.mx = zext i32 %i.mw to i64
  %.val3001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val3001, i64 %i.mx
  store i32 1, ptr %i.my, align 1
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  br i1 %i.md, label %bb.by, label %bb.bz, !prof !25

bb.by:                                            ; preds = %bb.bx
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.mz = add i32 %i.mi, %i.lk
  %i.na = udiv i64 %i.mn, %i.mc
  %i.nb = trunc i64 %i.na to i32                  ; 2 uses
  %i.nc = zext i32 %i.mz to i64
  %.val3000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val3000, i64 %i.nc
  store i32 %i.nb, ptr %i.nd, align 1
  %i.ne = mul i32 %.0.copyload.i3146, %i.nb
  %i.nf = sub i32 %.0.copyload.i3147, %i.ne
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %bb.bs
  %.32799 = phi i32 [ 0, %bb.bs ], [ %.0.copyload.i3147, %bb.bu ], [ 0, %bb.bw ], [ %i.nf, %bb.bz ] ; 2 uses
  %indvars.iv.next3319 = add nsw i64 %indvars.iv3318, -1
  %i.ng = icmp sgt i64 %indvars.iv3318, 0
  br i1 %i.ng, label %bb.br, label %.loopexit3226

.loopexit3226:                                    ; preds = %bb.ca, %bb.bp
  %.42800 = phi i32 [ 0, %bb.bp ], [ %.32799, %bb.ca ]
  %.not2894 = icmp eq i32 %.12760, 0
  br i1 %.not2894, label %.loopexit3228, label %.loopexit3228.sink.split

bb.cb:                                            ; preds = %.loopexit3233
  %i.nh = add i32 %.32809, %.12797                ; 5 uses
  %i.ni = add nsw i32 %.12797, -1                 ; 3 uses
  %i.nj = shl nsw i32 %i.ni, 2
  %i.nk = add i32 %i.nj, %i.lb
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %.val2951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nm = getelementptr inbounds nuw i8, ptr %.val2951, i64 %i.nl
  %.0.copyload.i3148 = load i32, ptr %i.nm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3148) #7, !srcloc !19
  %i.nn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.copyload.i3148, i1 false) ; 9 uses
  %.not2874 = icmp eq i32 %i.nn, 0                ; 2 uses
  br i1 %.not2874, label %.loopexit3229, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not2875 = icmp eq i32 %i.nh, 0
  br i1 %.not2875, label %.loopexit3231, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.no = sub nuw nsw i32 32, %i.nn               ; 5 uses
  %i.np = add i32 %i.nh, -4
  %i.nq = icmp ult i32 %i.np, -3
  br i1 %i.nq, label %bb.ce, label %.loopexit3232

bb.ce:                                            ; preds = %bb.cd
  %i.nr = and i32 %i.nh, -4                       ; 2 uses
  %i.ns = and i32 %i.nn, 31                       ; 4 uses
  %i.nt = add i32 %i.jk, 4
  %i.nu = add i32 %i.jk, 8
  %i.nv = add i32 %i.jk, 12
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %indvars.iv3290 = phi i64 [ %indvars.iv.next3291, %bb.cf ], [ 0, %bb.ce ] ; 2 uses
  %.4 = phi i32 [ %i.oz, %bb.cf ], [ 0, %bb.ce ]
  %i.nw = trunc nuw i64 %indvars.iv3290 to i32
  %i.nx = shl i32 %i.nw, 2                        ; 4 uses
  %i.ny = add i32 %i.nx, %i.jk
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %.val2950 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2950, i64 %i.nz
  %.0.copyload.i3149 = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3149) #7, !srcloc !19
  %i.ob = shl i32 %.0.copyload.i3149, %i.ns
  %i.oc = or i32 %i.ob, %.4
  %.val2998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val2998, i64 %i.nz
  store i32 %i.oc, ptr %i.od, align 1
  %i.oe = add i32 %i.nt, %i.nx
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %.val2949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val2949, i64 %i.of
  %.0.copyload.i3150 = load i32, ptr %i.og, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3150) #7, !srcloc !19
  %i.oh = shl i32 %.0.copyload.i3150, %i.ns
  %i.oi = lshr i32 %.0.copyload.i3149, %i.no
  %i.oj = or i32 %i.oh, %i.oi
  %.val2997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %.val2997, i64 %i.of
  store i32 %i.oj, ptr %i.ok, align 1
  %i.ol = add i32 %i.nu, %i.nx
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %.val2948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val2948, i64 %i.om
  %.0.copyload.i3151 = load i32, ptr %i.on, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3151) #7, !srcloc !19
  %i.oo = shl i32 %.0.copyload.i3151, %i.ns
  %i.op = lshr i32 %.0.copyload.i3150, %i.no
  %i.oq = or i32 %i.oo, %i.op
  %.val2996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val2996, i64 %i.om
  store i32 %i.oq, ptr %i.or, align 1
  %i.os = add i32 %i.nv, %i.nx
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.qs = udiv i64 %.0.copyload.i3155, %i.qq      ; 6 uses
  %i.qt = mul i64 %i.qs, %i.qq                    ; 0 uses
  %.recomposed3422 = urem i64 %.0.copyload.i3155, %i.qq ; 2 uses
  %i.qu = icmp eq i64 %i.qs, 4294967296
  br i1 %i.qu, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.val3108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qv = getelementptr inbounds nuw i8, ptr %.val3108, i64 %i.qf
  %.0.copyload.i3157 = load i32, ptr %i.qv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3157) #7, !srcloc !40
  %i.qw = zext i32 %.0.copyload.i3157 to i64
  %i.qx = mul i64 %i.qs, %i.qw
  %i.qy = add i32 %i.ql, -8
  %i.qz = zext i32 %i.qy to i64
  %.val3107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val3107, i64 %i.qz
  %.0.copyload.i3158 = load i32, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3158) #7, !srcloc !40
  %i.rb = zext i32 %.0.copyload.i3158 to i64
  %i.rc = shl i64 %.recomposed3422, 32
  %i.rd = or disjoint i64 %i.rc, %i.rb
  %i.re = icmp ugt i64 %i.qx, %i.rd
  br i1 %i.re, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rf = add i64 %i.qs, -1                       ; 4 uses
  %i.rg = add i64 %.recomposed3422, %i.qq         ; 2 uses
  %i.rh = icmp ugt i64 %i.rg, 4294967295
  br i1 %i.rh, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not2881 = icmp eq i64 %i.rf, 4294967296
  br i1 %.not2881, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val3106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.val3106, i64 %i.qf
  %.0.copyload.i3159 = load i32, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3159) #7, !srcloc !40
  %i.rj = zext i32 %.0.copyload.i3159 to i64
  %i.rk = mul i64 %i.rf, %i.rj
  %i.rl = add i32 %i.ql, -8
  %i.rm = zext i32 %i.rl to i64
  %.val3105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3105, i64 %i.rm
  %.0.copyload.i3160 = load i32, ptr %i.rn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3160) #7, !srcloc !40
  %i.ro = zext i32 %.0.copyload.i3160 to i64
  %i.rp = shl nuw i64 %i.rg, 32
  %i.rq = or disjoint i64 %i.rp, %i.ro
  %.not2882 = icmp ugt i64 %i.rk, %i.rq
  br i1 %.not2882, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.rr = add i64 %i.qs, -2
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cp, %bb.cn, %bb.cq
  %.02764 = phi i64 [ %i.rf, %bb.cn ], [ %i.rf, %bb.cp ], [ %i.rr, %bb.cq ], [ %i.qs, %bb.cm ] ; 3 uses
  br i1 %.not2879, label %bb.cw, label %.preheader3223

.preheader3223:                                   ; preds = %bb.cr, %.preheader3223
  %indvars.iv3306 = phi i64 [ %indvars.iv.next3307, %.preheader3223 ], [ 0, %bb.cr ] ; 3 uses
  %.02763 = phi i64 [ %i.sn, %.preheader3223 ], [ 0, %bb.cr ]
  %i.rs = trunc nuw nsw i64 %indvars.iv3306 to i32
  %i.rt = add i32 %i.rs, %i.qi
  %i.ru = shl i32 %i.rt, 2
  %i.rv = add i32 %i.ru, %i.jk
  %i.rw = zext i32 %i.rv to i64                   ; 2 uses
  %.val3104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.val3104, i64 %i.rw
  %.0.copyload.i3161 = load i32, ptr %i.rx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3161) #7, !srcloc !40
  %i.ry = zext i32 %.0.copyload.i3161 to i64
  %indvars.iv3306.tr = trunc i64 %indvars.iv3306 to i32
  %i.rz = shl i32 %indvars.iv3306.tr, 2
  %i.sa = add i32 %i.rz, %i.lb
  %i.sb = zext i32 %i.sa to i64
  %.val3103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val3103, i64 %i.sb
  %.0.copyload.i3162 = load i32, ptr %i.sc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3162) #7, !srcloc !40
  %i.sd = zext i32 %.0.copyload.i3162 to i64
  %i.se = mul i64 %.02764, %i.sd                  ; 2 uses
  %i.sf = and i64 %i.se, 4294967295
  %i.sg = add nuw nsw i64 %.02763, %i.sf
  %i.sh = sub nsw i64 %i.ry, %i.sg                ; 2 uses
  %.val3094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = trunc i64 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %.val3094, i64 %i.rw
  store i32 %i.si, ptr %i.sj, align 1
  %i.sk = lshr i64 %i.se, 32
  %i.sl = lshr i64 %i.sh, 32
  %i.sm = sub nsw i64 %i.sk, %i.sl                ; 2 uses
  %i.sn = and i64 %i.sm, 4294967295               ; 2 uses
  %indvars.iv.next3307 = add nuw nsw i64 %indvars.iv3306, 1 ; 2 uses
  %.not2884 = icmp eq i64 %indvars.iv.next3307, %i.qg
  br i1 %.not2884, label %bb.cs, label %.preheader3223

bb.cs:                                            ; preds = %.preheader3223
  %i.so = zext i32 %i.ql to i64                   ; 4 uses
  %.val2944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2944, i64 %i.so
  %.0.copyload.i3163 = load i32, ptr %i.sp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3163) #7, !srcloc !19
  %i.sq = trunc i64 %i.sm to i32
  %i.sr = sub i32 %.0.copyload.i3163, %i.sq
  %.val2991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2991, i64 %i.so
  store i32 %i.sr, ptr %i.ss, align 1
  %i.st = shl i32 %i.qi, 2
  %i.su = add i32 %i.st, %i.lk
  %i.sv = trunc i64 %.02764 to i32                ; 2 uses
  %i.sw = zext i32 %i.su to i64                   ; 2 uses
  %.val2990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2990, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 1
  %i.sy = zext i32 %.0.copyload.i3163 to i64
  %.not2885 = icmp samesign ugt i64 %i.sn, %i.sy
  br i1 %.not2885, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.sz = add i32 %i.sv, -1
  %.val2989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val2989, i64 %i.sw
  store i32 %i.sz, ptr %i.ta, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %indvars.iv3310 = phi i64 [ %indvars.iv.next3311, %bb.cu ], [ 0, %bb.ct ] ; 3 uses
  %.62793 = phi i32 [ %.22761, %bb.cu ], [ 0, %bb.ct ] ; 2 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv3310 to i32
  %i.tc = add i32 %i.tb, %i.qi
  %i.td = shl i32 %i.tc, 2
  %i.te = add i32 %i.td, %i.jk
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %.val2943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val2943, i64 %i.tf
  %.0.copyload.i3164 = load i32, ptr %i.tg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3164) #7, !srcloc !19
  %indvars.iv3310.tr = trunc i64 %indvars.iv3310 to i32
  %i.th = shl i32 %indvars.iv3310.tr, 2
  %i.ti = add i32 %i.th, %i.lb
  %i.tj = zext i32 %i.ti to i64
  %.val2942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val2942, i64 %i.tj
  %.0.copyload.i3165 = load i32, ptr %i.tk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3165) #7, !srcloc !19
  %i.tl = add i32 %.0.copyload.i3164, %.62793
  %i.tm = add i32 %i.tl, %.0.copyload.i3165       ; 3 uses
  %.val2988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.val2988, i64 %i.tf
  store i32 %i.tm, ptr %i.tn, align 1
  %i.to = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i3165, i32 %.0.copyload.i3164) ; 2 uses
  %.not2886 = icmp ugt i32 %i.to, %i.tm
  %i.tp = icmp eq i32 %i.to, %i.tm
  %i.tq = select i1 %i.tp, i32 %.62793, i32 0
  %.22761 = select i1 %.not2886, i32 1, i32 %i.tq ; 2 uses
  %indvars.iv.next3311 = add nuw nsw i64 %indvars.iv3310, 1 ; 2 uses
  %.not2887 = icmp eq i64 %indvars.iv.next3311, %i.qg
  br i1 %.not2887, label %bb.cv, label %bb.cu

bb.cv:                                            ; preds = %bb.cu
  %.val2941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2941, i64 %i.so
  %.0.copyload.i3166 = load i32, ptr %i.tr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3166) #7, !srcloc !19
  %i.ts = add i32 %.0.copyload.i3166, %.22761
  %.val2987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2987, i64 %i.so
  store i32 %i.ts, ptr %i.tt, align 1
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cr
  %i.tu = shl i32 %i.qi, 2
  %i.tv = add i32 %i.tu, %i.lk
  %i.tw = zext i32 %i.tv to i64
  %.val3093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tx = trunc i64 %.02764 to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %.val3093, i64 %i.tw
  store i32 %i.tx, ptr %i.ty, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cs, %bb.cw, %bb.cv
  %indvars.iv.next3315 = add nsw i64 %indvars.iv3314, -1
  %i.tz = icmp sgt i32 %i.qi, 0
  br i1 %i.tz, label %bb.cj, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not2888 = icmp eq i32 %.12760, 0
  br i1 %.not2888, label %.loopexit3228, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not2874, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not2879, label %.loopexit3228, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not2890 = icmp eq i32 %i.ni, 0
  br i1 %.not2890, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ua = and i32 %i.nn, 31
  br label %.thread

bb.dd:                                            ; preds = %bb.db
  %5 = and i32 %.12797, 1
  %6 = sub nuw nsw i32 32, %i.nn                  ; 2 uses
  %7 = and i32 %i.nn, 31                          ; 3 uses
  %i.ub = add i32 %.12760, 4
  %i.uc = add i32 %i.jk, 4
  %i.ud = zext i32 %i.uc to i64
  %.val2940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw i8, ptr %.val2940, i64 %i.ud
  %.0.copyload.i3167 = load i32, ptr %i.ue, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3167) #7, !srcloc !19
  %i.uf = lshr i32 %.0.copyload.i3167, %7
  %i.ug = zext i32 %i.ub to i64
  %.val2986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uh = getelementptr inbounds nuw i8, ptr %.val2986, i64 %i.ug
  store i32 %i.uf, ptr %i.uh, align 1
  %i.ui = shl i32 %.0.copyload.i3167, %6
  %i.uj = zext i32 %i.jk to i64
  %.val2939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uk = getelementptr inbounds nuw i8, ptr %.val2939, i64 %i.uj
  %.0.copyload.i3168 = load i32, ptr %i.uk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3168) #7, !srcloc !19
  %i.ul = lshr i32 %.0.copyload.i3168, %7
  %i.um = or i32 %i.ul, %i.ui
  %i.un = zext i32 %.12760 to i64
  %.val2985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uo = getelementptr inbounds nuw i8, ptr %.val2985, i64 %i.un
  store i32 %i.um, ptr %i.uo, align 1
  %i.up = shl i32 %.0.copyload.i3168, %6
  %.not2891 = icmp eq i32 %5, 0
  br i1 %.not2891, label %.loopexit3228, label %.thread

.thread:                                          ; preds = %bb.dc, %bb.dd
  %.pre-phi3342 = phi i32 [ %i.ua, %bb.dc ], [ %7, %bb.dd ]
  %.1027833215 = phi i32 [ 0, %bb.dc ], [ %i.up, %bb.dd ]
  %.128053214 = phi i32 [ 0, %bb.dc ], [ -4, %bb.dd ] ; 2 uses
  %i.uq = add i32 %.128053214, %.12760
  %i.ur = add i32 %.128053214, %i.jk
  %i.us = zext i32 %i.ur to i64
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ut = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.us
  %.0.copyload.i3169 = load i32, ptr %i.ut, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3169) #7, !srcloc !19
  %i.uu = lshr i32 %.0.copyload.i3169, %.pre-phi3342
  %i.uv = or i32 %i.uu, %.1027833215
  br label %.loopexit3228.sink.split

bb.de:                                            ; preds = %bb.cz
  br i1 %.not2879, label %.loopexit3228, label %.preheader3227

.preheader3227:                                   ; preds = %bb.de, %.preheader3227
  %.82814 = phi i32 [ %i.vd, %.preheader3227 ], [ %i.ni, %bb.de ] ; 2 uses
  %.11 = phi i32 [ %i.ve, %.preheader3227 ], [ 0, %bb.de ]
  %i.uw = shl nsw i32 %.82814, 2                  ; 2 uses
  %i.ux = add i32 %i.uw, %.12760
  %i.uy = add i32 %i.uw, %i.jk
  %i.uz = zext i32 %i.uy to i64
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.va = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.uz
  %.0.copyload.i3170 = load i32, ptr %i.va, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3170) #7, !srcloc !19
  %i.vb = zext i32 %i.ux to i64
  %.val2983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vc = getelementptr inbounds nuw i8, ptr %.val2983, i64 %i.vb
  store i32 %.0.copyload.i3170, ptr %i.vc, align 1
  %i.vd = add nsw i32 %.82814, -1
  %i.ve = add nuw nsw i32 %.11, 1                 ; 2 uses
  %.not2889 = icmp eq i32 %i.ve, %.12797
  br i1 %.not2889, label %.loopexit3228, label %.preheader3227

.loopexit3228.sink.split:                         ; preds = %.loopexit3226, %.thread
  %.sink3380 = phi i32 [ %i.uq, %.thread ], [ %.12760, %.loopexit3226 ]
  %.sink3377 = phi i32 [ %i.uv, %.thread ], [ %.42800, %.loopexit3226 ]
  %i.vf = zext i32 %.sink3380 to i64
  %.val2984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw i8, ptr %.val2984, i64 %i.vf
  store i32 %.sink3377, ptr %i.vg, align 1
  br label %.loopexit3228

.loopexit3228:                                    ; preds = %.preheader3227, %.loopexit3228.sink.split, %bb.de, %bb.dd, %bb.da, %bb.cy, %.loopexit3226
  %.not2895 = icmp eq i32 %.0.copyload.i3136, 0
  br i1 %.not2895, label %bb.dh, label %.preheader3225

.preheader3225:                                   ; preds = %.loopexit3228, %.preheader3225
  %indvars.iv3322 = phi i64 [ %indvars.iv.next3323, %.preheader3225 ], [ 0, %.loopexit3228 ] ; 2 uses
  %i.vh = trunc nuw i64 %indvars.iv3322 to i32
  %i.vi = shl i32 %i.vh, 3                        ; 3 uses
  %i.vj = add i32 %i.vi, %.0.copyload.i3136
  %i.vk = add i32 %i.vi, %i.lk
  %i.vl = zext i32 %i.vk to i64
  %.val3040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vm = getelementptr inbounds nuw i8, ptr %.val3040, i64 %i.vl
  %.0.copyload.i3171 = load i64, ptr %i.vm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3171) #7, !srcloc !22
  %i.vn = zext i32 %i.vj to i64
  %.val3075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vo = getelementptr inbounds nuw i8, ptr %.val3075, i64 %i.vn
  store i64 %.0.copyload.i3171, ptr %i.vo, align 1
  %i.vp = or disjoint i32 %i.vi, 8                ; 2 uses
  %i.vq = add i32 %i.vp, %.0.copyload.i3136
  %i.vr = add i32 %i.vp, %i.lk
  %i.vs = zext i32 %i.vr to i64
  %.val3039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vt = getelementptr inbounds nuw i8, ptr %.val3039, i64 %i.vs
  %.0.copyload.i3172 = load i64, ptr %i.vt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3172) #7, !srcloc !22
  %i.vu = zext i32 %i.vq to i64
  %.val3074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vv = getelementptr inbounds nuw i8, ptr %.val3074, i64 %i.vu
  store i64 %.0.copyload.i3172, ptr %i.vv, align 1
  %indvars.iv.next3323 = add nuw nsw i64 %indvars.iv3322, 2 ; 2 uses
  %indvars3326 = trunc i64 %indvars.iv.next3323 to i32
  %.not2897 = icmp eq i32 %i.jl, %indvars3326
  br i1 %.not2897, label %bb.df, label %.preheader3225

bb.df:                                            ; preds = %.preheader3225
  br i1 %.not2867, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vw = shl nuw nsw i32 %i.jl, 3                ; 2 uses
  %i.vx = add i32 %i.vw, %.0.copyload.i3136
  %i.vy = add i32 %i.vw, %i.lk
  %i.vz = zext i32 %i.vy to i64
  %.val3038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wa = getelementptr inbounds nuw i8, ptr %.val3038, i64 %i.vz
  %.0.copyload.i3173 = load i64, ptr %i.wa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3173) #7, !srcloc !22
  %i.wb = zext i32 %i.vx to i64
  %.val3073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wc = getelementptr inbounds nuw i8, ptr %.val3073, i64 %i.wb
  store i64 %.0.copyload.i3173, ptr %i.wc, align 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %.loopexit3228, %bb.dg
  br i1 %.not2864, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wd = zext i32 %.12760 to i64
  %.val3037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.we = getelementptr inbounds nuw i8, ptr %.val3037, i64 %i.wd
  %.0.copyload.i3174 = load i64, ptr %i.we, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3174) #7, !srcloc !22
  %.val3072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wf = getelementptr inbounds nuw i8, ptr %.val3072, i64 %i.cm
  store i64 %.0.copyload.i3174, ptr %i.wf, align 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.wg = icmp eq i32 %i.jk, %i.io
  br i1 %i.wg, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.jk) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lb) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lk) #7
  %.not2899 = icmp eq i32 %.12760, 0
  br i1 %.not2899, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.12760) #7
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dj, %bb.dl
  store i32 %i.in, ptr %i.a, align 8, !tbaa !7
  %.val2936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wh = getelementptr inbounds nuw i8, ptr %.val2936, i64 %i.ck
  %.0.copyload.i3175 = load i32, ptr %i.wh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3175) #7, !srcloc !19
  %i.wi = add i32 %.0.copyload.i3175, %i.ji
  %i.wj = sub nsw i32 %i.dv, %i.ep
  %i.wk = shl nsw i32 %i.wj, 3
  %i.wl = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.wi, i32 noundef 0, i32 noundef %i.wk) #7 ; 0 uses
  br label %bb.eh

bb.dn:                                            ; preds = %bb.ac
  %.val2935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wm = getelementptr inbounds nuw i8, ptr %.val2935, i64 %i.cl
  %.0.copyload.i3176 = load i32, ptr %i.wm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3176) #7, !srcloc !19
  %i.wn = icmp ugt i32 %.0.copyload.i3176, 64
  br i1 %i.wn, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.val2934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wo = getelementptr inbounds nuw i8, ptr %.val2934, i64 %i.cj
  %.0.copyload.i3177 = load i32, ptr %i.wo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3177) #7, !srcloc !19
  %i.wp = icmp ugt i32 %.0.copyload.i3177, 64
  br i1 %i.wp, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val3036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3036, i64 %i.ci
  %.0.copyload.i3178 = load i64, ptr %i.wq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3178) #7, !srcloc !22
  %.val3071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %.val3071, i64 %i.ck
  store i64 %.0.copyload.i3178, ptr %i.wr, align 1
  %.val2933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ws = getelementptr inbounds nuw i8, ptr %.val2933, i64 %i.cj
  %.0.copyload.i3179 = load i32, ptr %i.ws, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3179) #7, !srcloc !19
  %.val2982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wt = getelementptr inbounds nuw i8, ptr %.val2982, i64 %i.cl
  store i32 %.0.copyload.i3179, ptr %i.wt, align 1
  %i.wu = icmp ugt i32 %.0.copyload.i3179, 64
  br i1 %i.wu, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.wv = zext i32 %.0.copyload.i3179 to i64
  %i.ww = add nuw nsw i64 %i.wv, 63
  %sh.diff = lshr i64 %i.ww, 3
  %i.wx = and i64 %sh.diff, 1073741816
  %i.wy = add i64 %.0.copyload.i3178, 4294967288
  %i.wz = add i64 %i.wy, %i.wx
  %i.xa = and i64 %i.wz, 4294967295               ; 2 uses
  %.val3035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xb = getelementptr inbounds nuw i8, ptr %.val3035, i64 %i.xa
  %.0.copyload.i3180 = load i64, ptr %i.xb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3180) #7, !srcloc !22
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pre-phi3340 = phi i64 [ %i.xa, %bb.dq ], [ %i.ck, %bb.dp ]
  %.12765 = phi i64 [ %.0.copyload.i3180, %bb.dq ], [ %.0.copyload.i3178, %bb.dp ]
  %i.xc = sub i32 0, %.0.copyload.i3179
  %i.xd = and i32 %i.xc, 63
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = lshr i64 -1, %i.xe
  %i.xg = and i64 %.12765, %i.xf
  %.val3070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xh = getelementptr inbounds nuw i8, ptr %.val3070, i64 %.pre-phi3340
  store i64 %i.xg, ptr %i.xh, align 1
  br label %bb.ec

bb.ds:                                            ; preds = %bb.dn, %bb.do
  %.val2932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xi = getelementptr inbounds nuw i8, ptr %.val2932, i64 %i.cj
  %.0.copyload.i3181 = load i32, ptr %i.xi, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3181) #7, !srcloc !19
  %i.xj = zext i32 %.0.copyload.i3181 to i64
  %i.xk = add nuw nsw i64 %i.xj, 63               ; 2 uses
  %i.xl = lshr i64 %i.xk, 6                       ; 2 uses
  %i.xm = trunc nuw nsw i64 %i.xl to i32
  %i.xn = zext i32 %.0.copyload.i3176 to i64
  %i.xo = add nuw nsw i64 %i.xn, 63
  %i.xp = lshr i64 %i.xo, 6
  %.not2857 = icmp eq i64 %i.xl, %i.xp
  br i1 %.not2857, label %bb.dy, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xq = icmp ult i32 %.0.copyload.i3176, 65
  br i1 %i.xq, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.val2931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.val2931, i64 %i.ck
  %.0.copyload.i3182 = load i32, ptr %i.xr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3182) #7, !srcloc !19
  %.not2858 = icmp eq i32 %.0.copyload.i3182, 0
  br i1 %.not2858, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3182) #7
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dt, %bb.dv
  %.val2981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw i8, ptr %.val2981, i64 %i.cl
  store i32 %.0.copyload.i3181, ptr %i.xs, align 1
  %i.xt = icmp ult i32 %.0.copyload.i3181, 65
  br i1 %i.xt, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xu = shl nuw nsw i32 %i.xm, 3
  %i.xv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.xu) #7 ; 2 uses
  %.val2980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xw = getelementptr inbounds nuw i8, ptr %.val2980, i64 %i.ck
  store i32 %i.xv, ptr %i.xw, align 1
  br label %bb.ea
end_hunk_2
