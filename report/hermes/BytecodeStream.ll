inline.NumInlined: 652
inline.NumDeleted: 319
begin_hunk_0_@_ZN6hermes3hbc18BytecodeSerializer9serializeERNS0_14BytecodeModuleERKSt5arrayIhLm20EE:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 3
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !84
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 3
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !85
  store i64 2240826417119764422, ptr %3, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 96, ptr %i.ck, align 8, !tbaa !88
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.n, ptr %i.cm, align 8, !tbaa !89
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.p, ptr %i.cn, align 4, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.x, ptr %i.co, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.cq = load <2 x ptr>, ptr %i.y, align 8, !tbaa !92 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.z, align 8, !tbaa !93 ; 2 uses
  %i.cs = shufflevector <2 x ptr> %i.cq, <2 x ptr> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.ct = ptrtoint <2 x ptr> %i.cs to <2 x i64>
  %i.cu = shufflevector <2 x ptr> %i.cq, <2 x ptr> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.cv = ptrtoint <2 x ptr> %i.cu to <2 x i64>
  %i.cw = sub <2 x i64> %i.ct, %i.cv
  %i.cx = lshr exact <2 x i64> %i.cw, splat (i64 2)
  %i.cy = trunc <2 x i64> %i.cx to <2 x i32>
  store <2 x i32> %i.cy, ptr %i.cp, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.ai, ptr %i.cz, align 4, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ak, ptr %i.da, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.as, ptr %i.db, align 4, !tbaa !96
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.bb, ptr %i.dc, align 8, !tbaa !97
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %i.bj, ptr %i.dd, align 4, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %i.bs, ptr %i.de, align 8, !tbaa !99
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.dg = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !100 ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !100 ; 2 uses
  %i.dj = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !100 ; 2 uses
  %i.dk = shufflevector <2 x ptr> %i.dg, <2 x ptr> %i.dh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x ptr> %i.di, <2 x ptr> %i.dj, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.dm = shufflevector <4 x ptr> %i.dk, <4 x ptr> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dn = ptrtoint <4 x ptr> %i.dm to <4 x i64>
  %i.do = shufflevector <2 x ptr> %i.dg, <2 x ptr> %i.dh, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x ptr> %i.di, <2 x ptr> %i.dj, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.dq = shufflevector <4 x ptr> %i.do, <4 x ptr> %i.dp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dr = ptrtoint <4 x ptr> %i.dq to <4 x i64>
  %i.ds = sub <4 x i64> %i.dn, %i.dr
  %i.dt = trunc <4 x i64> %i.ds to <4 x i32>
  store <4 x i32> %i.dt, ptr %i.df, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 %i.by, ptr %i.du, align 4, !tbaa !101
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %i.l, ptr %i.dv, align 8, !tbaa !102
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 %i.ch, ptr %i.dw, align 4, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %i.cj, ptr %i.dx, align 8, !tbaa !104
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i8 %.sroa.0.0.copyload.i, ptr %i.dy, align 4, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cl, ptr noundef nonnull align 1 dereferenceable(20) %2, i64 20, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dz, i8 0, i64 19, i1 false), !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ed, ptr nonnull align 1 dereferenceable(128) %3, i64 128) #12
  %i.ee = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ef = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ee, ptr noundef nonnull align 1 dereferenceable(128) %3, i64 noundef 128) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit: ; preds = %bb.a, %bb.b
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !110
  %i.ei = add i64 %i.eh, 128
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !110
  call void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %1)
  %i.ej = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !111 ; 2 uses
  %.not6768 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not6768, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit
  call void @_ZN6hermes3hbc18BytecodeSerializer18serializeDebugInfoERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i8 0, i64 20, i1 false)
  %i.el = load i8, ptr %i.ea, align 8, !tbaa !105, !range !106, !noundef !107
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZSt4copyIPKcPhET0_T_S4_S3_.exit, label %bb.c

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit, %.lr.ph
  %.sroa.049.069 = phi ptr [ %i.eo, %.lr.ph ], [ %i.ej, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileHeaderEEEvRKT_.exit ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.049.069, align 8, !tbaa !112
  call void @_ZN6hermes3hbc18BytecodeSerializer21serializeFunctionInfoERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.049.069, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.eo, %i.ek
  br i1 %.not67, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eq = call { ptr, i64 } @_ZN4llvh4SHA16resultEv(ptr noundef nonnull align 4 dereferenceable(112) %i.ep) #12 ; 2 uses
  %i.er = extractvalue { ptr, i64 } %i.eq, 1      ; 2 uses
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKcPhET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.et = extractvalue { ptr, i64 } %i.eq, 0
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0, ptr align 1 %i.et, i64 %i.er, i1 false), !tbaa !18
  br label %_ZSt4copyIPKcPhET0_T_S4_S3_.exit

_ZSt4copyIPKcPhET0_T_S4_S3_.exit:                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.c, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i64 20, i1 false)
  %i.eu = load i8, ptr %i.ea, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit.thread, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit.thread: ; preds = %_ZSt4copyIPKcPhET0_T_S4_S3_.exit
  %i.ew = load i64, ptr %i.eg, align 8, !tbaa !110
  %i.ex = add i64 %i.ew, 20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.d

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit: ; preds = %_ZSt4copyIPKcPhET0_T_S4_S3_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ey, ptr nonnull align 1 dereferenceable(20) %4, i64 20) #12
  %i.ez = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ez, ptr noundef nonnull align 1 dereferenceable(20) %4, i64 noundef 20) #12 ; 0 uses
  %.pre = load i8, ptr %i.ea, align 8, !tbaa !105, !range !106
  %i.fb = trunc nuw i8 %.pre to i1
  %i.fc = load i64, ptr %i.eg, align 8, !tbaa !110
  %i.fd = add i64 %i.fc, 20                       ; 2 uses
  store i64 %i.fd, ptr %i.eg, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.fb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit
  %i.fe = phi i64 [ %i.ex, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit.thread ], [ %i.fd, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit ]
  %i.ff = trunc i64 %i.fe to i32
  store i32 %i.ff, ptr %i.m, align 4, !tbaa !23
  store i8 0, ptr %i.ea, align 8, !tbaa !105
  store i64 0, ptr %i.eg, align 8, !tbaa !110
  call void @_ZN6hermes3hbc18BytecodeSerializer9serializeERNS0_14BytecodeModuleERKSt5arrayIhLm20EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 1 dereferenceable(20) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_18BytecodeFileFooterEEEvRKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.f = and i64 %i.e, 3                          ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  %i.i = sub nuw nsw i32 4, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.j, align 8, !tbaa !105, !range !106, !noundef !107
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i.preheader, label %.lr.ph.split.i.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i.preheader: ; preds = %bb.b
  %i.n = or i64 %i.e, -4
  %sub = sub i64 %i.e, %i.n
  store i64 %sub, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit

