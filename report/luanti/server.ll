Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server19sendMetadataChangedERKSt13unordered_setIN4core8vector3dIsEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EEf:bb.a
  %i.bq = fdiv nsz <2 x float> %i.bp, splat (float 1.000000e+01)
  %i.br = fptosi <2 x float> %i.bq to <2 x i16>
  %i.bs = fadd nsz float %.sroa.22.0.copyload.i, %i.bm
  %i.bt = fdiv nsz float %i.bs, 1.000000e+01
  %i.bu = fptosi float %i.bt to i16
  br label %_ZN6Server12getPlayerSAOEt.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZN6Server12getPlayerSAOEt.exit.thread:           ; preds = %.noexc86, %bb.m, %_ZN6Server12getPlayerSAOEt.exit
  %.sroa.8172.0 = phi i16 [ 0, %_ZN6Server12getPlayerSAOEt.exit ], [ %i.bu, %bb.m ], [ 0, %.noexc86 ]
  %i.bx = phi <2 x i16> [ zeroinitializer, %_ZN6Server12getPlayerSAOEt.exit ], [ %i.br, %bb.m ], [ zeroinitializer, %.noexc86 ] ; 2 uses
  %.sroa.0168.0238 = load ptr, ptr %i.m, align 8, !tbaa !439 ; 2 uses
  %.not183239 = icmp eq ptr %.sroa.0168.0238, null
  br i1 %.not183239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Server12getPlayerSAOEt.exit.thread
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.cc = extractelement <2 x i16> %i.bx, i64 0
  %i.cd = extractelement <2 x i16> %i.bx, i64 1
  br label %bb.p

._crit_edge:                                      ; preds = %bb.ae, %_ZN6Server12getPlayerSAOEt.exit.thread
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !412
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.as, label %._crit_edge.i.i

