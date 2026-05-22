inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AOldGen0x3A0x3Aalloc0x28unsigned0x20int0x29:bb.a
  %i.o = add nuw nsw i64 %i.i, 44                 ; 3 uses
  %.val210 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.o
  %.0.copyload.i225 = load i32, ptr %i.p, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i225) #8, !srcloc !13
  %i.q = sub i32 %.0.copyload.i224, %.0.copyload.i225
  %i.r = icmp ugt i32 %2, %i.q
  br i1 %i.r, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %.0.copyload.i225, %2
  %.val216 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val216, i64 %i.o
  store i32 %i.s, ptr %i.t, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %.0.copyload.i225, %bb.d ], [ 0, %bb.c ] ; 7 uses
  %i.u = and i32 %.0, -4194304                    ; 4 uses
  %i.v = xor i32 %i.u, -1
  %i.w = add i32 %.0, %i.v
  %i.x = ashr i32 %i.w, 9
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  %.val215 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val215, i64 %i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 %i.y, ptr %i.aa, align 1
  %i.ab = shl i32 %i.y, 9
  %i.ac = add i32 %i.ab, %i.u                     ; 2 uses
  %.val214 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  store i32 %i.ac, ptr %i.ae, align 1
  %i.af = add i32 %.0, %2                         ; 3 uses
  %i.ag = icmp ugt i32 %i.af, %i.ac
  br i1 %i.ag, label %bb.e, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ah = add i32 %i.b, -8
  %i.ai = zext i32 %i.ah to i64                   ; 6 uses
  %.val113.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ai
  %.0.copyload.i.i = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !13
  %i.ak = or disjoint i32 %i.u, 8192              ; 2 uses
  %i.al = add i32 %.0.copyload.i.i, %i.ak
  %i.am = add nuw nsw i64 %i.ai, 4                ; 5 uses
  %.val112.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val112.i, i64 %i.am
  %.0.copyload.i120.i = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120.i) #8, !srcloc !13
  %i.ao = sub i32 %.0.copyload.i120.i, %.0
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = zext i32 %i.al to i64
  %.val119.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ar = trunc i32 %i.ap to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.val119.i, i64 %i.aq
  store i8 %i.ar, ptr %i.as, align 1
  %.val111.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val111.i, i64 %i.ai
  %.0.copyload.i121.i = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121.i) #8, !srcloc !13
  %i.au = add i32 %.0.copyload.i121.i, 1          ; 2 uses
  %.val117.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val117.i, i64 %i.ai
  store i32 %i.au, ptr %i.av, align 1
  %.val110.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val110.i, i64 %i.am
  %.0.copyload.i122.i = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122.i) #8, !srcloc !13
  %i.ax = add i32 %.0.copyload.i122.i, 512        ; 2 uses
  %.val116.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %i.am
  store i32 %i.ax, ptr %i.ay, align 1
  %i.az = icmp ugt i32 %i.af, %i.ax
  br i1 %i.az, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.0107.i = phi i32 [ %i.bq, %.preheader.i ], [ 0, %bb.e ] ; 2 uses
  %.0106.i = phi i32 [ %i.bo, %.preheader.i ], [ 0, %bb.e ]
  %.0105.i = phi i32 [ %i.bg, %.preheader.i ], [ %i.au, %bb.e ]
  %.0.i = phi i32 [ %i.bp, %.preheader.i ], [ 1, %bb.e ] ; 2 uses
  %i.ba = add i32 %.0105.i, %i.ak
  %i.bb = zext i32 %i.ba to i64
  %.val118.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bc = trunc i32 %.0107.i to i8
  %i.bd = xor i8 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %.val118.i, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1
  %.val109.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val109.i, i64 %i.ai
  %.0.copyload.i123.i = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123.i) #8, !srcloc !13
  %i.bg = add i32 %.0.copyload.i123.i, 1          ; 2 uses
  %.val115.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val115.i, i64 %i.ai
  store i32 %i.bg, ptr %i.bh, align 1
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.am
  %.0.copyload.i124.i = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124.i) #8, !srcloc !13
  %i.bj = add i32 %.0.copyload.i124.i, 512        ; 2 uses
  %.val114.i = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.am
  store i32 %i.bj, ptr %i.bk, align 1
  %i.bl = add i32 %.0106.i, 1                     ; 2 uses
  %i.bm = icmp eq i32 %.0.i, %i.bl                ; 2 uses
  %i.bn = zext i1 %i.bm to i32                    ; 2 uses
  %i.bo = select i1 %i.bm, i32 0, i32 %i.bl
  %i.bp = shl i32 %.0.i, %i.bn
  %i.bq = add i32 %.0107.i, %i.bn
  %i.br = icmp ugt i32 %i.af, %i.bj
  br i1 %i.br, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit: ; preds = %.preheader.i, %bb.e, %._crit_edge
  %i.bs = add i32 %i.b, -44
  %i.bt = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AAlignedStorage0x3A0x3AAlignedStorage0x28hermes0x3A0x3Avm0x3A0x3AAlignedStorage0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.bs, i32 noundef %i.e) #8 ; 3 uses
  %.val220 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.o
  %.0.copyload.i226 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i226) #8, !srcloc !22
  %i.bv = zext i32 %i.bt to i64
  %.val218 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.0.copyload.i226, ptr %i.bx, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AOldGen0x3A0x3AaddSegment0x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AHeapSegment0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bt)
  %i.by = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AAlignedHeapSegment0x3A0x3A0x7EAlignedHeapSegment0x280x29(ptr noundef nonnull %0, i32 noundef %i.bt) #8 ; 0 uses
  %i.bz = or disjoint i32 %i.u, 16384             ; 2 uses
  %i.ca = sub i32 %.0, %i.bz
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = and i32 %i.cb, 67108860
  %i.cd = add i32 %i.cc, %i.bz
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.val209 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.ce
  %.0.copyload.i227 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i227) #8, !srcloc !13
  %i.cg = lshr i32 %.0, 3
  %i.ch = and i32 %i.cg, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = or i32 %.0.copyload.i227, %i.ci
  %.val213 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val213, i64 %i.ce
  store i32 %i.cj, ptr %i.ck, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.cl = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AOldGen0x3A0x3Asearch0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %.not207 = icmp eq i32 %i.cl, 0
  br i1 %.not207, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit
  %.1 = phi i32 [ %.0, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %i.cl, %bb.f ] ; 2 uses
  %.val221 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.j
  %.0.copyload.i228 = load i8, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i228) #8, !srcloc !21
  %i.cn = and i8 %.0.copyload.i228, 1
  %.not208 = icmp eq i8 %i.cn, 0
  br i1 %.not208, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AAlignedHeapSegment0x3A0x3A0x7EAlignedHeapSegment0x280x29(ptr noundef nonnull %0, i32 noundef %i.e) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.a, %bb.h
  %.2 = phi i32 [ %i.d, %bb.a ], [ %.1, %bb.g ], [ %.1, %bb.h ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !14
  ret i32 %.2

bb.j:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %.0.copyload.i229 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i229) #8, !srcloc !13
  %i.cq = add i32 %i.b, -52
  tail call void @w2c_hermes_llvh0x3A0x3AErrorOr0x3Chermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AHeapSegment0x3E0x3A0x3AgetError0x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.cq, i32 noundef %i.e) #8
  %.val219 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.0.copyload.i230 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i230) #8, !srcloc !22
  %.val217 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.i
  store i64 %.0.copyload.i230, ptr %i.ct, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3Aoom0x28std0x3A0x3A_0x5F20x3A0x3Aerror_code0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i229, i32 noundef %i.c)
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AOldGen0x3A0x3Asearch0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = lshr i32 %2, 3
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 false)
  %i.f = sub nuw nsw i32 276, %i.e
  %i.g = icmp ult i32 %2, 2048
  %i.h = select i1 %i.g, i32 %i.d, i32 %i.f       ; 5 uses
  %i.i = icmp samesign ult i32 %i.h, 256
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = mul nuw nsw i32 %i.h, 12
  %i.k = add i32 %i.j, %1                         ; 2 uses
  %i.l = add i32 %i.k, 124
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.n = zext i32 %i.l to i64
  %.val1170.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val1170.a, i64 %i.n
  %.0.copyload.i = load i32, ptr %i.o, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i32 %.0.copyload.i to i64           ; 4 uses
  %i.q = add nuw nsw i64 %i.p, 8                  ; 2 uses
  %.val1169.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val1169.a, i64 %i.q
  %.0.copyload.i1206 = load i32, ptr %i.r, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1206) #8, !srcloc !13
  %i.s = zext i32 %.0.copyload.i1206 to i64
  %.val1168.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val1168.a, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i1207 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1207) #8, !srcloc !13
  %.val1199.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val1199.a, i64 %i.q
  store i32 %.0.copyload.i1207, ptr %i.v, align 1
  %.not1097.a = icmp eq i32 %.0.copyload.i1207, 0
  br i1 %.not1097.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val1167.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val1167.a, i64 %i.p
  %.0.copyload.i1208 = load i32, ptr %i.w, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1208) #8, !srcloc !13
  %.not1098 = icmp eq i32 %.0.copyload.i1208, 0
  br i1 %.not1098, label %.split, label %.split1027

.split:                                           ; preds = %bb.d
  %.val1119.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val1119.a, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i1209 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1209) #8, !srcloc !13
  br label %.sink.split

.split1027:                                       ; preds = %bb.d
  %i.z = add nuw nsw i64 %i.p, 4                  ; 2 uses
  %.val1166.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1166.a, i64 %i.z
  %.0.copyload.i1210 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1210) #8, !srcloc !13
  %i.ab = zext i32 %.0.copyload.i1208 to i64
  %.val1198 = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1198, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %.0.copyload.i1210, ptr %i.ad, align 1
  %.val1118.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1118.a, i64 %i.z
  %.0.copyload.i1211 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1211) #8, !srcloc !13
  br label %.sink.split

.sink.split:                                      ; preds = %.split, %.split1027
  %.0.copyload.i1209.sink = phi i32 [ %.0.copyload.i1209, %.split ], [ %.0.copyload.i1211, %.split1027 ]
  %.sink = phi i32 [ 0, %.split ], [ %.0.copyload.i1208, %.split1027 ]
  %i.af = zext i32 %.0.copyload.i1209.sink to i64
  %.val1176 = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1176, i64 %i.af
  store i32 %.sink, ptr %i.ag, align 1
  %i.ah = and i32 %i.h, 31
  %i.ai = shl nuw i32 1, %i.ah                    ; 2 uses
  %i.aj = add i32 %1, 64
  %i.ak = zext i32 %i.k to i64
  %.val1165 = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 124
  %.0.copyload.i1212 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1212) #8, !srcloc !13
  %.not1099 = icmp eq i32 %.0.copyload.i1212, 0
  %i.an = lshr i32 %i.h, 3
  %i.ao = and i32 %i.an, 28
  %i.ap = add i32 %i.ao, %i.aj
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.val1163.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1163.a, i64 %i.aq
  %.0.copyload.i1214 = load i32, ptr %i.ar, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1214) #8
  %i.as = xor i32 %i.ai, -1
  %i.at = and i32 %.0.copyload.i1214, %i.as
  %i.au = or i32 %.0.copyload.i1214, %i.ai
  %.sink1351 = select i1 %.not1099, i32 %i.at, i32 %i.au
  %.val1196.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val1196.a, i64 %i.aq
  store i32 %.sink1351, ptr %i.av, align 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.aw = zext i32 %1 to i64
  %i.ax = add nuw nsw i64 %i.aw, 48               ; 2 uses
  %.val1205.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1205.a, i64 %i.ax
  %.0.copyload.i1215 = load i64, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1215) #8, !srcloc !22
  %i.az = sext i32 %2 to i64
  %i.ba = add i64 %.0.copyload.i1215, %i.az
  %.val1202.a = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1202.a, i64 %i.ax
  store i64 %i.ba, ptr %i.bb, align 1
  %i.bc = and i32 %.0.copyload.i1206, -4194304
  br label %bb.at

bb.f:                                             ; preds = %bb.b
  %i.bd = add i32 %2, 8                           ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 false)
  %i.bg = sub nuw nsw i32 276, %i.bf
  %i.bh = icmp ult i32 %i.bd, 2048
  %i.bi = select i1 %i.bh, i32 %i.be, i32 %i.bg
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.01021 = phi i32 [ %i.bi, %bb.f ], [ %i.h, %bb.a ] ; 10 uses
  %i.bj = add i32 %1, 64                          ; 20 uses
  %i.bk = lshr i32 %.01021, 5                     ; 9 uses
  %i.bl = shl nuw nsw i32 %i.bk, 2
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 78 uses
  %i.bo = zext i32 %i.bm to i64
  %.val1162.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1162.a, i64 %i.bo
  %.0.copyload.i1216 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1216) #8, !srcloc !13
  %i.bq = and i32 %.01021, 31
  %i.br = shl nsw i32 -1, %i.bq
  %i.bs = and i32 %.0.copyload.i1216, %i.br       ; 2 uses
  %i.bt = icmp samesign ult i32 %.01021, 256
  %.not1066 = icmp eq i32 %i.bs, 0
  %or.cond1113.a = select i1 %i.bt, i1 %.not1066, i1 false
  br i1 %or.cond1113.a, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bu = add nuw nsw i32 %i.bk, 1                ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 2
  %i.bw = add i32 %i.bv, %i.bj
  %i.bx = zext i32 %i.bw to i64
  %.val1161.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val1161.a, i64 %i.bx
  %.0.copyload.i1217 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1217) #8, !srcloc !13
  %i.bz = icmp samesign ult i32 %.01021, 224
  %.not1067 = icmp eq i32 %.0.copyload.i1217, 0
  %or.cond = select i1 %i.bz, i1 %.not1067, i1 false
  br i1 %or.cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ca = add nuw nsw i32 %i.bk, 2                ; 2 uses
  %i.cb = shl nuw nsw i32 %i.ca, 2
  %i.cc = add i32 %i.cb, %i.bj
  %i.cd = zext i32 %i.cc to i64
  %.val1160.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1160.a, i64 %i.cd
  %.0.copyload.i1218 = load i32, ptr %i.ce, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1218) #8, !srcloc !13
  %i.cf = icmp samesign ult i32 %.01021, 192
  %.not1068 = icmp eq i32 %.0.copyload.i1218, 0
  %or.cond1100 = select i1 %i.cf, i1 %.not1068, i1 false
  br i1 %or.cond1100, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cg = add nuw nsw i32 %i.bk, 3                ; 2 uses
  %i.ch = shl nuw nsw i32 %i.cg, 2
  %i.ci = add i32 %i.ch, %i.bj
  %i.cj = zext i32 %i.ci to i64
  %.val1159.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1159.a, i64 %i.cj
  %.0.copyload.i1219 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1219) #8, !srcloc !13
  %i.cl = icmp samesign ult i32 %.01021, 160
  %.not1069 = icmp eq i32 %.0.copyload.i1219, 0
  %or.cond1101 = select i1 %i.cl, i1 %.not1069, i1 false
  br i1 %or.cond1101, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cm = add nuw nsw i32 %i.bk, 4                ; 2 uses
  %i.cn = shl nuw nsw i32 %i.cm, 2
  %i.co = add i32 %i.cn, %i.bj
  %i.cp = zext i32 %i.co to i64
  %.val1158.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1158.a, i64 %i.cp
  %.0.copyload.i1220 = load i32, ptr %i.cq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1220) #8, !srcloc !13
  %i.cr = icmp samesign ult i32 %.01021, 128
  %.not1070 = icmp eq i32 %.0.copyload.i1220, 0
  %or.cond1102 = select i1 %i.cr, i1 %.not1070, i1 false
  br i1 %or.cond1102, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cs = add nuw nsw i32 %i.bk, 5                ; 2 uses
  %i.ct = shl nuw nsw i32 %i.cs, 2
  %i.cu = add i32 %i.ct, %i.bj
  %i.cv = zext i32 %i.cu to i64
  %.val1157.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1157.a, i64 %i.cv
  %.0.copyload.i1221 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1221) #8, !srcloc !13
  %i.cx = icmp samesign ult i32 %.01021, 96
  %.not1071 = icmp eq i32 %.0.copyload.i1221, 0
  %or.cond1103 = select i1 %i.cx, i1 %.not1071, i1 false
  br i1 %or.cond1103, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cy = add nuw nsw i32 %i.bk, 6                ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cy, 2
  %i.da = add i32 %i.cz, %i.bj
  %i.db = zext i32 %i.da to i64
  %.val1156.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1156.a, i64 %i.db
  %.0.copyload.i1222 = load i32, ptr %i.dc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1222) #8, !srcloc !13
  %i.dd = icmp samesign ult i32 %.01021, 64
  %.not1072 = icmp eq i32 %.0.copyload.i1222, 0
  %or.cond1104 = select i1 %i.dd, i1 %.not1072, i1 false
  br i1 %or.cond1104, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.de = add nuw nsw i32 %i.bk, 7                ; 2 uses
  %i.df = shl nuw nsw i32 %i.de, 2
  %i.dg = add i32 %i.df, %i.bj
  %i.dh = zext i32 %i.dg to i64
  %.val1155.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val1155.a, i64 %i.dh
  %.0.copyload.i1223 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1223) #8, !srcloc !13
  %i.dj = icmp samesign ult i32 %.01021, 32
  %.not1073 = icmp eq i32 %.0.copyload.i1223, 0
  %or.cond1105 = select i1 %i.dj, i1 %.not1073, i1 false
  br i1 %or.cond1105, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = add i32 %1, 96
  %i.dl = zext i32 %i.dk to i64
  %.val1154.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1154.a, i64 %i.dl
  %.0.copyload.i1224 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1224) #8, !srcloc !13
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.o
  %.01023 = phi i32 [ 8, %bb.o ], [ %i.bk, %bb.g ], [ %i.bu, %bb.h ], [ %i.cy, %bb.m ], [ %i.ca, %bb.i ], [ %i.cs, %bb.l ], [ %i.cg, %bb.j ], [ %i.de, %bb.n ], [ %i.cm, %bb.k ]
  %.01018 = phi i32 [ %.0.copyload.i1224, %bb.o ], [ %i.bs, %bb.g ], [ %.0.copyload.i1217, %bb.h ], [ %.0.copyload.i1222, %bb.m ], [ %.0.copyload.i1218, %bb.i ], [ %.0.copyload.i1221, %bb.l ], [ %.0.copyload.i1219, %bb.j ], [ %.0.copyload.i1223, %bb.n ], [ %.0.copyload.i1220, %bb.k ]
  %i.dn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.01018, i1 false)
  %i.do = shl nuw nsw i32 %.01023, 5
  %i.dp = add nuw nsw i32 %i.dn, %i.do            ; 2 uses
  %i.dq = icmp samesign ugt i32 %i.dp, 266
  br i1 %i.dq, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = add i32 %2, 8
  %i.ds = add i32 %1, 124                         ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.as, %bb.q
  %.01017 = phi i32 [ %i.dp, %bb.q ], [ %i.ne, %bb.as ] ; 16 uses
  %i.dt = mul nuw nsw i32 %.01017, 12
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = zext i32 %i.du to i64                   ; 3 uses
  %.val1153.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1153.a, i64 %i.dv
  %.0.copyload.i1225 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1225) #8, !srcloc !13
  br label %bb.s

bb.s:                                             ; preds = %bb.ai, %bb.r
  %.01020 = phi i32 [ %.0.copyload.i1225, %bb.r ], [ %.0.copyload.i1254, %bb.ai ] ; 3 uses
  %i.dx = zext i32 %.01020 to i64                 ; 8 uses
  %i.dy = add nuw nsw i64 %i.dx, 8                ; 3 uses
  %.val1152.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1152.a, i64 %i.dy
  %.0.copyload.i1226 = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1226) #8, !srcloc !13
  %i.ea = add i32 %.01020, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.ah, %bb.s
  %.11022 = phi i32 [ %.0.copyload.i1226, %bb.s ], [ %.0.copyload.i1244, %bb.ah ] ; 7 uses
  %.0 = phi i32 [ %i.ea, %bb.s ], [ %i.kv, %bb.ah ] ; 2 uses
  %i.eb = zext i32 %.11022 to i64                 ; 6 uses
  %.val1151.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1151.a, i64 %i.eb
  %.0.copyload.i1227 = load i32, ptr %i.ec, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1227) #8, !srcloc !13
  %i.ed = and i32 %.0.copyload.i1227, 16777215    ; 4 uses
  %.not1075 = icmp ugt i32 %i.dr, %i.ed
  br i1 %.not1075, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = sub nsw i32 %i.ed, %2                   ; 2 uses
  %i.ef = and i32 %i.ee, 16777215
  %i.eg = and i32 %.0.copyload.i1227, -16777216
  %i.eh = or disjoint i32 %i.ef, %i.eg
  %.val1195.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1195.a, i64 %i.eb
  store i32 %i.eh, ptr %i.ei, align 1
  %i.ej = add i32 %i.ee, %.11022                  ; 4 uses
  %i.ek = and i32 %i.ej, -4194304                 ; 4 uses
  %i.el = xor i32 %i.ek, -1
  %i.em = add i32 %i.ej, %i.el
  %i.en = ashr i32 %i.em, 9
  %i.eo = add nsw i32 %i.en, 1                    ; 2 uses
  %i.ep = zext i32 %i.c to i64                    ; 2 uses
  %.val1194.a = load ptr, ptr %i.bn, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1194.a, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 %i.eo, ptr %i.er, align 1
  %i.es = shl i32 %i.eo, 9
  %i.et = add i32 %i.es, %i.ek                    ; 2 uses
  %.val1193.a = load ptr, ptr %i.bn, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AOldGen0x3A0x3AaddSegment0x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AHeapSegment0x29:bb.a
  store i32 %i.xc, ptr %i.xe, align 1
  %.not2556 = icmp eq i32 %.82467, %.6
  br i1 %.not2556, label %bb.bs, label %.preheader2996