.lr.ph.split.i.i:                                 ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i ], [ %i.e, %bb.b ]
  %.07.i.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 0, ptr %i.c, align 1, !tbaa !18
  %i.p = load i8, ptr %i.j, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.k, ptr nonnull align 1 dereferenceable(1) %i.c, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef 1) #12 ; 0 uses
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i: ; preds = %bb.c, %.lr.ph.split.i.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i.i ], [ %.pre.i.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.v = add nuw nsw i32 %.07.i.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.v, %i.i
  br i1 %exitcond.not.i, label %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit, label %.lr.ph.split.i.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i, %bb.a, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer22serializeFunctionTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.x)
  call void @_ZN6hermes3hbc18BytecodeSerializer16visitStringKindsEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer21visitIdentifierHashesEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer21visitSmallStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer24visitOverflowStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer18visitStringStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer16visitArrayBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer20visitObjectKeyBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer22visitObjectValueBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer16visitBigIntTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer18visitBigIntStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer16visitRegExpTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer18visitRegExpStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.y = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit
  %i.ab = trunc nuw nsw i64 %i.z to i32
  %i.ac = sub nuw nsw i32 4, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader, label %.lr.ph.split.i.i15

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader: ; preds = %bb.d
  %i.ah = or i64 %i.y, -4
  %sub33 = sub i64 %i.y, %i.ah
  store i64 %sub33, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit

.lr.ph.split.i.i15:                               ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18
  %i.ai = phi i64 [ %i.ao, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18 ], [ %i.y, %bb.d ]
  %.07.i.i16 = phi i32 [ %i.ap, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18 ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %i.aj = load i8, ptr %i.ad, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i.i15
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ae, ptr nonnull align 1 dereferenceable(1) %i.b, i64 1) #12
  %i.al = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i64 noundef 1) #12 ; 0 uses
  %.pre.i.i17 = load i64, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18: ; preds = %bb.e, %.lr.ph.split.i.i15
  %i.an = phi i64 [ %i.ai, %.lr.ph.split.i.i15 ], [ %.pre.i.i17, %bb.e ]
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ap = add nuw nsw i32 %.07.i.i16, 1           ; 2 uses
  %exitcond.not.i19 = icmp eq i32 %i.ap, %i.ac
  br i1 %exitcond.not.i19, label %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit, label %.lr.ph.split.i.i15, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18, %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.aq)
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !110 ; 4 uses
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit
  %i.au = trunc nuw nsw i64 %i.as to i32
  %i.av = sub nuw nsw i32 4, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !105, !range !106, !noundef !107
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i29.preheader, label %.lr.ph.split.i.i24

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i29.preheader: ; preds = %bb.f
  %i.ba = or i64 %i.ar, -4
  %sub34 = sub i64 %i.ar, %i.ba
  store i64 %sub34, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit

.lr.ph.split.i.i24:                               ; preds = %bb.f, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27
  %i.bb = phi i64 [ %i.bh, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27 ], [ %i.ar, %bb.f ]
  %.07.i.i25 = phi i32 [ %i.bi, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27 ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.bc = load i8, ptr %i.aw, align 8, !tbaa !105, !range !106, !noundef !107
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i.i24
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ax, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.be = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.be, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i.i26 = load i64, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27: ; preds = %bb.g, %.lr.ph.split.i.i24
  %i.bg = phi i64 [ %i.bb, %.lr.ph.split.i.i24 ], [ %.pre.i.i26, %bb.g ]
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bh, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bi = add nuw nsw i32 %.07.i.i25, 1           ; 2 uses
  %exitcond.not.i28 = icmp eq i32 %i.bi, %i.av
  br i1 %exitcond.not.i28, label %_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit, label %.lr.ph.split.i.i24, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27, %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i29.preheader
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer28serializeFunctionSourceTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.bj)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::DenseMap", align 8    ; 6 uses
  %3 = alloca %"struct.std::pair.62", align 8     ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 2 uses
  %.not4752 = icmp eq ptr %i.e, %i.g
  br i1 %.not4752, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

._crit_edge56.loopexit:                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31
  %.pre66 = load ptr, ptr %2, align 8, !tbaa !117
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %i.n = phi ptr [ %.pre66, %._crit_edge56.loopexit ], [ null, %bb.a ]
  call void @_ZdlPv(ptr noundef %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.b:                                             ; preds = %.lr.ph55, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31
  %.sroa.038.053 = phi ptr [ %i.e, %.lr.ph55 ], [ %i.du, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31 ] ; 8 uses
  %i.o = load i8, ptr %i.h, align 4, !tbaa !120, !range !106, !noundef !107
  %i.p = trunc nuw i8 %i.o to i1
  %.pre62 = load i8, ptr %i.i, align 8, !tbaa !105, !range !106 ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nuw i8 %.pre62 to i1
  %i.r = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.y = load i64, ptr %i.j, align 8, !tbaa !110
  %i.z = trunc i64 %i.y to i32
  store ptr %i.s, ptr %3, align 8, !tbaa !100
  store i64 %i.x, ptr %.sroa.436.0..sroa_idx, align 8, !tbaa !121
  store i32 %i.z, ptr %i.k, align 8, !tbaa !122, !alias.scope !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !127
  %i.aa = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !127
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !132, !noalias !127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !127
  br i1 %i.aa, label %.thread45, label %bb.e

.thread45:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ac = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !133
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E20InsertIntoBucketImplIS3_EEPS8_RKS3_RKT_SC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef %i.ab), !noalias !127 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 16, i1 false), !tbaa.struct !149, !noalias !127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.k, align 8, !tbaa !3, !noalias !127
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !3, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pre = load i8, ptr %i.i, align 8, !tbaa !105, !range !106
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !133
  %i.al = zext i32 %i.ak to i64
  %i.am = load i64, ptr %i.j, align 8, !tbaa !110
  %i.an = icmp ugt i64 %i.am, %i.al
  br i1 %i.an, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %.thread76

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.ao = phi i8 [ %.pre, %bb.e ], [ %.pre62, %bb.b ]
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.thread, label %.thread76

