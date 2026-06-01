inline.NumInlined: 26868
inline.NumDeleted: 24
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ASpillRegisters0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.val1082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1082, i64 %i.fk
  store i64 8589934592, ptr %i.fl, align 1
  %i.fm = add i32 %i.b, -44                       ; 4 uses
  %i.fn = add nuw nsw i64 %i.fd, 40               ; 5 uses
  %.val1078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1078, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 1
  %i.fp = icmp eq i32 %.0914, %i.at
  br i1 %i.fp, label %bb.cq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fq = add i32 %i.b, -72                       ; 3 uses
  %i.fr = add i32 %i.b, -56                       ; 2 uses
  %i.fs = add i32 %i.b, -28                       ; 6 uses
  %i.ft = zext i32 %i.fs to i64                   ; 4 uses
  %i.fu = add nuw nsw i64 %i.fd, 16               ; 7 uses
  %i.fv = add nuw nsw i64 %i.fd, 12               ; 5 uses
  %i.fw = add i32 %i.b, -8
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = add i32 %i.b, -84
  br label %bb.s

bb.s:                                             ; preds = %.loopexit1398, %bb.r
  %.1915 = phi i32 [ %.0914, %bb.r ], [ %.0.copyload.i1367, %.loopexit1398 ] ; 2 uses
  %i.fz = zext i32 %.1915 to i64                  ; 2 uses
  %.val1044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1044, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %.0.copyload.i1132 = load i32, ptr %i.gb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1132) #7, !srcloc !19
  %i.gc = add i32 %.1915, 36                      ; 2 uses
  %.not959 = icmp eq i32 %.0.copyload.i1132, %i.gc
  br i1 %.not959, label %.loopexit1398, label %.preheader1397

.preheader1397:                                   ; preds = %bb.s, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread
  %.0916 = phi i32 [ %.0.copyload.i1366, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread ], [ %.0.copyload.i1132, %bb.s ] ; 7 uses
  %.val1043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1043, i64 %i.f
  %.0.copyload.i1133 = load i32, ptr %i.gd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1133) #7, !srcloc !19
  %i.ge = add i32 %.0916, 8                       ; 13 uses
  %i.gf = add i32 %.0.copyload.i1133, 1096
  %i.gg = zext i32 %i.gf to i64
  %.val85.i1134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val85.i1134, i64 %i.gg
  %.0.copyload.i.i1135 = load i32, ptr %i.gh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i1135) #7, !srcloc !19
  %.not.i1136 = icmp eq i32 %.0.copyload.i.i1135, 0
  br i1 %.not.i1136, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread, label %bb.t

bb.t:                                             ; preds = %.preheader1397
  %i.gi = zext i32 %.0.copyload.i1133 to i64
  %.val84.i1137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val84.i1137, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1084
  %.0.copyload.i86.i1138 = load i32, ptr %i.gk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86.i1138) #7, !srcloc !19
  %i.gl = add i32 %.0.copyload.i.i1135, -1        ; 2 uses
  %i.gm = lshr i32 %i.ge, 4
  %i.gn = lshr i32 %i.ge, 9
  %i.go = xor i32 %i.gm, %i.gn                    ; 2 uses
  %i.gp = and i32 %i.gl, %i.go                    ; 2 uses
  %i.gq = shl nuw nsw i32 %i.gp, 3
  %i.gr = add i32 %.0.copyload.i86.i1138, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %.val83.i1139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val83.i1139, i64 %i.gs
  %.0.copyload.i87.i1140 = load i32, ptr %i.gt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i87.i1140) #7, !srcloc !19
  %i.gu = icmp eq i32 %.0.copyload.i87.i1140, %i.ge
  br i1 %i.gu, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379, label %.preheader.i1141

