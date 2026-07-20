inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ACompactArray0x3A0x3AscaleUp0x280x29:bb.a
  %.val1177 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1177, i64 %i.bg
  %.0.copyload.i1225 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1225) #16, !srcloc !33
  %i.bi = zext i32 %i.be to i64
  %.val1185 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1185, i64 %i.bi
  store i8 %.0.copyload.i1225, ptr %i.bj, align 1
  %i.bk = add i32 %.4, 1                          ; 2 uses
  %i.bl = add i32 %i.bk, %i.k
  %i.bm = add i32 %i.bk, %.0.copyload.i1218
  %i.bn = zext i32 %i.bm to i64
  %.val1176 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1176, i64 %i.bn
  %.0.copyload.i1226 = load i8, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1226) #16, !srcloc !33
  %i.bp = zext i32 %i.bl to i64
  %.val1184 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1184, i64 %i.bp
  store i8 %.0.copyload.i1226, ptr %i.bq, align 1
  %i.br = add i32 %.4, 2                          ; 2 uses
  %i.bs = add i32 %i.br, %i.k
  %i.bt = add i32 %i.br, %.0.copyload.i1218
  %i.bu = zext i32 %i.bt to i64
  %.val1175 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1175, i64 %i.bu
  %.0.copyload.i1227 = load i8, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1227) #16, !srcloc !33
  %i.bw = zext i32 %i.bs to i64
  %.val1183 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1183, i64 %i.bw
  store i8 %.0.copyload.i1227, ptr %i.bx, align 1
  %i.by = add i32 %.4, 3                          ; 2 uses
  %i.bz = add i32 %i.by, %i.k
  %i.ca = add i32 %i.by, %.0.copyload.i1218
  %i.cb = zext i32 %i.ca to i64
  %.val1174 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1174, i64 %i.cb
  %.0.copyload.i1228 = load i8, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1228) #16, !srcloc !33
  %i.cd = zext i32 %i.bz to i64
  %.val1182 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1182, i64 %i.cd
  store i8 %.0.copyload.i1228, ptr %i.ce, align 1
  %i.cf = add i32 %.4, 4                          ; 2 uses
  %.not1126 = icmp eq i32 %i.cf, %.0.copyload.i1217
  br i1 %.not1126, label %.loopexit, label %.preheader

bb.n:                                             ; preds = %bb.c
  %.not1127 = icmp eq i32 %.0.copyload.i1217, 1
  br i1 %.not1127, label %.thread1263, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = and i32 %.0.copyload.i1217, -2          ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %bb.o
  %indvars.iv1372 = phi i64 [ %indvars.iv.next1373, %bb.t ], [ 0, %bb.o ] ; 3 uses
  %i.ch = trunc nuw i64 %indvars.iv1372 to i32    ; 2 uses
  %i.ci = shl i32 %i.ch, 2
  %i.cj = add i32 %i.ci, %.0.copyload.i1218
  %i.ck = zext i32 %i.cj to i64
  %.val1139 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.ck
  %.0.copyload.i1229 = load i32, ptr %i.cl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1229) #16, !srcloc !22
  %i.cm = icmp ult i32 %.0.copyload.i1229, 256
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = add i32 %i.k, %i.ch
  %i.co = zext i32 %i.cn to i64
  %.val1181 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cp = trunc nuw i32 %.0.copyload.i1229 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1181, i64 %i.co
  store i8 %i.cp, ptr %i.cq, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = trunc i64 %indvars.iv1372 to i32
  %i.cs = or disjoint i32 %i.cr, 1                ; 2 uses
  %i.ct = shl i32 %i.cs, 2
  %i.cu = add i32 %i.ct, %.0.copyload.i1218
  %i.cv = zext i32 %i.cu to i64
  %.val1138 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.cv
  %.0.copyload.i1230 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1230) #16, !srcloc !22
  %i.cx = icmp ult i32 %.0.copyload.i1230, 256
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = add i32 %i.cs, %i.k
  %i.cz = zext i32 %i.cy to i64
  %.val1180 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.da = trunc nuw i32 %.0.copyload.i1230 to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.val1180, i64 %i.cz
  store i8 %i.da, ptr %i.db, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next1373 = add nuw nsw i64 %indvars.iv1372, 2 ; 2 uses
  %indvars1374 = trunc i64 %indvars.iv.next1373 to i32
  %.not1128 = icmp eq i32 %i.cg, %indvars1374
  br i1 %.not1128, label %bb.u, label %bb.p

bb.u:                                             ; preds = %bb.t
  %i.dc = and i32 %.0.copyload.i1217, 1
  %.not1129 = icmp eq i32 %i.dc, 0
  br i1 %.not1129, label %.loopexit, label %.thread1263