.thread:                                          ; preds = %bb.g
  %i.aq = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112 ; 3 uses
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.as, ptr %i.at, align 8, !tbaa !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !150
  %i.aw = zext i32 %i.av to i64
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

.thread76:                                        ; preds = %bb.f, %bb.g
  %i.ax = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !150
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr %i.ay, i64 %i.bb) #12
  %i.bc = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.bd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bc, ptr noundef %i.ay, i64 noundef %i.bb) #12 ; 0 uses
  %.pre63 = load i64, ptr %i.j, align 8, !tbaa !110
  %.pre64 = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %.thread, %.thread76
  %i.be = phi ptr [ %i.aq, %.thread ], [ %.pre64, %.thread76 ]
  %i.bf = phi i64 [ %i.ar, %.thread ], [ %.pre63, %.thread76 ]
  %i.bg = phi i64 [ %i.aw, %.thread ], [ %i.bb, %.thread76 ]
  %i.bh = add i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.j, align 8, !tbaa !110
  %i.bi = call { ptr, i64 } @_ZNK6hermes3hbc16BytecodeFunction17getJumpTablesOnlyEv(ptr noundef nonnull align 8 dereferenceable(104) %i.be) #12
  %i.bj = extractvalue { ptr, i64 } %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !110 ; 4 uses
  %i.bm = and i64 %i.bl, 3                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nuw nsw i64 %i.bm to i32
  %i.bp = sub nuw nsw i32 4, %i.bo
  %i.bq = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.i
  %i.bs = or i64 %i.bl, -4
  %sub = sub i64 %i.bl, %i.bs
  store i64 %sub, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.i, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.bt = phi i64 [ %i.bz, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.bl, %bb.i ]
  %.07.i = phi i32 [ %i.ca, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %i.bu = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.b, i64 1) #12
  %i.bw = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.bx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.j, %.lr.ph.split.i
  %i.by = phi i64 [ %i.bt, %.lr.ph.split.i ], [ %.pre.i, %bb.j ]
  %i.bz = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.bz, ptr %i.j, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ca = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.bp
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.h, %..loopexit_crit_edge.split.us.i
  %i.cb = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112
  %i.cc = call { ptr, i64 } @_ZNK6hermes3hbc16BytecodeFunction17getJumpTablesOnlyEv(ptr noundef nonnull align 8 dereferenceable(104) %i.cb) #12 ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 1
  %i.ce = shl i64 %i.cd, 2                        ; 3 uses
  %i.cf = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ch = extractvalue { ptr, i64 } %i.cc, 0      ; 2 uses
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr %i.ch, i64 %i.ce) #12
  %i.ci = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.cj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ci, ptr noundef %i.ch, i64 noundef %i.ce) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.k
  %i.ck = load i64, ptr %i.j, align 8, !tbaa !110
  %i.cl = add i64 %i.ck, %i.ce
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !110
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !151 ; 2 uses
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %.sroa.038.053, align 8, !tbaa !112
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !150
  %i.cq = zext i32 %i.cp to i64
  %i.cr = zext i32 %i.cm to i64
  %i.cs = mul nuw i64 %i.cq, %i.cr                ; 2 uses
  %i.ct = udiv i64 %i.cs, 100                     ; 2 uses
  %.not1949 = icmp ult i64 %i.cs, 100
  br i1 %.not1949, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.m
  %.pre65 = load i64, ptr %i.j, align 8, !tbaa !110
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.cu = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %._crit_edge.split.us, label %.lr.ph.split

._crit_edge.split.us:                             ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.j, align 8, !tbaa !110
  %i.cw = add i64 %.promoted, %i.ct               ; 2 uses
  store i64 %i.cw, ptr %i.j, align 8, !tbaa !110
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit
  %.050 = phi i64 [ %i.cx, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit ], [ %i.ct, %.lr.ph ]
  %i.cx = add i64 %.050, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 0, ptr %i.d, align 1, !tbaa !18
  %i.cy = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.d, i64 1) #12
  %i.da = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.db = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.da, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 noundef 1) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit: ; preds = %.lr.ph.split, %bb.n
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !110
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not19 = icmp eq i64 %i.cx, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.split, !llvm.loop !152

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit, %.._crit_edge_crit_edge, %._crit_edge.split.us
  %i.de = phi i64 [ %.pre65, %.._crit_edge_crit_edge ], [ %i.cw, %._crit_edge.split.us ], [ %i.dd, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit ] ; 4 uses
  %i.df = and i64 %i.de, 3                        ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.dh = trunc nuw nsw i64 %i.df to i32
  %i.di = sub nuw nsw i32 4, %i.dh
  %i.dj = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %..loopexit_crit_edge.split.us.i30, label %.lr.ph.split.i24

..loopexit_crit_edge.split.us.i30:                ; preds = %bb.o
  %i.dl = or i64 %i.de, -4
  %sub75 = sub i64 %i.de, %i.dl
  store i64 %sub75, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31