.preheader.i1141:                                 ; preds = %bb.t, %bb.u
  %.077.i1142 = phi i32 [ %i.gx, %bb.u ], [ %i.gp, %bb.t ]
  %.075.i1143 = phi i32 [ %i.gw, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %.0.i1144 = phi i32 [ %.0.copyload.i88.i1149, %bb.u ], [ %.0.copyload.i87.i1140, %bb.t ]
  %.not90.i1145.not = icmp eq i32 %.0.i1144, -4
  br i1 %.not90.i1145.not, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread, label %bb.u

bb.u:                                             ; preds = %.preheader.i1141
  %i.gv = add i32 %.075.i1143, %.077.i1142
  %i.gw = add i32 %.075.i1143, 1
  %i.gx = and i32 %i.gv, %i.gl                    ; 2 uses
  %i.gy = shl i32 %i.gx, 3
  %i.gz = add i32 %i.gy, %.0.copyload.i86.i1138
  %i.ha = zext i32 %i.gz to i64
  %.val.i1148 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i1148, i64 %i.ha
  %.0.copyload.i88.i1149 = load i32, ptr %i.hb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88.i1149) #7, !srcloc !19
  %.not82.i1150 = icmp eq i32 %.0.copyload.i88.i1149, %i.ge
  br i1 %.not82.i1150, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379, label %.preheader.i1141

w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379: ; preds = %bb.u, %bb.t
  %.val1077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1077, i64 %i.fk
  store i32 0, ptr %i.hc, align 1
  %i.hd = zext i32 %.0916 to i64                  ; 10 uses
  %.val1042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val1042, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 72
  %.0.copyload.i1152 = load i32, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1152) #7, !srcloc !19
  %.val1076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1076, i64 %i.fe
  store i32 %.0.copyload.i1152, ptr %i.hg, align 1
  %.val1041 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1041, i64 %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 68
  %.0.copyload.i1153 = load i32, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1153) #7, !srcloc !19
  %.val1075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1075, i64 %i.fd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 84
  store i32 %.0.copyload.i1153, ptr %i.hk, align 1
  %.val1040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1040, i64 %i.f
  %.0.copyload.i1154 = load i32, ptr %i.hl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1154) #7, !srcloc !19
  %i.hm = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.hn = add i32 %i.hm, -16                      ; 2 uses
  store i32 %i.hn, ptr %i.a, align 8, !tbaa !7
  %i.ho = zext i32 %i.hn to i64
  %.val142.i1155 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val142.i1155, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 %i.ge, ptr %i.hq, align 1
  %i.hr = add i32 %.0.copyload.i1154, 1096
  %i.hs = zext i32 %i.hr to i64
  %.val141.i1156 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val141.i1156, i64 %i.hs
  %.0.copyload.i.i1157 = load i32, ptr %i.ht, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i1157) #7, !srcloc !19
  %.not.i1158 = icmp eq i32 %.0.copyload.i.i1157, 0
  br i1 %.not.i1158, label %bb.y, label %bb.v

bb.v:                                             ; preds = %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379
  %i.hu = zext i32 %.0.copyload.i1154 to i64
  %.val140.i1159 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val140.i1159, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1084
  %.0.copyload.i143.i1160 = load i32, ptr %i.hw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i143.i1160) #7, !srcloc !19
  %i.hx = add i32 %.0.copyload.i.i1157, -1        ; 2 uses
  %i.hy = and i32 %i.hx, %i.go                    ; 2 uses
  %i.hz = shl nuw nsw i32 %i.hy, 3
  %i.ia = add i32 %.0.copyload.i143.i1160, %i.hz  ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %.val139.i1161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val139.i1161, i64 %i.ib
  %.0.copyload.i144.i1162 = load i32, ptr %i.ic, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i144.i1162) #7, !srcloc !19
  %i.id = icmp eq i32 %.0.copyload.i144.i1162, %i.ge
  br i1 %i.id, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180, label %.preheader.i1163

