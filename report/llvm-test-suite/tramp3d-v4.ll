Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN18CanonicalCenteringILi1EEC2Ev:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.x, i8 0, i64 52, i1 false)
  %i.y = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !330
  store ptr %.ptr51.1130, ptr %i.aa, align 8, !tbaa !332
  %i.ab = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.ab, align 16
  %.ptr51.1128.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.1, align 8, !tbaa !1257
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.ptr51.1.1.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.1, align 16, !tbaa !1257
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ad, i8 0, i64 52, i1 false)
  %i.ae = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !330
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.ptr51.1128.1, ptr %i.ah, align 8, !tbaa !332
  %i.ai = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45
  %i.aj = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !330
  %i.al = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.al, align 16
  %.ptr51.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.2, align 8, !tbaa !1257
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.ptr51.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.2, align 16, !tbaa !1257
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.an, i8 0, i64 52, i1 false)
  %i.ao = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !330
  store ptr %.ptr51.2, ptr %i.aq, align 8, !tbaa !332
  %i.ar = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.ar, align 16
  %.ptr51.1128.2 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.2, align 8, !tbaa !1257
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.ptr51.1.1.2 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.2, align 16, !tbaa !1257
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.at, i8 0, i64 52, i1 false)
  %i.au = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.ptr51.1128.2, ptr %i.ax, align 8, !tbaa !332
  %i.ay = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45
  %i.az = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !330
  %i.bb = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.bb, align 16
  %.ptr51.3 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.3, align 8, !tbaa !1257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.ptr51.1.3 = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bc, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.3, align 16, !tbaa !1257
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bd, i8 0, i64 52, i1 false)
  %i.be = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !330
  store ptr %.ptr51.3, ptr %i.bg, align 8, !tbaa !332
  %i.bh = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.bh, align 16
  %.ptr51.1128.3 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.3, align 8, !tbaa !1257
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.ptr51.1.1.3 = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bi, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.3, align 16, !tbaa !1257
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bj, i8 0, i64 52, i1 false)
  %i.bk = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !330
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.ptr51.1128.3, ptr %i.bn, align 8, !tbaa !332
  %.pre = load i32, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !165
  br label %.loopexit114

.loopexit114:                                     ; preds = %.loopexit114.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %.loopexit114.loopexit ], [ %i.c, %bb.a ]
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store i32 3, ptr %6, align 8, !tbaa !1257
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bq, i8 0, i64 52, i1 false)
  %i.bs = load i64, ptr %6, align 8
  store i64 %i.bs, ptr %1, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.br) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv) ; 0 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.loopexit114
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !348
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.loopexit114
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !338
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #48
  br label %_ZN9CenteringILi1EED2Ev.exit

_ZN9CenteringILi1EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  store i32 1, ptr %2, align 4, !tbaa !165
  store double 5.000000e-01, ptr %3, align 8, !tbaa !350
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.cj = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !330
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !332 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load i64, ptr %1, align 8
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) ; 0 uses
  store i32 1, ptr %2, align 4, !tbaa !165
  store double 5.000000e-01, ptr %3, align 8, !tbaa !350
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 9 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 9 uses
  %i.cw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 1, ptr %7, align 8, !tbaa !1257
  store i32 0, ptr %i.cx, align 4, !tbaa !1258
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !335 ; 3 uses
  %i.dg = load ptr, ptr %4, align 16, !tbaa !336  ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit
  %i.dk = icmp ugt i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %bb.e, label %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !201

bb.e:                                             ; preds = %bb.j, %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #45
  %.pre137 = load ptr, ptr %4, align 16, !tbaa !337
  %.pre138 = load ptr, ptr %i.de, align 8, !tbaa !337
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN9CenteringILi1EED2Ev.exit
  %i.dm = phi ptr [ %.pre138, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.df, %_ZN9CenteringILi1EED2Ev.exit ] ; 3 uses
  %i.dn = phi ptr [ %.pre137, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.dg, %_ZN9CenteringILi1EED2Ev.exit ] ; 5 uses
  %i.do = phi ptr [ %i.dl, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZN9CenteringILi1EED2Ev.exit ] ; 7 uses
  store ptr %i.do, ptr %i.cy, align 8, !tbaa !336
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dj
  store ptr %i.dp, ptr %i.da, align 8, !tbaa !338
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.dm
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = ptrtoaddr ptr %i.dn to i64              ; 2 uses
  %i.ds = ptrtoaddr ptr %i.dm to i64
  %i.dt = add i64 %i.ds, -4
  %i.du = sub i64 %i.dt, %i.dr                    ; 2 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 44
  %i.dx = sub i64 %i.dr, %i.dq
  %diff.check = icmp ugt i64 %i.dx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 3 uses
  %i.dy = shl i64 %n.vec, 2                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.do, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dn, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.eb ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.dn, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep235, align 4, !tbaa !340
  %wide.load236 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !340
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !165
  store <4 x i32> %wide.load236, ptr %i.ed, align 4, !tbaa !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !1242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader307

