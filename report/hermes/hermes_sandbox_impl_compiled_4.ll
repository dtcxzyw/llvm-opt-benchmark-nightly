Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_4?download=true
inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeJoin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.bf:                                            ; preds = %bb.be
  %.val1361 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1361, i64 %i.e
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %.0.copyload.i1419 = load i32, ptr %i.kq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1419) #6, !srcloc !24
  %i.kr = zext i32 %.0.copyload.i1419 to i64
  %i.ks = or disjoint i64 %i.kr, -844424930131968 ; 2 uses
  %.val1264 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1264, i64 %i.i
  %.0.copyload.i1420 = load i32, ptr %i.kt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1420) #6, !srcloc !13
  %i.ku = zext i32 %.0.copyload.i1420 to i64      ; 2 uses
  %i.kv = add nuw nsw i64 %i.ku, 164              ; 2 uses
  %.val1263 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1263, i64 %i.kv
  %.0.copyload.i1421 = load i32, ptr %i.kw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1421) #6, !srcloc !13
  %.val1262 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1262, i64 %i.ku
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 168
  %.0.copyload.i1422 = load i32, ptr %i.ky, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1422) #6, !srcloc !13
  %i.kz = icmp ult i32 %.0.copyload.i1421, %.0.copyload.i1422
  br i1 %i.kz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.la = add i32 %.0.copyload.i1421, 8
  %.val1306 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1306, i64 %i.kv
  store i32 %i.la, ptr %i.lb, align 1
  %i.lc = zext i32 %.0.copyload.i1421 to i64
  %.val1224 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1224, i64 %i.lc
  store i64 %i.ks, ptr %i.ld, align 1
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.le = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1420, i64 noundef %i.ks) #6
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.4 = phi i32 [ %.0.copyload.i1421, %bb.bg ], [ %i.le, %bb.bh ]
  %.val1305 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1305, i64 %i.e
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 0, ptr %i.lg, align 1
  %i.lh = add nuw nsw i64 %i.e, 8                 ; 2 uses
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.lh
  store i32 %.4, ptr %i.li, align 1
  %.val1241 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1241, i64 %i.e
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 20
  store i8 1, ptr %i.lk, align 1
  %.val1303 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1303, i64 %i.e
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i32 %3, ptr %i.lm, align 1
  %.val1261 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ln = getelementptr inbounds nuw i8, ptr %.val1261, i64 %i.i
  %.0.copyload.i1423 = load i32, ptr %i.ln, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1423) #6, !srcloc !13
  %i.lo = zext i32 %.0.copyload.i1423 to i64      ; 2 uses
  %i.lp = add nuw nsw i64 %i.lo, 164              ; 2 uses
  %.val1260 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1260, i64 %i.lp
  %.0.copyload.i1424 = load i32, ptr %i.lq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1424) #6, !srcloc !13
  %.val1259 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1259, i64 %i.lo
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 168
  %.0.copyload.i1425 = load i32, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1425) #6, !srcloc !13
  %i.lt = icmp ult i32 %.0.copyload.i1424, %.0.copyload.i1425
  br i1 %i.lt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lu = add i32 %.0.copyload.i1424, 8
  %.val1302 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1302, i64 %i.lp
  store i32 %i.lu, ptr %i.lv, align 1
  %i.lw = zext i32 %.0.copyload.i1424 to i64
  %.val1223 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1223, i64 %i.lw
  store i64 -844424930131968, ptr %i.lx, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ly = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1423, i64 noundef -844424930131968) #6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.11179 = phi i32 [ %.0.copyload.i1424, %bb.bj ], [ %i.ly, %bb.bk ] ; 3 uses
  %i.lz = zext i32 %i.fj to i64                   ; 2 uses
  %.val1258 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1258, i64 %i.lz
  %.0.copyload.i1426 = load i32, ptr %i.ma, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1426) #6, !srcloc !13
  %i.mb = zext i32 %.0.copyload.i1426 to i64      ; 3 uses
  %.val1257 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %.val1257, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  %.0.copyload.i1427 = load i32, ptr %i.md, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1427) #6, !srcloc !13
  %.not1217 = icmp eq i32 %.0.copyload.i1427, 0
  br i1 %.not1217, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.val1256 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %.val1256, i64 %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %.0.copyload.i1428 = load i32, ptr %i.mf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1428) #6, !srcloc !13
  %.not1218 = icmp eq i32 %.0.copyload.i1428, 0
  br i1 %.not1218, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val1255 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1255, i64 %i.mb
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 28
  %.0.copyload.i1429 = load i32, ptr %i.mh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1429) #6, !srcloc !13
  %i.mi = zext i32 %.0.copyload.i1429 to i64
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.0.copyload.i1430 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1430) #6, !srcloc !24
  %i.ml = and i32 %.0.copyload.i1430, -8
  %i.mm = zext i32 %i.ml to i64
  %i.mn = or disjoint i64 %i.mm, -844424930131968
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bn
  %.21175 = phi i64 [ -844424930131968, %bb.bl ], [ -844424930131968, %bb.bm ], [ %i.mn, %bb.bn ] ; 2 uses
  %i.mo = zext i32 %.11179 to i64                 ; 2 uses
  %.val1222 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1222, i64 %i.mo
  store i64 %.21175, ptr %i.mp, align 1
  %i.mq = add i32 %i.b, -440                      ; 3 uses
  %i.mr = and i64 %.21175, 4294967295
  %.val1254 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %.val1254, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %.0.copyload.i1431 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1431) #6, !srcloc !13
  %i.mu = and i32 %.0.copyload.i1431, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.11179, i32 noundef %i.mu)
  %.not1219 = icmp eq i64 %.0.copyload.i1387, 1
  br i1 %.not1219, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bo
  %i.mv = zext i32 %.01186 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader, %bb.bv
  %.5 = phi i32 [ %i.oh, %bb.bv ], [ 1, %.preheader ] ; 4 uses
  %.val1253 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mw = getelementptr inbounds nuw i8, ptr %.val1253, i64 %i.mv
  %.0.copyload.i1432 = load i32, ptr %i.mw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1432) #6, !srcloc !13
  %i.mx = zext i32 %.0.copyload.i1432 to i64
  %.val1252 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val1252, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.0.copyload.i1433 = load i32, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1433) #6, !srcloc !13
  %i.na = and i32 %.0.copyload.i1433, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.01186, i32 noundef %i.na)
  %.val1251 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1251, i64 %i.lz
  %.0.copyload.i1434 = load i32, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1434) #6, !srcloc !13
  %i.nc = zext i32 %.0.copyload.i1434 to i64      ; 3 uses
  %.val1250 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1250, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  %.0.copyload.i1435 = load i32, ptr %i.ne, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1435) #6, !srcloc !13
  %i.nf = icmp ult i32 %.5, %.0.copyload.i1435
  br i1 %i.nf, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val1249 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ng = getelementptr inbounds nuw i8, ptr %.val1249, i64 %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %.0.copyload.i1436 = load i32, ptr %i.nh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1436) #6, !srcloc !13
  %.not1220 = icmp ugt i32 %.0.copyload.i1436, %.5
  br i1 %.not1220, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %.val1248 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %.val1248, i64 %i.nc
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %.0.copyload.i1437 = load i32, ptr %i.nj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1437) #6, !srcloc !13
  %i.nk = sub nuw i32 %.5, %.0.copyload.i1435     ; 4 uses
  %i.nl = icmp ult i32 %i.nk, 4096
  br i1 %i.nl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nm = shl nuw nsw i32 %i.nk, 2
  %i.nn = add i32 %.0.copyload.i1437, %i.nm
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.no = add i32 %i.nk, -4096
  %i.np = lshr i32 %i.no, 8
  %i.nq = and i32 %i.np, 16777212
  %i.nr = add nuw nsw i32 %i.nq, 16392
  %i.ns = add i32 %i.nr, %.0.copyload.i1437
  %i.nt = zext i32 %i.ns to i64
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.nt
  %.0.copyload.i1438 = load i32, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1438) #6, !srcloc !13
  %i.nv = shl i32 %i.nk, 2
  %i.nw = and i32 %i.nv, 4092
  %i.nx = add i32 %.0.copyload.i1438, %i.nw
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2.in = phi i32 [ %i.nn, %bb.bs ], [ %i.nx, %bb.bt ]
  %.2 = add i32 %.2.in, 8
  %i.ny = zext i32 %.2 to i64
  %.val1246 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1246, i64 %i.ny
  %.0.copyload.i1439 = load i32, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1439) #6, !srcloc !13
  %i.oa = and i32 %.0.copyload.i1439, -8
  %i.ob = zext i32 %i.oa to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bq, %bb.bp, %bb.bu
  %.21182 = phi i64 [ 0, %bb.bp ], [ 0, %bb.bq ], [ %i.ob, %bb.bu ] ; 2 uses
  %i.oc = or disjoint i64 %.21182, -844424930131968
  %.val1221 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %.val1221, i64 %i.mo
  store i64 %i.oc, ptr %i.od, align 1
  %.val1245 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1245, i64 %.21182
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %.0.copyload.i1440 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1440) #6, !srcloc !13
  %i.og = and i32 %.0.copyload.i1440, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.11179, i32 noundef %i.og)
  %i.oh = add nuw i32 %.5, 1                      ; 2 uses
  %i.oi = icmp ult i32 %i.oh, %i.fi
  br i1 %i.oi, label %bb.bp, label %.loopexit