.preheader2996:                                   ; preds = %bb.bp
  %i.xf = add i32 %i.nj, -20
  br label %bb.bq

bb.bq:                                            ; preds = %.preheader2996, %bb.bq
  %.92468 = phi i32 [ %i.xg, %bb.bq ], [ %.82467, %.preheader2996 ]
  %i.xg = add i32 %.92468, -4                     ; 4 uses
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fsplit_buffer0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x3E0x3E0x3A0x3Apush_front0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.xf, i32 noundef %i.xg) #8
  %.val2597 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xh = getelementptr inbounds nuw i8, ptr %.val2597, i64 %i.rl
  %.0.copyload.i2964 = load i32, ptr %i.xh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2964) #8, !srcloc !13
  %.not2557 = icmp eq i32 %i.xg, %.0.copyload.i2964
  br i1 %.not2557, label %bb.br, label %bb.bq

bb.br:                                            ; preds = %bb.bq
  %.val2596 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xi = getelementptr inbounds nuw i8, ptr %.val2596, i64 %i.wb
  %.0.copyload.i2965 = load i32, ptr %i.xi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2965) #8, !srcloc !13
  %.val2595 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xj = getelementptr inbounds nuw i8, ptr %.val2595, i64 %i.xd
  %.0.copyload.i2966 = load i32, ptr %i.xj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2966) #8, !srcloc !13
  %.val2594 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xk = getelementptr inbounds nuw i8, ptr %.val2594, i64 %i.wf
  %.0.copyload.i2967 = load i32, ptr %i.xk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2967) #8, !srcloc !13
  %.val2593 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xl = getelementptr inbounds nuw i8, ptr %.val2593, i64 %i.vy
  %.0.copyload.i2968 = load i32, ptr %i.xl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2968) #8, !srcloc !13
  %.val2592 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xm = getelementptr inbounds nuw i8, ptr %.val2592, i64 %i.rj
  %.0.copyload.i2969 = load i32, ptr %i.xm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2969) #8, !srcloc !13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.82487 = phi i32 [ %i.xg, %bb.br ], [ %.82467, %bb.bp ] ; 3 uses
  %.92478 = phi i32 [ %.0.copyload.i2967, %bb.br ], [ %.82477, %bb.bp ]
  %.9 = phi i32 [ %.0.copyload.i2968, %bb.br ], [ %.82450, %bb.bp ]
  %.12441 = phi i32 [ %.0.copyload.i2965, %bb.br ], [ %.02440, %bb.bp ]
  %.12438 = phi i32 [ %.0.copyload.i2966, %bb.br ], [ %i.xc, %bb.bp ]
  %.7 = phi i32 [ %.0.copyload.i2969, %bb.br ], [ %.82467, %bb.bp ] ; 4 uses
  %.val2591 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xn = getelementptr inbounds nuw i8, ptr %.val2591, i64 %i.nm
  %.0.copyload.i2970 = load i32, ptr %i.xn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2970) #8, !srcloc !13
  %.val2734 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xo = getelementptr inbounds nuw i8, ptr %.val2734, i64 %i.nm
  store i32 %.9, ptr %i.xo, align 1
  %.val2733 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xp = getelementptr inbounds nuw i8, ptr %.val2733, i64 %i.vy
  store i32 %.0.copyload.i2970, ptr %i.xp, align 1
  %.val2732 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xq = getelementptr inbounds nuw i8, ptr %.val2732, i64 %i.rl
  store i32 %.92478, ptr %i.xq, align 1
  %.val2731 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xr = getelementptr inbounds nuw i8, ptr %.val2731, i64 %i.wf
  store i32 %.82487, ptr %i.xr, align 1
  %.val2730 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xs = getelementptr inbounds nuw i8, ptr %.val2730, i64 %i.rj
  store i32 %.12438, ptr %i.xs, align 1
  %.val2729 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xt = getelementptr inbounds nuw i8, ptr %.val2729, i64 %i.xd
  store i32 %.7, ptr %i.xt, align 1
  %.val2590 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xu = getelementptr inbounds nuw i8, ptr %.val2590, i64 %i.rp
  %.0.copyload.i2971 = load i32, ptr %i.xu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2971) #8, !srcloc !13
  %.val2728 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xv = getelementptr inbounds nuw i8, ptr %.val2728, i64 %i.rp
  store i32 %.12441, ptr %i.xv, align 1
  %.val2727 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.xw = getelementptr inbounds nuw i8, ptr %.val2727, i64 %i.wb
  store i32 %.0.copyload.i2971, ptr %i.xw, align 1
  %.not2558 = icmp eq i32 %.7, %.82487
  br i1 %.not2558, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xx = add i32 %.82487, 3
  %i.xy = sub i32 %i.xx, %.7
  %i.xz = and i32 %i.xy, -4
  %i.ya = add i32 %i.xz, %.7
  %.val2726 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yb = getelementptr inbounds nuw i8, ptr %.val2726, i64 %i.xd
  store i32 %i.ya, ptr %i.yb, align 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.not2559 = icmp eq i32 %.0.copyload.i2970, 0
  br i1 %.not2559, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2970) #8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bi, %bb.ba, %bb.ax
  store i32 %i.nj, ptr %i.a, align 8, !tbaa !14
  %.val2589 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yc = getelementptr inbounds nuw i8, ptr %.val2589, i64 %i.nc
  %.0.copyload.i2972 = load i32, ptr %i.yc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2972) #8, !srcloc !13
  %.val2588 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yd = getelementptr inbounds nuw i8, ptr %.val2588, i64 %i.mx
  %.0.copyload.i2973 = load i32, ptr %i.yd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2973) #8, !srcloc !13
  %.val2587 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ye = getelementptr inbounds nuw i8, ptr %.val2587, i64 %i.mv
  %.0.copyload.i2974 = load i32, ptr %i.ye, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2974) #8, !srcloc !13
  %i.yf = add i32 %.0.copyload.i2974, %.0.copyload.i2973
  br label %bb.by

bb.bx:                                            ; preds = %bb.bn, %bb.bj, %bb.be, %bb.at
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.by:                                            ; preds = %bb.bw, %bb.ao
  %.10 = phi i32 [ %.0.copyload.i2972, %bb.bw ], [ %.0.copyload.i2922, %bb.ao ]
  %.8 = phi i32 [ %i.yf, %bb.bw ], [ %i.mz, %bb.ao ] ; 2 uses
  %i.yg = lshr i32 %.8, 2
  %i.yh = and i32 %i.yg, 1073741820
  %i.yi = add i32 %i.yh, %.10
  %i.yj = zext i32 %i.yi to i64
  %.val2586 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yk = getelementptr inbounds nuw i8, ptr %.val2586, i64 %i.yj
  %.0.copyload.i2975 = load i32, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2975) #8, !srcloc !13
  %i.yl = and i32 %.8, 15
  %i.ym = mul nuw nsw i32 %i.yl, 3204
  %i.yn = add i32 %.0.copyload.i2975, %i.ym
  %i.yo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.yn, i32 noundef 0, i32 noundef 3204) #8 ; 0 uses
  %.val2585 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yp = getelementptr inbounds nuw i8, ptr %.val2585, i64 %i.mv
  %.0.copyload.i2976 = load i32, ptr %i.yp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2976) #8, !srcloc !13
  %i.yq = add i32 %.0.copyload.i2976, 1
  %.val2725 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yr = getelementptr inbounds nuw i8, ptr %.val2725, i64 %i.mv
  store i32 %i.yq, ptr %i.yr, align 1
  %.val2584 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ys = getelementptr inbounds nuw i8, ptr %.val2584, i64 %i.mm
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 12
  %.0.copyload.i2977 = load i32, ptr %i.yt, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2977) #8, !srcloc !13
  %.val2583 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yu = getelementptr inbounds nuw i8, ptr %.val2583, i64 %i.mn
  %.0.copyload.i2978 = load i32, ptr %i.yu, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2978) #8, !srcloc !13
  %i.yv = sub i32 %.0.copyload.i2977, %.0.copyload.i2978 ; 5 uses
  %i.yw = icmp ult i32 %i.yv, 8
  br i1 %i.yw, label %._crit_edge, label %bb.bz

._crit_edge:                                      ; preds = %bb.by
  %.pre = zext i32 %i.c to i64
  br label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %.val2582 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yx = getelementptr inbounds nuw i8, ptr %.val2582, i64 %i.nc
  %.0.copyload.i2979 = load i32, ptr %i.yx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2979) #8, !srcloc !13
  %.val2581 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yy = getelementptr inbounds nuw i8, ptr %.val2581, i64 %i.mx
  %.0.copyload.i2980 = load i32, ptr %i.yy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2980) #8, !srcloc !13
  %.val2724 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.yz = getelementptr inbounds nuw i8, ptr %.val2724, i64 %i.mn
  store i32 %.0.copyload.i2977, ptr %i.yz, align 1
  %i.za = add i32 %.0.copyload.i2980, %.0.copyload.i2976 ; 2 uses
  %i.zb = lshr i32 %i.za, 2
  %i.zc = and i32 %i.zb, 1073741820
  %i.zd = add i32 %i.zc, %.0.copyload.i2979
  %i.ze = zext i32 %i.zd to i64
  %.val2580 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.zf = getelementptr inbounds nuw i8, ptr %.val2580, i64 %i.ze
  %.0.copyload.i2981 = load i32, ptr %i.zf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2981) #8, !srcloc !13
  %i.zg = and i32 %i.yv, 16777215                 ; 2 uses
  %i.zh = or disjoint i32 %i.zg, 33554432
  %i.zi = zext i32 %.0.copyload.i2978 to i64      ; 3 uses
  %.val2723 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.zj = getelementptr inbounds nuw i8, ptr %.val2723, i64 %i.zi
  store i32 %i.zh, ptr %i.zj, align 1
  %i.zk = add nuw nsw i64 %i.zi, 4                ; 2 uses
  %.val2722 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.zl = getelementptr inbounds nuw i8, ptr %.val2722, i64 %i.zk
  store i32 0, ptr %i.zl, align 1
  %i.zm = and i32 %i.za, 15
  %i.zn = mul nuw nsw i32 %i.zm, 3204
  %i.zo = lshr i32 %i.yv, 3
  %i.zp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yv, i1 true)
  %i.zq = sub nuw nsw i32 276, %i.zp
  %i.zr = icmp ult i32 %i.yv, 2048
  %i.zs = select i1 %i.zr, i32 %i.zo, i32 %i.zq
  %i.zt = mul i32 %i.zs, 12
  %i.zu = add i32 %i.zn, %i.zt
  %i.zv = add i32 %i.zu, %.0.copyload.i2981       ; 3 uses
  %i.zw = and i32 %.0.copyload.i2978, -4194304    ; 3 uses
  %i.zx = xor i32 %i.zw, -1
  %i.zy = add i32 %.0.copyload.i2978, %i.zx
  %i.zz = ashr i32 %i.zy, 9
  %i.aaa = add nsw i32 %i.zz, 1                   ; 2 uses
  %i.aab = zext i32 %i.c to i64                   ; 4 uses
  %.val2721 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aac = getelementptr inbounds nuw i8, ptr %.val2721, i64 %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  store i32 %i.aaa, ptr %i.aad, align 1
  %i.aae = shl i32 %i.aaa, 9
  %i.aaf = add i32 %i.aae, %i.zw                  ; 2 uses
  %.val2720 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aag = getelementptr inbounds nuw i8, ptr %.val2720, i64 %i.aab
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  store i32 %i.aaf, ptr %i.aah, align 1
  %i.aai = icmp ult i32 %i.aaf, %.0.copyload.i2977
  br i1 %i.aai, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aaj = add i32 %i.b, -12
  %i.aak = zext i32 %i.aaj to i64                 ; 6 uses
  %.val113.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aal = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.aak
  %.0.copyload.i.i = load i32, ptr %i.aal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !13
  %i.aam = or disjoint i32 %i.zw, 8192            ; 2 uses
  %i.aan = add i32 %.0.copyload.i.i, %i.aam
  %i.aao = add nuw nsw i64 %i.aak, 4              ; 5 uses
  %.val112.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aap = getelementptr inbounds nuw i8, ptr %.val112.i, i64 %i.aao
  %.0.copyload.i120.i = load i32, ptr %i.aap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120.i) #8, !srcloc !13
  %i.aaq = sub i32 %.0.copyload.i120.i, %.0.copyload.i2978
  %i.aar = lshr i32 %i.aaq, 3
  %i.aas = zext i32 %i.aan to i64
  %.val119.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aat = trunc i32 %i.aar to i8
  %i.aau = getelementptr inbounds nuw i8, ptr %.val119.i, i64 %i.aas
  store i8 %i.aat, ptr %i.aau, align 1
  %.val111.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aav = getelementptr inbounds nuw i8, ptr %.val111.i, i64 %i.aak
  %.0.copyload.i121.i = load i32, ptr %i.aav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121.i) #8, !srcloc !13
  %i.aaw = add i32 %.0.copyload.i121.i, 1         ; 2 uses
  %.val117.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aax = getelementptr inbounds nuw i8, ptr %.val117.i, i64 %i.aak
  store i32 %i.aaw, ptr %i.aax, align 1
  %.val110.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aay = getelementptr inbounds nuw i8, ptr %.val110.i, i64 %i.aao
  %.0.copyload.i122.i = load i32, ptr %i.aay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122.i) #8, !srcloc !13
  %i.aaz = add i32 %.0.copyload.i122.i, 512       ; 2 uses
  %.val116.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aba = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %i.aao
  store i32 %i.aaz, ptr %i.aba, align 1
  %i.abb = icmp ugt i32 %.0.copyload.i2977, %i.aaz
  br i1 %i.abb, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

.preheader.i:                                     ; preds = %bb.ca, %.preheader.i
  %.0107.i = phi i32 [ %i.abs, %.preheader.i ], [ 0, %bb.ca ] ; 2 uses
  %.0106.i = phi i32 [ %i.abq, %.preheader.i ], [ 0, %bb.ca ]
  %.0105.i = phi i32 [ %i.abi, %.preheader.i ], [ %i.aaw, %bb.ca ]
  %.0.i = phi i32 [ %i.abr, %.preheader.i ], [ 1, %bb.ca ] ; 2 uses
  %i.abc = add i32 %.0105.i, %i.aam
  %i.abd = zext i32 %i.abc to i64
  %.val118.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abe = trunc i32 %.0107.i to i8
  %i.abf = xor i8 %i.abe, -1
  %i.abg = getelementptr inbounds nuw i8, ptr %.val118.i, i64 %i.abd
  store i8 %i.abf, ptr %i.abg, align 1
  %.val109.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abh = getelementptr inbounds nuw i8, ptr %.val109.i, i64 %i.aak
  %.0.copyload.i123.i = load i32, ptr %i.abh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123.i) #8, !srcloc !13
  %i.abi = add i32 %.0.copyload.i123.i, 1         ; 2 uses
  %.val115.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abj = getelementptr inbounds nuw i8, ptr %.val115.i, i64 %i.aak
  store i32 %i.abi, ptr %i.abj, align 1
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aao
  %.0.copyload.i124.i = load i32, ptr %i.abk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124.i) #8, !srcloc !13
  %i.abl = add i32 %.0.copyload.i124.i, 512       ; 2 uses
  %.val114.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abm = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.aao
  store i32 %i.abl, ptr %i.abm, align 1
  %i.abn = add i32 %.0106.i, 1                    ; 2 uses
  %i.abo = icmp eq i32 %.0.i, %i.abn              ; 2 uses
  %i.abp = zext i1 %i.abo to i32                  ; 2 uses
  %i.abq = select i1 %i.abo, i32 0, i32 %i.abn
  %i.abr = shl i32 %.0.i, %i.abp
  %i.abs = add i32 %.0107.i, %i.abp
  %i.abt = icmp ugt i32 %.0.copyload.i2977, %i.abl
  br i1 %i.abt, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit: ; preds = %.preheader.i, %bb.ca
  %.val2579 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abu = getelementptr inbounds nuw i8, ptr %.val2579, i64 %i.zi
  %.0.copyload.i2982 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2982) #8, !srcloc !13
  %i.abv = and i32 %.0.copyload.i2982, 16777215
  br label %bb.cb

bb.cb:                                            ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit, %bb.bz
  %.22439 = phi i32 [ %i.abv, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %i.zg, %bb.bz ] ; 3 uses
  %i.abw = zext i32 %i.zv to i64                  ; 3 uses
  %i.abx = add nuw nsw i64 %i.abw, 8              ; 2 uses
  %.val2578 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aby = getelementptr inbounds nuw i8, ptr %.val2578, i64 %i.abx
  %.0.copyload.i2983 = load i32, ptr %i.aby, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2983) #8, !srcloc !13
  %.val2719 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.abz = getelementptr inbounds nuw i8, ptr %.val2719, i64 %i.zk
  store i32 %.0.copyload.i2983, ptr %i.abz, align 1
  %.val2718 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aca = getelementptr inbounds nuw i8, ptr %.val2718, i64 %i.abx
  store i32 %.0.copyload.i2978, ptr %i.aca, align 1
  %.not2571 = icmp eq i32 %.0.copyload.i2983, 0
  br i1 %.not2571, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.acb = lshr i32 %.22439, 3
  %i.acc = tail call range(i32 8, 33) i32 @llvm.ctlz.i32(i32 %.22439, i1 false)
  %i.acd = sub nuw nsw i32 276, %i.acc
  %i.ace = icmp samesign ult i32 %.22439, 2048
  %i.acf = select i1 %i.ace, i32 %i.acb, i32 %i.acd ; 3 uses
  %i.acg = mul nuw nsw i32 %i.acf, 12
  %i.ach = add i32 %i.acg, %1                     ; 2 uses
  %i.aci = add i32 %i.ach, 124                    ; 2 uses
  %i.acj = zext i32 %i.aci to i64
  %.val2577 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ack = getelementptr inbounds nuw i8, ptr %.val2577, i64 %i.acj
  %.0.copyload.i2984 = load i32, ptr %i.ack, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2984) #8, !srcloc !13
  %.not2573 = icmp eq i32 %.0.copyload.i2984, 0
  br i1 %.not2573, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.acl = zext i32 %.0.copyload.i2984 to i64
  %.val2717 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.acm = getelementptr inbounds nuw i8, ptr %.val2717, i64 %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  store i32 %i.zv, ptr %i.acn, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val2716 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aco = getelementptr inbounds nuw i8, ptr %.val2716, i64 %i.abw
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  store i32 %i.aci, ptr %i.acp, align 1
  %.val2715 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.acq = getelementptr inbounds nuw i8, ptr %.val2715, i64 %i.abw
  store i32 %.0.copyload.i2984, ptr %i.acq, align 1
  %i.acr = zext i32 %i.ach to i64
  %.val2714 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.acs = getelementptr inbounds nuw i8, ptr %.val2714, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 124
  store i32 %i.zv, ptr %i.act, align 1
  %i.acu = lshr i32 %i.acf, 3
  %i.acv = and i32 %i.acu, 262140
  %i.acw = add i32 %1, 64
  %i.acx = add i32 %i.acw, %i.acv
  %i.acy = zext i32 %i.acx to i64                 ; 2 uses
  %.val2576 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.acz = getelementptr inbounds nuw i8, ptr %.val2576, i64 %i.acy
  %.0.copyload.i2985 = load i32, ptr %i.acz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2985) #8, !srcloc !13
  %i.ada = and i32 %i.acf, 31
  %i.adb = shl nuw i32 1, %i.ada
  %i.adc = or i32 %.0.copyload.i2985, %i.adb
  %.val2713 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.add = getelementptr inbounds nuw i8, ptr %.val2713, i64 %i.acy
  store i32 %i.adc, ptr %i.add, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge, %bb.cb, %bb.ce
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.aab, %bb.cb ], [ %i.aab, %bb.ce ] ; 2 uses
  %.val2575 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ade = getelementptr inbounds nuw i8, ptr %.val2575, i64 %i.lt
  %.0.copyload.i2986 = load i32, ptr %i.ade, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2986) #8, !srcloc !13
  %i.adf = add i32 %i.b, -12                      ; 2 uses
  %.val2574 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.adg = getelementptr inbounds nuw i8, ptr %.val2574, i64 %i.ly
  %.0.copyload.i2987 = load i32, ptr %i.adg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2987) #8, !srcloc !13
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Ato_string0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.adf, i32 noundef %.0.copyload.i2987) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AaddSegmentExtentToCrashManager0x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AHeapSegment0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2986, i32 noundef %i.ml, i32 noundef %i.adf)
  %.val2845 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.adh = getelementptr inbounds nuw i8, ptr %.val2845, i64 %.pre-phi
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 15
  %.0.copyload.i2988 = load i8, ptr %i.adi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2988) #8, !srcloc !20
  %i.adj = icmp slt i8 %.0.copyload.i2988, 0
  br i1 %i.adj, label %bb.cg, label %bb.ch
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall30x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20bool0x29:bb.a
  %.0.copyload.i231 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i231) #8, !srcloc !13
  %i.u = sub i32 %.0.copyload.i231, %i.c
  %i.v = icmp ult i32 %.0.copyload.i230, %i.u
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.b, -8
  %i.x = add i32 %3, 5620
  %i.y = zext i32 %i.x to i64
  %.val203 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.y
  %.0.copyload.i232 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i232) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %.0.copyload.i232) #8
  %i.aa = zext i32 %i.c to i64                    ; 2 uses
  %.val202 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i233 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i233) #8, !srcloc !13
  %.val212 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val212, i64 %i.s
  store i32 %.0.copyload.i233, ptr %i.ad, align 1
  %.val201 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.0.copyload.i234 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i234) #8, !srcloc !13
  %.val211 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val211, i64 %i.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5616
  store i32 %.0.copyload.i234, ptr %i.ah, align 1
  %i.ai = sub i32 %.0.copyload.i233, %i.c
  %i.aj = icmp ugt i32 %i.ai, %.0.copyload.i234
  br i1 %i.aj, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val200 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.h
  %.0.copyload.i235 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i235) #8, !srcloc !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i235, %bb.d ], [ %.0.copyload.i227, %bb.b ] ; 3 uses
  %i.al = add i32 %.0, 80
  %.val210 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.h
  store i32 %i.al, ptr %i.am, align 1
  %.val226 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 5608
  %.0.copyload.i236 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i236) #8, !srcloc !23
  %i.ap = zext i32 %.0.copyload.i236 to i64
  %i.aq = zext i32 %.0 to i64                     ; 9 uses
  %.val223 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i64 0, ptr %i.as, align 1
  %.val222 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store i64 %i.ap, ptr %i.au, align 1
  %i.av = add i32 %.0, 64
  %i.aw = zext i32 %i.av to i64
  %.val221 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.aw
  store i64 0, ptr %i.ax, align 1
  %.val220 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 -1125899906842621, ptr %i.az, align 1
  %.val219 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.aq
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i64 -1688849860263936, ptr %i.bb, align 1
  %.val218 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.aq
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 %.0.copyload.i228, ptr %i.bd, align 1
  %.val217 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.aq
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.0.copyload.i229, ptr %i.bf, align 1
  %.val216 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val216, i64 %i.aq
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %5, ptr %i.bh, align 1
  %.val215 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val215, i64 %i.aq
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %6, ptr %i.bj, align 1
  %.val214 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.aq
  store i64 %7, ptr %i.bk, align 1
  %.val199 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.l
  %.0.copyload.i237 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i237) #8, !srcloc !13
  %i.bm = zext i32 %.0.copyload.i237 to i64
  %.val198 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.bm
  %.0.copyload.i238 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i238) #8, !srcloc !13
  %i.bo = lshr i32 %.0.copyload.i238, 22
  %i.bp = and i32 %i.bo, 1020
  %.val197 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 289808
  %.0.copyload.i239 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i239) #8, !srcloc !13
  %i.bt = zext i32 %.0.copyload.i239 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %.0.copyload.i240 = load i32, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i240) #8, !srcloc !13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = icmp ult i32 %.0.copyload.i240, %i.bx
  br i1 %i.by, label %bb.f, label %.critedge, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.cb = zext i32 %.0.copyload.i240 to i64
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %.critedge, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.cf = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !30 ; 4 uses
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !31 ; 4 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %func_types_eq.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = icmp ne ptr %i.cf, null
  %i.cj = icmp ne ptr %i.cg, null
  %or.cond.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !32