.thread1263:                                      ; preds = %bb.n, %bb.u
  %.61266 = phi i32 [ %i.cg, %bb.u ], [ 0, %bb.n ] ; 2 uses
  %i.dd = shl i32 %.61266, 2
  %i.de = add i32 %i.dd, %.0.copyload.i1218
  %i.df = zext i32 %i.de to i64
  %.val1137 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.df
  %.0.copyload.i1231 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1231) #16, !srcloc !22
  %i.dh = icmp ugt i32 %.0.copyload.i1231, 255
  br i1 %i.dh, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.thread1263
  %i.di = add i32 %.61266, %i.k
  %i.dj = zext i32 %i.di to i64
  %.val1179 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dk = trunc nuw i32 %.0.copyload.i1231 to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1179, i64 %i.dj
  store i8 %i.dk, ptr %i.dl, align 1
  br label %.loopexit

bb.w:                                             ; preds = %bb.b
  switch i32 %.0.copyload.i1220, label %bb.ab [
    i32 0, label %bb.aa
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.dm = icmp ugt i32 %.0.copyload.i1217, 3
  br i1 %i.dm, label %bb.y, label %.loopexit1279

bb.y:                                             ; preds = %bb.x
  %i.dn = and i32 %.0.copyload.i1217, -4          ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv1334 = phi i64 [ %indvars.iv.next1335, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv1334 to i32
  %i.dp = shl i32 %i.do, 1                        ; 5 uses
  %i.dq = add i32 %i.dp, %i.k
  %i.dr = add i32 %i.dp, %.0.copyload.i1218
  %i.ds = zext i32 %i.dr to i64
  %.val1212 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1212, i64 %i.ds
  %.0.copyload.i1232 = load i16, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1232) #16, !srcloc !46
  %i.du = zext i32 %i.dq to i64
  %.val1202 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1202, i64 %i.du
  store i16 %.0.copyload.i1232, ptr %i.dv, align 1
  %i.dw = or disjoint i32 %i.dp, 2                ; 2 uses
  %i.dx = add i32 %i.dw, %i.k
  %i.dy = add i32 %i.dw, %.0.copyload.i1218
  %i.dz = zext i32 %i.dy to i64
  %.val1211 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1211, i64 %i.dz
  %.0.copyload.i1233 = load i16, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1233) #16, !srcloc !46
  %i.eb = zext i32 %i.dx to i64
  %.val1201 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1201, i64 %i.eb
  store i16 %.0.copyload.i1233, ptr %i.ec, align 1
  %i.ed = or disjoint i32 %i.dp, 4                ; 2 uses
  %i.ee = add i32 %i.ed, %i.k
  %i.ef = add i32 %i.ed, %.0.copyload.i1218
  %i.eg = zext i32 %i.ef to i64
  %.val1210 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1210, i64 %i.eg
  %.0.copyload.i1234 = load i16, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1234) #16, !srcloc !46
  %i.ei = zext i32 %i.ee to i64
  %.val1200 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1200, i64 %i.ei
  store i16 %.0.copyload.i1234, ptr %i.ej, align 1
  %i.ek = or disjoint i32 %i.dp, 6                ; 2 uses
  %i.el = add i32 %i.ek, %i.k
  %i.em = add i32 %i.ek, %.0.copyload.i1218
  %i.en = zext i32 %i.em to i64
  %.val1209 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1209, i64 %i.en
  %.0.copyload.i1235 = load i16, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1235) #16, !srcloc !46
  %i.ep = zext i32 %i.el to i64
  %.val1199 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1199, i64 %i.ep
  store i16 %.0.copyload.i1235, ptr %i.eq, align 1
  %indvars.iv.next1335 = add nuw nsw i64 %indvars.iv1334, 4 ; 2 uses
  %indvars1336 = trunc i64 %indvars.iv.next1335 to i32
  %.not1112 = icmp eq i32 %i.dn, %indvars1336
  br i1 %.not1112, label %.loopexit1279.loopexit, label %bb.z

.loopexit1279.loopexit:                           ; preds = %bb.z
  %2 = zext i32 %i.dn to i64
  br label %.loopexit1279

.loopexit1279:                                    ; preds = %.loopexit1279.loopexit, %bb.x
  %.8 = phi i64 [ 0, %bb.x ], [ %2, %.loopexit1279.loopexit ]
  %i.er = and i32 %.0.copyload.i1217, 3           ; 2 uses
  %.not1113 = icmp eq i32 %i.er, 0
  br i1 %.not1113, label %.loopexit, label %.preheader1277

.preheader1277:                                   ; preds = %.loopexit1279, %.preheader1277
  %indvars.iv1340 = phi i64 [ %indvars.iv.next1341, %.preheader1277 ], [ %.8, %.loopexit1279 ] ; 2 uses
  %.11080 = phi i32 [ %i.ez, %.preheader1277 ], [ 0, %.loopexit1279 ]
  %3 = trunc nuw i64 %indvars.iv1340 to i32
  %i.es = shl i32 %3, 1                           ; 2 uses
  %i.et = add i32 %i.es, %i.k
  %i.eu = add i32 %i.es, %.0.copyload.i1218
  %i.ev = zext i32 %i.eu to i64
  %.val1208 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1208, i64 %i.ev
  %.0.copyload.i1236 = load i16, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1236) #16, !srcloc !46
  %i.ex = zext i32 %i.et to i64
  %.val1198 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1198, i64 %i.ex
  store i16 %.0.copyload.i1236, ptr %i.ey, align 1
  %indvars.iv.next1341 = add nuw nsw i64 %indvars.iv1340, 1
  %i.ez = add nuw nsw i32 %.11080, 1              ; 2 uses
  %.not1114 = icmp eq i32 %i.ez, %i.er
  br i1 %.not1114, label %.loopexit, label %.preheader1277