.lr.ph.i.i.i.i.i.i.preheader307:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader307, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader307 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader307 ] ; 2 uses
  %i.ef = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.ef, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !165
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.dm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1243

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.do, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.dz, %middle.block ], [ %i.eh, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cz, align 8, !tbaa !335
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !345 ; 3 uses
  %i.ek = load ptr, ptr %5, align 16, !tbaa !346  ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.eo = icmp ugt i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.g, label %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i, !prof !201

bb.g:                                             ; preds = %bb.k, %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ep = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #45
  %.pre139 = load ptr, ptr %5, align 16, !tbaa !347
  %.pre140 = load ptr, ptr %i.ei, align 8, !tbaa !347
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.eq = phi ptr [ %.pre140, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ej, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.er = phi ptr [ %.pre139, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ek, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.es = phi ptr [ %i.ep, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i ] ; 4 uses
  store ptr %i.es, ptr %i.db, align 8, !tbaa !346
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.en
  store ptr %i.et, ptr %i.dd, align 8, !tbaa !348
  %.not7.i.i.i.i.i5.i = icmp eq ptr %i.er, %i.eq
  br i1 %.not7.i.i.i.i.i5.i, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i6.i ], [ %i.es, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i6.i ], [ %i.er, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 2 uses
  %i.eu = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !350
  store double %i.eu, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !350
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.ev, %i.eq
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !14

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit: ; preds = %.lr.ph.i.i.i.i.i6.i, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ %i.es, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.ew, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.dc, align 8, !tbaa !345
  %i.ex = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !330
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !332 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load i64, ptr %7, align 8
  store i64 %i.fc, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fe = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.cy) ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.db) ; 0 uses
  %i.fh = load ptr, ptr %i.db, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i54, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55, label %bb.h

bb.h:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit
  %i.fi = load ptr, ptr %i.dd, align 8, !tbaa !348
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55: ; preds = %bb.h, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit
  %i.fm = load ptr, ptr %i.cy, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i56 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i1.i56, label %_ZN9CenteringILi1EED2Ev.exit57, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55
  %i.fn = load ptr, ptr %i.da, align 8, !tbaa !338
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fq) #48
  br label %_ZN9CenteringILi1EED2Ev.exit57

_ZN9CenteringILi1EED2Ev.exit57:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 1, ptr %7, align 8, !tbaa !1257
  store i32 1, ptr %i.cx, align 4, !tbaa !1258
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !335 ; 3 uses
  %i.ft = load ptr, ptr %i.ct, align 8, !tbaa !336 ; 3 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1, label %bb.j

bb.j:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit57
  %i.fx = icmp ugt i64 %i.fw, 9223372036854775804
  br i1 %i.fx, label %bb.e, label %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1, !prof !201

_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1: ; preds = %bb.j
  %i.fy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #45
  %.pre141 = load ptr, ptr %i.ct, align 8, !tbaa !337
  %.pre142 = load ptr, ptr %i.fr, align 16, !tbaa !337
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1: ; preds = %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1, %_ZN9CenteringILi1EED2Ev.exit57
  %i.fz = phi ptr [ %.pre142, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ %i.fs, %_ZN9CenteringILi1EED2Ev.exit57 ] ; 3 uses
  %i.ga = phi ptr [ %.pre141, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ %i.ft, %_ZN9CenteringILi1EED2Ev.exit57 ] ; 5 uses
  %i.gb = phi ptr [ %i.fy, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ null, %_ZN9CenteringILi1EED2Ev.exit57 ] ; 7 uses
  store ptr %i.gb, ptr %i.cy, align 8, !tbaa !336
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fw
  store ptr %i.gc, ptr %i.da, align 8, !tbaa !338
  %.not7.i.i.i.i.i.i.1 = icmp eq ptr %i.ga, %i.fz
  br i1 %.not7.i.i.i.i.i.i.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1, label %.lr.ph.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.1.preheader:                   ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1
  %i.gd = ptrtoaddr ptr %i.gb to i64
  %i.ge = ptrtoaddr ptr %i.ga to i64              ; 2 uses
  %i.gf = ptrtoaddr ptr %i.fz to i64
  %i.gg = add i64 %i.gf, -4
  %i.gh = sub i64 %i.gg, %i.ge                    ; 2 uses
  %i.gi = lshr i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check241 = icmp ult i64 %i.gh, 44
  %i.gk = sub i64 %i.ge, %i.gd
  %diff.check243 = icmp ugt i64 %i.gk, -32
  %or.cond295 = or i1 %min.iters.check241, %diff.check243
  br i1 %or.cond295, label %.lr.ph.i.i.i.i.i.i.1.preheader304, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph.i.i.i.i.i.i.1.preheader
  %n.vec245 = and i64 %i.gj, 9223372036854775800  ; 3 uses
  %i.gl = shl i64 %n.vec245, 2                    ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gb, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.ga, i64 %i.gl
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next252, %vector.body246 ] ; 2 uses
  %i.go = shl i64 %index247, 2                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.gb, i64 %i.go ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.ga, i64 %i.go ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load250 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !340
  %wide.load251 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !340
  %i.gq = getelementptr i8, ptr %next.gep248, i64 16
  store <4 x i32> %wide.load250, ptr %next.gep248, align 4, !tbaa !165
  store <4 x i32> %wide.load251, ptr %i.gq, align 4, !tbaa !165
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.gr, label %middle.block253, label %vector.body246, !llvm.loop !1244

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.gj, %n.vec245
  br i1 %cmp.n254, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1, label %.lr.ph.i.i.i.i.i.i.1.preheader304