.preheader.i1163:                                 ; preds = %bb.v, %bb.x
  %.0130.i1164 = phi i32 [ %i.ii, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %.0129.i1165 = phi i32 [ %i.in, %bb.x ], [ %i.ia, %bb.v ] ; 2 uses
  %.0128.i1166 = phi i32 [ %.0.copyload.i145.i1171, %bb.x ], [ %.0.copyload.i144.i1162, %bb.v ] ; 2 uses
  %.0127.i1167 = phi i32 [ %i.ik, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %.0.i1168 = phi i32 [ %i.il, %bb.x ], [ %i.hy, %bb.v ]
  %i.ie = icmp eq i32 %.0128.i1166, -4
  %.not137.i1177 = icmp eq i32 %.0130.i1164, 0    ; 2 uses
  br i1 %i.ie, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i1163
  %i.if = select i1 %.not137.i1177, i32 %.0129.i1165, i32 %.0130.i1164
  br label %bb.y

bb.x:                                             ; preds = %.preheader.i1163
  %i.ig = icmp eq i32 %.0128.i1166, -8
  %i.ih = select i1 %i.ig, i1 %.not137.i1177, i1 false
  %i.ii = select i1 %i.ih, i32 %.0129.i1165, i32 %.0130.i1164
  %i.ij = add i32 %.0.i1168, %.0127.i1167
  %i.ik = add i32 %.0127.i1167, 1
  %i.il = and i32 %i.ij, %i.hx                    ; 2 uses
  %i.im = shl i32 %i.il, 3
  %i.in = add i32 %i.im, %.0.copyload.i143.i1160  ; 2 uses
  %i.io = zext i32 %i.in to i64                   ; 2 uses
  %.val138.i1170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val138.i1170, i64 %i.io
  %.0.copyload.i145.i1171 = load i32, ptr %i.ip, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i145.i1171) #7, !srcloc !19
  %.not136.i1172 = icmp eq i32 %.0.copyload.i145.i1171, %i.ge
  br i1 %.not136.i1172, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180, label %.preheader.i1163

bb.y:                                             ; preds = %bb.w, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379
  %.0131.i1178 = phi i32 [ %i.if, %bb.w ], [ 0, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1151.thread1379 ]
  %i.iq = add i32 %.0.copyload.i1154, 1084
  %i.ir = add i32 %i.hm, -4
  %i.is = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.iq, i32 noundef %.0131.i1178, i32 noundef %i.ir) #7
  %.pre.i1179 = zext i32 %i.is to i64
  br label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180

w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180: ; preds = %bb.x, %bb.v, %bb.y
  %.pre-phi.i1174 = phi i64 [ %.pre.i1179, %bb.y ], [ %i.ib, %bb.v ], [ %i.io, %bb.x ]
  %.val.i1175 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val.i1175, i64 %.pre-phi.i1174
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %.0.copyload.i146.i1176 = load i32, ptr %i.iu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i146.i1176) #7, !srcloc !19
  store i32 %i.hm, ptr %i.a, align 8, !tbaa !7
  %i.iv = add nuw nsw i64 %i.hd, 8                ; 2 uses
  %.val1091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.iv
  %.0.copyload.i1181 = load i8, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1181) #7, !srcloc !21
  %i.ix = add i8 %.0.copyload.i1181, -75
  %i.iy = icmp ult i8 %i.ix, 15
  br i1 %i.iy, label %bb.af, label %bb.z

