inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AnumberToString0x28double0x2C0x20char0x2A0x2C0x20unsigned0x20long0x29:bb.a
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
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1103, i64 %i.fk
  store i8 %.0.copyload.i1194, ptr %i.fn, align 1
  %.val1124 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1124, i64 %i.ap
  %.0.copyload.i1195 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1195) #7, !srcloc !19
  %i.fp = icmp slt i32 %.0.copyload.i1195, 1
  %.val1102 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.fq = select i1 %i.fp, i8 45, i8 43
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1102, i64 %i.fk
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  store i8 %i.fq, ptr %i.fs, align 1
  %i.ft = add i32 %.01022, 3                      ; 3 uses
  %i.fu = icmp slt i32 %i.fh, 1
  br i1 %i.fu, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ft, i32 noundef %i.fg, i32 noundef %i.fh) #7 ; 0 uses
  %i.fw = add i32 %i.ft, %i.fh
  br label %.loopexit

bb.ab:                                            ; preds = %bb.y
  %i.fx = add i32 %.01022, 2                      ; 3 uses
  %.val1162 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.g
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %i.fd, ptr %i.fz, align 1
  %i.ga = add i32 %i.b, -1264                     ; 3 uses
  %i.gb = add i32 %i.b, -1280
  %i.gc = tail call i32 @w2c_hermes_snprintf(ptr noundef nonnull %0, i32 noundef %i.ga, i32 noundef 32, i32 noundef 55702, i32 noundef %i.gb) #7 ; 4 uses
  %i.gd = zext i32 %i.ag to i64
  %.val1146 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.gd
  %.0.copyload.i1196 = load i8, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1196) #7, !srcloc !20
  %i.gf = zext i32 %.01022 to i64                 ; 2 uses
  %.val1101 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1101, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store i8 46, ptr %i.gh, align 1
  %.val1100 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1100, i64 %i.gf
  store i8 %.0.copyload.i1196, ptr %i.gi, align 1
  %i.gj = icmp slt i32 %i.ao, 2
  br i1 %i.gj, label %.loopexit1231, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = xor i32 %i.ag, -1
  %i.gl = add i32 %.0.copyload.i1178, %i.gk       ; 2 uses
  %i.gm = and i32 %i.gl, 3                        ; 2 uses
  %i.gn = icmp samesign ult i32 %i.ao, 5
  br i1 %i.gn, label %.loopexit1232, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = and i32 %i.gl, -4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %.71035 = phi i32 [ %i.hh, %bb.ae ], [ %i.fx, %bb.ad ] ; 2 uses
  %.11015 = phi i32 [ %i.hi, %bb.ae ], [ 0, %bb.ad ]
  %i.gp = trunc nuw nsw i64 %indvars.iv1280 to i32
  %i.gq = add i32 %i.ag, %i.gp
  %i.gr = zext i32 %i.gq to i64                   ; 4 uses
  %.val1145 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1145, i64 %i.gr
  %.0.copyload.i1197 = load i8, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1197) #7, !srcloc !20
  %i.gt = zext i32 %.71035 to i64                 ; 4 uses
  %.val1099 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1099, i64 %i.gt
  store i8 %.0.copyload.i1197, ptr %i.gu, align 1
  %.val1144 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %.0.copyload.i1198 = load i8, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1198) #7, !srcloc !20
  %.val1098 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1098, i64 %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store i8 %.0.copyload.i1198, ptr %i.gy, align 1
  %.val1143 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.gr
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %.0.copyload.i1199 = load i8, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1199) #7, !srcloc !20
  %.val1097 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1097, i64 %i.gt
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i8 %.0.copyload.i1199, ptr %i.hc, align 1
  %.val1142 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.gr
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %.0.copyload.i1200 = load i8, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1200) #7, !srcloc !20
  %.val1096 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1096, i64 %i.gt
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 3
  store i8 %.0.copyload.i1200, ptr %i.hg, align 1
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 4 ; 2 uses
  %i.hh = add i32 %.71035, 4                      ; 2 uses
  %i.hi = add nuw nsw i32 %.11015, 4              ; 2 uses
  %.not1065 = icmp eq i32 %i.hi, %i.go
  br i1 %.not1065, label %.loopexit1232.loopexit, label %bb.ae