bb.aa:                                            ; preds = %bb.w
  %i.fa = and i32 %.0.copyload.i1217, 3           ; 3 uses
  %.not1115 = icmp eq i32 %i.fa, 0
  br i1 %.not1115, label %.loopexit1276, label %.preheader1275.preheader

.preheader1275.preheader:                         ; preds = %bb.aa
  %wide.trip.count1350 = zext nneg i32 %i.fa to i64
  br label %.preheader1275

.preheader1275:                                   ; preds = %.preheader1275.preheader, %.preheader1275
  %indvars.iv1344 = phi i64 [ 0, %.preheader1275.preheader ], [ %indvars.iv.next1345, %.preheader1275 ] ; 3 uses
  %indvars.iv1344.tr = trunc i64 %indvars.iv1344 to i32
  %i.fb = shl i32 %indvars.iv1344.tr, 1
  %i.fc = add i32 %i.fb, %i.k
  %i.fd = trunc nuw nsw i64 %indvars.iv1344 to i32
  %i.fe = add i32 %.0.copyload.i1218, %i.fd
  %i.ff = zext i32 %i.fe to i64
  %.val1173 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.ff
  %.0.copyload.i1237 = load i8, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1237) #16, !srcloc !33
  %i.fh = zext i32 %i.fc to i64
  %.val1197 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fi = zext i8 %.0.copyload.i1237 to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1197, i64 %i.fh
  store i16 %i.fi, ptr %i.fj, align 1
  %indvars.iv.next1345 = add nuw nsw i64 %indvars.iv1344, 1 ; 2 uses
  %exitcond1351 = icmp eq i64 %indvars.iv.next1345, %wide.trip.count1350
  br i1 %exitcond1351, label %.loopexit1276, label %.preheader1275

.loopexit1276:                                    ; preds = %.preheader1275, %bb.aa
  %i.fk = icmp ult i32 %.0.copyload.i1217, 4
  br i1 %i.fk, label %.loopexit, label %.preheader1273

.preheader1273:                                   ; preds = %.loopexit1276, %.preheader1273
  %.12 = phi i32 [ %i.gu, %.preheader1273 ], [ %i.fa, %.loopexit1276 ] ; 6 uses
  %i.fl = shl i32 %.12, 1
  %i.fm = add i32 %i.fl, %i.k
  %i.fn = add i32 %.12, %.0.copyload.i1218
  %i.fo = zext i32 %i.fn to i64
  %.val1172 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.fo
  %.0.copyload.i1238 = load i8, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1238) #16, !srcloc !33
  %i.fq = zext i32 %i.fm to i64
  %.val1196 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fr = zext i8 %.0.copyload.i1238 to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1196, i64 %i.fq
  store i16 %i.fr, ptr %i.fs, align 1
  %i.ft = add i32 %.12, 1                         ; 2 uses
  %i.fu = shl i32 %i.ft, 1
  %i.fv = add i32 %i.fu, %i.k
  %i.fw = add i32 %i.ft, %.0.copyload.i1218
  %i.fx = zext i32 %i.fw to i64
  %.val1171 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.fx
  %.0.copyload.i1239 = load i8, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1239) #16, !srcloc !33
  %i.fz = zext i32 %i.fv to i64
  %.val1195 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ga = zext i8 %.0.copyload.i1239 to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1195, i64 %i.fz
  store i16 %i.ga, ptr %i.gb, align 1
  %i.gc = add i32 %.12, 2                         ; 2 uses
  %i.gd = shl i32 %i.gc, 1
  %i.ge = add i32 %i.gd, %i.k
  %i.gf = add i32 %i.gc, %.0.copyload.i1218
  %i.gg = zext i32 %i.gf to i64
  %.val1170 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1170, i64 %i.gg
  %.0.copyload.i1240 = load i8, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1240) #16, !srcloc !33
  %i.gi = zext i32 %i.ge to i64
  %.val1194 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.gj = zext i8 %.0.copyload.i1240 to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %.val1194, i64 %i.gi
  store i16 %i.gj, ptr %i.gk, align 1
  %i.gl = add i32 %.12, 3                         ; 2 uses
  %i.gm = shl i32 %i.gl, 1
  %i.gn = add i32 %i.gm, %i.k
  %i.go = add i32 %i.gl, %.0.copyload.i1218
  %i.gp = zext i32 %i.go to i64
  %.val1169 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1169, i64 %i.gp
  %.0.copyload.i1241 = load i8, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1241) #16, !srcloc !33
  %i.gr = zext i32 %i.gn to i64
  %.val1193 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.gs = zext i8 %.0.copyload.i1241 to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1193, i64 %i.gr
  store i16 %i.gs, ptr %i.gt, align 1
  %i.gu = add i32 %.12, 4                         ; 2 uses
  %.not1117 = icmp eq i32 %i.gu, %.0.copyload.i1217
  br i1 %.not1117, label %.loopexit, label %.preheader1273