bb.p:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.0168.0240 = phi ptr [ %.sroa.0168.0238, %.lr.ph ], [ %.sroa.0168.0, %bb.ae ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0168.0240, i64 8
  %.sroa.0144.0.copyload = load i32, ptr %i.cg, align 2 ; 6 uses
  %i.ch = trunc i32 %.sroa.0144.0.copyload to i16 ; 2 uses
  %i.ci = lshr i32 %.sroa.0144.0.copyload, 16
  %i.cj = trunc nuw i32 %i.ci to i16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0168.0240, i64 12
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !491 ; 3 uses
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !297
  %i.cl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.ck)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = zext i32 %.sroa.0144.0.copyload to i48
  %.sroa.9.0.insert.ext163 = zext i16 %.sroa.9.0.copyload to i48
  %.sroa.9.0.insert.shift164 = shl nuw i48 %.sroa.9.0.insert.ext163, 32 ; 2 uses
  %.sroa.0144.0.insert.insert150 = or disjoint i48 %.sroa.9.0.insert.shift164, %i.cm ; 2 uses
  %i.cn = invoke noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.cl, i48 %.sroa.0144.0.insert.insert150)
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not76 = icmp eq ptr %i.cn, null
  br i1 %.not76, label %bb.ae, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.t:                                             ; preds = %bb.r
  %sext = shl i32 %.sroa.0144.0.copyload, 16
  %i.cp = ashr exact i32 %sext, 16                ; 2 uses
  %i.cq = add nsw i32 %i.cp, -15
  %i.cr = icmp slt i16 %i.ch, 0
  %i.cs = select i1 %i.cr, i32 %i.cq, i32 %i.cp
  %i.ct = sdiv i32 %i.cs, 16                      ; 3 uses
  %i.cu = ashr i32 %.sroa.0144.0.copyload, 16     ; 2 uses
  %i.cv = add nsw i32 %i.cu, -15
  %i.cw = icmp slt i32 %.sroa.0144.0.copyload, 0
  %i.cx = select i1 %i.cw, i32 %i.cv, i32 %i.cu
  %i.cy = sdiv i32 %i.cx, 16                      ; 3 uses
  %i.cz = sext i16 %.sroa.9.0.copyload to i32     ; 2 uses
  %i.da = add nsw i32 %i.cz, -15
  %i.db = icmp slt i48 %.sroa.9.0.insert.shift164, 0
  %i.dc = select i1 %i.db, i32 %i.da, i32 %i.cz
  %i.dd = sdiv i32 %i.dc, 16                      ; 3 uses
  %.mask.i.i = and i32 %i.dd, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.de = shl nsw i32 %i.cy, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.de to i48
  %.mask5.i.i = and i32 %i.ct, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.df = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.df, %.sroa.2.0.insert.shift.i.i
  %.sroa.02.0.extract.trunc.i = trunc nsw i32 %i.ct to i16 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nsw i32 %i.cy to i16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nsw i32 %i.dd to i16 ; 2 uses
  %i.dg = load i64, ptr %i.by, align 8, !tbaa !532
  %.not.not.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.not.i.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.sroa.06.012.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !439 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.sroa.06.012.i.i.i, null
  br i1 %.not13.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i
  %.sroa.06.014.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i ], [ %.sroa.06.012.i.i.i, %bb.u ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 8
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !413
  %i.dj = icmp eq i16 %i.di, %.sroa.02.0.extract.trunc.i
  br i1 %i.dj, label %bb.v, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 10
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !414
  %i.dm = icmp eq i16 %i.dl, %.sroa.3.0.extract.trunc.i
  br i1 %i.dm, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i: ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 12
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !415
  %i.dp = icmp eq i16 %i.do, %.sroa.5.0.extract.trunc.i
  br i1 %i.dp, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, %bb.v, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.014.i.i.i, align 8, !tbaa !439 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i87, label %.thread, label %.lr.ph.i.i.i, !llvm.loop !48

bb.w:                                             ; preds = %bb.t
  %i.dq = sext i32 %i.ct to i64                   ; 2 uses
  %i.dr = sext i32 %i.cy to i64                   ; 2 uses
  %i.ds = sext i32 %i.dd to i64
  %i.dt = call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 40)
  %i.du = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 16)
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = xor i64 %i.dv, %i.ds                    ; 2 uses
  %i.dx = load i64, ptr %i.ca, align 8, !tbaa !509 ; 2 uses
  %i.dy = urem i64 %i.dw, %i.dx                   ; 2 uses
  %i.dz = load ptr, ptr %i.bz, align 8, !tbaa !508
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !492 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !439 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !676
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %i.ed = phi i64 [ %.pre.i.i.i.i.i, %bb.x ], [ %i.er, %bb.ab ]
  %i.ee = phi ptr [ %i.ec, %bb.x ], [ %i.ep, %bb.ab ] ; 4 uses
  %i.ef = icmp eq i64 %i.dw, %i.ed
  br i1 %i.ef, label %bb.z, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !413
  %i.ei = icmp eq i16 %i.eh, %.sroa.02.0.extract.trunc.i
  br i1 %i.ei, label %bb.aa, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !414
  %i.el = icmp eq i16 %i.ek, %.sroa.3.0.extract.trunc.i
  br i1 %i.el, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.en = load i16, ptr %i.em, align 2, !tbaa !415
  %i.eo = icmp eq i16 %i.en, %.sroa.5.0.extract.trunc.i
  br i1 %i.eo, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, %bb.aa, %bb.z, %bb.y
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !439 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not18.i.i.i.i.i, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !676 ; 2 uses
  %i.es = urem i64 %i.er, %i.dx
  %.not19.i.i.i.i.i = icmp eq i64 %i.es, %i.dy
  br i1 %.not19.i.i.i.i.i, label %bb.y, label %.thread, !llvm.loop !49

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i
  %i.et = sub i16 %i.cc, %i.ch
  %i.eu = sub i16 %i.cd, %i.cj
  %i.ev = sub i16 %.sroa.8172.0, %.sroa.9.0.copyload
  %i.ew = sext i16 %i.et to i32                   ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.ew
  %i.ey = sext i16 %i.eu to i32                   ; 2 uses
  %i.ez = mul nsw i32 %i.ey, %i.ey
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  %i.fb = sext i16 %i.ev to i32                   ; 2 uses
  %i.fc = mul nsw i32 %i.fb, %i.fb
  %i.fd = add nuw nsw i32 %i.fa, %i.fc
  %i.fe = uitofp nsz nneg i32 %i.fd to float
  %i.ff = call nsz noundef float @llvm.sqrt.f32(float %i.fe)
  %i.fg = fptosi float %i.ff to i32
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = sitofp i16 %i.fh to float
  %i.fj = fcmp nsz olt float %2, %i.fi
  br i1 %i.fj, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ab, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS3_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i, %bb.u, %bb.w, %.loopexit
  invoke void @_ZN12RemoteClient15SetBlockNotSentEN4core8vector3dIsEEb(ptr noundef nonnull align 8 dereferenceable(568) %i.be, i48 %.sroa.0.0.insert.insert.i.i, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.thread
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ad:                                            ; preds = %.loopexit
  invoke void @_ZN16NodeMetadataList3setEN4core8vector3dIsEEP12NodeMetadata(ptr noundef nonnull align 8 dereferenceable(56) %3, i48 %.sroa.0144.0.insert.insert150, ptr noundef nonnull %i.cn)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %.thread, %bb.ad, %bb.r
  %.sroa.0168.0 = load ptr, ptr %.sroa.0168.0240, align 8, !tbaa !439 ; 2 uses
  %.not183 = icmp eq ptr %.sroa.0168.0, null
  br i1 %.not183, label %._crit_edge, label %bb.p

._crit_edge.i.i:                                  ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr %i.n, ptr %6, align 8, !tbaa !144
  store i64 0, ptr %i.o, align 8, !tbaa !146
  store i8 0, ptr %i.n, align 8, !tbaa !120
  %i.fl = load i64, ptr %i.r, align 8, !tbaa !146
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.fl, ptr noundef nonnull %i.n, i64 noundef 0)
          to label %.noexc90 unwind label %bb.at  ; 0 uses