bb.z:                                             ; preds = %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180
  %.val1092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.hd
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 10
  %.0.copyload.i1182 = load i16, ptr %i.ja, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1182) #7, !srcloc !24
  %.not961 = icmp eq i16 %.0.copyload.i1182, 0
  br i1 %.not961, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  switch i8 %.0.copyload.i1181, label %bb.ab [
    i8 22, label %bb.af
    i8 23, label %bb.af
    i8 60, label %bb.af
    i8 52, label %bb.af
    i8 33, label %bb.af
    i8 31, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.jb = icmp ult i32 %.0.copyload.i146.i1176, 256
  br i1 %i.jb, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val1039, i64 %i.f
  %.0.copyload.i1183 = load i32, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1183) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AupdateRegister0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1183, i32 noundef %i.ge, i32 noundef 0)
  %.val1038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1038, i64 %i.fk
  %.0.copyload.i1184 = load i32, ptr %i.jd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1184) #7, !srcloc !19
  %.val1037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val1037, i64 %i.fd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %.0.copyload.i1185 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1185) #7, !srcloc !19
  %.not962 = icmp ult i32 %.0.copyload.i1184, %.0.copyload.i1185
  br i1 %.not962, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.fr, i32 noundef %i.fm, i32 noundef 0, i32 noundef 8) #7
  %.val1036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1036, i64 %i.fk
  %.0.copyload.i1186 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1186) #7, !srcloc !19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1920 = phi i32 [ %.0.copyload.i1186, %bb.ad ], [ %.0.copyload.i1184, %bb.ac ]
  %.val1035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1035, i64 %i.fn
  %.0.copyload.i1187 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1187) #7, !srcloc !19
  %i.ji = shl i32 %.1920, 3
  %i.jj = add i32 %.0.copyload.i1187, %i.ji
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %.val1074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1074, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i32 %.0.copyload.i146.i1176, ptr %i.jm, align 1
  %.val1073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1073, i64 %i.jk
  store i32 %.0916, ptr %i.jn, align 1
  %.val1034 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1034, i64 %i.fk
  %.0.copyload.i1188 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1188) #7, !srcloc !19
  %i.jp = add i32 %.0.copyload.i1188, 1
  %.val1072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1072, i64 %i.fk
  store i32 %i.jp, ptr %i.jq, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.z, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180, %bb.ae
  %.2921 = phi i32 [ 0, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1180 ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.aa ], [ 0, %bb.aa ], [ 0, %bb.aa ], [ 0, %bb.aa ], [ 0, %bb.aa ] ; 2 uses
  %i.jr = add nuw nsw i64 %i.hd, 44               ; 2 uses
  %.val1033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val1033, i64 %i.jr
  %.0.copyload.i1189 = load i32, ptr %i.js, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1189) #7, !srcloc !19
  %i.jt = icmp sgt i32 %.0.copyload.i1189, 0
  br i1 %i.jt, label %.preheader1395, label %.loopexit1396

.preheader1395:                                   ; preds = %bb.af
  %i.ju = zext i32 %i.ge to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader1395, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
  %.1923 = phi i32 [ %i.pg, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread ], [ 0, %.preheader1395 ] ; 5 uses
  %.3 = phi i32 [ %.4, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread ], [ %.2921, %.preheader1395 ] ; 12 uses
  %.val1032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1032, i64 %i.hd
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %.0.copyload.i1190 = load i32, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1190) #7, !srcloc !19
  %i.jx = shl i32 %.1923, 3
  %i.jy = add i32 %.0.copyload.i1190, %i.jx
  %i.jz = zext i32 %i.jy to i64
  %.val1031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1031, i64 %i.jz
  %.0.copyload.i1191 = load i32, ptr %i.ka, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1191) #7, !srcloc !19
  %i.kb = zext i32 %.0.copyload.i1191 to i64
  %.val1090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.kb
  %.0.copyload.i1192 = load i8, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1192) #7, !srcloc !21
  %i.kd = add i8 %.0.copyload.i1192, -109
  %i.ke = icmp ult i8 %i.kd, -107
  br i1 %i.ke, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val1030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1030, i64 %i.f
  %.0.copyload.i1193 = load i32, ptr %i.kf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1193) #7, !srcloc !19
  %i.kg = add i32 %.0.copyload.i1191, -8
  %i.kh = add i32 %.0.copyload.i1193, 1096
  %i.ki = zext i32 %i.kh to i64
  %.val85.i1194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val85.i1194, i64 %i.ki
  %.0.copyload.i.i1195 = load i32, ptr %i.kj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i1195) #7, !srcloc !19
  %.not.i1196 = icmp eq i32 %.0.copyload.i.i1195, 0
  br i1 %.not.i1196, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kk = zext i32 %.0.copyload.i1193 to i64
  %.val84.i1197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val84.i1197, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1084
  %.0.copyload.i86.i1198 = load i32, ptr %i.km, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86.i1198) #7, !srcloc !19
  %i.kn = add i32 %.0.copyload.i.i1195, -1        ; 2 uses
  %i.ko = lshr i32 %.0.copyload.i1191, 4
  %i.kp = lshr i32 %.0.copyload.i1191, 9
  %i.kq = xor i32 %i.ko, %i.kp                    ; 2 uses
  %i.kr = and i32 %i.kn, %i.kq                    ; 2 uses
  %i.ks = shl nuw nsw i32 %i.kr, 3
  %i.kt = add i32 %.0.copyload.i86.i1198, %i.ks
  %i.ku = zext i32 %i.kt to i64
  %.val83.i1199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val83.i1199, i64 %i.ku
  %.0.copyload.i87.i1200 = load i32, ptr %i.kv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i87.i1200) #7, !srcloc !19
  %i.kw = icmp eq i32 %.0.copyload.i87.i1200, %.0.copyload.i1191
  br i1 %i.kw, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386, label %.preheader.i1201