bb.ab:                                            ; preds = %bb.w
  %.not1118 = icmp eq i32 %.0.copyload.i1217, 1
  br i1 %.not1118, label %.thread1267, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gv = and i32 %.0.copyload.i1217, -2          ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ac
  %indvars.iv1352 = phi i64 [ %indvars.iv.next1353, %bb.ah ], [ 0, %bb.ac ] ; 3 uses
  %i.gw = trunc nuw i64 %indvars.iv1352 to i32    ; 2 uses
  %i.gx = shl i32 %i.gw, 2
  %i.gy = add i32 %i.gx, %.0.copyload.i1218
  %i.gz = zext i32 %i.gy to i64
  %.val1136 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.gz
  %.0.copyload.i1242 = load i32, ptr %i.ha, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1242) #16, !srcloc !22
  %i.hb = icmp ult i32 %.0.copyload.i1242, 65536
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hc = shl i32 %i.gw, 1
  %i.hd = add i32 %i.hc, %i.k
  %i.he = zext i32 %i.hd to i64
  %.val1192 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.hf = trunc nuw i32 %.0.copyload.i1242 to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1192, i64 %i.he
  store i16 %i.hf, ptr %i.hg, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hh = trunc i64 %indvars.iv1352 to i32
  %i.hi = or disjoint i32 %i.hh, 1                ; 2 uses
  %i.hj = shl i32 %i.hi, 2
  %i.hk = add i32 %i.hj, %.0.copyload.i1218
  %i.hl = zext i32 %i.hk to i64
  %.val1135 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.hl
  %.0.copyload.i1243 = load i32, ptr %i.hm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1243) #16, !srcloc !22
  %i.hn = icmp ult i32 %.0.copyload.i1243, 65536
  br i1 %i.hn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ho = shl i32 %i.hi, 1
  %i.hp = add i32 %i.ho, %i.k
  %i.hq = zext i32 %i.hp to i64
  %.val1191 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.hr = trunc nuw i32 %.0.copyload.i1243 to i16
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1191, i64 %i.hq
  store i16 %i.hr, ptr %i.hs, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next1353 = add nuw nsw i64 %indvars.iv1352, 2 ; 2 uses
  %indvars1354 = trunc i64 %indvars.iv.next1353 to i32
  %.not1119 = icmp eq i32 %i.gv, %indvars1354
  br i1 %.not1119, label %bb.ai, label %bb.ad

bb.ai:                                            ; preds = %bb.ah
  %i.ht = and i32 %.0.copyload.i1217, 1
  %.not1120 = icmp eq i32 %i.ht, 0
  br i1 %.not1120, label %.loopexit, label %.thread1267