.noexc90:                                         ; preds = %._crit_edge.i.i
  %i.fn = load i32, ptr %i.s, align 8, !tbaa !735
  %i.fo = and i32 %i.fn, 3
  %.not.i.i.i89 = icmp eq i32 %i.fo, 0
  %i.fp = load i64, ptr %i.r, align 8
  %.0.i.i.i = select i1 %.not.i.i.i89, i64 0, i64 %i.fp
  %i.fq = load ptr, ptr %i.q, align 8, !tbaa !140
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef %i.fq, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.at

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc90
  %i.fr = load ptr, ptr %6, align 8, !tbaa !140   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.n
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.ft = load i64, ptr %i.n, align 8, !tbaa !120
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !tbaa !683
  invoke void @_ZNK16NodeMetadataList9serializeERSohbbb(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef zeroext %i.fw, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.o

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  store ptr %i.t, ptr %7, align 8, !tbaa !144, !alias.scope !1212
  store i64 0, ptr %i.u, align 8, !tbaa !146, !alias.scope !1212
  store i8 0, ptr %i.t, align 8, !tbaa !120, !alias.scope !1212
  %i.fx = load ptr, ptr %i.v, align 8, !tbaa !565, !noalias !1212 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fx, null
  %i.fy = load ptr, ptr %i.w, align 8, !noalias !1212 ; 2 uses
  %i.fz = icmp ugt ptr %i.fx, %i.fy
  %.08.i.i.i = select i1 %i.fz, ptr %i.fx, ptr %i.fy ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !566, !noalias !1212 ; 2 uses
  %i.gb = ptrtoint ptr %.08.i.i.i to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ga, i64 noundef %i.gd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %7, align 8, !tbaa !140, !alias.scope !1212 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.t
  br i1 %i.gh, label %.body, label %.body.sink.split

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %i.y, ptr %8, align 8, !tbaa !144
  store i64 0, ptr %i.z, align 8, !tbaa !146
  store i8 0, ptr %i.y, align 8, !tbaa !120
  %i.gi = load i64, ptr %i.r, align 8, !tbaa !146
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.gi, ptr noundef nonnull %i.y, i64 noundef 0)
          to label %.noexc98 unwind label %bb.au  ; 0 uses