.loopexit:                                        ; preds = %bb.bv, %bb.bo
  %.val1244 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oj = getelementptr inbounds nuw i8, ptr %.val1244, i64 %i.lh
  %.0.copyload.i1441 = load i32, ptr %i.oj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1441) #6, !srcloc !13
  %i.ok = zext i32 %.0.copyload.i1441 to i64
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.ok
  %.0.copyload.i1442 = load i32, ptr %i.ol, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1442) #6, !srcloc !24
  %i.om = zext i32 %.0.copyload.i1442 to i64
  %i.on = zext i32 %1 to i64                      ; 2 uses
  %.val1301 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1301, i64 %i.on
  store i32 1, ptr %i.oo, align 1
  %i.op = or disjoint i64 %i.om, -844424930131968
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.on
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i64 %i.op, ptr %i.or, align 1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.be
  %i.os = zext i32 %1 to i64
  %.val1300 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1300, i64 %i.os
  store i32 0, ptr %i.ot, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit, %.loopexit1483, %bb.ag, %bb.ae, %bb.ac, %bb.x, %bb.q, %bb.l
  %.val1243 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1243, i64 %i.bp
  %.0.copyload.i1443 = load i32, ptr %i.ou, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1443) #6, !srcloc !13
  %i.ov = add i32 %3, 5712
  %i.ow = zext i32 %i.ov to i64                   ; 2 uses
  %.val1242 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1242, i64 %i.ow
  %.0.copyload.i1444 = load i32, ptr %i.ox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1444) #6, !srcloc !13
  %i.oy = add i32 %.0.copyload.i1444, -4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.j, %bb.b
  %.sink1482 = phi i64 [ %i.ow, %bb.bx ], [ %i.bu, %bb.j ], [ %i.ai, %bb.b ]
  %.sink1480 = phi i32 [ %i.oy, %bb.bx ], [ 1, %bb.j ], [ 0, %bb.b ]
  %.val1299 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1299, i64 %.sink1482
  store i32 %.sink1480, ptr %i.oz, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #6
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIterator0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.e = zext i32 %4 to i64
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %.0.copyload.i) #6
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.g
  %.0.copyload.i96 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i96) #6, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i96, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %.val94 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.i
  store i32 0, ptr %i.j, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val95 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.0.copyload.i97 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i97) #6, !srcloc !24
  %i.m = zext i32 %.0.copyload.i97 to i64
  %i.n = or disjoint i64 %i.m, -281474976710656   ; 2 uses
  %i.o = zext i32 %3 to i64
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i98 = load i32, ptr %i.q, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i98) #6, !srcloc !13
  %i.r = zext i32 %.0.copyload.i98 to i64         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 164                ; 2 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.s
  %.0.copyload.i99 = load i32, ptr %i.t, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i99) #6, !srcloc !13
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %.0.copyload.i100 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i100) #6, !srcloc !13
  %i.w = icmp ult i32 %.0.copyload.i99, %.0.copyload.i100
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %.0.copyload.i99, 8
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.s
  store i32 %i.x, ptr %i.y, align 1
  %i.z = zext i32 %.0.copyload.i99 to i64
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.z
  store i64 %i.n, ptr %i.aa, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i98, i64 noundef %i.n) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %.0.copyload.i99, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0, i32 noundef %2) #6
  %i.ad = zext i32 %1 to i64                      ; 2 uses
  %.val92 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.ad
  store i32 1, ptr %i.ae, align 1
  %i.af = zext i32 %i.ac to i64
  %i.ag = or disjoint i64 %i.af, -281474976710656
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ag, ptr %i.ai, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIndexOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i14 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i14) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AindexOfHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i14, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIncludes0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = add i32 %i.b, -272                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 66 uses
  %i.e = zext i32 %i.c to i64                     ; 20 uses
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 5 uses
  %.val555 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val555, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val581 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val531 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 232                ; 3 uses
  %.val580 = load ptr, ptr %i.d, align 8, !tbaa !12
end_hunk_0