.thread1267:                                      ; preds = %bb.ab, %bb.ai
  %.141270 = phi i32 [ %i.gv, %bb.ai ], [ 0, %bb.ab ] ; 2 uses
  %i.hu = shl i32 %.141270, 2
  %i.hv = add i32 %i.hu, %.0.copyload.i1218
  %i.hw = zext i32 %i.hv to i64
  %.val1134 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1134, i64 %i.hw
  %.0.copyload.i1244 = load i32, ptr %i.hx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1244) #16, !srcloc !22
  %i.hy = icmp ugt i32 %.0.copyload.i1244, 65535
  br i1 %i.hy, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.thread1267
  %i.hz = shl i32 %.141270, 1
  %i.ia = add i32 %i.hz, %i.k
  %i.ib = zext i32 %i.ia to i64
  %.val1190 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ic = trunc nuw i32 %.0.copyload.i1244 to i16
  %i.id = getelementptr inbounds nuw i8, ptr %.val1190, i64 %i.ib
  store i16 %i.ic, ptr %i.id, align 1
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  switch i32 %.0.copyload.i1220, label %bb.ap [
    i32 0, label %bb.ao
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ie = icmp ugt i32 %.0.copyload.i1217, 3
  br i1 %i.ie, label %bb.am, label %.loopexit1289

bb.am:                                            ; preds = %bb.al
  %i.if = and i32 %.0.copyload.i1217, -4          ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %bb.am ] ; 5 uses
  %i.ig = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ih = shl i32 %i.ig, 2
  %i.ii = add i32 %i.ih, %i.k
  %i.ij = shl i32 %i.ig, 1
  %i.ik = add i32 %i.ij, %.0.copyload.i1218
  %i.il = zext i32 %i.ik to i64
  %.val1207 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %.val1207, i64 %i.il
  %.0.copyload.i1245 = load i16, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1245) #16, !srcloc !46
  %i.in = zext i16 %.0.copyload.i1245 to i32
  %i.io = zext i32 %i.ii to i64
  %.val1163 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.io
  store i32 %i.in, ptr %i.ip, align 1
  %i.iq = trunc i64 %indvars.iv to i32
  %i.ir = or disjoint i32 %i.iq, 1                ; 2 uses
  %i.is = shl i32 %i.ir, 2
  %i.it = add i32 %i.is, %i.k
  %i.iu = shl i32 %i.ir, 1
  %i.iv = add i32 %i.iu, %.0.copyload.i1218
  %i.iw = zext i32 %i.iv to i64
  %.val1206 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1206, i64 %i.iw
  %.0.copyload.i1246 = load i16, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1246) #16, !srcloc !46
  %i.iy = zext i16 %.0.copyload.i1246 to i32
  %i.iz = zext i32 %i.it to i64
  %.val1162 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.iz
  store i32 %i.iy, ptr %i.ja, align 1
  %i.jb = trunc i64 %indvars.iv to i32
  %i.jc = or disjoint i32 %i.jb, 2                ; 2 uses
  %i.jd = shl i32 %i.jc, 2
  %i.je = add i32 %i.jd, %i.k
  %i.jf = shl i32 %i.jc, 1
  %i.jg = add i32 %i.jf, %.0.copyload.i1218
  %i.jh = zext i32 %i.jg to i64
  %.val1205 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1205, i64 %i.jh
  %.0.copyload.i1247 = load i16, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1247) #16, !srcloc !46
  %i.jj = zext i16 %.0.copyload.i1247 to i32
  %i.jk = zext i32 %i.je to i64
  %.val1161 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.jk
  store i32 %i.jj, ptr %i.jl, align 1
  %i.jm = trunc i64 %indvars.iv to i32
  %i.jn = or disjoint i32 %i.jm, 3                ; 2 uses
  %i.jo = shl i32 %i.jn, 2
  %i.jp = add i32 %i.jo, %i.k
  %i.jq = shl i32 %i.jn, 1
  %i.jr = add i32 %i.jq, %.0.copyload.i1218
  %i.js = zext i32 %i.jr to i64
  %.val1204 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1204, i64 %i.js
  %.0.copyload.i1248 = load i16, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1248) #16, !srcloc !46
  %i.ju = zext i16 %.0.copyload.i1248 to i32
  %i.jv = zext i32 %i.jp to i64
  %.val1160 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.jv
  store i32 %i.ju, ptr %i.jw, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not1103 = icmp eq i32 %i.if, %indvars
  br i1 %.not1103, label %.loopexit1289.loopexit, label %bb.an

.loopexit1289.loopexit:                           ; preds = %bb.an
  %4 = zext i32 %i.if to i64
  br label %.loopexit1289

.loopexit1289:                                    ; preds = %.loopexit1289.loopexit, %bb.al
  %.16 = phi i64 [ 0, %bb.al ], [ %4, %.loopexit1289.loopexit ]
  %i.jx = and i32 %.0.copyload.i1217, 3           ; 2 uses
  %.not1104 = icmp eq i32 %i.jx, 0
  br i1 %.not1104, label %.loopexit, label %.preheader1287

.preheader1287:                                   ; preds = %.loopexit1289, %.preheader1287
  %indvars.iv1314 = phi i64 [ %indvars.iv.next1315, %.preheader1287 ], [ %.16, %.loopexit1289 ] ; 2 uses
  %.31082 = phi i32 [ %i.kh, %.preheader1287 ], [ 0, %.loopexit1289 ]
  %5 = trunc nuw i64 %indvars.iv1314 to i32       ; 2 uses
  %i.jy = shl i32 %5, 2
  %i.jz = add i32 %i.jy, %i.k
  %i.ka = shl i32 %5, 1
  %i.kb = add i32 %i.ka, %.0.copyload.i1218
  %i.kc = zext i32 %i.kb to i64
  %.val1203 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1203, i64 %i.kc
  %.0.copyload.i1249 = load i16, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1249) #16, !srcloc !46
  %i.ke = zext i16 %.0.copyload.i1249 to i32
  %i.kf = zext i32 %i.jz to i64
  %.val1159 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.kf
  store i32 %i.ke, ptr %i.kg, align 1
  %indvars.iv.next1315 = add nuw nsw i64 %indvars.iv1314, 1
  %i.kh = add nuw nsw i32 %.31082, 1              ; 2 uses
  %.not1105 = icmp eq i32 %i.kh, %i.jx
  br i1 %.not1105, label %.loopexit, label %.preheader1287

bb.ao:                                            ; preds = %bb.ak
  %i.ki = and i32 %.0.copyload.i1217, 3           ; 3 uses
  %.not1106 = icmp eq i32 %i.ki, 0
  br i1 %.not1106, label %.loopexit1286, label %.preheader1285.preheader