.lr.ph.i.i.i.i.i.i.1.preheader304:                ; preds = %.lr.ph.i.i.i.i.i.i.1.preheader, %middle.block253
  %.09.i.i.i.i.i.i.1.ph = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.1.preheader ], [ %i.gm, %middle.block253 ]
  %.sroa.04.08.i.i.i.i.i.i.1.ph = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i.i.1.preheader ], [ %i.gn, %middle.block253 ]
  br label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i.1.preheader304, %.lr.ph.i.i.i.i.i.i.1
  %.09.i.i.i.i.i.i.1 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i.1 ], [ %.09.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.1.preheader304 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.1 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.1 ], [ %.sroa.04.08.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.1.preheader304 ] ; 2 uses
  %i.gs = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.1, align 4, !tbaa !340
  store i32 %i.gs, ptr %.09.i.i.i.i.i.i.1, align 4, !tbaa !165
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.1, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.1, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.gt, %i.fz
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !1245

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %middle.block253, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.gb, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.1 ], [ %i.gm, %middle.block253 ], [ %i.gu, %.lr.ph.i.i.i.i.i.i.1 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.1, ptr %i.cz, align 8, !tbaa !335
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 8 uses
  %i.gw = load ptr, ptr %i.gv, align 16, !tbaa !345 ; 3 uses
  %i.gx = load ptr, ptr %i.cv, align 8, !tbaa !346 ; 3 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i.1 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i.i.i.i4.i.1, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1
  %i.hb = icmp ugt i64 %i.ha, 9223372036854775800
  br i1 %i.hb, label %bb.g, label %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1, !prof !201

_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1: ; preds = %bb.k
  %i.hc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #45
  %.pre143 = load ptr, ptr %i.cv, align 8, !tbaa !347
  %.pre144 = load ptr, ptr %i.gv, align 16, !tbaa !347
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1: ; preds = %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1
  %i.hd = phi ptr [ %.pre144, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ %i.gw, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1 ] ; 2 uses
  %i.he = phi ptr [ %.pre143, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ %i.gx, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1 ] ; 2 uses
  %i.hf = phi ptr [ %i.hc, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i.1 ], [ null, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i.1 ] ; 4 uses
  store ptr %i.hf, ptr %i.db, align 8, !tbaa !346
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ha
  store ptr %i.hg, ptr %i.dd, align 8, !tbaa !348
  %.not7.i.i.i.i.i5.i.1 = icmp eq ptr %i.he, %i.hd
  br i1 %.not7.i.i.i.i.i5.i.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1, label %.lr.ph.i.i.i.i.i6.i.1

.lr.ph.i.i.i.i.i6.i.1:                            ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1, %.lr.ph.i.i.i.i.i6.i.1
  %.09.i.i.i.i.i7.i.1 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i6.i.1 ], [ %i.hf, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i.1 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i6.i.1 ], [ %i.he, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1 ] ; 2 uses
  %i.hh = load double, ptr %.sroa.04.08.i.i.i.i.i8.i.1, align 8, !tbaa !350
  store double %i.hh, ptr %.09.i.i.i.i.i7.i.1, align 8, !tbaa !350
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.1, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i.1 = icmp eq ptr %i.hi, %i.hd
  br i1 %.not.i.i.i.i.i9.i.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1, label %.lr.ph.i.i.i.i.i6.i.1, !llvm.loop !14

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1: ; preds = %.lr.ph.i.i.i.i.i6.i.1, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1
  %.0.lcssa.i.i.i.i.i10.i.1 = phi ptr [ %i.hf, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.1 ], [ %i.hj, %.lr.ph.i.i.i.i.i6.i.1 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i.1, ptr %i.dc, align 8, !tbaa !345
  %i.hk = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !330
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !332 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load i64, ptr %7, align 8
  store i64 %i.hq, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.cy) ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.db) ; 0 uses
  %i.hv = load ptr, ptr %i.db, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i54.1 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i54.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1, label %bb.l