.loopexit1232.loopexit:                           ; preds = %bb.ae
  %3 = and i64 %indvars.iv.next1281, 4294967295
  br label %.loopexit1232

.loopexit1232:                                    ; preds = %.loopexit1232.loopexit, %bb.ac
  %.81036 = phi i32 [ %i.fx, %bb.ac ], [ %i.hh, %.loopexit1232.loopexit ] ; 2 uses
  %.8 = phi i64 [ 1, %bb.ac ], [ %3, %.loopexit1232.loopexit ]
  %.not1066 = icmp eq i32 %i.gm, 0
  br i1 %.not1066, label %.loopexit1231, label %.preheader1230

.preheader1230:                                   ; preds = %.loopexit1232, %.preheader1230
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %.preheader1230 ], [ %.8, %.loopexit1232 ] ; 2 uses
  %.91037 = phi i32 [ %i.hp, %.preheader1230 ], [ %.81036, %.loopexit1232 ] ; 2 uses
  %.11017 = phi i32 [ %i.hq, %.preheader1230 ], [ 0, %.loopexit1232 ]
  %i.hj = trunc nuw nsw i64 %indvars.iv1283 to i32
  %i.hk = add i32 %i.ag, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %.val1141 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.hl
  %.0.copyload.i1201 = load i8, ptr %i.hm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1201) #7, !srcloc !20
  %i.hn = zext i32 %.91037 to i64
  %.val1095 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.hn
  store i8 %.0.copyload.i1201, ptr %i.ho, align 1
  %indvars.iv.next1284 = add nuw nsw i64 %indvars.iv1283, 1
  %i.hp = add i32 %.91037, 1                      ; 2 uses
  %i.hq = add nuw nsw i32 %.11017, 1              ; 2 uses
  %.not1067 = icmp eq i32 %i.hq, %i.gm
  br i1 %.not1067, label %.loopexit1231, label %.preheader1230

.loopexit1231:                                    ; preds = %.preheader1230, %.loopexit1232, %bb.ab
  %.101038 = phi i32 [ %i.fx, %bb.ab ], [ %.81036, %.loopexit1232 ], [ %i.hp, %.preheader1230 ] ; 2 uses
  %i.hr = zext i32 %.101038 to i64                ; 2 uses
  %.val1094 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.hr
  store i8 101, ptr %i.hs, align 1
  %.val1123 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1123, i64 %i.ap
  %.0.copyload.i1202 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1202) #7, !srcloc !19
  %i.hu = icmp slt i32 %.0.copyload.i1202, 1
  %.val1093 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hv = select i1 %i.hu, i8 45, i8 43
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1093, i64 %i.hr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store i8 %i.hv, ptr %i.hx, align 1
  %i.hy = add i32 %.101038, 2                     ; 3 uses
  %i.hz = icmp slt i32 %i.gc, 1
  br i1 %i.hz, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %.loopexit1231
  %i.ia = and i32 %i.gc, 3                        ; 2 uses
  %i.ib = icmp samesign ult i32 %i.gc, 4
  br i1 %i.ib, label %.loopexit1229, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = and i32 %i.gc, 2147483644               ; 2 uses
  %i.id = add i32 %i.b, -1263
  %i.ie = add i32 %i.b, -1262
  %i.if = add i32 %i.b, -1261
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv1286 = phi i64 [ %indvars.iv.next1287, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.111039 = phi i32 [ %i.jb, %bb.ah ], [ %i.hy, %bb.ag ] ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv1286 to i32 ; 4 uses
  %i.ih = add i32 %i.ga, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %.val1140 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.ii
  %.0.copyload.i1203 = load i8, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1203) #7, !srcloc !20
  %i.ik = zext i32 %.111039 to i64                ; 4 uses
  %.val1092 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.ik
  store i8 %.0.copyload.i1203, ptr %i.il, align 1
  %i.im = add i32 %i.id, %i.ig
  %i.in = zext i32 %i.im to i64
  %.val1139 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.in
  %.0.copyload.i1204 = load i8, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1204) #7, !srcloc !20
  %.val1091 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store i8 %.0.copyload.i1204, ptr %i.iq, align 1
  %i.ir = add i32 %i.ie, %i.ig
  %i.is = zext i32 %i.ir to i64
  %.val1138 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.is
  %.0.copyload.i1205 = load i8, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1205) #7, !srcloc !20
  %.val1090 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.ik
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  store i8 %.0.copyload.i1205, ptr %i.iv, align 1
  %i.iw = add i32 %i.if, %i.ig
  %i.ix = zext i32 %i.iw to i64
  %.val1137 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.ix
  %.0.copyload.i1206 = load i8, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1206) #7, !srcloc !20
  %.val1089 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.ik
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  store i8 %.0.copyload.i1206, ptr %i.ja, align 1
  %indvars.iv.next1287 = add nuw nsw i64 %indvars.iv1286, 4 ; 2 uses
  %indvars1289 = trunc i64 %indvars.iv.next1287 to i32
  %i.jb = add i32 %.111039, 4                     ; 2 uses
  %.not1068 = icmp eq i32 %i.ic, %indvars1289
  br i1 %.not1068, label %.loopexit1229.loopexit, label %bb.ah