.lr.ph.split.i24:                                 ; preds = %bb.o, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27
  %i.dm = phi i64 [ %i.ds, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27 ], [ %i.de, %bb.o ]
  %.07.i25 = phi i32 [ %i.dt, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27 ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.dn = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.i24
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.dp = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i26 = load i64, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27: ; preds = %bb.p, %.lr.ph.split.i24
  %i.dr = phi i64 [ %i.dm, %.lr.ph.split.i24 ], [ %.pre.i26, %bb.p ]
  %i.ds = add i64 %i.dr, 1                        ; 2 uses
  store i64 %i.ds, ptr %i.j, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dt = add nuw nsw i32 %.07.i25, 1             ; 2 uses
  %exitcond60.not = icmp eq i32 %i.dt, %i.di
  br i1 %exitcond60.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %.lr.ph.split.i24, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31:  ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27, %.thread45, %..loopexit_crit_edge.split.us.i30, %._crit_edge, %bb.l, %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.053, i64 8 ; 2 uses
  %.not47 = icmp eq ptr %i.du, %i.g
  br i1 %.not47, label %._crit_edge56.loopexit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21serializeFunctionInfoERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.hermes::hbc::FunctionHeader", align 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !105, !range !106, !noundef !107 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !110
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 3
  %i.i = and i32 %i.h, -4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.i, ptr %i.j, align 8, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %2, ptr noundef nonnull align 8 dereferenceable(31) %i.k, i64 31, i1 false), !tbaa.struct !154
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.m = load i8, ptr %i.l, align 2, !tbaa !18
  %i.n = load <4 x i32>, ptr %2, align 16
  %.fr = freeze <4 x i32> %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 16
  %.fr44 = freeze i32 %i.p
  %i.q = icmp ult i32 %.fr44, 33554432
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %.fr42 = freeze i32 %i.s
  %i.t = icmp ult i32 %.fr42, 128
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %.fr46 = freeze i32 %i.v
  %i.w = icmp ult i32 %.fr46, 256
  %i.x = and i8 %i.m, 32
  %i.y = icmp eq i8 %i.x, 0
  %i.z = icmp ugt <4 x i32> %.fr, <i32 33554431, i32 127, i32 32767, i32 131071>
  %i.aa = bitcast <4 x i1> %i.z to i4
  %i.ab = icmp eq i4 %i.aa, 0
  %op.rdx = and i1 %i.ab, %i.q
  %i.ac = and i1 %op.rdx, %i.t
  %op.rdx40 = and i1 %i.ac, %i.w
  %op.rdx41 = select i1 %op.rdx40, i1 %i.y, i1 false
  br i1 %op.rdx41, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !110 ; 4 uses
  %i.af = and i64 %i.ae, 3                        ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ah = trunc nuw nsw i64 %i.af to i32
  %i.ai = sub nuw nsw i32 4, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.d, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread, label %.lr.ph.split.i

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread: ; preds = %bb.d
  %3 = xor i64 %i.af, 3
  %4 = add i64 %i.ae, %3
  %i.ak = add i64 %4, 1
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit

.lr.ph.split.i:                                   ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.al = phi i64 [ %i.ar, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.ae, %bb.d ]
  %.07.i = phi i32 [ %i.as, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.am = load i8, ptr %i.b, align 8, !tbaa !105, !range !106, !noundef !107
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aj, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.ao = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.e, %.lr.ph.split.i
  %i.aq = phi i64 [ %i.al, %.lr.ph.split.i ], [ %.pre.i, %bb.e ]
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.as = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.ai
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %.pre = load i8, ptr %i.b, align 8, !tbaa !105, !range !106
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, %.critedge
  %i.at = phi i64 [ %i.ar, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.ae, %.critedge ]
  %i.au = phi i8 [ %.pre, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.c, %.critedge ]
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aw, ptr nonnull align 1 dereferenceable(31) %2, i64 31) #12
  %i.ax = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, ptr noundef nonnull align 1 dereferenceable(31) %2, i64 noundef 31) #12 ; 0 uses
  %.pre37 = load i64, ptr %i.ad, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.f
  %i.az = phi i64 [ %i.at, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre37, %bb.f ], [ %i.ak, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread ]
  %i.ba = add i64 %i.az, 31
  store i64 %i.ba, ptr %i.ad, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit
  call void @_ZN6hermes3hbc18BytecodeSerializer30serializeExceptionHandlerTableERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  call void @_ZN6hermes3hbc18BytecodeSerializer21serializeDebugOffsetsERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer18serializeDebugInfoERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.hermes::hbc::DebugInfoHeader", align 1 ; 5 uses
  %3 = alloca %"struct.hermes::hbc::DebugInfoHeader", align 4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %4 = xor i64 %i.d, 3
  %5 = add i64 %i.c, %4
  %i.l = add i64 %5, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ] ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.v, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.y = load i8, ptr %i.x, align 1, !tbaa !155, !range !106, !noundef !107
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ad, ptr nonnull align 1 dereferenceable(28) %2, i64 28) #12
  %i.ae = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.af = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef 28) #12 ; 0 uses
  %.pre47 = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi i64 [ %i.u, %bb.d ], [ %.pre47, %bb.e ]
  %i.ah = add i64 %i.ag, 28
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.j

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bb = trunc i64 %i.ap to i32
  store i32 %i.bb, ptr %3, align 4, !tbaa !157
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = trunc i64 %i.aw to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !159
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !160
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bi = load <2 x i32>, ptr %i.ay, align 8, !tbaa !3
  store <2 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ba, ptr %i.bj, align 4, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !163
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !164
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !105, !range !106, !noundef !107
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28.thread, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28.thread: ; preds = %bb.f
  %i.br = add i64 %i.u, 28
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.bs, ptr nonnull align 1 dereferenceable(28) %3, i64 28) #12
  %i.bt = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.bu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bt, ptr noundef nonnull align 1 dereferenceable(28) %3, i64 noundef 28) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre39 = load i8, ptr %i.bo, align 8, !tbaa !105, !range !106
  %i.bv = trunc nuw i8 %.pre39 to i1
  %i.bw = add i64 %.pre, 28                       ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !110
  br i1 %i.bv, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28.thread
  %.ph = phi i64 [ %i.br, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28.thread ], [ %i.bw, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28 ]
  %i.bx = add i64 %.ph, %i.ao
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit28
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.by, ptr %i.aj, i64 %i.ao) #12
  %i.bz = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bz, ptr noundef %i.aj, i64 noundef %i.ao) #12 ; 0 uses
  %.pre40 = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre41 = load i8, ptr %i.bo, align 8, !tbaa !105, !range !106
  %i.cb = trunc nuw i8 %.pre41 to i1
  %i.cc = add i64 %.pre40, %i.ao                  ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !110
  br i1 %i.cb, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.cd, ptr %i.ar, i64 %i.aw) #12
  %i.ce = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.cf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ce, ptr noundef %i.ar, i64 noundef %i.aw) #12 ; 0 uses
  %.pre42 = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre45.pre = load i8, ptr %i.bo, align 8, !tbaa !105, !range !106
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, %bb.g
  %.pre45 = phi i8 [ 1, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit ], [ %.pre45.pre, %bb.g ], [ 1, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread ] ; 2 uses
  %i.cg = phi i64 [ %i.cc, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit ], [ %.pre42, %bb.g ], [ %i.bx, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16StringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit.thread ]
  %i.ch = add i64 %i.cg, %i.aw                    ; 4 uses
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !110
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %i.cj = load i32, ptr %i.bf, align 8, !tbaa !160
  %.fr53 = freeze i32 %i.cj                       ; 2 uses
  %i.ck = zext i32 %.fr53 to i64
  %.idx = mul nuw nsw i64 %i.ck, 12               ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx
  %.not34 = icmp eq i32 %.fr53, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = trunc nuw i8 %.pre45 to i1
  br i1 %i.cn, label %._crit_edge.thread, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.co = add nsw i64 %.idx, -12                  ; 2 uses
  %i.cp = urem i64 %i.co, 12
  %i.cq = sub nuw nsw i64 %i.co, %i.cp
  %i.cr = add i64 %i.ch, %i.cq
  %i.cs = add i64 %i.cr, 12                       ; 2 uses
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !110
  %.sroa.2.0.copyload56 = load i64, ptr %i.bl, align 8, !tbaa !121
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit29