bb.l:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1
  %i.hw = load ptr, ptr %i.dd, align 8, !tbaa !348
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1: ; preds = %bb.l, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit.1
  %i.ia = load ptr, ptr %i.cy, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i56.1 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i1.i56.1, label %_ZN9CenteringILi1EED2Ev.exit57.1, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1
  %i.ib = load ptr, ptr %i.da, align 8, !tbaa !338
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ie) #48
  br label %_ZN9CenteringILi1EED2Ev.exit57.1

_ZN9CenteringILi1EED2Ev.exit57.1:                 ; preds = %bb.m, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i55.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.if = load ptr, ptr %4, align 16, !tbaa !336  ; 2 uses
  %i.ig = load ptr, ptr %i.de, align 8, !tbaa !335
  %.not.i.i = icmp eq ptr %i.ig, %i.if
  br i1 %.not.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit57.1
  store ptr %i.if, ptr %i.de, align 8, !tbaa !335
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit:     ; preds = %_ZN9CenteringILi1EED2Ev.exit57.1, %bb.n
  %i.ih = load ptr, ptr %5, align 16, !tbaa !346  ; 2 uses
  %i.ii = load ptr, ptr %i.ei, align 8, !tbaa !345
  %.not.i.i58 = icmp eq ptr %i.ii, %i.ih
  br i1 %.not.i.i58, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit
  store ptr %i.ih, ptr %i.ei, align 8, !tbaa !345
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit, %bb.o
  %i.ij = load ptr, ptr %i.ct, align 8, !tbaa !336 ; 2 uses
  %i.ik = load ptr, ptr %i.fr, align 16, !tbaa !335
  %.not.i.i.1 = icmp eq ptr %i.ik, %i.ij
  br i1 %.not.i.i.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit
  store ptr %i.ij, ptr %i.fr, align 16, !tbaa !335
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1

_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1:   ; preds = %bb.p, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit
  %i.il = load ptr, ptr %i.cv, align 8, !tbaa !346 ; 2 uses
  %i.im = load ptr, ptr %i.gv, align 16, !tbaa !345
  %.not.i.i58.1 = icmp eq ptr %i.im, %i.il
  br i1 %.not.i.i58.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1
  store ptr %i.il, ptr %i.gv, align 16, !tbaa !345
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1: ; preds = %bb.q, %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit.1
  store i32 0, ptr %2, align 4, !tbaa !165
  store double 0.000000e+00, ptr %3, align 8, !tbaa !350
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.in = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.io = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  store double 1.000000e+00, ptr %3, align 8, !tbaa !350
  call void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  store i32 2, ptr %8, align 8, !tbaa !1257
  store i32 0, ptr %i.ip, align 4, !tbaa !1258
  %i.iw = load ptr, ptr %i.de, align 8, !tbaa !335 ; 3 uses
  %i.ix = load ptr, ptr %4, align 16, !tbaa !336  ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i59 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i.i.i59, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1
  %i.jb = icmp ugt i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %bb.s, label %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60, !prof !201

bb.s:                                             ; preds = %bb.x, %bb.r
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.r
  %i.jc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #45
  %.pre145 = load ptr, ptr %4, align 16, !tbaa !337
  %.pre146 = load ptr, ptr %i.de, align 8, !tbaa !337
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61: ; preds = %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1
  %i.jd = phi ptr [ %.pre146, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60 ], [ %i.iw, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1 ] ; 3 uses
  %i.je = phi ptr [ %.pre145, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60 ], [ %i.ix, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1 ] ; 5 uses
  %i.jf = phi ptr [ %i.jc, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60 ], [ null, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit.1 ] ; 7 uses
  store ptr %i.jf, ptr %i.iq, align 8, !tbaa !336
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ja
  store ptr %i.jg, ptr %i.is, align 8, !tbaa !338
  %.not7.i.i.i.i.i.i62 = icmp eq ptr %i.je, %i.jd
  br i1 %.not7.i.i.i.i.i.i62, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67, label %.lr.ph.i.i.i.i.i.i63.preheader

.lr.ph.i.i.i.i.i.i63.preheader:                   ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61
  %i.jh = ptrtoaddr ptr %i.jf to i64
  %i.ji = ptrtoaddr ptr %i.je to i64              ; 2 uses
  %i.jj = ptrtoaddr ptr %i.jd to i64
  %i.jk = add i64 %i.jj, -4
  %i.jl = sub i64 %i.jk, %i.ji                    ; 2 uses
  %i.jm = lshr i64 %i.jl, 2
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.jl, 44
  %i.jo = sub i64 %i.ji, %i.jh
  %diff.check262 = icmp ugt i64 %i.jo, -32
  %or.cond296 = or i1 %min.iters.check260, %diff.check262
  br i1 %or.cond296, label %.lr.ph.i.i.i.i.i.i63.preheader301, label %vector.ph263