.preheader1285.preheader:                         ; preds = %bb.ao
  %wide.trip.count = zext nneg i32 %i.ki to i64
  br label %.preheader1285

.preheader1285:                                   ; preds = %.preheader1285.preheader, %.preheader1285
  %indvars.iv1318 = phi i64 [ 0, %.preheader1285.preheader ], [ %indvars.iv.next1319, %.preheader1285 ] ; 3 uses
  %indvars.iv1318.tr = trunc i64 %indvars.iv1318 to i32
  %i.kj = shl i32 %indvars.iv1318.tr, 2
  %i.kk = add i32 %i.kj, %i.k
  %i.kl = trunc nuw nsw i64 %indvars.iv1318 to i32
  %i.km = add i32 %.0.copyload.i1218, %i.kl
  %i.kn = zext i32 %i.km to i64
  %.val1168 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.kn
  %.0.copyload.i1250 = load i8, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1250) #16, !srcloc !33
  %i.kp = zext i8 %.0.copyload.i1250 to i32
  %i.kq = zext i32 %i.kk to i64
  %.val1158 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.kr = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.kq
  store i32 %i.kp, ptr %i.kr, align 1
  %indvars.iv.next1319 = add nuw nsw i64 %indvars.iv1318, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next1319, %wide.trip.count
  br i1 %exitcond, label %.loopexit1286, label %.preheader1285

.loopexit1286:                                    ; preds = %.preheader1285, %bb.ao
  %i.ks = icmp ult i32 %.0.copyload.i1217, 4
  br i1 %i.ks, label %.loopexit, label %.preheader1283

.preheader1283:                                   ; preds = %.loopexit1286, %.preheader1283
  %.20 = phi i32 [ %i.mc, %.preheader1283 ], [ %i.ki, %.loopexit1286 ] ; 6 uses
  %i.kt = shl i32 %.20, 2
  %i.ku = add i32 %i.kt, %i.k
  %i.kv = add i32 %.20, %.0.copyload.i1218
  %i.kw = zext i32 %i.kv to i64
  %.val1167 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.kw
  %.0.copyload.i1251 = load i8, ptr %i.kx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1251) #16, !srcloc !33
  %i.ky = zext i8 %.0.copyload.i1251 to i32
  %i.kz = zext i32 %i.ku to i64
  %.val1157 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.kz
  store i32 %i.ky, ptr %i.la, align 1
  %i.lb = add i32 %.20, 1                         ; 2 uses
  %i.lc = shl i32 %i.lb, 2
  %i.ld = add i32 %i.lc, %i.k
  %i.le = add i32 %i.lb, %.0.copyload.i1218
  %i.lf = zext i32 %i.le to i64
  %.val1166 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.lf
  %.0.copyload.i1252 = load i8, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1252) #16, !srcloc !33
  %i.lh = zext i8 %.0.copyload.i1252 to i32
  %i.li = zext i32 %i.ld to i64
  %.val1156 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.li
  store i32 %i.lh, ptr %i.lj, align 1
  %i.lk = add i32 %.20, 2                         ; 2 uses
  %i.ll = shl i32 %i.lk, 2
  %i.lm = add i32 %i.ll, %i.k
  %i.ln = add i32 %i.lk, %.0.copyload.i1218
  %i.lo = zext i32 %i.ln to i64
  %.val1165 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.lo
  %.0.copyload.i1253 = load i8, ptr %i.lp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1253) #16, !srcloc !33
  %i.lq = zext i8 %.0.copyload.i1253 to i32
  %i.lr = zext i32 %i.lm to i64
  %.val1155 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.lr
  store i32 %i.lq, ptr %i.ls, align 1
  %i.lt = add i32 %.20, 3                         ; 2 uses
  %i.lu = shl i32 %i.lt, 2
  %i.lv = add i32 %i.lu, %i.k
  %i.lw = add i32 %i.lt, %.0.copyload.i1218
  %i.lx = zext i32 %i.lw to i64
  %.val1164 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ly = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.lx
  %.0.copyload.i1254 = load i8, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1254) #16, !srcloc !33
  %i.lz = zext i8 %.0.copyload.i1254 to i32
  %i.ma = zext i32 %i.lv to i64
  %.val1154 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1154, i64 %i.ma
  store i32 %i.lz, ptr %i.mb, align 1
  %i.mc = add i32 %.20, 4                         ; 2 uses
  %.not1108 = icmp eq i32 %i.mc, %.0.copyload.i1217
  br i1 %.not1108, label %.loopexit, label %.preheader1283

bb.ap:                                            ; preds = %bb.ak
  %i.md = icmp ugt i32 %.0.copyload.i1217, 3
  br i1 %i.md, label %bb.aq, label %.loopexit1282

