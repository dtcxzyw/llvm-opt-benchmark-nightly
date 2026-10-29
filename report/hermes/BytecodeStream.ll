Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BytecodeStream?download=true
inline.NumInlined: 652
inline.NumDeleted: 319
begin_hunk_0_@_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE:bb.a
bb.g:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !69  ; 4 uses
  %i.bm = and i64 %i.bl, 3                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = trunc nuw nsw i64 %i.bm to i32
  %i.bp = sub nuw nsw i32 4, %i.bo
  %i.bq = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.h
  %i.bs = or i64 %i.bl, -4
  %sub = sub i64 %i.bl, %i.bs
  store i64 %sub, ptr %i.j, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.h, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.bt = phi i64 [ %i.bz, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.bl, %bb.h ]
  %.07.i = phi i32 [ %i.ca, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %i.b, align 1, !tbaa !19
  %i.bu = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.b, i64 1) #12
  %i.bw = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.bx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.i, %.lr.ph.split.i
  %i.by = phi i64 [ %i.bt, %.lr.ph.split.i ], [ %.pre.i, %bb.i ]
  %i.bz = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.bz, ptr %i.j, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ca = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.bp
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !0

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.g, %..loopexit_crit_edge.split.us.i
  %i.cb = load ptr, ptr %.sroa.038.052, align 8, !tbaa !72
  %i.cc = call { ptr, i64 } @_ZNK6hermes3hbc16BytecodeFunction17getJumpTablesOnlyEv(ptr noundef nonnull align 8 dereferenceable(104) %i.cb) #12 ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 1
  %i.ce = shl i64 %i.cd, 2                        ; 3 uses
  %i.cf = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ch = extractvalue { ptr, i64 } %i.cc, 0      ; 2 uses
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr %i.ch, i64 %i.ce) #12
  %i.ci = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.cj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ci, ptr noundef %i.ch, i64 noundef %i.ce) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.j
  %i.ck = load i64, ptr %i.j, align 8, !tbaa !69
  %i.cl = add i64 %i.ck, %i.ce
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !162 ; 2 uses
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %.sroa.038.052, align 8, !tbaa !72
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !161
  %i.cq = zext i32 %i.cp to i64
  %i.cr = zext i32 %i.cm to i64
  %i.cs = mul nuw i64 %i.cq, %i.cr                ; 2 uses
  %i.ct = udiv i64 %i.cs, 100                     ; 2 uses
  %.not1948 = icmp ult i64 %i.cs, 100
  br i1 %.not1948, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.l
  %.pre64 = load i64, ptr %i.j, align 8, !tbaa !69
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.cu = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %._crit_edge.split.us, label %.lr.ph.split

._crit_edge.split.us:                             ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.j, align 8, !tbaa !69
  %i.cw = add i64 %.promoted, %i.ct               ; 2 uses
  store i64 %i.cw, ptr %i.j, align 8, !tbaa !69
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit
  %.049 = phi i64 [ %i.cx, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit ], [ %i.ct, %.lr.ph ]
  %i.cx = add nsw i64 %.049, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 0, ptr %i.d, align 1, !tbaa !19
  %i.cy = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.d, i64 1) #12
  %i.da = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.db = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.da, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 noundef 1) #12 ; 0 uses
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit: ; preds = %.lr.ph.split, %bb.m
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !69
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not19 = icmp eq i64 %i.cx, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.split, !llvm.loop !154

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit, %.._crit_edge_crit_edge, %._crit_edge.split.us
  %i.de = phi i64 [ %.pre64, %.._crit_edge_crit_edge ], [ %i.cw, %._crit_edge.split.us ], [ %i.dd, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit ] ; 4 uses
  %i.df = and i64 %i.de, 3                        ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.dh = trunc nuw nsw i64 %i.df to i32
  %i.di = sub nuw nsw i32 4, %i.dh
  %i.dj = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %..loopexit_crit_edge.split.us.i30, label %.lr.ph.split.i24

..loopexit_crit_edge.split.us.i30:                ; preds = %bb.n
  %i.dl = or i64 %i.de, -4
  %sub74 = sub i64 %i.de, %i.dl
  store i64 %sub74, ptr %i.j, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31