.loopexit1229.loopexit:                           ; preds = %bb.ah
  %i.jc = zext nneg i32 %i.ic to i64
  br label %.loopexit1229

.loopexit1229:                                    ; preds = %.loopexit1229.loopexit, %bb.af
  %.121040 = phi i32 [ %i.hy, %bb.af ], [ %i.jb, %.loopexit1229.loopexit ] ; 2 uses
  %.11 = phi i64 [ 0, %bb.af ], [ %i.jc, %.loopexit1229.loopexit ]
  %.not1069 = icmp eq i32 %i.ia, 0
  br i1 %.not1069, label %.loopexit, label %.preheader1227

.preheader1227:                                   ; preds = %.loopexit1229, %.preheader1227
  %indvars.iv1291 = phi i64 [ %indvars.iv.next1292, %.preheader1227 ], [ %.11, %.loopexit1229 ] ; 2 uses
  %.131041 = phi i32 [ %i.jj, %.preheader1227 ], [ %.121040, %.loopexit1229 ] ; 2 uses
  %.21018 = phi i32 [ %i.jk, %.preheader1227 ], [ 0, %.loopexit1229 ]
  %i.jd = trunc nuw nsw i64 %indvars.iv1291 to i32
  %i.je = add i32 %i.ga, %i.jd
  %i.jf = zext i32 %i.je to i64
  %.val1136 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.jf
  %.0.copyload.i1207 = load i8, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1207) #7, !srcloc !20
  %i.jh = zext i32 %.131041 to i64
  %.val1088 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.jh
  store i8 %.0.copyload.i1207, ptr %i.ji, align 1
  %indvars.iv.next1292 = add nuw nsw i64 %indvars.iv1291, 1
  %i.jj = add i32 %.131041, 1                     ; 2 uses
  %i.jk = add nuw nsw i32 %.21018, 1              ; 2 uses
  %.not1070 = icmp eq i32 %i.jk, %i.ia
  br i1 %.not1070, label %.loopexit, label %.preheader1227

bb.ai:                                            ; preds = %bb.s
  %i.jl = add i32 %.21024, 3
  %i.jm = zext nneg i32 %i.cb to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.q, %bb.ai
  %.141042 = phi i64 [ %i.jm, %bb.ai ], [ 0, %bb.q ]
  %.13 = phi i32 [ %i.da, %bb.ai ], [ %.01022, %bb.q ] ; 2 uses
  %.31019 = phi i32 [ %i.jl, %bb.ai ], [ 0, %bb.q ]
  %.not1075 = icmp eq i32 %i.bz, 0
  br i1 %.not1075, label %.loopexit1221, label %.preheader1220