bb.aq:                                            ; preds = %bb.ap
  %i.me = and i32 %.0.copyload.i1217, -4          ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv1324 = phi i64 [ %indvars.iv.next1325, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.mf = trunc nuw i64 %indvars.iv1324 to i32
  %i.mg = shl i32 %i.mf, 2                        ; 5 uses
  %i.mh = add i32 %i.mg, %i.k
  %i.mi = add i32 %i.mg, %.0.copyload.i1218
  %i.mj = zext i32 %i.mi to i64
  %.val1133 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1133, i64 %i.mj
  %.0.copyload.i1255 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1255) #16, !srcloc !22
  %i.ml = zext i32 %i.mh to i64
  %.val1153 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1153, i64 %i.ml
  store i32 %.0.copyload.i1255, ptr %i.mm, align 1
  %i.mn = or disjoint i32 %i.mg, 4                ; 2 uses
  %i.mo = add i32 %i.mn, %i.k
  %i.mp = add i32 %i.mn, %.0.copyload.i1218
  %i.mq = zext i32 %i.mp to i64
  %.val1132 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1132, i64 %i.mq
  %.0.copyload.i1256 = load i32, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #16, !srcloc !22
  %i.ms = zext i32 %i.mo to i64
  %.val1152 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1152, i64 %i.ms
  store i32 %.0.copyload.i1256, ptr %i.mt, align 1
  %i.mu = or disjoint i32 %i.mg, 8                ; 2 uses
  %i.mv = add i32 %i.mu, %i.k
  %i.mw = add i32 %i.mu, %.0.copyload.i1218
  %i.mx = zext i32 %i.mw to i64
  %.val1131 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.my = getelementptr inbounds nuw i8, ptr %.val1131, i64 %i.mx
  %.0.copyload.i1257 = load i32, ptr %i.my, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1257) #16, !srcloc !22
  %i.mz = zext i32 %i.mv to i64
  %.val1151 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.na = getelementptr inbounds nuw i8, ptr %.val1151, i64 %i.mz
  store i32 %.0.copyload.i1257, ptr %i.na, align 1
  %i.nb = or disjoint i32 %i.mg, 12               ; 2 uses
  %i.nc = add i32 %i.nb, %i.k
  %i.nd = add i32 %i.nb, %.0.copyload.i1218
  %i.ne = zext i32 %i.nd to i64
  %.val1130 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nf = getelementptr inbounds nuw i8, ptr %.val1130, i64 %i.ne
  %.0.copyload.i1258 = load i32, ptr %i.nf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1258) #16, !srcloc !22
  %i.ng = zext i32 %i.nc to i64
  %.val1150 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1150, i64 %i.ng
  store i32 %.0.copyload.i1258, ptr %i.nh, align 1
  %indvars.iv.next1325 = add nuw nsw i64 %indvars.iv1324, 4 ; 2 uses
  %indvars1326 = trunc i64 %indvars.iv.next1325 to i32
  %.not1109 = icmp eq i32 %i.me, %indvars1326
  br i1 %.not1109, label %.loopexit1282.loopexit, label %bb.ar

.loopexit1282.loopexit:                           ; preds = %bb.ar
  %6 = zext i32 %i.me to i64
  br label %.loopexit1282

.loopexit1282:                                    ; preds = %.loopexit1282.loopexit, %bb.ap
  %.22 = phi i64 [ 0, %bb.ap ], [ %6, %.loopexit1282.loopexit ]
  %i.ni = and i32 %.0.copyload.i1217, 3           ; 2 uses
  %.not1110 = icmp eq i32 %i.ni, 0
  br i1 %.not1110, label %.loopexit, label %.preheader1280

.preheader1280:                                   ; preds = %.loopexit1282, %.preheader1280
  %indvars.iv1330 = phi i64 [ %indvars.iv.next1331, %.preheader1280 ], [ %.22, %.loopexit1282 ] ; 2 uses
  %.51084 = phi i32 [ %i.nq, %.preheader1280 ], [ 0, %.loopexit1282 ]
  %7 = trunc nuw i64 %indvars.iv1330 to i32
  %i.nj = shl i32 %7, 2                           ; 2 uses
  %i.nk = add i32 %i.nj, %i.k
  %i.nl = add i32 %i.nj, %.0.copyload.i1218
  %i.nm = zext i32 %i.nl to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.nm
  %.0.copyload.i1259 = load i32, ptr %i.nn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1259) #16, !srcloc !22
  %i.no = zext i32 %i.nk to i64
  %.val1149 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.np = getelementptr inbounds nuw i8, ptr %.val1149, i64 %i.no
  store i32 %.0.copyload.i1259, ptr %i.np, align 1
  %indvars.iv.next1331 = add nuw nsw i64 %indvars.iv1330, 1
  %i.nq = add nuw nsw i32 %.51084, 1              ; 2 uses
  %.not1111 = icmp eq i32 %i.nq, %i.ni
  br i1 %.not1111, label %.loopexit, label %.preheader1280