._crit_edge.loopexit:                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugFileRegionEEEvRKT_.exit
  %.pre44 = load i8, ptr %i.bo, align 8, !tbaa !105, !range !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.ct = phi i64 [ %i.di, %._crit_edge.loopexit ], [ %i.ch, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit ]
  %i.cu = phi i8 [ %.pre44, %._crit_edge.loopexit ], [ %.pre45, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit ]
  %.sroa.2.0.copyload = load i64, ptr %i.bl, align 8, !tbaa !121 ; 4 uses
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit29, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.0.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !100 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.cx, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #12
  %i.cy = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.cz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cy, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #12 ; 0 uses
  %.pre46 = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit29

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit29: ; preds = %._crit_edge.thread, %._crit_edge, %bb.h
  %.sroa.2.0.copyload57 = phi i64 [ %.sroa.2.0.copyload, %._crit_edge ], [ %.sroa.2.0.copyload, %bb.h ], [ %.sroa.2.0.copyload56, %._crit_edge.thread ]
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc18BytecodeSerializer22serializeFunctionTableERNS0_14BytecodeModuleE:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15SmallFuncHeaderEEEvRKT_.exit
  %.sroa.013.017 = phi ptr [ %i.a, %.lr.ph ], [ %i.ci, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15SmallFuncHeaderEEEvRKT_.exit ] ; 3 uses
  %i.l = load i8, ptr %i.d, align 1, !tbaa !155, !range !106, !noundef !107
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.013.017, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 54 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, -17
  store i8 %i.q, ptr %i.o, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = load ptr, ptr %.sroa.013.017, align 8, !tbaa !112 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 1, !tbaa !3 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !3 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !3 ; 16 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 1, !tbaa !3 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 1, !tbaa !3 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 1, !tbaa !18
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 53
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 1, !tbaa !18
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 54
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1, !tbaa !18 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 15, i1 false)
  store i8 %.sroa.18.0.copyload, ptr %i.e, align 1, !tbaa !18
  %i.t = icmp ugt i32 %.sroa.0.0.copyload, 33554431
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.u, ptr %i.e, align 1
  %i.v = and i32 %.sroa.7.0.copyload, 65535
  %i.w = zext nneg i32 %i.v to i64
  store i64 %i.w, ptr %2, align 8
  %i.x = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.x, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp ugt i32 %.sroa.4.0.copyload, 127
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.z, ptr %i.e, align 1
  %i.aa = and i32 %.sroa.7.0.copyload, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  store i64 %i.ab, ptr %2, align 8
  %i.ac = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.ac, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = shl nuw i32 %.sroa.4.0.copyload, 25
  %i.ae = or disjoint i32 %i.ad, %.sroa.0.0.copyload
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %.sroa.5.0.copyload, 32767
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.ah, ptr %i.e, align 1
  %i.ai = and i32 %.sroa.7.0.copyload, 65535
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = and i64 %i.af, 4261412864
  %i.al = or disjoint i64 %i.ak, %i.aj
  store i64 %i.al, ptr %2, align 8
  %i.am = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.am, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.j:                                             ; preds = %bb.h
  %i.an = zext nneg i32 %.sroa.5.0.copyload to i64
  %i.ao = shl nuw nsw i64 %i.an, 32
  %i.ap = or disjoint i64 %i.ao, %i.af            ; 2 uses
  %i.aq = icmp ugt i32 %.sroa.6.0.copyload, 131071
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.ar, ptr %i.e, align 1
  %i.as = and i32 %.sroa.7.0.copyload, 65535
  %i.at = zext nneg i32 %i.as to i64
  %i.au = and i64 %i.ap, 140737454800896
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %2, align 8
  %i.aw = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.aw, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = zext nneg i32 %.sroa.6.0.copyload to i64
  %i.ay = shl nuw i64 %i.ax, 47
  %i.az = or disjoint i64 %i.ay, %i.ap            ; 4 uses
  store i64 %i.az, ptr %2, align 8
  %i.ba = icmp ugt i32 %.sroa.7.0.copyload, 33554431
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.bb, ptr %i.e, align 1
  %i.bc = and i32 %.sroa.7.0.copyload, 65535
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = and i64 %i.az, -33554432
  %i.bf = or disjoint i64 %i.be, %i.bd
  store i64 %i.bf, ptr %2, align 8
  %i.bg = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.bg, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.n:                                             ; preds = %bb.l
  %i.bh = icmp ugt i32 %.sroa.14.0.copyload, 127
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.bi, ptr %i.e, align 1
  %i.bj = and i32 %.sroa.7.0.copyload, 65535
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = and i64 %i.az, -33554432
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %2, align 8
  %i.bn = lshr i32 %.sroa.7.0.copyload, 16
  store i32 %i.bn, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.p:                                             ; preds = %bb.n
  %i.bo = shl nuw i32 %.sroa.14.0.copyload, 25    ; 2 uses
  %i.bp = or disjoint i32 %i.bo, %.sroa.7.0.copyload
  store i32 %i.bp, ptr %i.f, align 8
  %i.bq = icmp ugt i32 %.sroa.15.0.copyload, 255
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = or i8 %.sroa.18.0.copyload, 32
  store i8 %i.br, ptr %i.e, align 1
  %i.bs = and i32 %.sroa.7.0.copyload, 65535
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = and i64 %i.az, -33554432
  %i.bv = or disjoint i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %2, align 8
  %i.bw = lshr i32 %.sroa.7.0.copyload, 16
  %i.bx = or disjoint i32 %i.bo, %i.bw
  store i32 %i.bx, ptr %i.f, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.r:                                             ; preds = %bb.p
  %i.by = trunc nuw nsw i32 %.sroa.15.0.copyload to i16
  %i.bz = zext i8 %.sroa.16.0.copyload to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = or disjoint i16 %i.ca, %i.by
  store i16 %i.cb, ptr %i.g, align 4
  store i8 %.sroa.17.0.copyload, ptr %i.h, align 2
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.r
  %i.cc = load i8, ptr %i.i, align 8, !tbaa !105, !range !106, !noundef !107
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15SmallFuncHeaderEEEvRKT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.j, ptr nonnull align 1 dereferenceable(16) %2, i64 16) #12
  %i.ce = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.cf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ce, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef 16) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15SmallFuncHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15SmallFuncHeaderEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit, %bb.s
  %i.cg = load i64, ptr %i.k, align 8, !tbaa !110
  %i.ch = add i64 %i.cg, 16
  store i64 %i.ch, ptr %i.k, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %.not15 = icmp eq ptr %i.w, %i.y
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ab = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %i.bd, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !105, !range !106, !noundef !107
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.am, ptr %i.ad, i64 %i.ai) #12
  %i.an = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ao = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.an, ptr noundef %i.ad, i64 noundef %i.ai) #12 ; 0 uses
  %.pre20 = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %._crit_edge, %bb.d
  %i.ap = phi i64 [ %i.ab, %._crit_edge ], [ %.pre20, %bb.d ]
  %i.aq = add i64 %i.ap, %i.ai
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !110
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13
  %i.ar = phi i64 [ %i.u, %.lr.ph ], [ %i.bd, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13 ]
  %.016 = phi ptr [ %i.w, %.lr.ph ], [ %i.be, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13 ] ; 4 uses
  %i.as = load i8, ptr %i.z, align 8, !tbaa !105, !range !106, !noundef !107
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit.thread, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit.thread: ; preds = %bb.e
  %i.au = add i64 %i.ar, 4
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit: ; preds = %bb.e
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aa, ptr nonnull align 4 dereferenceable(4) %.016, i64 4) #12
  %i.av = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %.016, i64 noundef 4) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre18 = load i8, ptr %i.z, align 8, !tbaa !105, !range !106
  %i.ax = trunc nuw i8 %.pre18 to i1
  %i.ay = add i64 %.pre, 4                        ; 2 uses
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !110
  br i1 %i.ax, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.016, i64 4 ; 2 uses
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aa, ptr nonnull align 4 dereferenceable(4) %i.az, i64 4) #12
  %i.ba = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.bb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.az, i64 noundef 4) #12 ; 0 uses
  %.pre19 = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit13: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit, %bb.f
  %i.bc = phi i64 [ %i.ay, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit ], [ %.pre19, %bb.f ], [ %i.au, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIjEEvRKT_.exit.thread ]
  %i.bd = add i64 %i.bc, 4                        ; 3 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !110
  %i.be = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.y
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer28serializeFunctionSourceTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.af, ptr %i.w, i64 %i.ab) #12
  %i.ag = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ah = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, ptr noundef %i.w, i64 noundef %i.ab) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayISt4pairIjjEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ai = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.aj = add i64 %i.ai, %i.ab
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer30serializeExceptionHandlerTableERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.hermes::hbc::ExceptionHandlerTableHeader", align 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !168  ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 4 uses
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %i.h to i32
  %i.k = sub nuw nsw i32 4, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i8, ptr %i.l, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.c
  %3 = xor i64 %i.h, 3
  %4 = add i64 %i.g, %3
  %i.p = add i64 %4, 1                            ; 2 uses
  store i64 %i.p, ptr %i.f, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.c, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.q = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.g, %bb.c ]
  %.07.i = phi i32 [ %i.x, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.r = load i8, ptr %i.l, align 8, !tbaa !105, !range !106, !noundef !107
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.m, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.t = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.u = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.d, %.lr.ph.split.i
  %i.v = phi i64 [ %i.q, %.lr.ph.split.i ], [ %.pre.i, %bb.d ]
  %i.w = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.w, ptr %i.f, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.x = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %i.k
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !167
  %.pre5 = load ptr, ptr %i.b, align 8, !tbaa !168
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, %bb.b, %..loopexit_crit_edge.split.us.i
  %i.y = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.g, %bb.b ], [ %i.p, %..loopexit_crit_edge.split.us.i ]
  %i.z = phi ptr [ %.pre5, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.e, %bb.b ], [ %i.e, %..loopexit_crit_edge.split.us.i ]
  %i.aa = phi ptr [ %.pre, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.d, %bb.b ], [ %i.d, %..loopexit_crit_edge.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %2, align 4, !tbaa !169
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit.thread, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit.thread: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = add i64 %i.y, 4
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_23HBCExceptionHandlerInfoEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ak, ptr nonnull align 1 dereferenceable(4) %2, i64 4) #12
  %i.al = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.al, ptr noundef nonnull align 1 dereferenceable(4) %2, i64 noundef 4) #12 ; 0 uses
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !110
  %.pre7 = load ptr, ptr %i.b, align 8, !tbaa !168 ; 3 uses
  %.pre8 = load ptr, ptr %i.c, align 8, !tbaa !167
  %.pre9 = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106
  %.pre11 = ptrtoint ptr %.pre8 to i64
  %.pre12 = ptrtoint ptr %.pre7 to i64
  %.pre14 = sub i64 %.pre11, %.pre12              ; 4 uses
  %i.an = trunc nuw i8 %.pre9 to i1
  %i.ao = add i64 %.pre6, 4                       ; 2 uses
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !110
  br i1 %i.an, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_23HBCExceptionHandlerInfoEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ap, ptr %.pre7, i64 %.pre14) #12
  %i.aq = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aq, ptr noundef %.pre7, i64 noundef %.pre14) #12 ; 0 uses
  %.pre10 = load i64, ptr %i.f, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_23HBCExceptionHandlerInfoEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_23HBCExceptionHandlerInfoEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit, %bb.e
  %.pre-phi1520 = phi i64 [ %.pre14, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit ], [ %.pre14, %bb.e ], [ %i.ad, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit.thread ]
  %i.as = phi i64 [ %i.ao, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit ], [ %.pre10, %bb.e ], [ %i.aj, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_27ExceptionHandlerTableHeaderEEEvRKT_.exit.thread ]
  %i.at = add i64 %i.as, %.pre-phi1520
  store i64 %i.at, ptr %i.f, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_23HBCExceptionHandlerInfoEEEvN4llvh8ArrayRefIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.k, ptr %i.b, i64 %i.g) #12
  %i.l = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.m = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.l, ptr noundef %i.b, i64 noundef %i.g) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !110
  %i.p = add i64 %i.o, %i.g
  store i64 %i.p, ptr %i.n, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21serializeObjectBufferERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(513) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !noalias !171 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78, !noalias !171
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79, !noalias !171 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78, !noalias !171
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit.thread, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit.thread: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !110
  %i.t = add i64 %i.s, %i.g
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit4

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.u, ptr %i.b, i64 %i.g) #12
  %i.v = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.w = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.v, ptr noundef %i.b, i64 noundef %i.g) #12 ; 0 uses
  %.pre = load i8, ptr %i.o, align 8, !tbaa !105, !range !106
  %i.x = trunc nuw i8 %.pre to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !110
  %i.aa = add i64 %i.z, %i.g                      ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !110
  br i1 %i.x, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit4, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ab, ptr %i.i, i64 %i.n) #12
  %i.ac = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, ptr noundef %i.i, i64 noundef %i.n) #12 ; 0 uses
  %.pre5 = load i64, ptr %i.y, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit4

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit4: ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, %bb.b
  %i.ae = phi ptr [ %i.y, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit ], [ %i.y, %bb.b ], [ %i.r, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit.thread ]
  %i.af = phi i64 [ %i.aa, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit ], [ %.pre5, %bb.b ], [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit.thread ]
  %i.ag = add i64 %i.af, %i.n
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21serializeDebugOffsetsERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.c = load i8, ptr %i.b, align 1, !tbaa !155, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !174
  %.not.i = icmp ne i32 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, -1
  %i.j = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !110  ; 4 uses
  %i.m = and i64 %i.l, 3                          ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = sub nuw nsw i32 4, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.q, align 8, !tbaa !105, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.d
  %2 = xor i64 %i.m, 3
  %3 = add i64 %i.l, %2
  %i.u = add i64 %3, 1                            ; 2 uses
  store i64 %i.u, ptr %i.k, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.v = phi i64 [ %i.ab, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.l, %bb.d ]
  %.07.i = phi i32 [ %i.ac, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.w = load i8, ptr %i.q, align 8, !tbaa !105, !range !106, !noundef !107
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.r, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.y = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.e, %.lr.ph.split.i
  %i.aa = phi i64 [ %i.v, %.lr.ph.split.i ], [ %.pre.i, %bb.e ]
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ac = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %i.p
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.c, %..loopexit_crit_edge.split.us.i
  %i.ad = phi i64 [ %i.u, %..loopexit_crit_edge.split.us.i ], [ %i.l, %bb.c ], [ %i.ab, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_12DebugOffsetsEEEvRKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr nonnull align 4 dereferenceable(12) %i.e, i64 12) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 noundef 12) #12 ; 0 uses
  %.pre = load i64, ptr %i.k, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_12DebugOffsetsEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_12DebugOffsetsEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.f
  %i.ak = phi i64 [ %i.ad, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.f ]
  %i.al = add i64 %i.ak, 12
  store i64 %i.al, ptr %i.k, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_12DebugOffsetsEEEvRKT_.exit
  ret void
}