.preheader1220:                                   ; preds = %bb.aj, %.preheader1220
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %.preheader1220 ], [ %.141042, %bb.aj ] ; 2 uses
  %.14 = phi i32 [ %i.jt, %.preheader1220 ], [ %.13, %bb.aj ] ; 3 uses
  %.1 = phi i32 [ %i.ju, %.preheader1220 ], [ 0, %bb.aj ]
  %i.jn = trunc nuw nsw i64 %indvars.iv1307 to i32
  %i.jo = add i32 %i.ag, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %.val1135 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.jp
  %.0.copyload.i1208 = load i8, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1208) #7, !srcloc !20
  %i.jr = zext i32 %.14 to i64
  %.val1087 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.jr
  store i8 %.0.copyload.i1208, ptr %i.js, align 1
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 1
  %i.jt = add i32 %.14, 1                         ; 2 uses
  %i.ju = add nuw nsw i32 %.1, 1                  ; 2 uses
  %.not1076 = icmp eq i32 %i.ju, %i.bz
  br i1 %.not1076, label %.loopexit1221, label %.preheader1220

.loopexit1221:                                    ; preds = %.preheader1220, %bb.aj
  %.15 = phi i32 [ %.13, %bb.aj ], [ %i.jt, %.preheader1220 ]
  %.41020 = phi i32 [ %.31019, %bb.aj ], [ %.14, %.preheader1220 ]
  %i.jv = zext i32 %.15 to i64
  %.val1086 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1086, i64 %i.jv
  store i8 46, ptr %i.jw, align 1
  %i.jx = add i32 %.41020, 2                      ; 3 uses
  br i1 %i.as, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.loopexit1221
  %i.jy = add i32 %i.ag, %.0.copyload.i1179
  %i.jz = sub i32 %.0.copyload.i1178, %i.jy
  %i.ka = and i32 %i.jz, 3                        ; 2 uses
  %.not1078 = icmp eq i32 %i.ka, 0
  br i1 %.not1078, label %.loopexit1219, label %.preheader1218

.preheader1218:                                   ; preds = %bb.ak, %.preheader1218
  %.161044 = phi i32 [ %i.kg, %.preheader1218 ], [ %i.jx, %bb.ak ] ; 2 uses
  %.16 = phi i32 [ %i.ki, %.preheader1218 ], [ 0, %bb.ak ]
  %.3 = phi i32 [ %i.kh, %.preheader1218 ], [ %.0.copyload.i1179, %bb.ak ] ; 2 uses
  %i.kb = add i32 %.3, %i.ag
  %i.kc = zext i32 %i.kb to i64
  %.val1134 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1134, i64 %i.kc
  %.0.copyload.i1209 = load i8, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1209) #7, !srcloc !20
  %i.ke = zext i32 %.161044 to i64
  %.val1085 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1085, i64 %i.ke
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AfromDouble0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20double0x29:bb.a
  %i.fm = add i32 %i.fl, %i.fh
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %.val1198 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1198, i64 %i.fn
  %.0.copyload.i1239 = load i64, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1239) #7, !srcloc !22
  %.val1212 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1212, i64 %i.fn
  store i64 %.0.copyload.i1239, ptr %i.fp, align 1
  br label %bb.aq