vector.ph263:                                     ; preds = %.lr.ph.i.i.i.i.i.i63.preheader
  %n.vec264 = and i64 %i.jn, 9223372036854775800  ; 3 uses
  %i.jp = shl i64 %n.vec264, 2                    ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jf, i64 %i.jp  ; 2 uses
  %i.jr = getelementptr i8, ptr %i.je, i64 %i.jp
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next271, %vector.body265 ] ; 2 uses
  %i.js = shl i64 %index266, 2                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.jf, i64 %i.js ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.je, i64 %i.js ; 2 uses
  %i.jt = getelementptr i8, ptr %next.gep268, i64 16
  %wide.load269 = load <4 x i32>, ptr %next.gep268, align 4, !tbaa !340
  %wide.load270 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !340
  %i.ju = getelementptr i8, ptr %next.gep267, i64 16
  store <4 x i32> %wide.load269, ptr %next.gep267, align 4, !tbaa !165
  store <4 x i32> %wide.load270, ptr %i.ju, align 4, !tbaa !165
  %index.next271 = add nuw i64 %index266, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next271, %n.vec264
  br i1 %i.jv, label %middle.block272, label %vector.body265, !llvm.loop !1246

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.jn, %n.vec264
  br i1 %cmp.n273, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67, label %.lr.ph.i.i.i.i.i.i63.preheader301

.lr.ph.i.i.i.i.i.i63.preheader301:                ; preds = %.lr.ph.i.i.i.i.i.i63.preheader, %middle.block272
  %.09.i.i.i.i.i.i64.ph = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.i63.preheader ], [ %i.jq, %middle.block272 ]
  %.sroa.04.08.i.i.i.i.i.i65.ph = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i63.preheader ], [ %i.jr, %middle.block272 ]
  br label %.lr.ph.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i63:                             ; preds = %.lr.ph.i.i.i.i.i.i63.preheader301, %.lr.ph.i.i.i.i.i.i63
  %.09.i.i.i.i.i.i64 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i63 ], [ %.09.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i63.preheader301 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i65 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i63 ], [ %.sroa.04.08.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i63.preheader301 ] ; 2 uses
  %i.jw = load i32, ptr %.sroa.04.08.i.i.i.i.i.i65, align 4, !tbaa !340
  store i32 %i.jw, ptr %.09.i.i.i.i.i.i64, align 4, !tbaa !165
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i65, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i64, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.jx, %i.jd
  br i1 %.not.i.i.i.i.i.i66, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67, label %.lr.ph.i.i.i.i.i.i63, !llvm.loop !1247

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67: ; preds = %.lr.ph.i.i.i.i.i.i63, %middle.block272, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61
  %.0.lcssa.i.i.i.i.i.i68 = phi ptr [ %i.jf, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61 ], [ %i.jq, %middle.block272 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i63 ]
  store ptr %.0.lcssa.i.i.i.i.i.i68, ptr %i.ir, align 8, !tbaa !335
  %i.jz = load ptr, ptr %i.ei, align 8, !tbaa !345 ; 3 uses
  %i.ka = load ptr, ptr %5, align 16, !tbaa !346  ; 3 uses
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i69 = icmp eq ptr %i.jz, %i.ka
  br i1 %.not.i.i.i.i4.i69, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67
  %i.ke = icmp ugt i64 %i.kd, 9223372036854775800
  br i1 %i.ke, label %bb.u, label %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70, !prof !201

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70: ; preds = %bb.t
  %i.kf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #45
  %.pre147 = load ptr, ptr %5, align 16, !tbaa !347
  %.pre148 = load ptr, ptr %i.ei, align 8, !tbaa !347
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71: ; preds = %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67
  %i.kg = phi ptr [ %.pre148, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70 ], [ %i.jz, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67 ] ; 2 uses
  %i.kh = phi ptr [ %.pre147, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70 ], [ %i.ka, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67 ] ; 2 uses
  %i.ki = phi ptr [ %i.kf, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70 ], [ null, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67 ] ; 4 uses
  store ptr %i.ki, ptr %i.it, align 8, !tbaa !346
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kd
  store ptr %i.kj, ptr %i.iv, align 8, !tbaa !348
  %.not7.i.i.i.i.i5.i72 = icmp eq ptr %i.kh, %i.kg
  br i1 %.not7.i.i.i.i.i5.i72, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78, label %.lr.ph.i.i.i.i.i6.i73