func_types_eq.exit:                               ; preds = %bb.h
  %i.ck = load i128, ptr %i.cf, align 1
  %i.cl = load i128, ptr %i.cg, align 1
  %i.cm = xor i128 %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %i.cf, i64 16
  %i.co = getelementptr i8, ptr %i.cg, i64 16
  %i.cp = load i128, ptr %i.cn, align 1
  %i.cq = load i128, ptr %i.co, align 1
  %i.cr = xor i128 %i.cp, %i.cq
  %i.cs = or i128 %i.cm, %i.cr
  %i.ct = icmp ne i128 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !33

.critedge:                                        ; preds = %bb.h, %bb.f, %bb.e, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.g, %func_types_eq.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !34
  tail call void %i.ce(ptr noundef %i.cw, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.a
  %i.cx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #8
  %i.cy = zext i32 %1 to i64                      ; 2 uses
  %.val213 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val213, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 -1688849860263936, ptr %i.da, align 1
  %.val209 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.cy
  store i32 %i.cx, ptr %i.db, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %func_types_eq.exit.thread
  %.val208 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.h
  store i32 %.0.copyload.i227, ptr %i.dc, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.e = add i32 %.0.copyload.i, 8
  %4 = icmp ult i32 %i.e, 9
  %i.f = add i32 %.0.copyload.i, 15
  %5 = select i1 %4, i32 15, i32 %i.f             ; 2 uses
  %i.g = and i32 %5, -8                           ; 3 uses
  %i.h = add i32 %2, 1376
  %i.i = zext i32 %i.h to i64
  %.val96 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.i
  %.0.copyload.i104 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i104) #8, !srcloc !13
  %i.k = add i32 %2, 1372
  %i.l = zext i32 %i.k to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  %.0.copyload.i105 = load i32, ptr %i.m, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i105) #8, !srcloc !13
  %i.n = sub i32 %.0.copyload.i104, %.0.copyload.i105
  %i.o = icmp ugt i32 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %2, 816
  %i.q = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = add i32 %.0.copyload.i105, %i.g
  %i.s = zext i32 %2 to i64
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1372
  store i32 %i.r, ptr %i.u, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ %.0.copyload.i105, %bb.c ] ; 2 uses
  %.val103 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val103, i64 %i.b
  %.0.copyload.i106 = load i64, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i106) #8, !srcloc !22
  %i.w = lshr i64 %.0.copyload.i106, 32           ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32                ; 2 uses
  %i.y = zext i32 %.0 to i64                      ; 3 uses
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.x, ptr %i.aa, align 1
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.0, 8
  %i.ac = trunc i64 %.0.copyload.i106 to i32
  %i.ad = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.x) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = and i32 %5, 16777208
  %i.af = or disjoint i32 %i.ae, 67108864
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.y
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %i.y, -844424930131968
  %i.ai = zext i32 %1 to i64                      ; 2 uses
  %.val102 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val102, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ah, ptr %i.ak, align 1
  %.val98 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.ai
  store i32 1, ptr %i.al, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 11 uses
  %i.c = add i32 %i.b, -80                        ; 6 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 123 uses
  %i.e = zext i32 %4 to i64
  %.val1193 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val1193, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.0.copyload.i = load i16, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i) #8, !srcloc !38
  %i.h = icmp eq i16 %.0.copyload.i, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPropertyKey0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.01023 = phi i32 [ %i.i, %bb.b ], [ %4, %bb.a ] ; 5 uses
  %i.j = icmp eq i32 %.01023, -1
  %.val1173 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %1 to i64                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.0.copyload.i1194 = load i8, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1194) #8, !srcloc !21
  %i.n = zext i8 %.0.copyload.i1194 to i16
  %i.o = shl nuw i16 %i.n, 8
  %.val1187 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val1187, i64 %i.k
  store i16 %i.o, ptr %i.p, align 1
  br label %bb.bu

bb.e:                                             ; preds = %bb.c
  %i.q = zext i32 %2 to i64                       ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.q
  %.0.copyload.i1195 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1195) #8, !srcloc !13
  %i.s = zext i32 %.0.copyload.i1195 to i64
  %.val1172 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i1196 = load i8, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1196) #8, !srcloc !21
  %i.v = and i8 %.0.copyload.i1196, 8
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = zext i32 %3 to i64
  %.val1109 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i1197 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1197) #8, !srcloc !13
  %i.z = zext i32 %.0.copyload.i1197 to i64       ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 164               ; 2 uses
  %.val1108 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1108, i64 %i.aa
  %.0.copyload.i1198 = load i32, ptr %i.ab, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1198) #8, !srcloc !13
  %.val1107 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %.0.copyload.i1199 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1199) #8, !srcloc !13
  %i.ae = icmp ult i32 %.0.copyload.i1198, %.0.copyload.i1199
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = add i32 %.0.copyload.i1198, 8
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.aa
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i1198 to i64
  %.val1151 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1151, i64 %i.ah
  store i64 -844424930131968, ptr %i.ai, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1197, i64 noundef -844424930131968)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.01020 = phi i32 [ %.0.copyload.i1198, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = zext i32 %.01023 to i64
  %.val1158 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.ak
  %.0.copyload.i1200 = load i64, ptr %i.al, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1200) #8, !srcloc !22
  %i.am = icmp ugt i64 %.0.copyload.i1200, -1970324836974593
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = bitcast i64 %.0.copyload.i1200 to double ; 4 uses
  %i.ao = fcmp olt double %i.an, f0x41F0000000000000
  %i.ap = fcmp oge double %i.an, 0.000000e+00
  %i.aq = and i1 %i.ao, %i.ap
  %i.ar = fptoui double %i.an to i32
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 0 ; 3 uses
  %i.as = icmp ne i32 %spec.select, -1
  %i.at = uitofp i32 %spec.select to double
  %i.au = fcmp oeq double %i.an, %i.at
  %or.cond = and i1 %i.as, %i.au
  br i1 %or.cond, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.mask = and i64 %.0.copyload.i1200, -140737488355328
  %i.av = icmp eq i64 %.mask, -1266637395197952
  br i1 %i.av, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext i32 %.01020 to i64                 ; 2 uses
  %.val1157 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.aw
  %.0.copyload.i1201 = load i64, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1201) #8, !srcloc !22
  %i.ay = icmp ult i64 %.0.copyload.i1201, -844424930131968
  %i.az = and i64 %.0.copyload.i1201, 4294967295
  %i.ba = icmp eq i64 %i.az, 0
  %.not1040 = or i1 %i.ay, %i.ba
  br i1 %.not1040, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.01023) #8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.bc, -844424930131968
  %.val1150 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val1150, i64 %i.aw
  store i64 %i.bd, ptr %i.be, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoArrayIndex0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef %3, i32 noundef %.01020) #8
  %i.bg = zext i32 %i.c to i64                    ; 2 uses
  %.val1106 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %.0.copyload.i1202 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1202) #8, !srcloc !13
  %.val1171 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %.0.copyload.i1203 = load i8, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1203) #8, !srcloc !21
  %.not1041 = icmp eq i8 %.0.copyload.i1203, 0
  br i1 %.not1041, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n
  %.01021 = phi i32 [ %.0.copyload.i1202, %bb.n ], [ %spec.select, %bb.j ] ; 2 uses
  %.val1105 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1105, i64 %i.q
  %.0.copyload.i1204 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1204) #8, !srcloc !13
  %i.bm = zext i32 %.0.copyload.i1204 to i64      ; 2 uses
  %.val1170 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1170, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.0.copyload.i1205 = load i8, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1205) #8, !srcloc !21
  %i.bp = and i8 %.0.copyload.i1205, 16
  %.not1042 = icmp eq i8 %i.bp, 0
  br i1 %.not1042, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1104 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1104, i64 %i.bm
  %.0.copyload.i1206 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1206) #8, !srcloc !13
  %i.br = lshr i32 %.0.copyload.i1206, 22
  %i.bs = and i32 %i.br, 1020
  %.val1103 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1103, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 289808
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetSymbolHandle0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20unsigned0x20int0x29:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.ae
  store i64 %i.s, ptr %i.af, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i96, i64 noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.ag, %bb.d ], [ %.0.copyload.i97, %bb.c ], [ -1, %bb.a ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !14
  ret i32 %.0
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2900x3E0x20hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetOrCreateIdentifier0x3Cchar0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AsnapshotWriteBarrierInternal0x28hermes0x3A0x3Avm0x3A0x3ACompressedPointer0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 564
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.e = and i32 %2, -4194304
  %i.f = icmp eq i32 %.0.copyload.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val68 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val68, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4008
  %.0.copyload.i73 = load i32, ptr %i.h, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i73) #8, !srcloc !13
  %i.i = add i32 %.0.copyload.i73, 544            ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.val67 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.j
  %.0.copyload.i74 = load i32, ptr %i.k, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i74) #8, !srcloc !13
  %i.l = add i32 %.0.copyload.i74, 1              ; 2 uses
  %.val72 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.j
  store i32 %i.l, ptr %i.m, align 1
  %i.n = add i32 %.0.copyload.i73, 32             ; 2 uses
  %i.o = shl i32 %.0.copyload.i74, 2
  %i.p = add i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %.val71 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.q
  store i32 %2, ptr %i.r, align 1
  %.not = icmp eq i32 %i.l, 128
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.0.copyload.i73, 548
  %i.t = zext i32 %.0.copyload.i73 to i64         ; 3 uses
  %.val66 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 548
  %.0.copyload.i75 = load i32, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i75) #8, !srcloc !13
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  %.0.copyload.i76 = load i32, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i76) #8, !srcloc !13
  %i.y = shl i32 %.0.copyload.i76, 2
  %i.z = add i32 %i.y, %.0.copyload.i75
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x20llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x3E0x3A0x3Ainsert0x3Chermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20void0x3E0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef %i.z, i32 noundef %i.n, i32 noundef %i.i)
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 544
  store i32 0, ptr %i.ab, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3AfindOrAdd0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 61 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %.val674 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.d = zext i32 %.0.copyload.i to i64
  %.val673 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.d
  %.0.copyload.i699 = load i32, ptr %i.e, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i699) #8, !srcloc !13
  %i.f = add i32 %.0.copyload.i699, 28            ; 2 uses
  %i.g = zext i32 %.0.copyload.i699 to i64        ; 6 uses
  %.val672 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i700 = load i32, ptr %i.i, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i700) #8, !srcloc !13
  %i.j = mul i32 %.0.copyload.i700, 12
  %i.k = add i32 %i.j, %i.f
  %.val671 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i701 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i701) #8, !srcloc !13
  %i.n = add i32 %.0.copyload.i701, -1            ; 2 uses
  %i.o = and i32 %i.n, %4
  %.val670 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i702 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i702) #8, !srcloc !13
  %i.r = add i32 %.0.copyload.i699, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.0613 = phi i32 [ 0, %bb.a ], [ %.1614, %bb.g ] ; 4 uses
  %.0607 = phi i32 [ 1, %bb.a ], [ %i.ap, %bb.g ] ; 2 uses
  %.0604 = phi i32 [ %i.o, %bb.a ], [ %i.ao, %bb.g ] ; 2 uses
  %i.s = shl i32 %.0604, 2
  %i.t = add i32 %i.k, %i.s                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.val669 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.u
  %.0.copyload.i703 = load i32, ptr %i.v, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i703) #8, !srcloc !13
  %i.w = icmp ugt i32 %.0.copyload.i703, 511
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = xor i32 %.0.copyload.i703, %4
  %i.y = and i32 %i.x, 255
  %.not642 = icmp eq i32 %i.y, 0
  br i1 %.not642, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = lshr i32 %.0.copyload.i703, 8
  %i.aa = mul nuw nsw i32 %i.z, 12
  %i.ab = add i32 %i.r, %i.aa                     ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.val668 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.ac
  %.0.copyload.i704 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i704) #8, !srcloc !13
  %.not643 = icmp eq i32 %.0.copyload.i704, %4
  br i1 %.not643, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = zext i32 %1 to i64                      ; 3 uses
  %.val696 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i8 0, ptr %i.ag, align 1
  %.val695 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 1, ptr %i.ai, align 1
  %i.aj = add i32 %i.ab, 4
  %.val689 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.ae
  store i32 %i.aj, ptr %i.ak, align 1
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.0613, 0
  %i.al = select i1 %.not, i32 %i.t, i32 %.0613   ; 2 uses
  %i.am = icmp samesign ult i32 %.0.copyload.i703, 256
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.1614 = phi i32 [ %.0613, %bb.c ], [ %.0613, %bb.d ], [ %i.al, %bb.f ]
  %i.an = add i32 %.0604, %.0607
  %i.ao = and i32 %i.an, %i.n
  %i.ap = add i32 %.0607, 1
  br label %bb.b

bb.h:                                             ; preds = %bb.f
  %.not630 = icmp eq i32 %.0.copyload.i702, %.0.copyload.i700
  br i1 %.not630, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.val667 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.0.copyload.i705 = load i32, ptr %i.ar, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i705) #8, !srcloc !13
  %i.as = icmp eq i32 %.0.copyload.i700, %.0.copyload.i705
  br i1 %i.as, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.at = shl i32 %.0.copyload.i700, 1            ; 2 uses
  %i.au = icmp ult i32 %i.at, 196608
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add i32 %.0.copyload.i700, 1            ; 2 uses
  %5 = icmp ult i32 %i.av, 196608
  %6 = select i1 %5, i32 196607, i32 %i.av
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %.val666 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.0.copyload.i706 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i706) #8, !srcloc !13
  %i.ay = add i32 %.0.copyload.i705, 1
  %i.az = add i32 %i.ay, %.0.copyload.i706
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.1605 = phi i32 [ %i.at, %bb.j ], [ %6, %bb.k ], [ %i.az, %bb.l ]
  %i.ba = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.1605) ; 4 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val665 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.b
  %.0.copyload.i707 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i707) #8, !srcloc !13
  %i.bd = zext i32 %.0.copyload.i707 to i64       ; 2 uses
  %.val664 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.bd
  %.0.copyload.i708 = load i32, ptr %i.be, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i708) #8, !srcloc !13
  %i.bf = zext i32 %i.ba to i64                   ; 7 uses
  %i.bg = or disjoint i64 %i.bf, -281474976710656
  %.val691 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.bd
  store i64 %i.bg, ptr %i.bh, align 1
  %i.bi = add i32 %.0.copyload.i708, 28           ; 3 uses
  %i.bj = add i32 %i.ba, 28                       ; 3 uses
  %i.bk = zext i32 %.0.copyload.i708 to i64       ; 3 uses
  %.val663 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %.0.copyload.i709 = load i32, ptr %i.bm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i709) #8, !srcloc !13
  %.not631 = icmp eq i32 %.0.copyload.i709, 0
  br i1 %.not631, label %.loopexit733, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = mul i32 %.0.copyload.i709, 12
  %i.bo = add i32 %i.bn, %i.bi
  %i.bp = add i32 %i.ba, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.o
  %.1608 = phi i32 [ 0, %bb.o ], [ %.2609, %bb.w ] ; 3 uses
  %.0594 = phi i32 [ %i.bi, %bb.o ], [ %i.df, %bb.w ] ; 2 uses
  %.0 = phi i32 [ %i.bj, %bb.o ], [ %.1, %bb.w ]  ; 3 uses
  %i.bq = zext i32 %.0594 to i64                  ; 2 uses
  %.val662 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.bq
  %.0.copyload.i710 = load i32, ptr %i.br, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i710) #8, !srcloc !13
  %i.bs = icmp ult i32 %.0.copyload.i710, 536870910
  br i1 %i.bs, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bt = zext i32 %.0 to i64                     ; 2 uses
  %.val688 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.bt
  store i32 %.0.copyload.i710, ptr %i.bu, align 1
  %.val697 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i711 = load i64, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i711) #8, !srcloc !22
  %.val690 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i64 %.0.copyload.i711, ptr %i.by, align 1
  %.val661 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.bf
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.0.copyload.i712 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i712) #8, !srcloc !13
  %i.cb = mul i32 %.0.copyload.i712, 12
  %i.cc = add i32 %i.cb, %i.bj
  %.val660 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.bf
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i713 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #8, !srcloc !13
  %i.cf = add i32 %.0.copyload.i713, -1           ; 2 uses
  %i.cg = and i32 %i.cf, %.0.copyload.i710
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.0602 = phi i32 [ %i.cg, %bb.q ], [ %i.cw, %bb.v ] ; 2 uses
  %.0600 = phi i32 [ 1, %bb.q ], [ %i.cx, %bb.v ] ; 2 uses
  %.0598 = phi i32 [ 0, %bb.q ], [ %.1599, %bb.v ] ; 4 uses
  %i.ch = shl i32 %.0602, 2
  %i.ci = add i32 %i.cc, %i.ch                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.val659 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.cj
  %.0.copyload.i714 = load i32, ptr %i.ck, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i714) #8, !srcloc !13
  %i.cl = icmp ugt i32 %.0.copyload.i714, 511
  br i1 %i.cl, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cm = xor i32 %.0.copyload.i714, %.0.copyload.i710
  %i.cn = and i32 %i.cm, 255
  %.not633 = icmp eq i32 %i.cn, 0
  br i1 %.not633, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.co = lshr i32 %.0.copyload.i714, 8
  %i.cp = mul nuw nsw i32 %i.co, 12
  %i.cq = add i32 %i.bp, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %.val658 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.cr
  %.0.copyload.i715 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i715) #8, !srcloc !13
  %.not634 = icmp eq i32 %.0.copyload.i715, %.0.copyload.i710
  br i1 %.not634, label %split, label %bb.v

bb.u:                                             ; preds = %bb.r
  %.not632 = icmp eq i32 %.0598, 0
  %i.ct = select i1 %.not632, i32 %i.ci, i32 %.0598 ; 2 uses
  %i.cu = icmp samesign ult i32 %.0.copyload.i714, 256
  br i1 %i.cu, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.u
  %.pre = zext i32 %i.ct to i64
  br label %split

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1599 = phi i32 [ %.0598, %bb.s ], [ %.0598, %bb.t ], [ %i.ct, %bb.u ]
  %i.cv = add i32 %.0600, %.0602
  %i.cw = and i32 %i.cv, %i.cf
  %i.cx = add i32 %.0600, 1
  br label %bb.r

split:                                            ; preds = %bb.t, %._crit_edge
  %.pre-phi739 = phi i64 [ %.pre, %._crit_edge ], [ %i.cj, %bb.t ]
  %i.cy = and i32 %.0.copyload.i710, 255
  %i.cz = shl i32 %.1608, 8
  %i.da = add i32 %i.cz, 512
  %i.db = or disjoint i32 %i.da, %i.cy
  %.val687 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val687, i64 %.pre-phi739
  store i32 %i.db, ptr %i.dc, align 1
  %i.dd = add i32 %.1608, 1
  %i.de = add i32 %.0, 12
  br label %bb.w