bb.ad:                                            ; preds = %bb.z
  %i.fq = zext i32 %i.ck to i64                   ; 11 uses
  %i.fr = add nuw nsw i64 %i.fq, 24               ; 2 uses
  %.val1169 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1169, i64 %i.fr
  store i32 %i.ci, ptr %i.fs, align 1
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ft = add nuw nsw i64 %i.aa, 13
  %i.fu = and i64 %i.ft, 63
  %i.fv = shl i64 %i.dd, %i.fu
  %.val1211 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1211, i64 %i.fq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %i.fv, ptr %i.fx, align 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fy = lshr exact i32 %i.ci, 3                 ; 3 uses
  %i.fz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.fy) #7
  %i.ga = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.fz, i32 noundef 0, i32 noundef %i.fy) #7 ; 3 uses
  %.val1168 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.fq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %i.ga, ptr %i.gc, align 1
  %i.gd = zext i32 %i.ga to i64
  %.val1210 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1210, i64 %i.gd
  store i64 %i.dd, ptr %i.ge, align 1
  %i.gf = add nsw i32 %i.fy, -8
  %i.gg = add i32 %i.gf, %i.ga
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %.val1197 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1197, i64 %i.gh
  %.0.copyload.i1240 = load i64, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1240) #7, !srcloc !22
  %.val1209 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1209, i64 %i.gh
  store i64 %.0.copyload.i1240, ptr %i.gj, align 1
  %i.gk = add i32 %i.cj, -32
  %i.gl = add nsw i32 %i.ac, -1075
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AshlSlowCase0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.gk, i32 noundef %i.gl) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.val1149 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1149, i64 %i.fr
  %.0.copyload.i1241 = load i32, ptr %i.gm, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1241) #7, !srcloc !19
  %i.gn = icmp slt i64 %i.z, 0
  %.val1167 = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  br i1 %i.gn, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.go = add nuw nsw i64 %i.fq, 8                ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.go
  store i32 %.0.copyload.i1241, ptr %i.gp, align 1
  %i.gq = icmp ugt i32 %.0.copyload.i1241, 64
  br i1 %i.gq, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1196 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1196, i64 %i.fq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %.0.copyload.i1242 = load i64, ptr %i.gs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1242) #7, !srcloc !22
  %.val1208 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1208, i64 %i.fq
  store i64 %.0.copyload.i1242, ptr %i.gt, align 1
  %i.gu = trunc i64 %.0.copyload.i1242 to i32
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %i.gv = zext i32 %i.cc to i64                   ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.0.copyload.i1241, ptr %i.gx, align 1
  %i.gy = icmp ult i32 %.0.copyload.i1241, 65
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.val1195 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1195, i64 %i.fq
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %.0.copyload.i1243 = load i64, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1243) #7, !srcloc !22
  %.val1207 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1207, i64 %i.gv
  store i64 %.0.copyload.i1243, ptr %i.hb, align 1
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.hc = zext i32 %.0.copyload.i1241 to i64
  %i.hd = add nuw nsw i64 %i.hc, 63
  %i.he = lshr i64 %i.hd, 3
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = and i32 %i.hf, 1073741816               ; 2 uses
  %i.hh = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hg) #7 ; 2 uses
  %.val1165 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.gv
  store i32 %i.hh, ptr %i.hi, align 1
  %.val1148 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1148, i64 %i.fq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %.0.copyload.i1244 = load i32, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1244) #7, !srcloc !19
  %i.hl = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.0.copyload.i1244, i32 noundef %i.hg) #7 ; 0 uses
  br label %bb.ao