declare { ptr, i64 } @_ZNK6hermes3hbc16BytecodeFunction17getJumpTablesOnlyEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer22serializeFunctionTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.v)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer16visitStringKindsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !175  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21visitIdentifierHashesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !177  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21visitSmallStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"struct.hermes::hbc::SmallStringTableEntry", align 4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75  ; 2 uses
  %.not13 = icmp eq ptr %i.y, %i.aa
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %.0.lcssa = phi i32 [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %i.bb, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.lcssa, ptr %i.ad, align 4, !tbaa !77
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit
  %i.ae = phi i64 [ %i.u, %.lr.ph ], [ %i.ay, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ] ; 2 uses
  %.01014 = phi ptr [ %i.y, %.lr.ph ], [ %i.bc, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.af = getelementptr inbounds nuw i8, ptr %.01014, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !179 ; 3 uses
  %.lobit.i = lshr i32 %i.ag, 31                  ; 2 uses
  %i.ah = load i32, ptr %.01014, align 4, !tbaa !181 ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 8388608
  %i.aj = and i32 %i.ag, 2147483647
  %i.ak = icmp samesign ult i32 %i.aj, 255
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nuw nsw i32 %i.ah, 1
  %i.am = shl i32 %i.ag, 24
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, %.lobit.i
  br label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = shl i32 %.015, 1
  %i.aq = or disjoint i32 %.lobit.i, %i.ap
  %i.ar = or i32 %i.aq, -16777216
  br label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit

_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi i32 [ %i.ar, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  store i32 %storemerge.i, ptr %1, align 4
  %i.as = load i8, ptr %i.ab, align 8, !tbaa !105, !range !106, !noundef !107
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ac, ptr nonnull align 1 dereferenceable(4) %1, i64 4) #12
  %i.au = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.av = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.au, ptr noundef nonnull align 1 dereferenceable(4) %1, i64 noundef 4) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre18 = load i32, ptr %1, align 4
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit, %bb.g
  %i.aw = phi i32 [ %storemerge.i, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ], [ %.pre18, %bb.g ]
  %i.ax = phi i64 [ %i.ae, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ], [ %.pre, %bb.g ]
  %i.ay = add i64 %i.ax, 4                        ; 2 uses
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !110
  %i.az = icmp ugt i32 %i.aw, -16777217
  %i.ba = zext i1 %i.az to i32
  %i.bb = add i32 %.015, %i.ba                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer24visitOverflowStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.llvh::SmallVector.66", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !160
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 64, ptr %i.w, align 4, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %.not21 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ad = zext i32 %i.bl to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.af = phi ptr [ %i.bk, %._crit_edge.loopexit ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.ag = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !105, !range !106, !noundef !107
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ak, ptr %i.af, i64 %i.ag) #12
  %i.al = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.al, ptr noundef %i.af, i64 noundef %i.ag) #12 ; 0 uses
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !165
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %._crit_edge, %bb.d
  %i.an = phi ptr [ %i.af, %._crit_edge ], [ %.pre24, %bb.d ] ; 2 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ap = add i64 %i.ao, %i.ag
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !110
  %i.aq = icmp eq ptr %i.an, %i.u
  br i1 %i.aq, label %_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit
  call void @free(ptr noundef %i.an) #12
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.g
  %i.ar = phi ptr [ %i.bk, %bb.g ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 2 uses
  %i.as = phi i32 [ %i.bl, %bb.g ], [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %.022 = phi ptr [ %i.bm, %bb.g ], [ %i.aa, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.022, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !179 ; 2 uses
  %i.av = load i32, ptr %.022, align 4, !tbaa !181 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 8388608
  %i.ax = and i32 %i.au, 2147483647               ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, 255
  %or.cond = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond, label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit, label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread

_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit: ; preds = %.lr.ph
  %i.az = shl nuw nsw i32 %i.av, 1
  %i.ba = shl i32 %i.au, 24
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = icmp ugt i32 %i.bb, -16777217
  br i1 %i.bc, label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread, label %bb.g

_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread: ; preds = %.lr.ph, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit
  %i.bd = load i32, ptr %i.w, align 4, !tbaa !182
  %.not.i = icmp ult i32 %i.as, %i.bd
  br i1 %.not.i, label %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit, label %bb.f, !prof !183

bb.f:                                             ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.u, i64 noundef 0, i64 noundef 8) #12
  %.pre.i12 = load i32, ptr %i.v, align 8, !tbaa !160
  %.pre = load ptr, ptr %1, align 8, !tbaa !165
  br label %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit

_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit: ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread, %bb.f
  %i.be = phi ptr [ %.pre, %bb.f ], [ %i.ar, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread ] ; 2 uses
  %i.bf = phi i32 [ %.pre.i12, %bb.f ], [ %i.as, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread ] ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg ; 2 uses
  store i32 %i.av, ptr %i.bh, align 1, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.ax, ptr %i.bi, align 1, !tbaa !186
  %i.bj = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.v, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit
  %i.bk = phi ptr [ %i.be, %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit ], [ %i.ar, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ] ; 2 uses
  %i.bl = phi i32 [ %i.bj, %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit ], [ %i.as, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.ac
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer18visitStringStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer16visitArrayBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit

_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer20visitObjectKeyBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79, !noalias !187 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78, !noalias !187
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer22visitObjectValueBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79, !noalias !190 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78, !noalias !190
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer16visitBigIntTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_6bigint16BigIntTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_6bigint16BigIntTableEntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_6bigint16BigIntTableEntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer18visitBigIntStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer16visitRegExpTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16RegExpTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16RegExpTableEntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_16RegExpTableEntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer18visitRegExpStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = phi i64 [ %i.l, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ah, ptr %i.y, i64 %i.ad) #12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %i.y, i64 noundef %i.ad) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.ak = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.al = add i64 %i.ak, %i.ad
  store i64 %i.al, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.v)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.m = phi i64 [ %i.s, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.n = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.p = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.r = phi i64 [ %i.m, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer28serializeFunctionSourceTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.v)
  ret void
}

declare void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112), ptr, i64) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.d [
    i64 -1, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, inttoptr (i64 -2 to ptr)
  br label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

bb.e:                                             ; preds = %bb.d
  %.not.not.i.i.i.i.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit:         ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ false, %bb.d ], [ %.not9.i.i.i.i.i.i, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !100 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.f = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_(ptr noundef %.sroa.0.0.copyload.i, ptr noundef %i.e)
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.c, -1                         ; 2 uses
  %i.i = and i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ %i.r, %bb.i ]   ; 2 uses
  %.042 = phi i32 [ %i.i, %bb.b ], [ %i.t, %bb.i ] ; 2 uses
  %.039 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.i ] ; 4 uses
  %i.j = zext i32 %.042 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.j ; 9 uses
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !100 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !121 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !100 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !121 ; 2 uses
  %magicptr.i = ptrtoint ptr %.sroa.08.0.copyload to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 -1, label %bb.d
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %.thread, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49, !prof !194

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49, !prof !195