bb.w:                                             ; preds = %split, %bb.p
  %.2609 = phi i32 [ %i.dd, %split ], [ %.1608, %bb.p ] ; 2 uses
  %.1 = phi i32 [ %i.de, %split ], [ %.0, %bb.p ] ; 2 uses
  %i.df = add i32 %.0594, 12                      ; 2 uses
  %.not635 = icmp eq i32 %i.df, %i.bo
  br i1 %.not635, label %.loopexit733, label %bb.p

.loopexit733:                                     ; preds = %bb.w, %bb.n
  %.3610 = phi i32 [ 0, %bb.n ], [ %.2609, %bb.w ] ; 4 uses
  %.2 = phi i32 [ %i.bj, %bb.n ], [ %.1, %bb.w ]
  %.val686 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.bf
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 %.3610, ptr %i.dh, align 1
  %.val657 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.bk
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %.0.copyload.i716 = load i32, ptr %i.dj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #8, !srcloc !13
  %.not636 = icmp eq i32 %.0.copyload.i716, -1
  br i1 %.not636, label %.loopexit732, label %bb.x

bb.x:                                             ; preds = %.loopexit733
  %.val685 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.bf
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i32 %.3610, ptr %i.dl, align 1
  %.val656 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.bk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.0.copyload.i717 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #8, !srcloc !13
  %.val684 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.bf
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i32 %.0.copyload.i717, ptr %i.dp, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.4611 = phi i32 [ %.3610, %bb.x ], [ %i.dz, %bb.y ]
  %.1603 = phi i32 [ %.0.copyload.i716, %bb.x ], [ %.0.copyload.i719, %bb.y ]
  %.3 = phi i32 [ %.2, %bb.x ], [ %i.eg, %bb.y ]  ; 2 uses
  %i.dq = zext i32 %.3 to i64                     ; 3 uses
  %.val683 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.dq
  store i32 536870910, ptr %i.dr, align 1
  %i.ds = mul i32 %.1603, 12
  %i.dt = add i32 %i.ds, %i.bi
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %.val655 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.0.copyload.i718 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #8, !srcloc !13
  %.val682 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.dq
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 %.0.copyload.i718, ptr %i.dy, align 1
  %i.dz = add i32 %.4611, 1                       ; 3 uses
  %.val654 = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3AfindOrAdd0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29:bb.a
  %.val677 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hl = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.hk
  store i32 %4, ptr %i.hl, align 1
  %i.hm = add nuw nsw i64 %.pre-phi, 12           ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hm
  %.0.copyload.i731 = load i32, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i731) #8, !srcloc !13
  %i.ho = add i32 %.0.copyload.i731, 1
  %.val676 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hp = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.hm
  store i32 %i.ho, ptr %i.hp, align 1
  %i.hq = zext i32 %1 to i64                      ; 3 uses
  %.val693 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i8 1, ptr %i.hs, align 1
  %i.ht = add i32 %i.gi, 4
  %.val675 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hu = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.hq
  store i32 %i.ht, ptr %i.hu, align 1
  %.val692 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i8 1, ptr %i.hw, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AsnapshotWriteBarrierInternal0x28hermes0x3A0x3Avm0x3A0x3ASymbolID0x29.exit, %.critedge, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %i.c = add i32 %i.b, -208                       ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = icmp ugt i32 %2, 196607
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.f = zext i32 %i.c to i64                     ; 14 uses
  %.val258 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i32 0, ptr %i.h, align 1
  %.val262 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 107374182401, ptr %i.j, align 1
  %.val257 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i32 3, ptr %i.l, align 1
  %.val256 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 65292, ptr %i.n, align 1
  %.val255 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.f
  store i32 196607, ptr %i.o, align 1
  %.val254 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i32 0, ptr %i.q, align 1
  %.val253 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i32 1, ptr %i.s, align 1
  %.val252 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i32 7, ptr %i.u, align 1
  %i.v = tail call i32 @w2c_hermes_snprintf(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 18550, i32 noundef %i.c) #8
  %.val251 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 196607, ptr %i.x, align 1
  %.val250 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  store i32 %i.v, ptr %i.z, align 1
  %i.aa = add i32 %i.b, -80                       ; 2 uses
  %i.ab = add i32 %i.b, -120
  %i.ac = add i32 %i.b, -160
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aoperator0x2B0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac) #8
  %.val249 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 0, ptr %i.ae, align 1
  %.val261 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 47244640257, ptr %i.ag, align 1
  %.val248 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 3, ptr %i.ai, align 1
  %.val247 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 35243, ptr %i.ak, align 1
  %i.al = add i32 %i.b, -40                       ; 2 uses
  %i.am = add i32 %i.b, -200
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aoperator0x2B0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %i.aa, i32 noundef %i.am) #8
  %i.an = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.al) #8 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ao = shl nuw nsw i32 %2, 2
  %i.ap = udiv i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = or i64 %i.ar, %i.aq                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = or i64 %i.at, %i.as                     ; 2 uses
  %i.av = lshr i64 %i.au, 4
  %i.aw = or i64 %i.av, %i.au                     ; 2 uses
  %i.ax = lshr i64 %i.aw, 8
  %i.ay = or i64 %i.ax, %i.aw                     ; 2 uses
  %i.az = lshr i64 %i.ay, 16
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.bd = shl nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = mul nuw nsw i32 %2, 12                  ; 2 uses
  %i.bf = add nuw nsw i32 %i.be, 35
  %i.bg = add nuw nsw i32 %i.bf, %i.bd            ; 2 uses
  %i.bh = and i32 %i.bg, 2147483640               ; 3 uses
  %i.bi = add i32 %1, 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.bk = zext i32 %i.bi to i64
  %.val242 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.bk
  %.0.copyload.i = load i32, ptr %i.bl, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.bm = add i32 %1, 1372
  %i.bn = zext i32 %i.bm to i64
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %.0.copyload.i263 = load i32, ptr %i.bo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i263) #8, !srcloc !13
  %i.bp = sub i32 %.0.copyload.i, %.0.copyload.i263
  %i.bq = icmp ugt i32 %i.bh, %i.bp
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = add i32 %1, 816
  %i.bs = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef %i.bh)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bt = add i32 %.0.copyload.i263, %i.bh
  %i.bu = zext i32 %1 to i64
  %.val246 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1372
  store i32 %i.bt, ptr %i.bw, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.bs, %bb.d ], [ %.0.copyload.i263, %bb.e ] ; 3 uses
  %i.bx = zext i32 %.0 to i64                     ; 5 uses
  %.val260 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store i64 4294967295, ptr %i.bz, align 1
  %.val259 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i64 0, ptr %i.cb, align 1
  %.val245 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.bc, ptr %i.cd, align 1
  %.val244 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.bx
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %2, ptr %i.cf, align 1
  %i.cg = add nuw nsw i32 %i.be, 28
  %i.ch = add i32 %i.cg, %.0
  %i.ci = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef 0, i32 noundef %i.bd) #8 ; 0 uses
  %i.cj = and i32 %i.bg, 16777208
  %i.ck = or disjoint i32 %i.cj, 184549376
  %.val243 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.bx
  store i32 %i.ck, ptr %i.cl, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ %.0, %bb.f ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !14
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %3, 1                            ; 2 uses
  %i.b = add i32 %i.a, 8
  %4 = icmp ult i32 %i.b, 9
  %i.c = add i32 %i.a, 15
  %5 = select i1 %4, i32 15, i32 %i.c             ; 2 uses
  %i.d = and i32 %5, -8                           ; 3 uses
  %i.e = add i32 %2, 1376
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.g = zext i32 %i.e to i64
  %.val76 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val76, i64 %i.g
  %.0.copyload.i = load i32, ptr %i.h, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.i = add i32 %2, 1372
  %i.j = zext i32 %i.i to i64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j
  %.0.copyload.i82 = load i32, ptr %i.k, align 1  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i82) #8, !srcloc !13
  %i.l = sub i32 %.0.copyload.i, %.0.copyload.i82
  %i.m = icmp ugt i32 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %2, 816
  %i.o = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add i32 %.0.copyload.i82, %i.d
  %i.q = zext i32 %2 to i64
  %.val80 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val80, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1372
  store i32 %i.p, ptr %i.s, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %.0.copyload.i82, %bb.c ]
  %i.t = zext i32 %.0 to i64                      ; 3 uses
  %.val79 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val79, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %3, ptr %i.v, align 1
  %i.w = and i32 %5, 16777208
  %i.x = or disjoint i32 %i.w, 50331648
  %.val78 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val78, i64 %i.t
  store i32 %i.x, ptr %i.y, align 1
  %i.z = or disjoint i64 %i.t, -844424930131968
  %i.aa = zext i32 %1 to i64                      ; 2 uses
  %.val81 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val81, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.z, ptr %i.ac, align 1
  %.val77 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.aa
  store i32 1, ptr %i.ad, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AisExtensible0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 68 uses
  %i.e = zext i32 %i.c to i64
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %2, ptr %i.g, align 1
  %i.h = zext i32 %2 to i64
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.k = and i32 %.0.copyload.i, 128
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.b, -4
  %i.m = zext i32 %i.l to i64
  %.val42.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val42.i, i64 %i.m
  %.0.copyload.i.i = load i32, ptr %i.n, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !23
  %i.o = zext i32 %.0.copyload.i.i to i64
  %i.p = or disjoint i64 %i.o, -281474976710656   ; 2 uses
  %i.q = zext i32 %3 to i64                       ; 4 uses
  %.val39.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val39.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.0.copyload.i43.i = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i43.i) #8, !srcloc !13
  %i.t = zext i32 %.0.copyload.i43.i to i64       ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 164                ; 2 uses
  %.val38.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val38.i, i64 %i.u
  %.0.copyload.i44.i = load i32, ptr %i.v, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i44.i) #8, !srcloc !13
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %.0.copyload.i45.i = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i45.i) #8, !srcloc !13
  %i.y = icmp ult i32 %.0.copyload.i44.i, %.0.copyload.i45.i
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = add i32 %.0.copyload.i44.i, 8
  %.val40.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val40.i, i64 %i.u
  store i32 %i.z, ptr %i.aa, align 1
  %i.ab = zext i32 %.0.copyload.i44.i to i64
  %.val41.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val41.i, i64 %i.ab
  store i64 %i.p, ptr %i.ac, align 1
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i43.i, i64 noundef %i.p)
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %.0.copyload.i44.i, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %i.af = add i32 %i.ae, -240                     ; 6 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !14
  %i.ag = zext i32 %i.af to i64                   ; 16 uses
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i32 %3, ptr %i.ai, align 1
  %i.aj = add nuw nsw i64 %i.q, 4                 ; 4 uses
  %.val470 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.aj
  %.0.copyload.i511 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i511) #8, !srcloc !13
  %i.al = add i32 %i.ae, -28                      ; 3 uses
  %i.am = add i32 %i.ae, -168                     ; 3 uses
  %i.an = zext i32 %i.al to i64
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.an
  store i32 %i.am, ptr %i.ao, align 1
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.ag
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 204
  store i64 17179869185, ptr %i.aq, align 1
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.ag
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  store i32 %i.al, ptr %i.as, align 1
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  store i32 %.0.copyload.i511, ptr %i.au, align 1
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 236
  store i32 0, ptr %i.aw, align 1
  %i.ax = add i32 %i.ae, -40                      ; 2 uses
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.ag
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  store i32 %i.ax, ptr %i.az, align 1
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 228
  store i32 %i.am, ptr %i.bb, align 1
  %i.bc = add i32 %i.ae, -176                     ; 3 uses
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.aj
  store i32 %i.bc, ptr %i.bd, align 1
  %i.be = add i32 %3, 5616
  %i.bf = zext i32 %i.be to i64
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.bf
  %.0.copyload.i512 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i512) #8, !srcloc !13
  %i.bh = add nuw nsw i64 %i.q, 5612              ; 2 uses
  %.val468 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.bh
  %.0.copyload.i513 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i513) #8, !srcloc !13
  %i.bj = sub i32 %.0.copyload.i513, %i.af
  %i.bk = icmp ult i32 %.0.copyload.i512, %i.bj
  br i1 %i.bk, label %bb.e, label %bb.g

bb.e:                                             ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit
  %i.bl = add i32 %3, 5620
  %i.bm = zext i32 %i.bl to i64
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.bm
  %.0.copyload.i514 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i514) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef %.0.copyload.i514) #8
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.ag
  %.0.copyload.i515 = load i32, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i515) #8, !srcloc !13
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.bh
  store i32 %.0.copyload.i515, ptr %i.bp, align 1
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.ag
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.0.copyload.i516 = load i32, ptr %i.br, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #8, !srcloc !13
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 5616
  store i32 %.0.copyload.i516, ptr %i.bt, align 1
  %i.bu = sub i32 %.0.copyload.i515, %i.af
  %i.bv = icmp ugt i32 %i.bu, %.0.copyload.i516
  br i1 %i.bv, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.aj
  %.0.copyload.i517 = load i32, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #8, !srcloc !13
  %i.bx = zext i32 %.0.copyload.i517 to i64       ; 2 uses
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %.0.copyload.i518 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i518) #8, !srcloc !13
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 164
  %.0.copyload.i519 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i519) #8, !srcloc !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit
  %.0442 = phi i32 [ %.0.copyload.i519, %bb.f ], [ %i.am, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit ] ; 4 uses
  %.0441 = phi i32 [ %.0.copyload.i518, %bb.f ], [ %i.ax, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit ]
  %.0 = phi i32 [ %.0.copyload.i517, %bb.f ], [ %i.bc, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x20hermes0x3A0x3Avm0x3A0x3AHandleRootOwner0x3A0x3AmakeHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x260x29.exit ] ; 2 uses
  %i.cc = zext i32 %.0.i to i64
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSONLexer0x3A0x3AadvanceHelper0x28bool0x29:bb.a
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 112
  store i32 3, ptr %i.pc, align 1
  %.val3156 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pd = getelementptr inbounds nuw i8, ptr %.val3156, i64 %i.ff
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 104
  store i32 65970, ptr %i.pe, align 1
  %i.pf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseSyntaxError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3433, i32 noundef %i.fr) #8
  br label %.loopexit3551

bb.cr:                                            ; preds = %bb.bl
  %.val3155 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %.val3155, i64 %i.ff
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 136
  store i32 0, ptr %i.ph, align 1
  %.val3241 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pi = getelementptr inbounds nuw i8, ptr %.val3241, i64 %i.ff
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 128
  store i64 107374182401, ptr %i.pj, align 1
  %.val3154 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val3154, i64 %i.ff
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 104
  store i32 247308, ptr %i.pl, align 1
  %.val3313 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pm = getelementptr inbounds nuw i8, ptr %.val3313, i64 %i.jf
  %.0.copyload.i3434 = load i16, ptr %i.pm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3434) #8, !srcloc !37
  %i.pn = zext i16 %.0.copyload.i3434 to i32
  %.val3153 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.po = getelementptr inbounds nuw i8, ptr %.val3153, i64 %i.ff
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 112
  store i32 4, ptr %i.pp, align 1
  %i.pq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSONLexer0x3A0x3AerrorWithChar0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x2C0x20char16_t0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.fr, i32 noundef %i.pn)
  br label %.loopexit3551

.loopexit3551:                                    ; preds = %bb.ce, %bb.ax, %bb.cr, %bb.cq, %bb.cp, %bb.ba, %bb.ay
  %.32781 = phi i32 [ %i.or, %bb.cp ], [ 0, %bb.ax ], [ 1, %bb.ay ], [ %i.hy, %bb.ba ], [ %i.pf, %bb.cq ], [ %i.pq, %bb.cr ], [ 0, %bb.ce ] ; 2 uses
  %.val3152 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pr = getelementptr inbounds nuw i8, ptr %.val3152, i64 %i.fm
  store i32 0, ptr %i.pr, align 1
  %.val2993 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ps = getelementptr inbounds nuw i8, ptr %.val2993, i64 %i.fj
  %.0.copyload.i3435 = load i32, ptr %i.ps, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3435) #8, !srcloc !13
  %.not2902 = icmp eq i32 %i.fi, %.0.copyload.i3435
  br i1 %.not2902, label %bb.fw, label %bb.cs

bb.cs:                                            ; preds = %.loopexit3551
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3435) #8
  br label %bb.fw

bb.ct:                                            ; preds = %bb.ao
  %i.pt = add i32 %i.fa, -176                     ; 2 uses
  store i32 %i.pt, ptr %i.a, align 8, !tbaa !14
  %.val2992 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pu = getelementptr inbounds nuw i8, ptr %.val2992, i64 %i.e
  %.0.copyload.i3436 = load i32, ptr %i.pu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3436) #8, !srcloc !13
  %i.pv = add i32 %.0.copyload.i3436, 2
  %.val3151 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %.val3151, i64 %i.e
  store i32 %i.pv, ptr %i.pw, align 1
  %i.px = zext i32 %i.pt to i64                   ; 49 uses
  %i.py = add nuw nsw i64 %i.px, 40               ; 37 uses
  %.val3240 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %.val3240, i64 %i.py
  store i64 137438953472, ptr %i.pz, align 1
  %i.qa = add i32 %i.fa, -128                     ; 11 uses
  %i.qb = add nuw nsw i64 %i.px, 36               ; 13 uses
  %.val3150 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qc = getelementptr inbounds nuw i8, ptr %.val3150, i64 %i.qb
  store i32 %i.qa, ptr %i.qc, align 1
  %.val2991 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qd = getelementptr inbounds nuw i8, ptr %.val2991, i64 %i.e
  %.0.copyload.i3437 = load i32, ptr %i.qd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3437) #8, !srcloc !13
  %i.qe = add nuw nsw i64 %i.e, 16                ; 6 uses
  %.val3149 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qf = getelementptr inbounds nuw i8, ptr %.val3149, i64 %i.qe
  store i32 %.0.copyload.i3437, ptr %i.qf, align 1
  %i.qg = add i32 %i.fa, -140                     ; 9 uses
  %i.qh = add nuw nsw i64 %i.px, 16               ; 2 uses
  %i.qi = add nuw nsw i64 %i.px, 20               ; 2 uses
  %i.qj = add i32 %i.fa, -40                      ; 6 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.fp, %bb.ct
  %.22789 = phi i32 [ 0, %bb.ct ], [ %.52792, %bb.fp ] ; 3 uses
  %.12786 = phi i32 [ 1, %bb.ct ], [ %i.aer, %bb.fp ] ; 2 uses
  %.val2990 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qk = getelementptr inbounds nuw i8, ptr %.val2990, i64 %i.e
  %.0.copyload.i3438 = load i32, ptr %i.qk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3438) #8, !srcloc !13
  %.val2989 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ql = getelementptr inbounds nuw i8, ptr %.val2989, i64 %i.g
  %.0.copyload.i3439 = load i32, ptr %i.ql, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3439) #8, !srcloc !13
  %i.qm = icmp eq i32 %.0.copyload.i3438, %.0.copyload.i3439
  br i1 %i.qm, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.qn = tail call i32 @w2c_hermes_hermes0x3A0x3AUTF16Stream0x3A0x3Arefill0x280x29(ptr noundef nonnull %0, i32 noundef %1) #8
  %.not2862 = icmp eq i32 %i.qn, 0
  %.val3109 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qo = getelementptr inbounds nuw i8, ptr %.val3109, i64 %i.e ; 2 uses
  br i1 %.not2862, label %bb.fq, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.0.copyload.i3440 = load i32, ptr %i.qo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3440) #8, !srcloc !13
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %.0 = phi i32 [ %.0.copyload.i3440, %bb.cw ], [ %.0.copyload.i3438, %bb.cu ] ; 4 uses
  %i.qp = zext i32 %.0 to i64
  %.val3312 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %.val3312, i64 %i.qp
  %.0.copyload.i3441 = load i16, ptr %i.qq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3441) #8, !srcloc !37
  %i.qr = icmp eq i16 %.0.copyload.i3441, 34
  br i1 %i.qr, label %bb.cy, label %bb.ea

bb.cy:                                            ; preds = %bb.cx
  %.not2877 = icmp eq i32 %.22789, 0
  %.val2987 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not2877, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qs = getelementptr inbounds nuw i8, ptr %.val2987, i64 %i.qb
  %.0.copyload.i3442 = load i64, ptr %i.qs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3442) #8, !srcloc !22
  %.val3239 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %.val3239, i64 %i.px
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  store i64 %.0.copyload.i3442, ptr %i.qu, align 1
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.qv = getelementptr inbounds nuw i8, ptr %.val2987, i64 %i.qe
  %.0.copyload.i3443 = load i32, ptr %i.qv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3443) #8, !srcloc !13
  %.val3148 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qw = getelementptr inbounds nuw i8, ptr %.val3148, i64 %i.qe
  store i32 0, ptr %i.qw, align 1
  %.val2986 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qx = getelementptr inbounds nuw i8, ptr %.val2986, i64 %i.e
  %.0.copyload.i3444 = load i32, ptr %i.qx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3444) #8, !srcloc !13
  %.val3147 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qy = getelementptr inbounds nuw i8, ptr %.val3147, i64 %i.px
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  store i32 %.0.copyload.i3443, ptr %i.qz, align 1
  %i.ra = sub i32 %.0.copyload.i3444, %.0.copyload.i3443
  %i.rb = ashr i32 %i.ra, 1
  %.val3146 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rc = getelementptr inbounds nuw i8, ptr %.val3146, i64 %i.px
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 28
  store i32 %i.rb, ptr %i.rd, align 1
  %.val2985 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.re = getelementptr inbounds nuw i8, ptr %.val2985, i64 %i.e
  %.0.copyload.i3445 = load i32, ptr %i.re, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3445) #8, !srcloc !13
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.1 = phi i32 [ %.0, %bb.cz ], [ %.0.copyload.i3445, %bb.da ]
  %i.rf = add i32 %.1, 2
  %.val3145 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rg = getelementptr inbounds nuw i8, ptr %.val3145, i64 %i.e
  store i32 %i.rf, ptr %i.rg, align 1
  %i.rh = add nuw nsw i64 %i.e, 32                ; 2 uses
  %.val2984 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ri = getelementptr inbounds nuw i8, ptr %.val2984, i64 %i.rh
  %.0.copyload.i3446 = load i32, ptr %i.ri, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3446) #8, !srcloc !13
  %.val3270 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rj = getelementptr inbounds nuw i8, ptr %.val3270, i64 %i.px
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %.0.copyload.i3447 = load i64, ptr %i.rk, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3447) #8, !srcloc !22
  %i.rl = icmp ult i64 %.0.copyload.i3447, 281474976710656
  %.val3238 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %.val3238, i64 %i.px ; 2 uses
  br i1 %i.rl, label %bb.dc, label %bb.dt