.lr.ph.i.i.i.i.i6.i73:                            ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71, %.lr.ph.i.i.i.i.i6.i73
  %.09.i.i.i.i.i7.i74 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i6.i73 ], [ %i.ki, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i75 = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i6.i73 ], [ %i.kh, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71 ] ; 2 uses
  %i.kk = load double, ptr %.sroa.04.08.i.i.i.i.i8.i75, align 8, !tbaa !350
  store double %i.kk, ptr %.09.i.i.i.i.i7.i74, align 8, !tbaa !350
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i75, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i76 = icmp eq ptr %i.kl, %i.kg
  br i1 %.not.i.i.i.i.i9.i76, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78, label %.lr.ph.i.i.i.i.i6.i73, !llvm.loop !14

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78: ; preds = %.lr.ph.i.i.i.i.i6.i73, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71
  %.0.lcssa.i.i.i.i.i10.i77 = phi ptr [ %i.ki, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71 ], [ %i.km, %.lr.ph.i.i.i.i.i6.i73 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i77, ptr %i.iu, align 8, !tbaa !345
  %i.kn = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !330
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !332 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ks = load i64, ptr %8, align 8
  store i64 %i.ks, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %i.ku = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.iq) ; 0 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  %i.kw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.it) ; 0 uses
  %i.kx = load ptr, ptr %i.it, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i79, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80, label %bb.v

bb.v:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78
  %i.ky = load ptr, ptr %i.iv, align 8, !tbaa !348
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80: ; preds = %bb.v, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78
  %i.lc = load ptr, ptr %i.iq, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i81 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i1.i81, label %_ZN9CenteringILi1EED2Ev.exit82, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80
  %i.ld = load ptr, ptr %i.is, align 8, !tbaa !338
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lg) #48
  br label %_ZN9CenteringILi1EED2Ev.exit82

_ZN9CenteringILi1EED2Ev.exit82:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  store i32 2, ptr %8, align 8, !tbaa !1257
  store i32 1, ptr %i.ip, align 4, !tbaa !1258
  %i.lh = load ptr, ptr %i.fr, align 16, !tbaa !335 ; 3 uses
  %i.li = load ptr, ptr %i.ct, align 8, !tbaa !336 ; 3 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i59.1 = icmp eq ptr %i.lh, %i.li
  br i1 %.not.i.i.i.i.i59.1, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1, label %bb.x

bb.x:                                             ; preds = %_ZN9CenteringILi1EED2Ev.exit82
  %i.lm = icmp ugt i64 %i.ll, 9223372036854775804
  br i1 %i.lm, label %bb.s, label %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1, !prof !201

_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1: ; preds = %bb.x
  %i.ln = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #45
  %.pre149 = load ptr, ptr %i.ct, align 8, !tbaa !337
  %.pre150 = load ptr, ptr %i.fr, align 16, !tbaa !337
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1: ; preds = %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1, %_ZN9CenteringILi1EED2Ev.exit82
  %i.lo = phi ptr [ %.pre150, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1 ], [ %i.lh, %_ZN9CenteringILi1EED2Ev.exit82 ] ; 3 uses
  %i.lp = phi ptr [ %.pre149, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1 ], [ %i.li, %_ZN9CenteringILi1EED2Ev.exit82 ] ; 5 uses
  %i.lq = phi ptr [ %i.ln, %_ZNSt15__new_allocatorI3LocILi1EEE8allocateEmPKv.exit.i.i.i.i.i60.1 ], [ null, %_ZN9CenteringILi1EED2Ev.exit82 ] ; 7 uses
  store ptr %i.lq, ptr %i.iq, align 8, !tbaa !336
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ll
  store ptr %i.lr, ptr %i.is, align 8, !tbaa !338
  %.not7.i.i.i.i.i.i62.1 = icmp eq ptr %i.lp, %i.lo
  br i1 %.not7.i.i.i.i.i.i62.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1, label %.lr.ph.i.i.i.i.i.i63.1.preheader

.lr.ph.i.i.i.i.i.i63.1.preheader:                 ; preds = %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1
  %i.ls = ptrtoaddr ptr %i.lq to i64
  %i.lt = ptrtoaddr ptr %i.lp to i64              ; 2 uses
  %i.lu = ptrtoaddr ptr %i.lo to i64
  %i.lv = add i64 %i.lu, -4
  %i.lw = sub i64 %i.lv, %i.lt                    ; 2 uses
  %i.lx = lshr i64 %i.lw, 2
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check279 = icmp ult i64 %i.lw, 44
  %i.lz = sub i64 %i.lt, %i.ls
  %diff.check281 = icmp ugt i64 %i.lz, -32
  %or.cond297 = or i1 %min.iters.check279, %diff.check281
  br i1 %or.cond297, label %.lr.ph.i.i.i.i.i.i63.1.preheader298, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph.i.i.i.i.i.i63.1.preheader
  %n.vec283 = and i64 %i.ly, 9223372036854775800  ; 3 uses
  %i.ma = shl i64 %n.vec283, 2                    ; 2 uses
  %i.mb = getelementptr i8, ptr %i.lq, i64 %i.ma  ; 2 uses
  %i.mc = getelementptr i8, ptr %i.lp, i64 %i.ma
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next290, %vector.body284 ] ; 2 uses
  %i.md = shl i64 %index285, 2                    ; 2 uses
  %next.gep286 = getelementptr i8, ptr %i.lq, i64 %i.md ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.lp, i64 %i.md ; 2 uses
  %i.me = getelementptr i8, ptr %next.gep287, i64 16
  %wide.load288 = load <4 x i32>, ptr %next.gep287, align 4, !tbaa !340
  %wide.load289 = load <4 x i32>, ptr %i.me, align 4, !tbaa !340
  %i.mf = getelementptr i8, ptr %next.gep286, i64 16
  store <4 x i32> %wide.load288, ptr %next.gep286, align 4, !tbaa !165
  store <4 x i32> %wide.load289, ptr %i.mf, align 4, !tbaa !165
  %index.next290 = add nuw i64 %index285, 8       ; 2 uses
  %i.mg = icmp eq i64 %index.next290, %n.vec283
  br i1 %i.mg, label %middle.block291, label %vector.body284, !llvm.loop !1248