.loopexit:                                        ; preds = %.preheader1287, %.preheader1283, %.preheader1280, %.preheader1277, %.preheader1273, %.preheader, %bb.a, %.loopexit1282, %.loopexit1286, %.loopexit1289, %.thread1267, %bb.ai, %.loopexit1276, %.loopexit1279, %.thread1263, %bb.u, %.loopexit1272, %.thread, %bb.k, %bb.aj, %bb.v, %bb.l
  %.val1148 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1148, i64 %i.b
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i32 %i.k, ptr %i.ns, align 1
  %.val1147 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nt = getelementptr inbounds nuw i8, ptr %.val1147, i64 %i.d
  store i32 %i.f, ptr %i.nt, align 1
  %.val1146 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.b
  store i32 %.0.copyload.i, ptr %i.nu, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1218)
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AcheckedCalloc0x28unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_frexp(ptr nofree noundef readonly captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 2 uses
  switch i32 %i.d, label %bb.e [
    i32 2047, label %bb.f
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %1, 0.000000e+00
  br i1 %i.e, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = zext i32 %2 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fmul double %1, f0x43F0000000000000
  %i.g = tail call double @w2c_hermes_frexp(ptr noundef %0, double noundef %i.f, i32 noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.k = add i32 %.0.copyload.i, -64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.i, %bb.c ]
  %.052 = phi double [ %1, %._crit_edge ], [ %i.g, %bb.c ]
  %.051 = phi i32 [ 0, %._crit_edge ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val57 = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val57, i64 %.pre-phi
  store i32 %.051, ptr %i.m, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = add nsw i32 %i.d, -1022
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = zext i32 %2 to i64
  %.val56 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.p
  store i32 %i.n, ptr %i.q, align 1
  %i.r = and i64 %i.a, -9218868437227405313
  %i.s = or disjoint i64 %i.r, 4602678819172646912
  %i.t = bitcast i64 %i.s to double
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi double [ %.052, %bb.d ], [ %i.t, %bb.e ], [ %1, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_findIdenticalInWindow0x28hermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.b = zext i32 %1 to i64
  %.val220 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i = load i8, ptr %i.d, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #16, !srcloc !33
  %i.e = add i8 %.0.copyload.i, -75
  %i.f = icmp ult i8 %i.e, 15
  br i1 %i.f, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %2 to i64                       ; 3 uses
  %.val219 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i221 = load i8, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i221) #16, !srcloc !33
  %i.j = add i8 %.0.copyload.i221, -75
  %i.k = icmp ult i8 %i.j, 15
  br i1 %i.k, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AisIdenticalTo0x28hermes0x3A0x3AInstruction0x20const0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #16
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %1) #16
  %.not191 = icmp eq i32 %i.m, 0
  br i1 %.not191, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %2) #16
  %.not192 = icmp eq i32 %i.n, 0
  br i1 %.not192, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val214 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.0.copyload.i222 = load i32, ptr %i.p, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i222) #16, !srcloc !22
  %.val213 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val213, i64 %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %.0.copyload.i223 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i223) #16, !srcloc !22
  %i.s = add i32 %.0.copyload.i223, 36
  %.not193 = icmp eq i32 %.0.copyload.i222, %i.s
  %i.t = select i1 %.not193, i32 0, i32 %.0.copyload.i222
  %i.u = zext i32 %i.t to i64
  %.val218 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i224 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i224) #16, !srcloc !33
  %i.x = add i8 %.0.copyload.i224, -75
  %i.y = icmp ult i8 %i.x, 15
  br i1 %i.y, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AisIdenticalTo0x28hermes0x3A0x3AInstruction0x20const0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i222) #16
  %.not194 = icmp eq i32 %i.z, 0
  br i1 %.not194, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %1) #16
  %.not195 = icmp eq i32 %i.aa, 0
  br i1 %.not195, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i222) #16
  %.not196 = icmp eq i32 %i.ab, 0
  br i1 %.not196, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = zext i32 %.0.copyload.i222 to i64       ; 2 uses
  %.val212 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.val212, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.0.copyload.i225 = load i32, ptr %i.ae, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i225) #16, !srcloc !22
  %.val211 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.val211, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i226 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i226) #16, !srcloc !22
  %i.ah = add i32 %.0.copyload.i226, 36
  %.not197 = icmp eq i32 %.0.copyload.i225, %i.ah
  %i.ai = select i1 %.not197, i32 0, i32 %.0.copyload.i225
  %i.aj = zext i32 %i.ai to i64
  %.val217 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i227 = load i8, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i227) #16, !srcloc !33
  %i.am = add i8 %.0.copyload.i227, -75
  %i.an = icmp ult i8 %i.am, 15
  br i1 %i.an, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AisIdenticalTo0x28hermes0x3A0x3AInstruction0x20const0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i225) #16
  %.not198 = icmp eq i32 %i.ao, 0
  br i1 %.not198, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %1) #16
  %.not199 = icmp eq i32 %i.ap, 0
  br i1 %.not199, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i225) #16
  %.not200 = icmp eq i32 %i.aq, 0
  br i1 %.not200, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m, %bb.l
end_hunk_0