bb.dc:                                            ; preds = %bb.db
  store i64 %.0.copyload.i3447, ptr %i.rm, align 1
  %.val3237 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3237, i64 %i.px
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 120
  store i64 %.0.copyload.i3447, ptr %i.ro, align 1
  %i.rp = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.rq = add i32 %i.rp, -16                      ; 2 uses
  store i32 %i.rq, ptr %i.a, align 8, !tbaa !14
  %.not2878 = icmp eq i32 %.12786, 0
  %.val3269 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rr = getelementptr inbounds nuw i8, ptr %.val3269, i64 %i.px ; 2 uses
  br i1 %.not2878, label %bb.dn, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %.0.copyload.i3448 = load i32, ptr %i.rs, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3448) #8, !srcloc !13
  %i.rt = add i32 %.0.copyload.i3448, 8
  %3 = icmp ult i32 %i.rt, 9
  %i.ru = add i32 %.0.copyload.i3448, 15
  %4 = select i1 %3, i32 15, i32 %i.ru            ; 2 uses
  %i.rv = and i32 %4, -8                          ; 3 uses
  %i.rw = add i32 %.0.copyload.i3446, 1376
  %i.rx = zext i32 %i.rw to i64
  %.val2982 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ry = getelementptr inbounds nuw i8, ptr %.val2982, i64 %i.rx
  %.0.copyload.i3449 = load i32, ptr %i.ry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3449) #8, !srcloc !13
  %i.rz = add i32 %.0.copyload.i3446, 1372
  %i.sa = zext i32 %i.rz to i64
  %.val2981 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sb = getelementptr inbounds nuw i8, ptr %.val2981, i64 %i.sa
  %.0.copyload.i3450 = load i32, ptr %i.sb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3450) #8, !srcloc !13
  %i.sc = sub i32 %.0.copyload.i3449, %.0.copyload.i3450
  %i.sd = icmp ugt i32 %i.rv, %i.sc
  br i1 %i.sd, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.se = add i32 %.0.copyload.i3446, 816
  %i.sf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.se, i32 noundef %i.rv)
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.sg = add i32 %.0.copyload.i3450, %i.rv
  %i.sh = zext i32 %.0.copyload.i3446 to i64
  %.val3144 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.si = getelementptr inbounds nuw i8, ptr %.val3144, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 1372
  store i32 %i.sg, ptr %i.sj, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.62799 = phi i32 [ %i.sf, %bb.de ], [ %.0.copyload.i3450, %bb.df ] ; 3 uses
  %i.sk = zext i32 %.62799 to i64                 ; 8 uses
  %.val3143 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sl = getelementptr inbounds nuw i8, ptr %.val3143, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  store i32 %.0.copyload.i3448, ptr %i.sm, align 1
  %i.sn = and i32 %4, 16777208
  %i.so = or disjoint i32 %i.sn, 67108864
  %.val3142 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sp = getelementptr inbounds nuw i8, ptr %.val3142, i64 %i.sk
  store i32 %i.so, ptr %i.sp, align 1
  %.val2980 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sq = getelementptr inbounds nuw i8, ptr %.val2980, i64 %i.sk
  %.0.copyload.i3451 = load i32, ptr %i.sq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3451) #8, !srcloc !13
  %i.sr = icmp ugt i32 %.0.copyload.i3451, 150994943
  br i1 %i.sr, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.val2979 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2979, i64 %i.sk
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 12
  %.0.copyload.i3452 = load i32, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3452) #8, !srcloc !13
  %i.su = add i32 %.62799, 12
  %.val3265 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sv = getelementptr inbounds nuw i8, ptr %.val3265, i64 %i.sk
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 23
  %.0.copyload.i3453 = load i8, ptr %i.sw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3453) #8, !srcloc !20
  %i.sx = icmp slt i8 %.0.copyload.i3453, 0
  %i.sy = select i1 %i.sx, i32 %.0.copyload.i3452, i32 %i.su
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.sz = icmp samesign ugt i32 %.0.copyload.i3451, 134217727
  %spec.select.v = select i1 %i.sz, i32 12, i32 8
  %spec.select = add i32 %spec.select.v, %.62799
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.42782 = phi i32 [ %i.sy, %bb.dh ], [ %spec.select, %bb.di ] ; 2 uses
  %.not2880 = icmp eq i32 %.0.copyload.i3448, 0
  br i1 %.not2880, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.val2978 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ta = getelementptr inbounds nuw i8, ptr %.val2978, i64 %i.px
  %.0.copyload.i3454 = load i32, ptr %i.ta, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3454) #8, !srcloc !13
  %i.tb = add i32 %.0.copyload.i3448, 2147483647
  %i.tc = and i32 %i.tb, 2147483647
  %i.td = and i32 %.0.copyload.i3448, 7           ; 2 uses
  %.not2881 = icmp eq i32 %i.td, 0
  br i1 %.not2881, label %.loopexit3549, label %.preheader

.preheader:                                       ; preds = %bb.dk, %.preheader
  %.7 = phi i32 [ %i.ti, %.preheader ], [ %.42782, %bb.dk ] ; 2 uses
  %.32790 = phi i32 [ %i.tk, %.preheader ], [ 0, %bb.dk ]
  %.2 = phi i32 [ %i.tj, %.preheader ], [ %.0.copyload.i3454, %bb.dk ] ; 2 uses
  %i.te = zext i32 %.2 to i64
  %.val3282 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tf = getelementptr inbounds nuw i8, ptr %.val3282, i64 %i.te
  %.0.copyload.i3455 = load i8, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3455) #8, !srcloc !21
  %i.tg = zext i32 %.7 to i64
  %.val3261 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.th = getelementptr inbounds nuw i8, ptr %.val3261, i64 %i.tg
  store i8 %.0.copyload.i3455, ptr %i.th, align 1
  %i.ti = add i32 %.7, 1                          ; 2 uses
  %i.tj = add i32 %.2, 2                          ; 2 uses
  %i.tk = add nuw nsw i32 %.32790, 1              ; 2 uses
  %.not2882 = icmp eq i32 %i.tk, %i.td
  br i1 %.not2882, label %.loopexit3549, label %.preheader

.loopexit3549:                                    ; preds = %.preheader, %bb.dk
  %.8 = phi i32 [ %.42782, %bb.dk ], [ %i.ti, %.preheader ]
  %.3 = phi i32 [ %.0.copyload.i3454, %bb.dk ], [ %i.tj, %.preheader ]
  %i.tl = icmp samesign ult i32 %i.tc, 7
  br i1 %i.tl, label %.loopexit, label %bb.dl

bb.dl:                                            ; preds = %.loopexit3549
  %i.tm = shl i32 %.0.copyload.i3448, 1
  %i.tn = add i32 %.0.copyload.i3454, %i.tm
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dm, %bb.dl
  %.9 = phi i32 [ %.8, %bb.dl ], [ %i.uu, %bb.dm ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.dl ], [ %i.uv, %bb.dm ] ; 2 uses
  %i.to = zext i32 %.4 to i64                     ; 8 uses
  %.val3281 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tp = getelementptr inbounds nuw i8, ptr %.val3281, i64 %i.to
  %.0.copyload.i3456 = load i8, ptr %i.tp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3456) #8, !srcloc !21
  %i.tq = zext i32 %.9 to i64                     ; 8 uses
  %.val3260 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tr = getelementptr inbounds nuw i8, ptr %.val3260, i64 %i.tq
  store i8 %.0.copyload.i3456, ptr %i.tr, align 1
  %.val3280 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ts = getelementptr inbounds nuw i8, ptr %.val3280, i64 %i.to
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  %.0.copyload.i3457 = load i8, ptr %i.tt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3457) #8, !srcloc !21
  %.val3259 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tu = getelementptr inbounds nuw i8, ptr %.val3259, i64 %i.tq
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 1
  store i8 %.0.copyload.i3457, ptr %i.tv, align 1
  %.val3279 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tw = getelementptr inbounds nuw i8, ptr %.val3279, i64 %i.to
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %.0.copyload.i3458 = load i8, ptr %i.tx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3458) #8, !srcloc !21
  %.val3258 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ty = getelementptr inbounds nuw i8, ptr %.val3258, i64 %i.tq
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 2
  store i8 %.0.copyload.i3458, ptr %i.tz, align 1
  %.val3278 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ua = getelementptr inbounds nuw i8, ptr %.val3278, i64 %i.to
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 6
  %.0.copyload.i3459 = load i8, ptr %i.ub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3459) #8, !srcloc !21
  %.val3257 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uc = getelementptr inbounds nuw i8, ptr %.val3257, i64 %i.tq
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 %.0.copyload.i3459, ptr %i.ud, align 1
  %.val3277 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ue = getelementptr inbounds nuw i8, ptr %.val3277, i64 %i.to
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.0.copyload.i3460 = load i8, ptr %i.uf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3460) #8, !srcloc !21
  %.val3256 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ug = getelementptr inbounds nuw i8, ptr %.val3256, i64 %i.tq
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store i8 %.0.copyload.i3460, ptr %i.uh, align 1
  %.val3276 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ui = getelementptr inbounds nuw i8, ptr %.val3276, i64 %i.to
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 10
  %.0.copyload.i3461 = load i8, ptr %i.uj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3461) #8, !srcloc !21
  %.val3255 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uk = getelementptr inbounds nuw i8, ptr %.val3255, i64 %i.tq
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 5
  store i8 %.0.copyload.i3461, ptr %i.ul, align 1
  %.val3275 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.um = getelementptr inbounds nuw i8, ptr %.val3275, i64 %i.to
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  %.0.copyload.i3462 = load i8, ptr %i.un, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3462) #8, !srcloc !21
  %.val3254 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uo = getelementptr inbounds nuw i8, ptr %.val3254, i64 %i.tq
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 6
  store i8 %.0.copyload.i3462, ptr %i.up, align 1
  %.val3274 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uq = getelementptr inbounds nuw i8, ptr %.val3274, i64 %i.to
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 14
  %.0.copyload.i3463 = load i8, ptr %i.ur, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3463) #8, !srcloc !21
  %.val3253 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.us = getelementptr inbounds nuw i8, ptr %.val3253, i64 %i.tq
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 7
  store i8 %.0.copyload.i3463, ptr %i.ut, align 1
  %i.uu = add i32 %.9, 8
  %i.uv = add i32 %.4, 16                         ; 2 uses
  %.not2883 = icmp eq i32 %i.uv, %i.tn
  br i1 %.not2883, label %.loopexit, label %bb.dm

bb.dn:                                            ; preds = %bb.dc
  %.0.copyload.i3464 = load i64, ptr %i.rr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3464) #8, !srcloc !22
  %i.uw = zext i32 %i.rq to i64                   ; 4 uses
  %.val3235 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ux = getelementptr inbounds nuw i8, ptr %.val3235, i64 %i.uw
  store i64 %.0.copyload.i3464, ptr %i.ux, align 1
  %.val3234 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uy = getelementptr inbounds nuw i8, ptr %.val3234, i64 %i.uw
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i64 %.0.copyload.i3464, ptr %i.uz, align 1
  %.val2977 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.va = getelementptr inbounds nuw i8, ptr %.val2977, i64 %i.uw
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %.0.copyload.i3465 = load i32, ptr %i.vb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3465) #8, !srcloc !13
  %i.vc = shl i32 %.0.copyload.i3465, 1           ; 2 uses
  %i.vd = add i32 %i.vc, 8
  %5 = icmp ult i32 %i.vd, 9
  %i.ve = add i32 %i.vc, 15
  %6 = select i1 %5, i32 15, i32 %i.ve            ; 2 uses
  %i.vf = and i32 %6, -8                          ; 3 uses
  %i.vg = add i32 %.0.copyload.i3446, 1376
  %i.vh = zext i32 %i.vg to i64
  %.val2976 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vi = getelementptr inbounds nuw i8, ptr %.val2976, i64 %i.vh
  %.0.copyload.i3466 = load i32, ptr %i.vi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3466) #8, !srcloc !13
  %i.vj = add i32 %.0.copyload.i3446, 1372
  %i.vk = zext i32 %i.vj to i64
  %.val2975 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vl = getelementptr inbounds nuw i8, ptr %.val2975, i64 %i.vk
  %.0.copyload.i3467 = load i32, ptr %i.vl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3467) #8, !srcloc !13
  %i.vm = sub i32 %.0.copyload.i3466, %.0.copyload.i3467
  %i.vn = icmp ugt i32 %i.vf, %i.vm
  br i1 %i.vn, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.vo = add i32 %.0.copyload.i3446, 816
  %i.vp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.vo, i32 noundef %i.vf)
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.vq = add i32 %.0.copyload.i3467, %i.vf
  %i.vr = zext i32 %.0.copyload.i3446 to i64
  %.val3141 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vs = getelementptr inbounds nuw i8, ptr %.val3141, i64 %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 1372
  store i32 %i.vq, ptr %i.vt, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.42791 = phi i32 [ %i.vp, %bb.do ], [ %.0.copyload.i3467, %bb.dp ] ; 2 uses
  %.val3268 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vu = getelementptr inbounds nuw i8, ptr %.val3268, i64 %i.uw
  %.0.copyload.i3468 = load i64, ptr %i.vu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3468) #8, !srcloc !22
  %i.vv = lshr i64 %.0.copyload.i3468, 32         ; 2 uses
  %i.vw = trunc nuw i64 %i.vv to i32              ; 2 uses
  %i.vx = zext i32 %.42791 to i64                 ; 3 uses
  %.val3140 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vy = getelementptr inbounds nuw i8, ptr %.val3140, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  store i32 %i.vw, ptr %i.vz, align 1
  %.not2879 = icmp eq i64 %i.vv, 0
  br i1 %.not2879, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wa = add i32 %.42791, 8
  %i.wb = trunc i64 %.0.copyload.i3468 to i32
  %i.wc = shl i32 %i.vw, 1
  %i.wd = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.wa, i32 noundef %i.wb, i32 noundef %i.wc) #8 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.we = and i32 %6, 16777208
  %i.wf = or disjoint i32 %i.we, 50331648
  %.val3139 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wg = getelementptr inbounds nuw i8, ptr %.val3139, i64 %i.vx
  store i32 %i.wf, ptr %i.wg, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dm, %bb.dj, %.loopexit3549, %bb.ds
  %.sink3663.in = phi i64 [ %i.vx, %bb.ds ], [ %i.sk, %bb.dj ], [ %i.sk, %.loopexit3549 ], [ %i.sk, %bb.dm ]
  %.sink3663 = or disjoint i64 %.sink3663.in, -844424930131968
  %.val3233 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wh = getelementptr inbounds nuw i8, ptr %.val3233, i64 %i.px
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 144
  store i64 %.sink3663, ptr %i.wi, align 1
  %.val3138 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wj = getelementptr inbounds nuw i8, ptr %.val3138, i64 %i.px
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 136
  store i32 1, ptr %i.wk, align 1
  store i32 %i.rp, ptr %i.a, align 8, !tbaa !14
  br label %bb.dv

bb.dt:                                            ; preds = %bb.db
  %i.wl = getelementptr inbounds nuw i8, ptr %i.rm, i64 112
  store i64 %.0.copyload.i3447, ptr %i.wl, align 1
  %.val3231 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wm = getelementptr inbounds nuw i8, ptr %.val3231, i64 %i.px
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store i64 %.0.copyload.i3447, ptr %i.wn, align 1
  %i.wo = add i32 %i.fa, -56                      ; 2 uses
  %i.wp = add i32 %i.fa, -168
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.wo, i32 noundef %i.wp) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.qj, i32 noundef %.0.copyload.i3446, i32 noundef %i.wo) #8
  %.val3264 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3264, i64 %i.px
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 131
  %.0.copyload.i3469 = load i8, ptr %i.wr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3469) #8, !srcloc !20
  %i.ws = icmp sgt i8 %.0.copyload.i3469, -1
  br i1 %i.ws, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.val2974 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wt = getelementptr inbounds nuw i8, ptr %.val2974, i64 %i.px
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 120
  %.0.copyload.i3470 = load i32, ptr %i.wu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3470) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3470) #8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du, %.loopexit
  %.val2973 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wv = getelementptr inbounds nuw i8, ptr %.val2973, i64 %i.px
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 136
  %.0.copyload.i3471 = load i32, ptr %i.ww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3471) #8, !srcloc !13
  %.not2884 = icmp eq i32 %.0.copyload.i3471, 0
  br i1 %.not2884, label %.loopexit3550, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.val3286 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wx = getelementptr inbounds nuw i8, ptr %.val3286, i64 %i.px
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 144
  %.0.copyload.i3472 = load i32, ptr %i.wy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3472) #8, !srcloc !23
  %i.wz = zext i32 %.0.copyload.i3472 to i64
  %i.xa = or disjoint i64 %i.wz, -844424930131968 ; 2 uses
  %.val2972 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xb = getelementptr inbounds nuw i8, ptr %.val2972, i64 %i.rh
  %.0.copyload.i3473 = load i32, ptr %i.xb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3473) #8, !srcloc !13
  %i.xc = zext i32 %.0.copyload.i3473 to i64
  %.val2971 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xd = getelementptr inbounds nuw i8, ptr %.val2971, i64 %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %.0.copyload.i3474 = load i32, ptr %i.xe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3474) #8, !srcloc !13
  %i.xf = zext i32 %.0.copyload.i3474 to i64      ; 2 uses
  %i.xg = add nuw nsw i64 %i.xf, 164              ; 2 uses
  %.val2970 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xh = getelementptr inbounds nuw i8, ptr %.val2970, i64 %i.xg
  %.0.copyload.i3475 = load i32, ptr %i.xh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3475) #8, !srcloc !13
  %.val2969 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xi = getelementptr inbounds nuw i8, ptr %.val2969, i64 %i.xf
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 168
  %.0.copyload.i3476 = load i32, ptr %i.xj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3476) #8, !srcloc !13
  %i.xk = icmp ult i32 %.0.copyload.i3475, %.0.copyload.i3476
  br i1 %i.xk, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.xl = add i32 %.0.copyload.i3475, 8
  %.val3137 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xm = getelementptr inbounds nuw i8, ptr %.val3137, i64 %i.xg
  store i32 %i.xl, ptr %i.xm, align 1
  %i.xn = zext i32 %.0.copyload.i3475 to i64      ; 2 uses
  %.val3230 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xo = getelementptr inbounds nuw i8, ptr %.val3230, i64 %i.xn
  store i64 %i.xa, ptr %i.xo, align 1
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.xp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3474, i64 noundef %i.xa)
  %.pre = zext i32 %i.xp to i64
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pre-phi = phi i64 [ %.pre, %bb.dy ], [ %i.xn, %bb.dx ]
  %.val3136 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xq = getelementptr inbounds nuw i8, ptr %.val3136, i64 %i.e
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 40
  store i32 1, ptr %i.xr, align 1
  %.val2968 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xs = getelementptr inbounds nuw i8, ptr %.val2968, i64 %i.e
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 56
  %.0.copyload.i3477 = load i32, ptr %i.xt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3477) #8, !srcloc !13
  %.val3285 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xu = getelementptr inbounds nuw i8, ptr %.val3285, i64 %.pre-phi
  %.0.copyload.i3478 = load i32, ptr %i.xu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3478) #8, !srcloc !23
  %i.xv = zext i32 %.0.copyload.i3478 to i64
  %i.xw = or disjoint i64 %i.xv, -844424930131968
  %i.xx = zext i32 %.0.copyload.i3477 to i64
  %.val3229 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.xy = getelementptr inbounds nuw i8, ptr %.val3229, i64 %i.xx
  store i64 %i.xw, ptr %i.xy, align 1
  br label %.loopexit3550

bb.ea:                                            ; preds = %bb.cx
  %i.xz = icmp ult i16 %.0.copyload.i3441, 32
  br i1 %i.xz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.val3135 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ya = getelementptr inbounds nuw i8, ptr %.val3135, i64 %i.e
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 40
  store i32 12, ptr %i.yb, align 1
  %.val2967 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yc = getelementptr inbounds nuw i8, ptr %.val2967, i64 %i.e
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 32
  %.0.copyload.i3479 = load i32, ptr %i.yd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3479) #8, !srcloc !13
  %.val3134 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ye = getelementptr inbounds nuw i8, ptr %.val3134, i64 %i.px
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 168
  store i32 43, ptr %i.yf, align 1
  %.val3228 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yg = getelementptr inbounds nuw i8, ptr %.val3228, i64 %i.px
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 160
  store i64 77309411332, ptr %i.yh, align 1
  %.val3133 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yi = getelementptr inbounds nuw i8, ptr %.val3133, i64 %i.px
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 152
  store i32 247220, ptr %i.yj, align 1
  %.val3132 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yk = getelementptr inbounds nuw i8, ptr %.val3132, i64 %i.px
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 144
  store i32 3, ptr %i.yl, align 1
  %.val3131 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ym = getelementptr inbounds nuw i8, ptr %.val3131, i64 %i.px
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 136
  store i32 65970, ptr %i.yn, align 1
  %i.yo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseSyntaxError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3479, i32 noundef %i.qj) #8
  br label %.loopexit3550