middle.block291:                                  ; preds = %vector.body284
  %cmp.n292 = icmp eq i64 %i.ly, %n.vec283
  br i1 %cmp.n292, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1, label %.lr.ph.i.i.i.i.i.i63.1.preheader298

.lr.ph.i.i.i.i.i.i63.1.preheader298:              ; preds = %.lr.ph.i.i.i.i.i.i63.1.preheader, %middle.block291
  %.09.i.i.i.i.i.i64.1.ph = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i63.1.preheader ], [ %i.mb, %middle.block291 ]
  %.sroa.04.08.i.i.i.i.i.i65.1.ph = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i63.1.preheader ], [ %i.mc, %middle.block291 ]
  br label %.lr.ph.i.i.i.i.i.i63.1

.lr.ph.i.i.i.i.i.i63.1:                           ; preds = %.lr.ph.i.i.i.i.i.i63.1.preheader298, %.lr.ph.i.i.i.i.i.i63.1
  %.09.i.i.i.i.i.i64.1 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i63.1 ], [ %.09.i.i.i.i.i.i64.1.ph, %.lr.ph.i.i.i.i.i.i63.1.preheader298 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i65.1 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.i63.1 ], [ %.sroa.04.08.i.i.i.i.i.i65.1.ph, %.lr.ph.i.i.i.i.i.i63.1.preheader298 ] ; 2 uses
  %i.mh = load i32, ptr %.sroa.04.08.i.i.i.i.i.i65.1, align 4, !tbaa !340
  store i32 %i.mh, ptr %.09.i.i.i.i.i.i64.1, align 4, !tbaa !165
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i65.1, i64 4 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i64.1, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i66.1 = icmp eq ptr %i.mi, %i.lo
  br i1 %.not.i.i.i.i.i.i66.1, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1, label %.lr.ph.i.i.i.i.i.i63.1, !llvm.loop !1249

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1: ; preds = %.lr.ph.i.i.i.i.i.i63.1, %middle.block291, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1
  %.0.lcssa.i.i.i.i.i.i68.1 = phi ptr [ %i.lq, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i61.1 ], [ %i.mb, %middle.block291 ], [ %i.mj, %.lr.ph.i.i.i.i.i.i63.1 ]
  store ptr %.0.lcssa.i.i.i.i.i.i68.1, ptr %i.ir, align 8, !tbaa !335
  %i.mk = load ptr, ptr %i.gv, align 16, !tbaa !345 ; 3 uses
  %i.ml = load ptr, ptr %i.cv, align 8, !tbaa !346 ; 3 uses
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i69.1 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not.i.i.i.i4.i69.1, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1
  %i.mp = icmp ugt i64 %i.mo, 9223372036854775800
  br i1 %i.mp, label %bb.u, label %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1, !prof !201

_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1: ; preds = %bb.y
  %i.mq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #45
  %.pre151 = load ptr, ptr %i.cv, align 8, !tbaa !347
  %.pre152 = load ptr, ptr %i.gv, align 16, !tbaa !347
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1: ; preds = %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1
  %i.mr = phi ptr [ %.pre152, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1 ], [ %i.mk, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1 ] ; 2 uses
  %i.ms = phi ptr [ %.pre151, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1 ], [ %i.ml, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1 ] ; 2 uses
  %i.mt = phi ptr [ %i.mq, %_ZNSt15__new_allocatorI6VectorILi1Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i70.1 ], [ null, %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i67.1 ] ; 4 uses
  store ptr %i.mt, ptr %i.it, align 8, !tbaa !346
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mo
  store ptr %i.mu, ptr %i.iv, align 8, !tbaa !348
  %.not7.i.i.i.i.i5.i72.1 = icmp eq ptr %i.ms, %i.mr
  br i1 %.not7.i.i.i.i.i5.i72.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1, label %.lr.ph.i.i.i.i.i6.i73.1