bb.am:                                            ; preds = %bb.ah
  %i.hm = zext i32 %.0.copyload.i1241 to i64
  %i.hn = add nuw nsw i64 %i.hm, 63
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = and i32 %i.hp, 1073741816               ; 2 uses
  %i.hr = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hq) #7 ; 2 uses
  %.val1164 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.fq
  store i32 %i.hr, ptr %i.hs, align 1
  %.val1147 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1147, i64 %i.fq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %.0.copyload.i1245 = load i32, ptr %i.hu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1245) #7, !srcloc !19
  %i.hv = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.hr, i32 noundef %.0.copyload.i1245, i32 noundef %i.hq) #7 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.01101 = phi i32 [ %.0.copyload.i1245, %bb.am ], [ %i.gu, %bb.ai ]
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Anegate0x280x29(ptr noundef nonnull %0, i32 noundef %i.ck) #7
  %.val1146 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.go
  %.0.copyload.i1246 = load i32, ptr %i.hw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1246) #7, !srcloc !19
  %i.hx = zext i32 %i.cc to i64                   ; 2 uses
  %.val1163 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 %.0.copyload.i1246, ptr %i.hz, align 1
  %.val1194 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val1194, i64 %i.fq
  %.0.copyload.i1247 = load i64, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1247) #7, !srcloc !22
  %.val1206 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1206, i64 %i.hx
  store i64 %.0.copyload.i1247, ptr %i.ib, align 1
  %.val1162 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.go
  store i32 0, ptr %i.ic, align 1
  %i.id = icmp ult i32 %.0.copyload.i1241, 65
  br i1 %i.id, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.11102 = phi i32 [ %.01101, %bb.an ], [ %.0.copyload.i1244, %bb.al ] ; 2 uses
  %.not1129 = icmp eq i32 %.11102, 0
  br i1 %.not1129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.11102) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.ap, %bb.ak, %bb.ac, %bb.ab, %bb.y, %bb.w, %bb.v, %bb.p, %bb.o
  store i32 %i.cj, ptr %i.a, align 8, !tbaa !7
  %i.ie = zext i32 %i.cc to i64                   ; 3 uses
  %.val1145 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val1145, i64 %i.ie
  %.0.copyload.i1248 = load i32, ptr %i.if, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1248) #7, !srcloc !19
  %i.ig = add nuw nsw i64 %i.ie, 8                ; 2 uses
  %.val1228 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1228, i64 %i.ig
  %.0.copyload.i1249 = load i32, ptr %i.ih, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1249) #7, !srcloc !40
  %i.ii = zext i32 %.0.copyload.i1249 to i64
  %i.ij = icmp ult i32 %.0.copyload.i1249, 65
  %i.ik = select i1 %i.ij, i32 %i.cc, i32 %.0.copyload.i1248 ; 4 uses
  %.val1193 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1193, i64 %i.bz
  %.0.copyload.i1250 = load i64, ptr %i.il, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1250) #7, !srcloc !22
  %i.im = lshr i64 %.0.copyload.i1250, 32         ; 3 uses
  %.val1144 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.im
  %.0.copyload.i1251 = load i32, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1251) #7, !srcloc !19
  %i.io = shl i32 %.0.copyload.i1251, 3           ; 2 uses
  %i.ip = shl nuw nsw i64 %i.ii, 29
  %i.iq = add nuw nsw i64 %i.ip, 33822867456      ; 2 uses
  %i.ir = lshr i64 %i.iq, 32
  %i.is = trunc nuw nsw i64 %i.ir to i32
  %i.it = and i32 %i.is, 1073741816               ; 4 uses
  %.not1130 = icmp eq i32 %i.it, 0
  %i.iu = and i64 %i.iq, 4611685984067649536      ; 3 uses
  br i1 %.not1130, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iv = lshr exact i64 %i.iu, 32                ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = add nsw i32 %i.iw, -1
  %i.iy = add i32 %i.ix, %i.ik
  %i.iz = zext i32 %i.iy to i64
  %.val1158 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.iz
  %.0.copyload.i1252 = load i8, ptr %i.ja, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1252) #7, !srcloc !20
  %i.jb = add i32 %i.ik, -1
  %i.jc = add i32 %i.jb, %i.it
  %i.jd = zext i32 %i.jc to i64
  %.val1192 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val1192, i64 %i.jd
  %.0.copyload.i1253 = load i8, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1253) #7, !srcloc !21
  %i.jf = ashr i8 %.0.copyload.i1253, 7           ; 2 uses
  %i.jg = sext i8 %i.jf to i32
  %i.jh = icmp eq i8 %.0.copyload.i1252, %i.jf
  br i1 %i.jh, label %.preheader.preheader, label %bb.av

.preheader.preheader:                             ; preds = %bb.ar
  %i.ji = add nuw nsw i64 %i.iv, 4294967288
  %i.jj = and i64 %i.ji, 4294967288
  %i.jk = or disjoint i64 %i.jj, 7
  br label %bb.as

.preheader:                                       ; preds = %bb.as
  %.not1131 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not1131, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.preheader.preheader, %.preheader
  %.011041293 = phi i32 [ %i.it, %.preheader.preheader ], [ %4, %.preheader ]
  %indvars.iv1292 = phi i64 [ %i.jk, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv1292, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.jl = add i32 %i.ik, %indvars
  %i.jm = zext i32 %i.jl to i64
  %.val1157 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.jm
  %.0.copyload.i1254 = load i8, ptr %i.jn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1254) #7, !srcloc !20
  %i.jo = icmp eq i8 %.0.copyload.i1252, %.0.copyload.i1254
  %4 = trunc nuw i64 %indvars.iv1292 to i32       ; 2 uses
  br i1 %i.jo, label %.preheader, label %bb.au