bb.ec:                                            ; preds = %bb.ea
  %i.yp = icmp eq i16 %.0.copyload.i3441, 92
  %.not2865 = icmp eq i32 %.22789, 0              ; 2 uses
  br i1 %i.yp, label %bb.ed, label %bb.fk

bb.ed:                                            ; preds = %bb.ec
  br i1 %.not2865, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  %.val2966 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yq = getelementptr inbounds nuw i8, ptr %.val2966, i64 %i.qe
  %.0.copyload.i3480 = load i32, ptr %i.yq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3480) #8, !srcloc !13
  %.val3130 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yr = getelementptr inbounds nuw i8, ptr %.val3130, i64 %i.qe
  store i32 0, ptr %i.yr, align 1
  %.val2965 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ys = getelementptr inbounds nuw i8, ptr %.val2965, i64 %i.e
  %.0.copyload.i3481 = load i32, ptr %i.ys, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3481) #8, !srcloc !13
  %.val3129 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yt = getelementptr inbounds nuw i8, ptr %.val3129, i64 %i.qh
  store i32 %.0.copyload.i3480, ptr %i.yt, align 1
  %i.yu = sub i32 %.0.copyload.i3481, %.0.copyload.i3480
  %i.yv = ashr i32 %i.yu, 1
  %.val3128 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yw = getelementptr inbounds nuw i8, ptr %.val3128, i64 %i.qi
  store i32 %i.yv, ptr %i.yw, align 1
  %.val2964 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yx = getelementptr inbounds nuw i8, ptr %.val2964, i64 %i.qh
  %.0.copyload.i3482 = load i32, ptr %i.yx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3482) #8, !srcloc !13
  %.val2963 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.yy = getelementptr inbounds nuw i8, ptr %.val2963, i64 %i.qi
  %.0.copyload.i3483 = load i32, ptr %i.yy, align 1 ; 6 uses
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AincrementalCollect0x28bool0x29:bb.a
  %i.za = add i32 %i.yk, -8
  %i.zb = zext i32 %i.za to i64                   ; 6 uses
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zc = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.zb
  %.0.copyload.i.i = load i32, ptr %i.zc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !13
  %i.zd = or disjoint i32 %i.ym, 8192             ; 2 uses
  %i.ze = add i32 %.0.copyload.i.i, %i.zd
  %i.zf = add nuw nsw i64 %i.zb, 4                ; 5 uses
  %.val112.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zg = getelementptr inbounds nuw i8, ptr %.val112.i, i64 %i.zf
  %.0.copyload.i120.i = load i32, ptr %i.zg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120.i) #8, !srcloc !13
  %i.zh = sub i32 %.0.copyload.i120.i, %i.yf
  %i.zi = lshr i32 %i.zh, 3
  %i.zj = zext i32 %i.ze to i64
  %.val119.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zk = trunc i32 %i.zi to i8
  %i.zl = getelementptr inbounds nuw i8, ptr %.val119.i, i64 %i.zj
  store i8 %i.zk, ptr %i.zl, align 1
  %.val111.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zm = getelementptr inbounds nuw i8, ptr %.val111.i, i64 %i.zb
  %.0.copyload.i121.i = load i32, ptr %i.zm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121.i) #8, !srcloc !13
  %i.zn = add i32 %.0.copyload.i121.i, 1          ; 2 uses
  %.val117.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zo = getelementptr inbounds nuw i8, ptr %.val117.i, i64 %i.zb
  store i32 %i.zn, ptr %i.zo, align 1
  %.val110.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zp = getelementptr inbounds nuw i8, ptr %.val110.i, i64 %i.zf
  %.0.copyload.i122.i = load i32, ptr %i.zp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122.i) #8, !srcloc !13
  %i.zq = add i32 %.0.copyload.i122.i, 512        ; 2 uses
  %.val116.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zr = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %i.zf
  store i32 %i.zq, ptr %i.zr, align 1
  %i.zs = icmp ugt i32 %i.yy, %i.zq
  br i1 %i.zs, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

.preheader.i:                                     ; preds = %bb.ci, %.preheader.i
  %.0107.i = phi i32 [ %i.aaj, %.preheader.i ], [ 0, %bb.ci ] ; 2 uses
  %.0106.i = phi i32 [ %i.aah, %.preheader.i ], [ 0, %bb.ci ]
  %.0105.i = phi i32 [ %i.zz, %.preheader.i ], [ %i.zn, %bb.ci ]
  %.0.i = phi i32 [ %i.aai, %.preheader.i ], [ 1, %bb.ci ] ; 2 uses
  %i.zt = add i32 %.0105.i, %i.zd
  %i.zu = zext i32 %i.zt to i64
  %.val118.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zv = trunc i32 %.0107.i to i8
  %i.zw = xor i8 %i.zv, -1
  %i.zx = getelementptr inbounds nuw i8, ptr %.val118.i, i64 %i.zu
  store i8 %i.zw, ptr %i.zx, align 1
  %.val109.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.zy = getelementptr inbounds nuw i8, ptr %.val109.i, i64 %i.zb
  %.0.copyload.i123.i = load i32, ptr %i.zy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123.i) #8, !srcloc !13
  %i.zz = add i32 %.0.copyload.i123.i, 1          ; 2 uses
  %.val115.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val115.i, i64 %i.zb
  store i32 %i.zz, ptr %i.aaa, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.zf
  %.0.copyload.i124.i = load i32, ptr %i.aab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124.i) #8, !srcloc !13
  %i.aac = add i32 %.0.copyload.i124.i, 512       ; 2 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aad = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.zf
  store i32 %i.aac, ptr %i.aad, align 1
  %i.aae = add i32 %.0106.i, 1                    ; 2 uses
  %i.aaf = icmp eq i32 %.0.i, %i.aae              ; 2 uses
  %i.aag = zext i1 %i.aaf to i32                  ; 2 uses
  %i.aah = select i1 %i.aaf, i32 0, i32 %i.aae
  %i.aai = shl i32 %.0.i, %i.aag
  %i.aaj = add i32 %.0107.i, %i.aag
  %i.aak = icmp ugt i32 %i.yy, %i.aac
  br i1 %i.aak, label %.preheader.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit: ; preds = %.preheader.i, %bb.ci, %bb.ch
  store i32 %i.yk, ptr %i.a, align 8, !tbaa !14
  br label %bb.cx

bb.cj:                                            ; preds = %bb.ca
  %.not2122 = icmp eq i32 %.6, %.02056
  br i1 %.not2122, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not2123 = icmp eq i32 %.02059, 0
  br i1 %.not2123, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aal = sub i32 %.02056, %.02059               ; 4 uses
  %i.aam = icmp ult i32 %.02070, 2
  br i1 %i.aam, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aan = and i32 %.02059, -4194304              ; 3 uses
  %i.aao = xor i32 %i.aan, -1
  %i.aap = add i32 %.02059, %i.aao
  %i.aaq = ashr i32 %i.aap, 9
  %i.aar = add nsw i32 %i.aaq, 1                  ; 2 uses
  %.val2325.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aas = getelementptr inbounds nuw i8, ptr %.val2325.a, i64 %i.vt
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  store i32 %i.aar, ptr %i.aat, align 1
  %i.aau = shl i32 %i.aar, 9
  %i.aav = add i32 %i.aau, %i.aan                 ; 2 uses
  %.val2324.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val2324.a, i64 %i.vt
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12
  store i32 %i.aav, ptr %i.aax, align 1
  %.not2124 = icmp ult i32 %i.aav, %.02056
  br i1 %.not2124, label %bb.cn, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565

bb.cn:                                            ; preds = %bb.cm
  %.val113.i2542 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aay = getelementptr inbounds nuw i8, ptr %.val113.i2542, i64 %i.vv
  %.0.copyload.i.i2543 = load i32, ptr %i.aay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i2543) #8, !srcloc !13
  %i.aaz = or disjoint i32 %i.aan, 8192           ; 2 uses
  %i.aba = add i32 %.0.copyload.i.i2543, %i.aaz
  %.val112.i2544 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abb = getelementptr inbounds nuw i8, ptr %.val112.i2544, i64 %i.vw
  %.0.copyload.i120.i2545 = load i32, ptr %i.abb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120.i2545) #8, !srcloc !13
  %i.abc = sub i32 %.0.copyload.i120.i2545, %.02059
  %i.abd = lshr i32 %i.abc, 3
  %i.abe = zext i32 %i.aba to i64
  %.val119.i2546 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abf = trunc i32 %i.abd to i8
  %i.abg = getelementptr inbounds nuw i8, ptr %.val119.i2546, i64 %i.abe
  store i8 %i.abf, ptr %i.abg, align 1
  %.val111.i2547 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abh = getelementptr inbounds nuw i8, ptr %.val111.i2547, i64 %i.vv
  %.0.copyload.i121.i2548 = load i32, ptr %i.abh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121.i2548) #8, !srcloc !13
  %i.abi = add i32 %.0.copyload.i121.i2548, 1     ; 2 uses
  %.val117.i2549 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abj = getelementptr inbounds nuw i8, ptr %.val117.i2549, i64 %i.vv
  store i32 %i.abi, ptr %i.abj, align 1
  %.val110.i2550 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abk = getelementptr inbounds nuw i8, ptr %.val110.i2550, i64 %i.vw
  %.0.copyload.i122.i2551 = load i32, ptr %i.abk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122.i2551) #8, !srcloc !13
  %i.abl = add i32 %.0.copyload.i122.i2551, 512   ; 2 uses
  %.val116.i2552 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abm = getelementptr inbounds nuw i8, ptr %.val116.i2552, i64 %i.vw
  store i32 %i.abl, ptr %i.abm, align 1
  %i.abn = icmp ugt i32 %.02056, %i.abl
  br i1 %i.abn, label %.preheader.i2553, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565

.preheader.i2553:                                 ; preds = %bb.cn, %.preheader.i2553
  %.0107.i2554 = phi i32 [ %i.ace, %.preheader.i2553 ], [ 0, %bb.cn ] ; 2 uses
  %.0106.i2555 = phi i32 [ %i.acc, %.preheader.i2553 ], [ 0, %bb.cn ]
  %.0105.i2556 = phi i32 [ %i.abu, %.preheader.i2553 ], [ %i.abi, %bb.cn ]
  %.0.i2557 = phi i32 [ %i.acd, %.preheader.i2553 ], [ 1, %bb.cn ] ; 2 uses
  %i.abo = add i32 %.0105.i2556, %i.aaz
  %i.abp = zext i32 %i.abo to i64
  %.val118.i2558 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abq = trunc i32 %.0107.i2554 to i8
  %i.abr = xor i8 %i.abq, -1
  %i.abs = getelementptr inbounds nuw i8, ptr %.val118.i2558, i64 %i.abp
  store i8 %i.abr, ptr %i.abs, align 1
  %.val109.i2559 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abt = getelementptr inbounds nuw i8, ptr %.val109.i2559, i64 %i.vv
  %.0.copyload.i123.i2560 = load i32, ptr %i.abt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123.i2560) #8, !srcloc !13
  %i.abu = add i32 %.0.copyload.i123.i2560, 1     ; 2 uses
  %.val115.i2561 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abv = getelementptr inbounds nuw i8, ptr %.val115.i2561, i64 %i.vv
  store i32 %i.abu, ptr %i.abv, align 1
  %.val.i2562 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.abw = getelementptr inbounds nuw i8, ptr %.val.i2562, i64 %i.vw
  %.0.copyload.i124.i2563 = load i32, ptr %i.abw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124.i2563) #8, !srcloc !13
  %i.abx = add i32 %.0.copyload.i124.i2563, 512   ; 2 uses
  %.val114.i2564 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aby = getelementptr inbounds nuw i8, ptr %.val114.i2564, i64 %i.vw
  store i32 %i.abx, ptr %i.aby, align 1
  %i.abz = add i32 %.0106.i2555, 1                ; 2 uses
  %i.aca = icmp eq i32 %.0.i2557, %i.abz          ; 2 uses
  %i.acb = zext i1 %i.aca to i32                  ; 2 uses
  %i.acc = select i1 %i.aca, i32 0, i32 %i.abz
  %i.acd = shl i32 %.0.i2557, %i.acb
  %i.ace = add i32 %.0107.i2554, %i.acb
  %i.acf = icmp ugt i32 %.02056, %i.abx
  br i1 %i.acf, label %.preheader.i2553, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565: ; preds = %.preheader.i2553, %bb.cn, %bb.cm, %bb.cl
  %i.acg = zext i32 %.02059 to i64                ; 2 uses
  %i.ach = add nuw nsw i64 %i.acg, 4              ; 2 uses
  %.val2323.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aci = getelementptr inbounds nuw i8, ptr %.val2323.a, i64 %i.ach
  store i32 0, ptr %i.aci, align 1
  %i.acj = and i32 %i.aal, 16777215
  %i.ack = or disjoint i32 %i.acj, 33554432
  %.val2322.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.acl = getelementptr inbounds nuw i8, ptr %.val2322.a, i64 %i.acg
  store i32 %i.ack, ptr %i.acl, align 1
  %i.acm = lshr i32 %i.aal, 3
  %i.acn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aal, i1 false)
  %i.aco = sub nuw nsw i32 276, %i.acn
  %i.acp = icmp ult i32 %i.aal, 2048
  %i.acq = select i1 %i.acp, i32 %i.acm, i32 %i.aco
  %i.acr = mul i32 %i.acq, 12
  %i.acs = add i32 %i.acr, %i.ub
  %i.act = zext i32 %i.acs to i64
  %i.acu = add nuw nsw i64 %i.act, 8              ; 2 uses
  %.val2211.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.acv = getelementptr inbounds nuw i8, ptr %.val2211.a, i64 %i.acu
  %.0.copyload.i2566 = load i32, ptr %i.acv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2566) #8, !srcloc !13
  %.val2321.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.acw = getelementptr inbounds nuw i8, ptr %.val2321.a, i64 %i.ach
  store i32 %.0.copyload.i2566, ptr %i.acw, align 1
  %.val2320.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.acx = getelementptr inbounds nuw i8, ptr %.val2320.a, i64 %i.acu
  store i32 %.02059, ptr %i.acx, align 1
  %.val2210.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.acy = getelementptr inbounds nuw i8, ptr %.val2210.a, i64 %i.vz
  %.0.copyload.i2567 = load i32, ptr %i.acy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2567) #8, !srcloc !13
  br label %bb.co

bb.co:                                            ; preds = %bb.ck, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565, %bb.cj
  %.12075 = phi i32 [ %.0.copyload.i2533, %bb.cj ], [ %.0.copyload.i2567, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565 ], [ %.0.copyload.i2533, %bb.ck ] ; 2 uses
  %.12071 = phi i32 [ %.02070, %bb.cj ], [ 0, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565 ], [ 0, %bb.ck ]
  %.12060 = phi i32 [ %.02059, %bb.cj ], [ %.6, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565 ], [ %.6, %bb.ck ] ; 4 uses
  %.12057 = phi i32 [ %.02056, %bb.cj ], [ %.6, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit2565 ], [ %.6, %bb.ck ]
  %i.acz = add i32 %.12071, 1                     ; 4 uses
  %i.ada = add i32 %.12057, %i.wb                 ; 4 uses
  %i.adb = and i32 %.12075, -16777216
  %i.adc = icmp eq i32 %i.adb, 33554432
  br i1 %i.adc, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.add = lshr i32 %.12075, 22
  %i.ade = and i32 %i.add, 1020
  %.val2209.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.adf = zext nneg i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr %.val2209.a, i64 %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 289808
  %.0.copyload.i2568 = load i32, ptr %i.adh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2568) #8, !srcloc !13
  %i.adi = zext i32 %.0.copyload.i2568 to i64
  %.val2208.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.adj = getelementptr inbounds nuw i8, ptr %.val2208.a, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %.0.copyload.i2569 = load i32, ptr %i.adk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2569) #8, !srcloc !13
  %.not2126 = icmp eq i32 %.0.copyload.i2569, 0
  br i1 %.not2126, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val2207.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.adl = getelementptr inbounds nuw i8, ptr %.val2207.a, i64 %i.tf
  %.0.copyload.i2570 = load i32, ptr %i.adl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2570) #8, !srcloc !13
  %i.adm = load i32, ptr %i.vp, align 4, !tbaa !24
  %i.adn = icmp ult i32 %.0.copyload.i2569, %i.adm
  br i1 %i.adn, label %bb.cr, label %.critedge2188, !prof !25

bb.cr:                                            ; preds = %bb.cq
  %i.ado = load ptr, ptr %i.vq, align 8, !tbaa !26
  %i.adp = zext i32 %.0.copyload.i2569 to i64
  %i.adq = getelementptr inbounds nuw [24 x i8], ptr %i.ado, i64 %i.adp ; 3 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !27 ; 2 uses
  %.not2127 = icmp eq ptr %i.ads, null
  br i1 %.not2127, label %.critedge2188, label %bb.cs, !prof !29

bb.cs:                                            ; preds = %bb.cr
  %i.adt = load ptr, ptr %i.adq, align 8, !tbaa !31 ; 4 uses
  %i.adu = icmp eq ptr %i.vx, %i.adt
  br i1 %i.adu, label %func_types_eq.exit2574.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.adv = icmp ne ptr %i.adt, null
  %or.cond.i2571 = and i1 %i.vy, %i.adv
  br i1 %or.cond.i2571, label %func_types_eq.exit2574, label %.critedge2188, !prof !32

func_types_eq.exit2574:                           ; preds = %bb.ct
  %i.adw = load i128, ptr %i.vx, align 1
  %i.adx = load i128, ptr %i.adt, align 1
  %i.ady = xor i128 %i.adw, %i.adx
  %i.adz = getelementptr i8, ptr %i.vx, i64 16
  %i.aea = getelementptr i8, ptr %i.adt, i64 16
  %i.aeb = load i128, ptr %i.adz, align 1
  %i.aec = load i128, ptr %i.aea, align 1
  %i.aed = xor i128 %i.aeb, %i.aec
  %i.aee = or i128 %i.ady, %i.aed
  %i.aef = icmp ne i128 %i.aee, 0
  %i.aeg = zext i1 %i.aef to i32
  %.not.i2573 = icmp eq i32 %i.aeg, 0
  br i1 %.not.i2573, label %func_types_eq.exit2574.thread, label %.critedge2188, !prof !33

.critedge2188:                                    ; preds = %bb.ct, %bb.cr, %bb.cq, %func_types_eq.exit2574
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit2574.thread:                    ; preds = %bb.cs, %func_types_eq.exit2574
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !34
  tail call void %i.ads(ptr noundef %i.aei, i32 noundef %.6, i32 noundef %.0.copyload.i2570) #8
  br label %bb.cu

bb.cu:                                            ; preds = %func_types_eq.exit2574.thread, %bb.cp
  %i.aej = add i32 %i.wb, %.02067                 ; 3 uses
  br i1 %.not2117, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.val2399 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aek = getelementptr inbounds nuw i8, ptr %.val2399, i64 %i.vz
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 3
  %.0.copyload.i2575 = load i8, ptr %i.ael, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2575) #8, !srcloc !21
  %i.aem = icmp eq i8 %.0.copyload.i2575, 1
  br i1 %i.aem, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.val2206.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aen = getelementptr inbounds nuw i8, ptr %.val2206.a, i64 %i.tf
  %.0.copyload.i2576 = load i32, ptr %i.aen, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2576) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AuntrackObject0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2576, i32 noundef %.6)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %bb.co, %bb.cg, %bb.cw, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit
  %.22072 = phi i32 [ %.02070, %bb.cg ], [ %.02070, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %i.acz, %bb.co ], [ %i.acz, %bb.cu ], [ %i.acz, %bb.cv ], [ %i.acz, %bb.cw ] ; 2 uses
  %.12068 = phi i32 [ %.02067, %bb.cg ], [ %.02067, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %.02067, %bb.co ], [ %i.aej, %bb.cu ], [ %i.aej, %bb.cv ], [ %i.aej, %bb.cw ] ; 3 uses
  %.22061 = phi i32 [ %.02059, %bb.cg ], [ %.02059, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %.12060, %bb.co ], [ %.12060, %bb.cu ], [ %.12060, %bb.cv ], [ %.12060, %bb.cw ] ; 8 uses
  %.22058 = phi i32 [ %.02056, %bb.cg ], [ %.02056, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29.exit ], [ %i.ada, %bb.co ], [ %i.ada, %bb.cu ], [ %i.ada, %bb.cv ], [ %i.ada, %bb.cw ] ; 4 uses
  %.val2205.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aeo = getelementptr inbounds nuw i8, ptr %.val2205.a, i64 %i.vz
  %.0.copyload.i2577 = load i32, ptr %i.aeo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2577) #8, !srcloc !13
  %i.aep = and i32 %.0.copyload.i2577, 16777215
  %i.aeq = add i32 %i.aep, %.6                    ; 2 uses
  %.not2130 = icmp eq i32 %i.aeq, %.0.copyload.i2532
  br i1 %.not2130, label %bb.cy, label %bb.ca