.noexc98:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gk = load i32, ptr %i.s, align 8, !tbaa !735
  %i.gl = and i32 %i.gk, 3
  %.not.i.i.i96 = icmp eq i32 %i.gl, 0
  %i.gm = load i64, ptr %i.r, align 8
  %.0.i.i.i97 = select i1 %.not.i.i.i96, i64 0, i64 %i.gm
  %i.gn = load ptr, ptr %i.q, align 8, !tbaa !140
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef %i.gn, i64 noundef 0, i64 noundef %.0.i.i.i97)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit100 unwind label %bb.au

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit100: ; preds = %.noexc98
  %i.go = load ptr, ptr %8, align 8, !tbaa !140   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.y
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit100
  %i.gq = load i64, ptr %i.y, align 8, !tbaa !120
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.gs = load ptr, ptr %7, align 8, !tbaa !140
  %i.gt = load i64, ptr %i.u, align 8, !tbaa !146
  invoke void @_Z12compressZlibPKhmRSoi(ptr noundef %i.gs, i64 noundef %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef -1)
          to label %bb.aj unwind label %bb.av

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, i8 0, i64 32, i1 false)
  store i16 89, ptr %i.aa, align 8, !tbaa !305
  store i16 %i.bd, ptr %i.ab, align 2, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  store ptr %i.ac, ptr %10, align 8, !tbaa !144, !alias.scope !1215
  store i64 0, ptr %i.ad, align 8, !tbaa !146, !alias.scope !1215
  store i8 0, ptr %i.ac, align 8, !tbaa !120, !alias.scope !1215
  %i.gu = load ptr, ptr %i.v, align 8, !tbaa !565, !noalias !1215 ; 3 uses
  %.not.i.not.i.i107 = icmp eq ptr %i.gu, null
  %i.gv = load ptr, ptr %i.w, align 8, !noalias !1215 ; 2 uses
  %i.gw = icmp ugt ptr %i.gu, %i.gv
  %.08.i.i.i108 = select i1 %i.gw, ptr %i.gu, ptr %i.gv ; 2 uses
  %.not5.i.i109 = icmp eq ptr %.08.i.i.i108, null
  %.not.i.i110 = select i1 %.not.i.not.i.i107, i1 true, i1 %.not5.i.i109
  br i1 %.not.i.i110, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = load ptr, ptr %i.x, align 8, !tbaa !566, !noalias !1215 ; 2 uses
  %i.gy = ptrtoint ptr %.08.i.i.i108 to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.gx, i64 noundef %i.ha)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %10, align 8, !tbaa !140, !alias.scope !1215 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ac
  br i1 %i.he, label %.body114, label %.body114.sink.split

bb.am:                                            ; preds = %bb.aj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116 unwind label %bb.al

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116: ; preds = %bb.am, %bb.ak
  %i.hf = load ptr, ptr %10, align 8, !tbaa !140
  %i.hg = load i64, ptr %i.ad, align 8, !tbaa !146
  invoke void @_ZN13NetworkPacket13putLongStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(36) %9, i64 %i.hg, ptr %i.hf)
          to label %bb.an unwind label %bb.aw

bb.an:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116
  %i.hh = load ptr, ptr %10, align 8, !tbaa !140  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ac
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.an
  %i.hj = load i64, ptr %i.ac, align 8, !tbaa !120
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.hl = load i16, ptr %i.ab, align 2, !tbaa !306 ; 2 uses
  %i.hm = icmp eq i16 %i.hl, 0
  br i1 %i.hm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.6, i32 noundef 1461, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN6Server4SendEP13NetworkPacket) #35
          to label %.noexc122 unwind label %.loopexit.split-lp

end_hunk_0