.preheader.i1201:                                 ; preds = %bb.ai, %bb.aj
  %.077.i1202 = phi i32 [ %i.kz, %bb.aj ], [ %i.kr, %bb.ai ]
  %.075.i1203 = phi i32 [ %i.ky, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.0.i1204 = phi i32 [ %.0.copyload.i88.i1209, %bb.aj ], [ %.0.copyload.i87.i1200, %bb.ai ]
  %.not90.i1205.not = icmp eq i32 %.0.i1204, -4
  br i1 %.not90.i1205.not, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i1201
  %i.kx = add i32 %.075.i1203, %.077.i1202
  %i.ky = add i32 %.075.i1203, 1
  %i.kz = and i32 %i.kx, %i.kn                    ; 2 uses
  %i.la = shl i32 %i.kz, 3
  %i.lb = add i32 %i.la, %.0.copyload.i86.i1198
  %i.lc = zext i32 %i.lb to i64
  %.val.i1208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i1208, i64 %i.lc
  %.0.copyload.i88.i1209 = load i32, ptr %i.ld, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88.i1209) #7, !srcloc !19
  %.not82.i1210 = icmp eq i32 %.0.copyload.i88.i1209, %.0.copyload.i1191
  br i1 %.not82.i1210, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386, label %.preheader.i1201

w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386: ; preds = %bb.aj, %bb.ai
  %.val1029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1029, i64 %i.f
  %.0.copyload.i1212 = load i32, ptr %i.le, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1212) #7, !srcloc !19
  %i.lf = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.lg = add i32 %i.lf, -16                      ; 2 uses
  store i32 %i.lg, ptr %i.a, align 8, !tbaa !7
  %i.lh = zext i32 %i.lg to i64
  %.val142.i1213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val142.i1213, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i32 %.0.copyload.i1191, ptr %i.lj, align 1
  %i.lk = add i32 %.0.copyload.i1212, 1096
  %i.ll = zext i32 %i.lk to i64
  %.val141.i1214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.val141.i1214, i64 %i.ll
  %.0.copyload.i.i1215 = load i32, ptr %i.lm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i1215) #7, !srcloc !19
  %.not.i1216 = icmp eq i32 %.0.copyload.i.i1215, 0
  br i1 %.not.i1216, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386
  %i.ln = zext i32 %.0.copyload.i1212 to i64
  %.val140.i1217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val140.i1217, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1084
  %.0.copyload.i143.i1218 = load i32, ptr %i.lp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i143.i1218) #7, !srcloc !19
  %i.lq = add i32 %.0.copyload.i.i1215, -1        ; 2 uses
  %i.lr = and i32 %i.lq, %i.kq                    ; 2 uses
  %i.ls = shl nuw nsw i32 %i.lr, 3
  %i.lt = add i32 %.0.copyload.i143.i1218, %i.ls  ; 2 uses
  %i.lu = zext i32 %i.lt to i64                   ; 2 uses
  %.val139.i1219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val139.i1219, i64 %i.lu
  %.0.copyload.i144.i1220 = load i32, ptr %i.lv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i144.i1220) #7, !srcloc !19
  %i.lw = icmp eq i32 %.0.copyload.i144.i1220, %.0.copyload.i1191
  br i1 %i.lw, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, label %.preheader.i1221