bb.cy:                                            ; preds = %bb.cx
  %.not2131 = icmp eq i32 %.22061, 0
  br i1 %.not2131, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aer = sub i32 %.22058, %.22061               ; 4 uses
  %i.aes = icmp ult i32 %.22072, 2
  br i1 %i.aes, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aet = and i32 %.22061, -4194304              ; 3 uses
  %i.aeu = xor i32 %i.aet, -1
  %i.aev = add i32 %.22061, %i.aeu
  %i.aew = ashr i32 %i.aev, 9
  %i.aex = add nsw i32 %i.aew, 1                  ; 2 uses
  %.val2319.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aey = getelementptr inbounds nuw i8, ptr %.val2319.a, i64 %i.vt
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  store i32 %i.aex, ptr %i.aez, align 1
  %i.afa = shl i32 %i.aex, 9
  %i.afb = add i32 %i.afa, %i.aet                 ; 2 uses
  %.val2318.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.afc = getelementptr inbounds nuw i8, ptr %.val2318.a, i64 %i.vt
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 12
  store i32 %i.afb, ptr %i.afd, align 1
  %.not2132 = icmp ult i32 %i.afb, %.22058
  br i1 %.not2132, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3AupdateBoundaries0x28hermes0x3A0x3Avm0x3A0x3ACardTable0x3A0x3ABoundary0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aet, i32 noundef %i.vu, i32 noundef %.22061, i32 noundef %.22058)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.cz, %bb.db
  %i.afe = zext i32 %.22061 to i64                ; 2 uses
  %i.aff = add nuw nsw i64 %i.afe, 4              ; 2 uses
  %.val2317.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.afg = getelementptr inbounds nuw i8, ptr %.val2317.a, i64 %i.aff
  store i32 0, ptr %i.afg, align 1
  %i.afh = and i32 %i.aer, 16777215
  %i.afi = or disjoint i32 %i.afh, 33554432
  %.val2316.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.afj = getelementptr inbounds nuw i8, ptr %.val2316.a, i64 %i.afe
  store i32 %i.afi, ptr %i.afj, align 1
  %i.afk = lshr i32 %i.aer, 3
  %i.afl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 false)
  %i.afm = sub nuw nsw i32 276, %i.afl
  %i.afn = icmp ult i32 %i.aer, 2048
  %i.afo = select i1 %i.afn, i32 %i.afk, i32 %i.afm
  %i.afp = mul i32 %i.afo, 12
  %i.afq = add i32 %i.afp, %i.ub
  %i.afr = zext i32 %i.afq to i64
  %i.afs = add nuw nsw i64 %i.afr, 8              ; 2 uses
  %.val2204.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aft = getelementptr inbounds nuw i8, ptr %.val2204.a, i64 %i.afs
  %.0.copyload.i2578 = load i32, ptr %i.aft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2578) #8, !srcloc !13
  %.val2315.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.afu = getelementptr inbounds nuw i8, ptr %.val2315.a, i64 %i.aff
  store i32 %.0.copyload.i2578, ptr %i.afu, align 1
  %.val2314.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.afv = getelementptr inbounds nuw i8, ptr %.val2314.a, i64 %i.afs
  store i32 %.22061, ptr %i.afv, align 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cy, %bb.bz, %bb.dc
  %.22069 = phi i32 [ 0, %bb.bz ], [ %.12068, %bb.cy ], [ %.12068, %bb.dc ] ; 2 uses
  %i.afw = add i32 %1, 716
  %i.afx = add i32 %1, 656                        ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dl, %bb.dd
  %indvars.iv2620 = phi i64 [ %indvars.iv.next2621, %bb.dl ], [ 0, %bb.dd ] ; 4 uses
  %i.afy = trunc i64 %indvars.iv2620 to i32
  %i.afz = mul i32 %i.afy, 12                     ; 2 uses
  %i.aga = add i32 %i.afw, %i.afz                 ; 2 uses
  %i.agb = zext i32 %i.aga to i64                 ; 2 uses
  %.val2203.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agc = getelementptr inbounds nuw i8, ptr %.val2203.a, i64 %i.agb
  %.0.copyload.i2579 = load i32, ptr %i.agc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2579) #8, !srcloc !13
  %i.agd = add i32 %i.afz, %i.ub                  ; 3 uses
  %i.age = zext i32 %i.agd to i64                 ; 3 uses
  %.val2202.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agf = getelementptr inbounds nuw i8, ptr %.val2202.a, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %.0.copyload.i2580 = load i32, ptr %i.agg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2580) #8, !srcloc !13
  %.not2134 = icmp eq i32 %.0.copyload.i2580, 0
  br i1 %.not2134, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.not2136.a = icmp eq i32 %.0.copyload.i2579, 0
  br i1 %.not2136.a, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.agh = zext i32 %.0.copyload.i2579 to i64
  %.val2313.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agi = getelementptr inbounds nuw i8, ptr %.val2313.a, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  store i32 %i.agd, ptr %i.agj, align 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.val2312.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agk = getelementptr inbounds nuw i8, ptr %.val2312.a, i64 %i.age
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  store i32 %i.aga, ptr %i.agl, align 1
  %.val2311.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agm = getelementptr inbounds nuw i8, ptr %.val2311.a, i64 %i.age
  store i32 %.0.copyload.i2579, ptr %i.agm, align 1
  %.val2310 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agn = getelementptr inbounds nuw i8, ptr %.val2310, i64 %i.agb
  store i32 %i.agd, ptr %i.agn, align 1
  %i.ago = trunc nuw nsw i64 %indvars.iv2620 to i32 ; 2 uses
  %i.agp = lshr i32 %i.ago, 5
  %i.agq = and i32 %i.ago, 31
  %i.agr = shl nuw i32 1, %i.agq
  br label %bb.dj

bb.di:                                            ; preds = %bb.de
  %i.ags = trunc nuw nsw i64 %indvars.iv2620 to i32 ; 2 uses
  %i.agt = lshr i32 %i.ags, 5                     ; 2 uses
  %i.agu = and i32 %i.ags, 31
  %i.agv = shl nuw i32 1, %i.agu                  ; 2 uses
  %.not2135 = icmp eq i32 %.0.copyload.i2579, 0
  br i1 %.not2135, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.22076 = phi i32 [ %i.agr, %bb.dh ], [ %i.agv, %bb.di ]
  %.7 = phi i32 [ %i.agp, %bb.dh ], [ %i.agt, %bb.di ]
  %i.agw = shl nuw nsw i32 %.7, 2
  %i.agx = add i32 %i.agw, %i.afx
  %i.agy = zext i32 %i.agx to i64                 ; 2 uses
  %.val2201.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.agz = getelementptr inbounds nuw i8, ptr %.val2201.a, i64 %i.agy
  %.0.copyload.i2581 = load i32, ptr %i.agz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2581) #8, !srcloc !13
  %i.aha = or i32 %.0.copyload.i2581, %.22076
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.ahb = shl nuw nsw i32 %i.agt, 2
  %i.ahc = add i32 %i.ahb, %i.afx
  %i.ahd = zext i32 %i.ahc to i64                 ; 2 uses
  %.val2200.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahe = getelementptr inbounds nuw i8, ptr %.val2200.a, i64 %i.ahd
  %.0.copyload.i2582 = load i32, ptr %i.ahe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2582) #8, !srcloc !13
  %i.ahf = xor i32 %i.agv, -1
  %i.ahg = and i32 %.0.copyload.i2582, %i.ahf
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sink2667 = phi i64 [ %i.ahd, %bb.dk ], [ %i.agy, %bb.dj ]
  %.sink2665 = phi i32 [ %i.ahg, %bb.dk ], [ %i.aha, %bb.dj ]
  %.val2308.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val2308.a, i64 %.sink2667
  store i32 %.sink2665, ptr %i.ahh, align 1
  %indvars.iv.next2621 = add nuw nsw i64 %indvars.iv2620, 1 ; 2 uses
  %.not2137 = icmp eq i64 %indvars.iv.next2621, 267
  br i1 %.not2137, label %bb.dm, label %bb.de

bb.dm:                                            ; preds = %bb.dl
  %i.ahi = add nuw nsw i64 %i.tf, 48              ; 2 uses
  %.val2390.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahj = getelementptr inbounds nuw i8, ptr %.val2390.a, i64 %i.ahi
  %.0.copyload.i2583 = load i64, ptr %i.ahj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2583) #8, !srcloc !22
  %i.ahk = sub i32 0, %.22069
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = add i64 %.0.copyload.i2583, %i.ahl
  %.val2365.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahn = getelementptr inbounds nuw i8, ptr %.val2365.a, i64 %i.ahi
  store i64 %i.ahm, ptr %i.ahn, align 1
  %i.aho = add i32 %1, 3928
  %i.ahp = zext i32 %i.aho to i64                 ; 4 uses
  %.val2389.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val2389.a, i64 %i.ahp
  %.0.copyload.i2584 = load i64, ptr %i.ahq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2584) #8, !srcloc !22
  %i.ahr = sext i32 %.22069 to i64
  %i.ahs = add i64 %.0.copyload.i2584, %i.ahr     ; 2 uses
  %.val2364.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aht = getelementptr inbounds nuw i8, ptr %.val2364.a, i64 %i.ahp
  store i64 %i.ahs, ptr %i.aht, align 1
  %i.ahu = add i32 %1, 3936
  %i.ahv = zext i32 %i.ahu to i64                 ; 2 uses
  %.val2388.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahw = getelementptr inbounds nuw i8, ptr %.val2388.a, i64 %i.ahv
  %.0.copyload.i2585 = load i64, ptr %i.ahw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2585) #8, !srcloc !22
  %.val2387.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ahx = getelementptr inbounds nuw i8, ptr %.val2387.a, i64 %i.uc
  %.0.copyload.i2586 = load i64, ptr %i.ahx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2586) #8, !srcloc !22
  %i.ahy = sub i64 %.0.copyload.i2522, %.0.copyload.i2586
  %i.ahz = add i64 %i.ahy, %.0.copyload.i2585     ; 3 uses
  %.val2363.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aia = getelementptr inbounds nuw i8, ptr %.val2363.a, i64 %i.ahv
  store i64 %i.ahz, ptr %i.aia, align 1
  %.val2199.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aib = getelementptr inbounds nuw i8, ptr %.val2199.a, i64 %i.tg
  %.0.copyload.i2587 = load i32, ptr %i.aib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2587) #8, !srcloc !13
  %.not2138 = icmp eq i32 %.0.copyload.i2587, 0
  br i1 %.not2138, label %bb.dn, label %.critedge2190

bb.dn:                                            ; preds = %bb.dm
  %.val2198.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aic = getelementptr inbounds nuw i8, ptr %.val2198.a, i64 %i.tf
  %.0.copyload.i2588 = load i32, ptr %i.aic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2588) #8, !srcloc !13
  %i.aid = zext i32 %.0.copyload.i2588 to i64     ; 3 uses
  %.val2197.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aie = getelementptr inbounds nuw i8, ptr %.val2197.a, i64 %i.aid
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 4052
  %.0.copyload.i2589 = load i32, ptr %i.aif, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2589) #8, !srcloc !13
  %i.aig = zext i32 %.0.copyload.i2589 to i64     ; 4 uses
  %.val2362.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aih = getelementptr inbounds nuw i8, ptr %.val2362.a, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 112
  store i64 %i.ahz, ptr %i.aii, align 1
  %.val2386.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aij = getelementptr inbounds nuw i8, ptr %.val2386.a, i64 %i.aig
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 72
  %.0.copyload.i2590 = load i64, ptr %i.aik, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2590) #8, !srcloc !22
  %i.ail = tail call i64 @llvm.umin.i64(i64 %i.ahs, i64 %.0.copyload.i2590) ; 2 uses
  %.val2361.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aim = getelementptr inbounds nuw i8, ptr %.val2361.a, i64 %i.aig
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 104
  store i64 %i.ail, ptr %i.ain, align 1
  %.val2385.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aio = getelementptr inbounds nuw i8, ptr %.val2385.a, i64 %i.aid
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 512
  %.0.copyload.i2591 = load i64, ptr %i.aip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2591) #8, !srcloc !22
  %.val2406.a = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val2406.a, i64 %i.aid
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4024
  %.0.copyload.i2592 = load double, ptr %i.air, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2592) #8, !srcloc !35
  %.val2384 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ais = getelementptr inbounds nuw i8, ptr %.val2384, i64 %i.aig
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 80
  %.0.copyload.i2593 = load i64, ptr %i.ait, align 1 ; 2 uses
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AoldGenCollection0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2C0x20bool0x29:bb.a
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1369, i64 %i.fw
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 584
  store i32 0, ptr %i.kf, align 1
  %i.kg = add nuw nsw i64 %i.e, 4008              ; 4 uses
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.kg
  %.0.copyload.i1480 = load i32, ptr %i.kh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1480) #8, !srcloc !13
  %.val1368 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1368, i64 %i.kg
  store i32 %i.fv, ptr %i.ki, align 1
  %.not1239 = icmp eq i32 %.0.copyload.i1480, 0
  br i1 %.not1239, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kj = zext i32 %.0.copyload.i1480 to i64      ; 5 uses
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 572
  %.0.copyload.i1481 = load i32, ptr %i.kl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1481) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1481) #8
  %.val1314 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.km = getelementptr inbounds nuw i8, ptr %.val1314, i64 %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 560
  %.0.copyload.i1482 = load i32, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1482) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1482) #8
  %.val1313 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1313, i64 %i.kj
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 548
  %.0.copyload.i1483 = load i32, ptr %i.kp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1483) #8, !srcloc !13
  %i.kq = add i32 %.0.copyload.i1480, 560
  %.not1240 = icmp eq i32 %.0.copyload.i1483, %i.kq
  br i1 %.not1240, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1483) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val1312 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %.val1312, i64 %i.kj
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %.0.copyload.i1484 = load i32, ptr %i.ks, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1484) #8, !srcloc !13
  %.not1241 = icmp eq i32 %.0.copyload.i1484, 0
  br i1 %.not1241, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1367 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1367, i64 %i.kj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  store i32 %.0.copyload.i1484, ptr %i.ku, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1484) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1480) #8
  %.val1311 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1311, i64 %i.kg
  %.0.copyload.i1485 = load i32, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1485) #8, !srcloc !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad
  %.01216 = phi i32 [ %.0.copyload.i1485, %bb.ad ], [ %i.fv, %bb.y ]
  %.val1366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1366, i64 %i.bj
  store i32 %.01216, ptr %i.kw, align 1
  %.val1365 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1365, i64 %i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i32 270864, ptr %i.ky, align 1
  %.val1364 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1364, i64 %i.ax
  store i32 270772, ptr %i.kz, align 1
  %.val1310 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.la = getelementptr inbounds nuw i8, ptr %.val1310, i64 %i.en
  %.0.copyload.i1486 = load i32, ptr %i.la, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1486) #8, !srcloc !13
  %i.lb = add i32 %i.b, -12
  %i.lc = zext i32 %.0.copyload.i1486 to i64
  %.val1309 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1309, i64 %i.lc
  %.0.copyload.i1487 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1487) #8, !srcloc !13
  %i.le = zext i32 %.0.copyload.i1487 to i64
  %.val1308 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1308, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.0.copyload.i1488 = load i32, ptr %i.lg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1488) #8, !srcloc !13
  %i.lh = load i32, ptr %i.ev, align 4, !tbaa !24
  %i.li = icmp ult i32 %.0.copyload.i1488, %i.lh
  br i1 %i.li, label %bb.af, label %.critedge1260, !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.lj = load ptr, ptr %i.eu, align 8, !tbaa !26
  %i.lk = zext i32 %.0.copyload.i1488 to i64
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.lj, i64 %i.lk ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !27 ; 2 uses
  %.not1242 = icmp eq ptr %i.ln, null
  br i1 %.not1242, label %.critedge1260, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %bb.af
  %i.lo = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !30 ; 4 uses
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !31 ; 4 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %func_types_eq.exit1492.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lr = icmp ne ptr %i.lo, null
  %i.ls = icmp ne ptr %i.lp, null
  %or.cond.i1489 = and i1 %i.lr, %i.ls
  br i1 %or.cond.i1489, label %func_types_eq.exit1492, label %.critedge1260, !prof !32

func_types_eq.exit1492:                           ; preds = %bb.ah
  %i.lt = load i128, ptr %i.lo, align 1
  %i.lu = load i128, ptr %i.lp, align 1
  %i.lv = xor i128 %i.lt, %i.lu
  %i.lw = getelementptr i8, ptr %i.lo, i64 16
  %i.lx = getelementptr i8, ptr %i.lp, i64 16
  %i.ly = load i128, ptr %i.lw, align 1
  %i.lz = load i128, ptr %i.lx, align 1
  %i.ma = xor i128 %i.ly, %i.lz
  %i.mb = or i128 %i.lv, %i.ma
  %i.mc = icmp ne i128 %i.mb, 0
  %i.md = zext i1 %i.mc to i32
  %.not.i1491 = icmp eq i32 %i.md, 0
  br i1 %.not.i1491, label %func_types_eq.exit1492.thread, label %.critedge1260, !prof !33

.critedge1260:                                    ; preds = %bb.ah, %bb.af, %bb.ae, %func_types_eq.exit1492
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit1492.thread:                    ; preds = %bb.ag, %func_types_eq.exit1492
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !34
  tail call void %i.ln(ptr noundef %i.mf, i32 noundef %.0.copyload.i1486, i32 noundef %i.lb, i32 noundef 1) #8
  %.val1429 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1429, i64 %i.e
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4004
  store i16 257, ptr %i.mh, align 1
  %i.mi = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.mj = add i32 %i.mi, -16                      ; 6 uses
  store i32 %i.mj, ptr %i.a, align 8, !tbaa !14
  %.val1426 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1426, i64 %i.da
  %.0.copyload.i1493 = load i8, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1493) #8, !srcloc !21
  %.not1243 = icmp eq i8 %.0.copyload.i1493, 0
  br i1 %.not1243, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %func_types_eq.exit1492.thread
  %.val1307 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ml = getelementptr inbounds nuw i8, ptr %.val1307, i64 %i.cc
  %.0.copyload.i1494 = load i32, ptr %i.ml, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1494) #8, !srcloc !13
  %.not1244 = icmp eq i32 %3, 0
  br i1 %.not1244, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.val1420 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1420, i64 %i.cj
  %.0.copyload.i1495 = load i64, ptr %i.mm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1495) #8, !srcloc !22
  %.val1306 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mn = getelementptr inbounds nuw i8, ptr %.val1306, i64 %i.e
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 592
  %.0.copyload.i1496 = load i32, ptr %i.mo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1496) #8, !srcloc !13
  %i.mp = add i32 %.0.copyload.i1496, 4416
  %i.mq = zext i32 %i.mp to i64
  %.val1305 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1305, i64 %i.mq
  %.0.copyload.i1497 = load i32, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1497) #8, !srcloc !13
  %i.ms = icmp ne i32 %.0.copyload.i1497, 0
  %i.mt = zext i1 %i.ms to i32
  %i.mu = add i32 %.0.copyload.i1494, %i.mt
  %i.mv = mul i32 %i.mu, 4108288
  %i.mw = zext i32 %i.mv to i64
  %i.mx = add i64 %.0.copyload.i1495, %i.mw
  %.val1432 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.my = getelementptr inbounds nuw i8, ptr %.val1432, i64 %i.e
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 632
  %.0.copyload.i1498 = load double, ptr %i.mz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1498) #8, !srcloc !35
  %i.na = fcmp olt double %.0.copyload.i1498, f0x43F0000000000000
  %i.nb = fcmp oge double %.0.copyload.i1498, 0.000000e+00
  %i.nc = and i1 %i.na, %i.nb
  br i1 %i.nc, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.nd = fptoui double %.0.copyload.i1498 to i64
  %.fr = freeze i64 %i.nd                         ; 3 uses
  %i.ne = udiv i64 %.fr, 20
  %i.nf = icmp ult i64 %.fr, 82165780
  %spec.select = select i1 %i.nf, i64 4108288, i64 %i.ne
  %i.ng = add i64 %spec.select, %.fr
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.aj
  %i.nh = phi i64 [ %i.ng, %bb.ak ], [ 4108288, %bb.aj ]
  %.not1245 = icmp ugt i64 %i.mx, %i.nh
  %i.ni = icmp ugt i32 %.0.copyload.i1494, 1
  %or.cond = select i1 %.not1245, i1 %i.ni, i1 false
  br i1 %or.cond, label %bb.am, label %bb.bd

bb.al:                                            ; preds = %bb.ai
  %i.nj = icmp ult i32 %.0.copyload.i1494, 2
  br i1 %i.nj, label %bb.bd, label %bb.am

bb.am:                                            ; preds = %.thread, %bb.al
  %i.nk = add i32 %1, 592
  %i.nl = zext i32 %i.nk to i64                   ; 8 uses
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nm = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 104
  %.0.copyload.i1499 = load i32, ptr %i.nn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1499) #8, !srcloc !13
  %i.no = add nuw nsw i64 %i.nl, 120              ; 3 uses
  %.val1303 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.np = getelementptr inbounds nuw i8, ptr %.val1303, i64 %i.no
  %.0.copyload.i1500 = load i32, ptr %i.np, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1500) #8, !srcloc !13
  %i.nq = add nuw nsw i64 %i.nl, 116              ; 2 uses
  %.val1302 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1302, i64 %i.nq
  %.0.copyload.i1501 = load i32, ptr %i.nr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1501) #8, !srcloc !13
  %i.ns = add i32 %.0.copyload.i1500, -1
  %i.nt = add i32 %i.ns, %.0.copyload.i1501       ; 2 uses
  %i.nu = lshr i32 %i.nt, 2
  %i.nv = and i32 %i.nu, 1073741820
  %i.nw = add i32 %i.nv, %.0.copyload.i1499
  %i.nx = zext i32 %i.nw to i64
  %.val1301 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ny = getelementptr inbounds nuw i8, ptr %.val1301, i64 %i.nx
  %.0.copyload.i1502 = load i32, ptr %i.ny, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1502) #8, !srcloc !13
  %i.nz = and i32 %i.nt, 15
  %i.oa = mul nuw nsw i32 %i.nz, 3204
  %i.ob = add i32 %.0.copyload.i1502, %i.oa
  %i.oc = add i32 %1, 716
  %i.od = add i32 %1, 656
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ap ], [ 0, %bb.am ] ; 3 uses
  %i.oe = trunc i64 %indvars.iv to i32
  %i.of = mul i32 %i.oe, 12                       ; 2 uses
  %i.og = add i32 %i.ob, %i.of
  %i.oh = zext i32 %i.og to i64                   ; 4 uses
  %.val1300 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1300, i64 %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.0.copyload.i1503 = load i32, ptr %i.oj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1503) #8, !srcloc !13
  %.not1246 = icmp eq i32 %.0.copyload.i1503, 0
  br i1 %.not1246, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val1299 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1299, i64 %i.oh
  %.0.copyload.i1504 = load i32, ptr %i.ok, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #8, !srcloc !13
  %.not1247 = icmp eq i32 %.0.copyload.i1504, 0
  br i1 %.not1247, label %.split, label %.split1220