.lr.ph.i.i.i.i.i6.i73.1:                          ; preds = %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1, %.lr.ph.i.i.i.i.i6.i73.1
  %.09.i.i.i.i.i7.i74.1 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i6.i73.1 ], [ %i.mt, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i75.1 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i6.i73.1 ], [ %i.ms, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1 ] ; 2 uses
  %i.mv = load double, ptr %.sroa.04.08.i.i.i.i.i8.i75.1, align 8, !tbaa !350
  store double %i.mv, ptr %.09.i.i.i.i.i7.i74.1, align 8, !tbaa !350
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i75.1, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i74.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i76.1 = icmp eq ptr %i.mw, %i.mr
  br i1 %.not.i.i.i.i.i9.i76.1, label %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1, label %.lr.ph.i.i.i.i.i6.i73.1, !llvm.loop !14

_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1: ; preds = %.lr.ph.i.i.i.i.i6.i73.1, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1
  %.0.lcssa.i.i.i.i.i10.i77.1 = phi ptr [ %i.mt, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i71.1 ], [ %i.mx, %.lr.ph.i.i.i.i.i6.i73.1 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i77.1, ptr %i.iu, align 8, !tbaa !345
  %i.my = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !330
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !332 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 56
  %i.ne = load i64, ptr %8, align 8
  store i64 %i.ne, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.ng = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, ptr noundef nonnull align 8 dereferenceable(24) %i.iq) ; 0 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 88
  %i.ni = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.nh, ptr noundef nonnull align 8 dereferenceable(24) %i.it) ; 0 uses
  %i.nj = load ptr, ptr %i.it, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i79.1 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i79.1, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1, label %bb.z

bb.z:                                             ; preds = %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1
  %i.nk = load ptr, ptr %i.iv, align 8, !tbaa !348
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nn) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1: ; preds = %bb.z, %_ZN9CenteringILi1EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi1EESaIS5_EERKS3_I6VectorILi1Ed4FullESaISC_EE.exit78.1
  %i.no = load ptr, ptr %i.iq, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i81.1 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i1.i81.1, label %_ZN9CenteringILi1EED2Ev.exit82.1, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1
  %i.np = load ptr, ptr %i.is, align 8, !tbaa !338
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.no to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.ns) #48
  br label %_ZN9CenteringILi1EED2Ev.exit82.1

_ZN9CenteringILi1EED2Ev.exit82.1:                 ; preds = %bb.aa, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i80.1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.nt = load ptr, ptr %4, align 16, !tbaa !336  ; 2 uses
  %i.nu = load ptr, ptr %i.de, align 8, !tbaa !335
  %.not.i.i91 = icmp eq ptr %i.nu, %i.nt
  br i1 %.not.i.i91, label %_ZNSt6vectorI3LocILi1EESaIS1_EE5clearEv.exit92, label %bb.af

bb.ab:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !348
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.qd to i64
  %i.nz = sub i64 %i.nx, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.nz) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84: ; preds = %bb.ab, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE5clearEv.exit94.1
  %i.oa = load ptr, ptr %i.pz, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i85 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i1.i85, label %_ZN9CenteringILi1EED2Ev.exit86, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !338
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #48
  br label %_ZN9CenteringILi1EED2Ev.exit86

_ZN9CenteringILi1EED2Ev.exit86:                   ; preds = %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i84, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  store i32 0, ptr %2, align 4, !tbaa !165
  store double 0.000000e+00, ptr %3, align 8, !tbaa !350
  call void @_ZN9CenteringILi1EE8addValueERK3LocILi1EERK6VectorILi1Ed4FullE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.og = load ptr, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !328
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !330
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !332 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %i.ok = load i64, ptr %1, align 8
  store i64 %i.ok, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  %i.om = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ol, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 0 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 88
  %i.oo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.on, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  store i32 0, ptr %10, align 8, !tbaa !1257
  %i.op = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 1, ptr %i.op, align 4, !tbaa !1258
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oq, i8 0, i64 48, i1 false)
  %i.or = load i64, ptr %10, align 8
  store i64 %i.or, ptr %1, align 8
  %i.os = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.oq) ; 0 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ou = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.ot) ; 0 uses
  %i.ov = load ptr, ptr %i.ot, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i87, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88, label %bb.ad

bb.ad:                                            ; preds = %_ZN9CenteringILi1EED2Ev.exit86
  %i.ow = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !348
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.ov to i64
  %i.pa = sub i64 %i.oy, %i.oz
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef %i.pa) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EED2Ev.exit.i88: ; preds = %bb.ad, %_ZN9CenteringILi1EED2Ev.exit86
  %i.pb = load ptr, ptr %i.oq, align 8, !tbaa !336 ; 3 uses
  %.not.i.i.i1.i89 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i1.i89, label %_ZN9CenteringILi1EED2Ev.exit90, label %bb.ae
end_hunk_0