bb.at:                                            ; preds = %.preheader
  %i.jp = shl i64 %indvars.iv1292, 32
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %5 = zext i32 %.011041293 to i64
  %i.jq = shl nuw i64 %5, 32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.11105 = phi i32 [ %4, %bb.au ], [ %i.it, %bb.ar ]
  %.01097.in = phi i8 [ %.0.copyload.i1254, %bb.au ], [ %.0.copyload.i1252, %bb.ar ]
  %.01094 = phi i64 [ %i.jq, %bb.au ], [ %i.iu, %bb.ar ]
  %.01097 = zext i8 %.01097.in to i32
  %sext = shl nuw i32 %.01097, 24
  %i.jr = ashr i32 %sext, 31
  %i.js = zext i32 %.11105 to i64
  %i.jt = shl nuw i64 %i.js, 32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.21106 = phi i64 [ 0, %bb.at ], [ %i.jt, %bb.av ]
  %.11095 = phi i64 [ %i.jp, %bb.at ], [ %.01094, %bb.av ]
  %.01091 = phi i32 [ 0, %bb.at ], [ %i.jr, %bb.av ]
  %i.ju = icmp eq i32 %.01091, %i.jg
  %i.jv = select i1 %i.ju, i64 %.21106, i64 %.11095
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.aw
  %.sink = phi i64 [ %i.jv, %bb.aw ], [ %i.iu, %bb.aq ] ; 2 uses
  %i.jw = lshr i64 %.sink, 32                     ; 2 uses
  %i.jx = trunc nuw i64 %i.jw to i32              ; 4 uses
  %.not1140 = icmp ult i32 %i.io, %i.jx           ; 2 uses
  %.not1132 = icmp eq i64 %i.jw, 0
  %or.cond1141 = or i1 %.not1132, %.not1140
  br i1 %or.cond1141, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = trunc i64 %.0.copyload.i1250 to i32
  %i.jz = trunc i64 %.sink to i32
  %i.ka = or i32 %i.ik, %i.jz
  %i.kb = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef %0, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef %i.jx) #7 ; 3 uses
  %i.kc = add i32 %i.kb, %i.jx                    ; 2 uses
  %i.kd = add i32 %i.kc, -1
  %i.ke = zext i32 %i.kd to i64
  %.val1191 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1191, i64 %i.ke
  %.0.copyload.i1255 = load i8, ptr %i.kf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1255) #7, !srcloc !21
  %i.kg = ashr i8 %.0.copyload.i1255, 7
  %i.kh = sext i8 %i.kg to i32
  %i.ki = sub nuw i32 %i.io, %i.jx
  %i.kj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef %0, i32 noundef %i.kc, i32 noundef %i.kh, i32 noundef %i.ki) #7 ; 0 uses
  %.val1143 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.im
  %.0.copyload.i1256 = load i32, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #7, !srcloc !19
  %i.kl = shl i32 %.0.copyload.i1256, 3           ; 5 uses
  %.not1133 = icmp eq i32 %i.kl, 0
  br i1 %.not1133, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.km = add i32 %i.kl, -1                       ; 2 uses
  %i.kn = add i32 %i.km, %i.kb
  %i.ko = zext i32 %i.kn to i64
  %.val1156 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.ko
  %.0.copyload.i1257 = load i8, ptr %i.kp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1257) #7, !srcloc !20
  %i.kq = zext i8 %.0.copyload.i1257 to i32
  %sext1134 = shl nuw i32 %i.kq, 24
  %i.kr = ashr i32 %sext1134, 31                  ; 3 uses
  %i.ks = trunc nsw i32 %i.kr to i8
  %.not1135 = icmp eq i8 %.0.copyload.i1257, %i.ks
  br i1 %.not1135, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.kt = zext i32 %i.km to i64
  %i.ku = add i32 %i.kb, -1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  %i.kv = add nsw i64 %.21295, -1                 ; 2 uses
  %i.kw = add i32 %.31294, -1
  %.not1136 = icmp eq i64 %i.kv, 0
  br i1 %.not1136, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.21295 = phi i64 [ %i.kt, %bb.ba ], [ %i.kv, %bb.bb ] ; 2 uses
  %.31294 = phi i32 [ %i.kl, %bb.ba ], [ %i.kw, %bb.bb ] ; 2 uses
  %i.kx = trunc nuw i64 %.21295 to i32            ; 2 uses
  %i.ky = add i32 %i.ku, %i.kx
  %i.kz = zext i32 %i.ky to i64
  %.val1155 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.kz
  %.0.copyload.i1258 = load i8, ptr %i.la, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1258) #7, !srcloc !20
  %i.lb = icmp eq i8 %.0.copyload.i1257, %.0.copyload.i1258
  br i1 %i.lb, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lc = zext i8 %.0.copyload.i1258 to i32
  %sext1137 = shl nuw i32 %i.lc, 24
  %i.ld = ashr i32 %sext1137, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.az, %bb.bd
  %.21103 = phi i32 [ %i.kx, %bb.bd ], [ %i.kl, %bb.az ], [ 0, %bb.bb ]
  %.11100 = phi i32 [ %.31294, %bb.bd ], [ %i.kl, %bb.az ], [ 1, %bb.bb ]
  %.01092 = phi i32 [ %i.ld, %bb.bd ], [ %i.kr, %bb.az ], [ 0, %bb.bb ]
  %i.le = icmp eq i32 %.01092, %i.kr
  %i.lf = select i1 %i.le, i32 %.21103, i32 %.11100
  %i.lg = add i32 %i.lf, 7
  %i.lh = lshr i32 %i.lg, 3
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.ay, %.loopexit
  %.1 = phi i32 [ %i.lh, %.loopexit ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  %.val1161 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.im
  store i32 %.1, ptr %i.li, align 1
  %.val1142 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.ig
  %.0.copyload.i1259 = load i32, ptr %i.lj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1259) #7, !srcloc !19
  %i.lk = icmp ult i32 %.0.copyload.i1259, 65
  br i1 %i.lk, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ie
  %.0.copyload.i1260 = load i32, ptr %i.ll, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1260) #7, !srcloc !19
  %.not1138 = icmp eq i32 %.0.copyload.i1260, 0
  br i1 %.not1138, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1260) #7
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.be, %bb.bg
  br i1 %.not1140, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lm = add i32 %i.cb, -48                      ; 2 uses
  store i32 %i.lm, ptr %i.a, align 8, !tbaa !7
  %i.ln = zext i32 %i.lm to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  store i32 0, ptr %i.lp, align 1
  %.val124.i = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ln
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  store i64 188978561025, ptr %i.lr, align 1
  %.val113.i = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ln
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store i32 3, ptr %i.lt, align 1
  %.val.i = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ln
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 22326, ptr %i.lv, align 1
  %i.lw = add i32 %i.cb, -40
  %i.lx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.lw) #7
  %i.ly = zext i32 %1 to i64
  %.val1160 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.ly
  store i32 %i.lx, ptr %i.lz, align 1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ma = zext i32 %1 to i64                      ; 2 uses
  %.val1159 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.ma
  store i32 1, ptr %i.mb, align 1
  %i.mc = or disjoint i64 %i.bm, -562949953421312
  %.val1205 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.val1205, i64 %i.ma
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %i.mc, ptr %i.me, align 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.k, %bb.g
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Anegate0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AshlSlowCase0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x3A0x3AthrowExcessiveCapacityError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = add i32 %i.b, -144                       ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = zext i32 %1 to i64
  %.val148 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val148, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5600
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64
  %.val147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.h
  %.0.copyload.i168 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i168) #7, !srcloc !19
end_hunk_1