.split:                                           ; preds = %bb.ao
  %.val1263 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1263, i64 %i.oh
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %.0.copyload.i1505 = load i32, ptr %i.om, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #8, !srcloc !13
  br label %.sink.split

.split1220:                                       ; preds = %bb.ao
  %i.on = add nuw nsw i64 %i.oh, 4                ; 2 uses
  %.val1298 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1298, i64 %i.on
  %.0.copyload.i1506 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1506) #8, !srcloc !13
  %i.op = zext i32 %.0.copyload.i1504 to i64
  %.val1363 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1363, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store i32 %.0.copyload.i1506, ptr %i.or, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.os = getelementptr inbounds nuw i8, ptr %.val, i64 %i.on
  %.0.copyload.i1507 = load i32, ptr %i.os, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #8, !srcloc !13
  br label %.sink.split

.sink.split:                                      ; preds = %.split, %.split1220
  %.0.copyload.i1505.sink = phi i32 [ %.0.copyload.i1505, %.split ], [ %.0.copyload.i1507, %.split1220 ]
  %.sink = phi i32 [ 0, %.split ], [ %.0.copyload.i1504, %.split1220 ]
  %i.ot = zext i32 %.0.copyload.i1505.sink to i64
  %.val1347 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1347, i64 %i.ot
  store i32 %.sink, ptr %i.ou, align 1
  %i.ov = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ow = and i32 %i.ov, 31
  %i.ox = shl nuw i32 1, %i.ow                    ; 2 uses
  %i.oy = add i32 %i.oc, %i.of
  %i.oz = zext i32 %i.oy to i64
  %.val1297 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1297, i64 %i.oz
  %.0.copyload.i1508 = load i32, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #8, !srcloc !13
  %.not1248 = icmp eq i32 %.0.copyload.i1508, 0
  %i.pb = lshr i32 %i.ov, 3
  %i.pc = and i32 %i.pb, 536870908
  %i.pd = add i32 %i.pc, %i.od
  %i.pe = zext i32 %i.pd to i64                   ; 2 uses
  %.val1295 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %.val1295, i64 %i.pe
  %.0.copyload.i1510 = load i32, ptr %i.pf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #8
  %i.pg = xor i32 %i.ox, -1
  %i.ph = and i32 %.0.copyload.i1510, %i.pg
  %i.pi = or i32 %.0.copyload.i1510, %i.ox
  %.sink1580 = select i1 %.not1248, i32 %i.ph, i32 %i.pi
  %.val1361 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pj = getelementptr inbounds nuw i8, ptr %.val1361, i64 %i.pe
  store i32 %.sink1580, ptr %i.pj, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1249 = icmp eq i64 %indvars.iv.next, 267
  br i1 %.not1249, label %bb.aq, label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %.val1294 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1294, i64 %i.no
  %.0.copyload.i1511 = load i32, ptr %i.pk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1511) #8, !srcloc !13
  %i.pl = add i32 %.0.copyload.i1511, -1
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pm = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.no
  store i32 %i.pl, ptr %i.pm, align 1
  %i.pn = add nuw nsw i64 %i.nl, 108              ; 3 uses
  %.val1293 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.po = getelementptr inbounds nuw i8, ptr %.val1293, i64 %i.pn
  %.0.copyload.i1512 = load i32, ptr %i.po, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1512) #8, !srcloc !13
  %i.pp = sub i32 %.0.copyload.i1512, %.0.copyload.i1499
  %i.pq = shl i32 %i.pp, 2
  %i.pr = add i32 %i.pq, -1
  %.not1250 = icmp eq i32 %.0.copyload.i1512, %.0.copyload.i1499
  %i.ps = select i1 %.not1250, i32 0, i32 %i.pr
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pt = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.nq
  %.0.copyload.i1513 = load i32, ptr %i.pt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1513) #8, !srcloc !13
  %i.pu = add i32 %.0.copyload.i1511, %.0.copyload.i1513
  %reass.sub = sub i32 %i.ps, %i.pu
  %i.pv = add i32 %reass.sub, -31
  %i.pw = icmp ult i32 %i.pv, -32
  br i1 %i.pw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.px = add i32 %.0.copyload.i1512, -4
  %i.py = zext i32 %i.px to i64
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.py
  %.0.copyload.i1514 = load i32, ptr %i.pz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1514) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1514) #8
  %.val1290 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qa = getelementptr inbounds nuw i8, ptr %.val1290, i64 %i.pn
  %.0.copyload.i1515 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1515) #8, !srcloc !13
  %i.qb = add i32 %.0.copyload.i1515, -4
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.pn
  store i32 %i.qb, ptr %i.qc, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.qd = add nuw nsw i64 %i.nl, 8                ; 3 uses
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qe = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.qd
  %.0.copyload.i1516 = load i32, ptr %i.qe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1516) #8, !srcloc !13
  %i.qf = add nuw nsw i64 %i.nl, 24               ; 4 uses
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qg = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.qf
  %.0.copyload.i1517 = load i32, ptr %i.qg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1517) #8, !srcloc !13
  %i.qh = add nuw nsw i64 %i.nl, 20               ; 3 uses
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.qh
  %.0.copyload.i1518 = load i32, ptr %i.qi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1518) #8, !srcloc !13
  %i.qj = add i32 %.0.copyload.i1517, -1
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3Areserve0x28unsigned0x20int0x29:bb.a
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %.0.copyload.i274 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i274) #8, !srcloc !13
  %i.br = shl nsw i32 -1, %i.bl
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %.0.copyload.i274, %i.bs
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.bp
  store i32 %i.bt, ptr %i.bu, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.g, %bb.l
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AgrowAndRehash0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlrealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AfreeUnmarkedSymbols0x28llvh0x3A0x3ABitVector0x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AIDTracker0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 12                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 110 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 8                  ; 3 uses
  %.val1454 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val1454, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.f = zext i32 %1 to i64                       ; 7 uses
  %i.g = add nuw nsw i64 %i.f, 20                 ; 5 uses
  %.val1453 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.g
  %.0.copyload.i1501 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1501) #8, !srcloc !13
  %i.i = icmp ugt i32 %.0.copyload.i, %.0.copyload.i1501
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %.0.copyload.i, i32 noundef 0) #8
  %.val1452 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.d
  %.0.copyload.i1502 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1502) #8, !srcloc !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.01296 = phi i32 [ %.0.copyload.i1502, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %i.k = add i32 %.01296, 31                      ; 2 uses
  %i.l = icmp ult i32 %i.k, 32
  br i1 %i.l, label %.loopexit1599, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 5                         ; 3 uses
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = zext i32 %i.a to i64
  %.val1451 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.o
  %.0.copyload.i1503 = load i32, ptr %i.p, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1503) #8, !srcloc !13
  %.val1450 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.c
  %.0.copyload.i1504 = load i32, ptr %i.q, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #8, !srcloc !13
  %i.r = add nsw i32 %i.m, -4
  %i.s = icmp ult i32 %i.r, -3
  br i1 %i.s, label %bb.e, label %.loopexit1600

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.m, 134217724                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = shl i32 %i.u, 2                          ; 5 uses
  %i.w = add i32 %i.v, %.0.copyload.i1503
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.val1449 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.x
  %.0.copyload.i1505 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #8, !srcloc !13
  %i.z = add i32 %i.v, %.0.copyload.i1504
  %i.aa = zext i32 %i.z to i64
  %.val1448 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.aa
  %.0.copyload.i1506 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1506) #8, !srcloc !13
  %i.ac = or i32 %.0.copyload.i1506, %.0.copyload.i1505
  %.val1475 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i32 %i.v, 4                 ; 2 uses
  %i.af = add i32 %i.ae, %.0.copyload.i1503
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val1447 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.ag
  %.0.copyload.i1507 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #8, !srcloc !13
  %i.ai = add i32 %i.ae, %.0.copyload.i1504
  %i.aj = zext i32 %i.ai to i64
  %.val1446 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.aj
  %.0.copyload.i1508 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #8, !srcloc !13
  %i.al = or i32 %.0.copyload.i1508, %.0.copyload.i1507
  %.val1474 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.ag
  store i32 %i.al, ptr %i.am, align 1
  %i.an = or disjoint i32 %i.v, 8                 ; 2 uses
  %i.ao = add i32 %i.an, %.0.copyload.i1503
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %.val1445 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.ap
  %.0.copyload.i1509 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1509) #8, !srcloc !13
  %i.ar = add i32 %i.an, %.0.copyload.i1504
  %i.as = zext i32 %i.ar to i64
  %.val1444 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.as
  %.0.copyload.i1510 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #8, !srcloc !13
  %i.au = or i32 %.0.copyload.i1510, %.0.copyload.i1509
  %.val1473 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.ap
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = or disjoint i32 %i.v, 12                ; 2 uses
  %i.ax = add i32 %i.aw, %.0.copyload.i1503
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.val1443 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val1443, i64 %i.ay
  %.0.copyload.i1511 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1511) #8, !srcloc !13
  %i.ba = add i32 %i.aw, %.0.copyload.i1504
  %i.bb = zext i32 %i.ba to i64
  %.val1442 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1442, i64 %i.bb
  %.0.copyload.i1512 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1512) #8, !srcloc !13
  %i.bd = or i32 %.0.copyload.i1512, %.0.copyload.i1511
  %.val1472 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val1472, i64 %i.ay
  store i32 %i.bd, ptr %i.be, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1632 = trunc i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.t, %indvars1632
  br i1 %.not, label %.loopexit1600.loopexit, label %bb.f

.loopexit1600.loopexit:                           ; preds = %bb.f
  %i.bf = zext nneg i32 %i.t to i64
  br label %.loopexit1600

.loopexit1600:                                    ; preds = %.loopexit1600.loopexit, %bb.d
  %.11320 = phi i64 [ 0, %bb.d ], [ %i.bf, %.loopexit1600.loopexit ]
  %.not1352 = icmp eq i32 %i.n, 0
  br i1 %.not1352, label %.loopexit1599, label %.preheader1598

.preheader1598:                                   ; preds = %.loopexit1600, %.preheader1598
  %indvars.iv1634 = phi i64 [ %indvars.iv.next1635, %.preheader1598 ], [ %.11320, %.loopexit1600 ] ; 2 uses
  %.01306 = phi i32 [ %i.bp, %.preheader1598 ], [ 0, %.loopexit1600 ]
  %indvars.iv1634.tr = trunc i64 %indvars.iv1634 to i32
  %i.bg = shl i32 %indvars.iv1634.tr, 2           ; 2 uses
  %i.bh = add i32 %i.bg, %.0.copyload.i1503
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %.val1441 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1441, i64 %i.bi
  %.0.copyload.i1513 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1513) #8, !srcloc !13
  %i.bk = add i32 %i.bg, %.0.copyload.i1504
  %i.bl = zext i32 %i.bk to i64
  %.val1440 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1440, i64 %i.bl
  %.0.copyload.i1514 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1514) #8, !srcloc !13
  %i.bn = or i32 %.0.copyload.i1514, %.0.copyload.i1513
  %.val1471 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1471, i64 %i.bi
  store i32 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next1635 = add nuw nsw i64 %indvars.iv1634, 1
  %i.bp = add nuw nsw i32 %.01306, 1              ; 2 uses
  %.not1353 = icmp eq i32 %i.bp, %i.n
  br i1 %.not1353, label %.loopexit1599, label %.preheader1598

.loopexit1599:                                    ; preds = %.preheader1598, %.loopexit1600, %bb.c
  %.val1439 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1439, i64 %i.g
  %.0.copyload.i1515 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1515) #8, !srcloc !13
  %i.br = add i32 %.0.copyload.i1515, 31          ; 3 uses
  %i.bs = lshr i32 %i.br, 5                       ; 5 uses
  %i.bt = icmp ult i32 %i.br, 32
  br i1 %i.bt, label %.loopexit1596, label %bb.g

bb.g:                                             ; preds = %.loopexit1599
  %4 = icmp ult i32 %i.br, 64
  %5 = select i1 %4, i32 1, i32 %i.bs             ; 3 uses
  %i.bu = and i32 %5, 3                           ; 2 uses
  %i.bv = zext i32 %i.a to i64
  %.val1438 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1438, i64 %i.bv
  %.0.copyload.i1516 = load i32, ptr %i.bw, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1516) #8, !srcloc !13
  %i.bx = icmp samesign ugt i32 %5, 3
  br i1 %i.bx, label %bb.h, label %.loopexit1597

bb.h:                                             ; preds = %bb.g
  %i.by = and i32 %5, 134217724                   ; 2 uses
  %i.bz = add i32 %.0.copyload.i1516, 4
  %i.ca = add i32 %.0.copyload.i1516, 8
  %i.cb = add i32 %.0.copyload.i1516, 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv1637 = phi i64 [ %indvars.iv.next1638, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv1637.tr = trunc i64 %indvars.iv1637 to i32
  %i.cc = shl i32 %indvars.iv1637.tr, 2           ; 4 uses
  %i.cd = add i32 %i.cc, %.0.copyload.i1516
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.val1437 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1437, i64 %i.ce
  %.0.copyload.i1517 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1517) #8, !srcloc !13
  %i.cg = xor i32 %.0.copyload.i1517, -1
  %.val1470 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1470, i64 %i.ce
  store i32 %i.cg, ptr %i.ch, align 1
  %i.ci = add i32 %i.bz, %i.cc
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.val1436 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1436, i64 %i.cj
  %.0.copyload.i1518 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1518) #8, !srcloc !13
  %i.cl = xor i32 %.0.copyload.i1518, -1
  %.val1469 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1469, i64 %i.cj
  store i32 %i.cl, ptr %i.cm, align 1
  %i.cn = add i32 %i.ca, %i.cc
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %.val1435 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1435, i64 %i.co
  %.0.copyload.i1519 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1519) #8, !srcloc !13
  %i.cq = xor i32 %.0.copyload.i1519, -1
  %.val1468 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.co
  store i32 %i.cq, ptr %i.cr, align 1
  %i.cs = add i32 %i.cb, %i.cc
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %.val1434 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1434, i64 %i.ct
  %.0.copyload.i1520 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1520) #8, !srcloc !13
  %i.cv = xor i32 %.0.copyload.i1520, -1
  %.val1467 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.ct
  store i32 %i.cv, ptr %i.cw, align 1
  %indvars.iv.next1638 = add nuw nsw i64 %indvars.iv1637, 4 ; 2 uses
  %indvars1640 = trunc i64 %indvars.iv.next1638 to i32
  %.not1354 = icmp eq i32 %i.by, %indvars1640
  br i1 %.not1354, label %.loopexit1597.loopexit, label %bb.i

.loopexit1597.loopexit:                           ; preds = %bb.i
  %i.cx = zext nneg i32 %i.by to i64
  br label %.loopexit1597

.loopexit1597:                                    ; preds = %.loopexit1597.loopexit, %bb.g
  %.41323 = phi i64 [ 0, %bb.g ], [ %i.cx, %.loopexit1597.loopexit ]
  %.not1355 = icmp eq i32 %i.bu, 0
  br i1 %.not1355, label %.loopexit1596, label %.preheader1595

.preheader1595:                                   ; preds = %.loopexit1597, %.preheader1595
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643, %.preheader1595 ], [ %.41323, %.loopexit1597 ] ; 2 uses
  %.01309 = phi i32 [ %i.de, %.preheader1595 ], [ 0, %.loopexit1597 ]
  %indvars.iv1642.tr = trunc i64 %indvars.iv1642 to i32
  %i.cy = shl i32 %indvars.iv1642.tr, 2
  %i.cz = add i32 %i.cy, %.0.copyload.i1516
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %.val1433 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val1433, i64 %i.da
  %.0.copyload.i1521 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1521) #8, !srcloc !13
  %i.dc = xor i32 %.0.copyload.i1521, -1
  %.val1466 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.da
  store i32 %i.dc, ptr %i.dd, align 1
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1
  %i.de = add nuw nsw i32 %.01309, 1              ; 2 uses
  %.not1356 = icmp eq i32 %i.de, %i.bu
  br i1 %.not1356, label %.loopexit1596, label %.preheader1595

.loopexit1596:                                    ; preds = %.preheader1595, %.loopexit1597, %.loopexit1599
  %.val1432 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val1432, i64 %i.f
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.0.copyload.i1522 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1522) #8, !srcloc !13
  %i.dh = icmp ult i32 %i.bs, %.0.copyload.i1522
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit1596
  %.val1431 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val1431, i64 %i.f
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %.0.copyload.i1523 = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1523) #8, !srcloc !13
  %i.dk = shl nuw nsw i32 %i.bs, 2
  %i.dl = add i32 %.0.copyload.i1523, %i.dk
  %i.dm = sub nuw i32 %.0.copyload.i1522, %i.bs
  %i.dn = shl i32 %i.dm, 2
  %i.do = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dl, i32 noundef 0, i32 noundef %i.dn) #8 ; 0 uses
  %.val1430 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1430, i64 %i.g
  %.0.copyload.i1524 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1524) #8, !srcloc !13
  br label %bb.k

bb.k:                                             ; preds = %.loopexit1596, %bb.j
  %.11297 = phi i32 [ %.0.copyload.i1524, %bb.j ], [ %.0.copyload.i1515, %.loopexit1596 ]
  %i.dq = and i32 %.11297, 31                     ; 2 uses
  %.not1357 = icmp eq i32 %i.dq, 0
  br i1 %.not1357, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = zext i32 %i.a to i64
  %.val1429 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1429, i64 %i.dr
  %.0.copyload.i1525 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1525) #8, !srcloc !13
  %i.dt = shl nuw nsw i32 %i.bs, 2
  %i.du = add nsw i32 %i.dt, -4
  %i.dv = add i32 %i.du, %.0.copyload.i1525
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.val1428 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.dw
  %.0.copyload.i1526 = load i32, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1526) #8, !srcloc !13
  %i.dy = shl nsw i32 -1, %i.dq
  %i.dz = xor i32 %i.dy, -1
  %i.ea = and i32 %.0.copyload.i1526, %i.dz
  %.val1465 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.dw
  store i32 %i.ea, ptr %i.eb, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ec = zext i32 %3 to i64                      ; 5 uses
  %.val1427 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1427, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.0.copyload.i1527 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1527) #8, !srcloc !13
  %.not1358 = icmp eq i32 %.0.copyload.i1527, 0
  %.val1426 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1426, i64 %i.g
  %.0.copyload.i1528 = load i32, ptr %i.ef, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1528) #8, !srcloc !13
  %.not1359 = icmp eq i32 %.0.copyload.i1528, 0
  br i1 %.not1359, label %..loopexit_crit_edge, label %bb.n

..loopexit_crit_edge:                             ; preds = %bb.m
  %.pre = zext i32 %i.a to i64
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1425, i64 %i.d
  %.0.copyload.i1529 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1529) #8, !srcloc !13
  %i.eh = sub i32 0, %.0.copyload.i1528
  %i.ei = and i32 %i.eh, 31
  %i.ej = lshr i32 -1, %i.ei
  %i.ek = add i32 %.0.copyload.i1528, -1
  %i.el = lshr i32 %i.ek, 5
  %i.em = zext i32 %i.a to i64                    ; 8 uses
  %.val1424 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.em
  %.0.copyload.i1530 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1530) #8, !srcloc !13
  %i.eo = zext nneg i32 %i.el to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %indvars.iv1645 = phi i64 [ %indvars.iv.next1646, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %indvars.iv1645.tr = trunc i64 %indvars.iv1645 to i32
  %i.ep = shl i32 %indvars.iv1645.tr, 2
  %i.eq = add i32 %i.ep, %.0.copyload.i1530
  %i.er = zext i32 %i.eq to i64
  %.val1423 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.val1423, i64 %i.er
  %.0.copyload.i1531 = load i32, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1531) #8, !srcloc !13
  %.not1385 = icmp eq i64 %indvars.iv1645, %i.eo  ; 2 uses
  %i.et = select i1 %.not1385, i32 %i.ej, i32 -1
  %i.eu = and i32 %.0.copyload.i1531, %i.et       ; 2 uses
  %.not1360 = icmp eq i32 %i.eu, 0
  br i1 %.not1360, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1
  br i1 %.not1385, label %.loopexit, label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.ev = trunc nuw nsw i64 %indvars.iv1645 to i32
  %i.ew = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eu, i1 true)
  %i.ex = shl i32 %i.ev, 5
  %i.ey = or disjoint i32 %i.ew, %i.ex            ; 3 uses
  %i.ez = icmp ne i32 %i.ey, -1
end_hunk_8