.preheader.i1221:                                 ; preds = %bb.ak, %bb.am
  %.0130.i1222 = phi i32 [ %i.mb, %bb.am ], [ 0, %bb.ak ] ; 3 uses
  %.0129.i1223 = phi i32 [ %i.mg, %bb.am ], [ %i.lt, %bb.ak ] ; 2 uses
  %.0128.i1224 = phi i32 [ %.0.copyload.i145.i1229, %bb.am ], [ %.0.copyload.i144.i1220, %bb.ak ] ; 2 uses
  %.0127.i1225 = phi i32 [ %i.md, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %.0.i1226 = phi i32 [ %i.me, %bb.am ], [ %i.lr, %bb.ak ]
  %i.lx = icmp eq i32 %.0128.i1224, -4
  %.not137.i1235 = icmp eq i32 %.0130.i1222, 0    ; 2 uses
  br i1 %i.lx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader.i1221
  %i.ly = select i1 %.not137.i1235, i32 %.0129.i1223, i32 %.0130.i1222
  br label %bb.an

bb.am:                                            ; preds = %.preheader.i1221
  %i.lz = icmp eq i32 %.0128.i1224, -8
  %i.ma = select i1 %i.lz, i1 %.not137.i1235, i1 false
  %i.mb = select i1 %i.ma, i32 %.0129.i1223, i32 %.0130.i1222
  %i.mc = add i32 %.0.i1226, %.0127.i1225
  %i.md = add i32 %.0127.i1225, 1
  %i.me = and i32 %i.mc, %i.lq                    ; 2 uses
  %i.mf = shl i32 %i.me, 3
  %i.mg = add i32 %i.mf, %.0.copyload.i143.i1218  ; 2 uses
  %i.mh = zext i32 %i.mg to i64                   ; 2 uses
  %.val138.i1228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val138.i1228, i64 %i.mh
  %.0.copyload.i145.i1229 = load i32, ptr %i.mi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i145.i1229) #7, !srcloc !19
  %.not136.i1230 = icmp eq i32 %.0.copyload.i145.i1229, %.0.copyload.i1191
  br i1 %.not136.i1230, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, label %.preheader.i1221

bb.an:                                            ; preds = %bb.al, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386
  %.0131.i1236 = phi i32 [ %i.ly, %bb.al ], [ 0, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread1386 ]
  %i.mj = add i32 %.0.copyload.i1212, 1084
  %i.mk = add i32 %i.lf, -4
  %i.ml = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.mj, i32 noundef %.0131.i1236, i32 noundef %i.mk) #7
  %.pre.i1237 = zext i32 %i.ml to i64
  br label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238

w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238: ; preds = %bb.am, %bb.ak, %bb.an
  %.pre-phi.i1232 = phi i64 [ %.pre.i1237, %bb.an ], [ %i.lu, %bb.ak ], [ %i.mh, %bb.am ]
  %.val.i1233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i1233, i64 %.pre-phi.i1232
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.0.copyload.i146.i1234 = load i32, ptr %i.mn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i146.i1234) #7, !srcloc !19
  store i32 %i.lf, ptr %i.a, align 8, !tbaa !7
  %.val1089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.ju
  %.0.copyload.i1239 = load i8, ptr %i.mo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1239) #7, !srcloc !21
  switch i8 %.0.copyload.i1239, label %bb.ap [
    i8 22, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
    i8 23, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
    i8 95, label %bb.ao
    i8 94, label %bb.ao
    i8 93, label %bb.ao
    i8 92, label %bb.ao
    i8 91, label %bb.ao
    i8 50, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
    i8 33, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
    i8 31, label %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AisAllocated0x28hermes0x3A0x3AValue0x2A0x29.exit1211.thread
  ]

bb.ao:                                            ; preds = %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238, %w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29.exit1238
end_hunk_0