bb.f:                                             ; preds = %bb.e
  %.not.not.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.211.0.copyload, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.010.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.211.0.copyload)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %.thread, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49, !prof !194

_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit: ; preds = %bb.c
  %i.m = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %i.m, label %.thread, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49, !prof !194

_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49: ; preds = %bb.e, %bb.g, %bb.d, %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit
  %i.n = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr nonnull inttoptr (i64 -1 to ptr), i64 0)
  br i1 %i.n, label %bb.h, label %bb.i, !prof !183

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49
  %.not = icmp eq ptr %.039, null
  %i.o = select i1 %.not, ptr %i.k, ptr %.039
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit.thread49
  %.sroa.02.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !100
  %.sroa.23.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !121
  %i.p = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr nonnull inttoptr (i64 -2 to ptr), i64 0)
  %i.q = icmp eq ptr %.039, null
  %or.cond.not = select i1 %i.p, i1 %i.q, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.k, ptr %.039
  %i.r = add i32 %.044, 1
  %i.s = add i32 %.042, %.044
  %i.t = and i32 %i.s, %i.h
  br label %bb.c, !llvm.loop !196

.thread:                                          ; preds = %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit, %bb.d, %bb.g, %bb.f, %bb.a, %bb.h
  %.sink = phi ptr [ %i.o, %bb.h ], [ null, %bb.a ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.d ], [ %i.k, %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit ]
  %.2 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.d ], [ true, %_ZN4llvh12DenseMapInfoINS_8ArrayRefIhEEE7isEqualES2_S2_.exit ]
  store ptr %.sink, ptr %2, align 8, !tbaa !132
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !197

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !121 ; 2 uses
  %.not1.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not1.i, i64 -49064778989728563, i64 %i.d
  store i64 %i.e, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !121
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #12
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !121 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp ult i64 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.k = tail call noundef i64 @_ZN4llvh7hashing6detail10hash_shortEPKcmm(ptr noundef %0, i64 noundef %i.i, i64 noundef %i.f)
  br label %bb.h

bb.e:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.l = and i64 %i.i, -64                        ; 2 uses
end_hunk_1