.lr.ph.split.i24:                                 ; preds = %bb.n, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27
  %i.dm = phi i64 [ %i.ds, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27 ], [ %i.de, %bb.n ]
  %.07.i25 = phi i32 [ %i.dt, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27 ], [ 0, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.dn = load i8, ptr %i.i, align 8, !tbaa !64, !range !65, !noundef !66
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i24
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.l, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.dp = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i26 = load i64, ptr %i.j, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27: ; preds = %bb.o, %.lr.ph.split.i24
  %i.dr = phi i64 [ %i.dm, %.lr.ph.split.i24 ], [ %.pre.i26, %bb.o ]
  %i.ds = add i64 %i.dr, 1                        ; 2 uses
  store i64 %i.ds, ptr %i.j, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dt = add nuw nsw i32 %.07.i25, 1             ; 2 uses
  %exitcond59.not = icmp eq i32 %i.dt, %i.di
  br i1 %exitcond59.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %.lr.ph.split.i24, !llvm.loop !0

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31:  ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27, %.split.thread, %..loopexit_crit_edge.split.us.i30, %._crit_edge, %bb.k, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.052, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.du, %i.g
  br i1 %.not46, label %._crit_edge55.loopexit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21serializeFunctionInfoERNS0_16BytecodeFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.hermes::hbc::FunctionHeader", align 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !64, !range !65, !noundef !66 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 3
  %i.i = and i32 %i.h, -4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.i, ptr %i.j, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %2, ptr noundef nonnull align 8 dereferenceable(31) %i.k, i64 31, i1 false), !tbaa.struct !164
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.m = load i8, ptr %i.l, align 2, !tbaa !19
  %i.n = load <4 x i32>, ptr %2, align 16
  %.fr = freeze <4 x i32> %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 16
  %i.q = icmp ult i32 %i.p, 33554432
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ult i32 %i.s, 128
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp ult i32 %i.v, 256
  %i.x = and i8 %i.m, 32
  %i.y = icmp eq i8 %i.x, 0
  %i.z = icmp ugt <4 x i32> %.fr, <i32 33554431, i32 127, i32 32767, i32 131071>
  %i.aa = bitcast <4 x i1> %i.z to i4
  %i.ab = icmp eq i4 %i.aa, 0
  %op.rdx = select i1 %i.ab, i1 %i.q, i1 false
  %3 = select i1 %op.rdx, i1 %i.t, i1 false
  %op.rdx40 = select i1 %3, i1 %i.w, i1 false
  %op.rdx41 = select i1 %op.rdx40, i1 %i.y, i1 false
  br i1 %op.rdx41, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.ae = and i64 %i.ad, 3                        ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ag = trunc nuw nsw i64 %i.ae to i32
  %i.ah = sub nuw nsw i32 4, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.d, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread, label %.lr.ph.split.i

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread: ; preds = %bb.d
  %i.aj = or i64 %i.ad, 3
  %i.ak = add i64 %i.aj, 1
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit

.lr.ph.split.i:                                   ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.al = phi i64 [ %i.ar, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.ad, %bb.d ]
  %.07.i = phi i32 [ %i.as, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.am = load i8, ptr %i.b, align 8, !tbaa !64, !range !65, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ai, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.ao = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.e, %.lr.ph.split.i
  %i.aq = phi i64 [ %i.al, %.lr.ph.split.i ], [ %.pre.i, %bb.e ]
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.as = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.ah
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, label %.lr.ph.split.i, !llvm.loop !0

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %.pre = load i8, ptr %i.b, align 8, !tbaa !64, !range !65
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit, %.critedge
  %i.at = phi i64 [ %i.ar, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.ad, %.critedge ]
  %i.au = phi i8 [ %.pre, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.loopexit ], [ %i.c, %.critedge ]
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aw, ptr nonnull align 1 dereferenceable(31) %2, i64 31) #12
  %i.ax = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, ptr noundef nonnull align 1 dereferenceable(31) %2, i64 noundef 31) #12 ; 0 uses
  %.pre37 = load i64, ptr %i.ac, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.f
  %i.az = phi i64 [ %i.at, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre37, %bb.f ], [ %i.ak, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread ]
  %i.ba = add i64 %i.az, 31
  store i64 %i.ba, ptr %i.ac, align 8, !tbaa !69
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !64, !range !65, !noundef !66
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = or i64 %i.c, 3
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.n = phi i64 [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.o = load i8, ptr %i.h, align 8, !tbaa !64, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.q = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.s = phi i64 [ %i.n, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.t = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.u = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !0

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.v = phi i64 [ %i.m, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.t, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ] ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.w, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !96, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !64, !range !65, !noundef !66
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ae, ptr nonnull align 1 dereferenceable(28) %2, i64 28) #12
  %i.af = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !66, !align !68
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.af, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef 28) #12 ; 0 uses
  %.pre47 = load i64, ptr %i.b, align 8, !tbaa !69
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_15DebugInfoHeaderEEEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ah = phi i64 [ %i.v, %bb.d ], [ %.pre47, %bb.e ]
  %i.ai = add i64 %i.ah, 28
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.j

bb.f:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bc = trunc i64 %i.aq to i32
  store i32 %i.bc, ptr %3, align 4, !tbaa !168
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.be = trunc i64 %i.ax to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !97
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !170
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bj = load <2 x i32>, ptr %i.az, align 8, !tbaa !7
  store <2 x i32> %i.bj, ptr %i.bi, align 4, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.bb, ptr %i.bk, align 4, !tbaa !171
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !172
end_hunk_0
