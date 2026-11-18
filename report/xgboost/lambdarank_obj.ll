Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/lambdarank_obj?download=true
inline.NumInlined: 8766
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7xgboost3obj8cpu_impl28LambdaRankUpdatePositionBiasEPKNS_7ContextENS_6linalg10TensorViewIKdLi1EEES8_PNS5_6TensorIdLi1EEESB_SB_SB_St10shared_ptrINS_3ltr12RankingCacheEE:bb.a
  tail call void @_ZSt9terminatev() #37, !noalias !438
  unreachable

_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit23: ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIdE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %5), !noalias !439
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24, !noalias !439 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !29, !noalias !439
  %switch.i.i.i25 = icmp ult i8 %i.q, 2
  br i1 %switch.i.i.i25, label %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit27, label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit23
  tail call void @_ZSt9terminatev() #37, !noalias !439
  unreachable

_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit27: ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit23
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIdE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(17) %6), !noalias !440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24, !noalias !440 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !29, !noalias !440
  %switch.i.i.i29 = icmp ult i8 %i.u, 2
  br i1 %switch.i.i.i29, label %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit31, label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit27
  tail call void @_ZSt9terminatev() #37, !noalias !440
  unreachable

_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit31: ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit27
  %i.v = load ptr, ptr %7, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.x, align 8
  tail call void @_ZNK7xgboost16HostDeviceVectorIjE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 %.sroa.0.0.copyload.i.i)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.x, align 8
  %i.y = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit31
  %i.aa = tail call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIjE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_ZNK7xgboost3ltr12RankingCache12DataGroupPtrEPKNS_7ContextE.exit

bb.g:                                             ; preds = %_ZN7xgboost6linalg6TensorIdLi1EE8HostViewEv.exit31
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %.fca.0.insert.i.i.i = insertvalue { i64, ptr } poison, i64 %i.ai, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i.i, ptr %i.ae, 1
  br label %_ZNK7xgboost3ltr12RankingCache12DataGroupPtrEPKNS_7ContextE.exit

_ZNK7xgboost3ltr12RankingCache12DataGroupPtrEPKNS_7ContextE.exit: ; preds = %bb.f, %bb.g
  %.pn.i = phi { i64, ptr } [ %i.aa, %bb.f ], [ %.fca.1.insert.i.i.i, %bb.g ] ; 2 uses
  %i.aj = extractvalue { i64, ptr } %.pn.i, 0     ; 2 uses
  %i.ak = extractvalue { i64, ptr } %.pn.i, 1     ; 2 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !47
  %i.as = fadd double %i.ar, 1.000000e+00
  %i.at = fdiv double 1.000000e+00, %i.as         ; 2 uses
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %.preheader, label %.lr.ph122

.lr.ph122:                                        ; preds = %_ZNK7xgboost3ltr12RankingCache12DataGroupPtrEPKNS_7ContextE.exit
  %i.au = load i64, ptr %1, align 8               ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %.in.i.i, align 8         ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = load i64, ptr %2, align 8               ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %.in.i.i38 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %.in.i.i38, align 8       ; 3 uses
  %i.bf = icmp ne ptr %i.be, null
  %ident.check = icmp ne i64 %i.au, 1
  %ident.check140 = icmp ne i64 %i.ba, 1
  %i.bg = or i1 %ident.check, %ident.check140
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit47
  %i.bh = icmp ugt i64 %i.ao, %i.bp
  br i1 %i.bh, label %bb.h, label %.preheader, !llvm.loop !424

.preheader:                                       ; preds = %.loopexit, %_ZNK7xgboost3ltr12RankingCache12DataGroupPtrEPKNS_7ContextE.exit
  %i.bi = icmp ne i64 %i.f, 0
  %i.bj = select i1 %.fr, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph124.split, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph122, %.loopexit
  %i.bk = phi i64 [ 0, %.lr.ph122 ], [ %i.bp, %.loopexit ] ; 2 uses
  %.0121 = phi i32 [ 0, %.lr.ph122 ], [ %i.bo, %.loopexit ]
  %i.bl = icmp ugt i64 %i.aj, %i.bk
  br i1 %i.bl, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !50 ; 2 uses
  %i.bo = add i32 %.0121, 1                       ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 4 uses
  %i.bq = icmp ugt i64 %i.aj, %i.bp
  br i1 %i.bq, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit32, label %bb.j, !prof !49

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit32: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bp
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !50
  %i.bt = sub i32 %i.bs, %i.bn
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %7, align 8, !tbaa !37    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !51
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit32
  %i.bz = tail call noundef i32 @_ZNK7xgboost3ltr15LambdaRankParam7NumPairEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bv)
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK7xgboost3ltr12RankingCache15MaxPositionSizeEv.exit

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !31
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 32)
  br label %_ZNK7xgboost3ltr12RankingCache15MaxPositionSizeEv.exit

_ZNK7xgboost3ltr12RankingCache15MaxPositionSizeEv.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ca, %bb.k ], [ %.sroa.speculated.i, %bb.l ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.bu) ; 10 uses
  %i.cd = zext i32 %i.bn to i64                   ; 2 uses
  %i.ce = mul i64 %i.au, %i.cd
  %i.cf = select i1 %i.ax, i64 0, i64 %i.ce       ; 4 uses
  %.not8.i.i = icmp ugt i64 %i.cf, %i.aw
  br i1 %.not8.i.i, label %bb.m, label %bb.n, !prof !52

bb.m:                                             ; preds = %_ZNK7xgboost3ltr12RankingCache15MaxPositionSizeEv.exit
  tail call void @_ZSt9terminatev() #37, !noalias !441
  unreachable

bb.n:                                             ; preds = %_ZNK7xgboost3ltr12RankingCache15MaxPositionSizeEv.exit
  %i.cg = icmp eq i64 %i.aw, %i.cf
  %i.ch = or i1 %i.cg, %i.az
  br i1 %i.ch, label %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit, label %bb.o, !prof !49

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt9terminatev() #37, !noalias !441
  unreachable

_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit: ; preds = %bb.n
  %i.ci = getelementptr [8 x i8], ptr %i.ay, i64 %i.cf ; 6 uses
  %i.cj = mul i64 %i.ba, %i.cd
  %i.ck = select i1 %i.bd, i64 0, i64 %i.cj       ; 4 uses
  %.not8.i.i37 = icmp ugt i64 %i.ck, %i.bc
  br i1 %.not8.i.i37, label %bb.p, label %bb.q, !prof !52

bb.p:                                             ; preds = %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit
  tail call void @_ZSt9terminatev() #37, !noalias !442
  unreachable

bb.q:                                             ; preds = %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit
  %i.cl = icmp eq i64 %i.bc, %i.ck
  %i.cm = or i1 %i.cl, %i.bf
  br i1 %i.cm, label %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit47, label %bb.r, !prof !49

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt9terminatev() #37, !noalias !442
  unreachable

_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit47: ; preds = %bb.q
  %i.cn = getelementptr [8 x i8], ptr %i.be, i64 %i.ck ; 6 uses
  %.not125 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not125, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK7xgboost6linalg10TensorViewIKdLi1EE5SliceIJNS0_6detail8RangeTagIjEEEEEDaDpOT_.exit47
  %min.iters.check = icmp samesign ult i64 %.sroa.speculated, 14
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bg
  br i1 %brmerge, label %.lr.ph.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.co = shl nuw nsw i64 %.sroa.speculated, 3    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.o, i64 %i.co   ; 3 uses
  %i.cq = getelementptr i8, ptr %i.s, i64 %i.co   ; 3 uses
  %8 = add nuw nsw i64 %i.cf, %.sroa.speculated
  %9 = shl nuw nsw i64 %8, 3
  %10 = getelementptr i8, ptr %i.ay, i64 %9       ; 2 uses
  %i.cr = add nuw nsw i64 %i.ck, %.sroa.speculated
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = getelementptr i8, ptr %i.be, i64 %i.cs  ; 2 uses
  %bound0.a = icmp ult ptr %i.o, %i.cq
  %bound1.a = icmp ult ptr %i.s, %i.cp
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0159 = icmp ult ptr %i.o, %10
  %bound1160 = icmp ult ptr %i.ci, %i.cp
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict161
  %bound0162 = icmp ult ptr %i.o, %i.ct
  %bound1163 = icmp ult ptr %i.cn, %i.cp
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  %bound0166 = icmp ult ptr %i.s, %10
  %bound1167 = icmp ult ptr %i.ci, %i.cq
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %i.s, %i.ct
  %bound1171 = icmp ult ptr %i.cn, %i.cq
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  br i1 %conflict.rdx173, label %.lr.ph.preheader177, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.speculated, 4294967294  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !53, !alias.scope !443
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.cv, align 8, !tbaa !53, !alias.scope !444, !noalias !445
  %i.cw = fadd <2 x double> %wide.load, %wide.load174
  store <2 x double> %i.cw, ptr %i.cv, align 8, !tbaa !53, !alias.scope !444, !noalias !445
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index
  %wide.load175 = load <2 x double>, ptr %i.cx, align 8, !tbaa !53, !alias.scope !446
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.cy, align 8, !tbaa !53, !alias.scope !447, !noalias !448
  %i.cz = fadd <2 x double> %wide.load175, %wide.load176
  store <2 x double> %i.cz, ptr %i.cy, align 8, !tbaa !53, !alias.scope !447, !noalias !448
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader177

.lr.ph.preheader177:                              ; preds = %.lr.ph.preheader, %vector.memcheck, %middle.block
  %storemerge19120.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.neg = or disjoint i64 %storemerge19120.ph, 1
  %xtraiter = and i64 %.sroa.speculated, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader177
  %i.db = mul i64 %storemerge19120.ph, %i.au
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge19120.ph ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !53
  %i.dg = fadd double %i.dd, %i.df
  store double %i.dg, ptr %i.de, align 8, !tbaa !53
  %i.dh = mul i64 %storemerge19120.ph, %i.ba
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %storemerge19120.ph ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !53
  %i.dm = fadd double %i.dj, %i.dl
  store double %i.dm, ptr %i.dk, align 8, !tbaa !53
  %i.dn = or disjoint i64 %storemerge19120.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader177
  %storemerge19120.unr = phi i64 [ %storemerge19120.ph, %.lr.ph.preheader177 ], [ %i.dn, %.lr.ph.prol ]
  %i.do = icmp eq i64 %.sroa.speculated, %.neg
  br i1 %i.do, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %storemerge19120 = phi i64 [ %i.eo, %.lr.ph ], [ %storemerge19120.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dp = mul i64 %storemerge19120, %i.au
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge19120 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !53
  %i.du = fadd double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !53
  %i.dv = mul i64 %storemerge19120, %i.ba
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %storemerge19120 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ea = fadd double %i.dx, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !tbaa !53
  %i.eb = add nuw nsw i64 %storemerge19120, 1     ; 4 uses
  %i.ec = mul i64 %i.eb, %i.au
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !53
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.eb ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !53
  %i.eh = fadd double %i.ee, %i.eg
  store double %i.eh, ptr %i.ef, align 8, !tbaa !53
  %i.ei = mul i64 %i.eb, %i.ba
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !53
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.eb ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !53
  %i.en = fadd double %i.ek, %i.em
  store double %i.en, ptr %i.el, align 8, !tbaa !53
  %i.eo = add nuw nsw i64 %storemerge19120, 2     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.eo, %.sroa.speculated
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !435

._crit_edge:                                      ; preds = %bb.v, %.preheader
  ret void

.lr.ph124.split:                                  ; preds = %.preheader, %bb.v
  %storemerge123 = phi i64 [ %i.fd, %bb.v ], [ 0, %.preheader ] ; 5 uses
  %i.ep = load double, ptr %i.o, align 8, !tbaa !53 ; 2 uses
  %i.eq = fcmp ult double %i.ep, f0x3C9CD2B297D889BC
  br i1 %i.eq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph124.split
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %storemerge123
  %i.es = load double, ptr %i.er, align 8, !tbaa !53
  %i.et = fdiv double %i.es, %i.ep
  %i.eu = tail call double @pow(double noundef %i.et, double noundef %i.at) #11
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %storemerge123
  store double %i.eu, ptr %i.ev, align 8, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph124.split
  %i.ew = load double, ptr %i.s, align 8, !tbaa !53 ; 2 uses
  %i.ex = fcmp ult double %i.ew, f0x3C9CD2B297D889BC
  br i1 %i.ex, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %storemerge123
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !53
  %i.fa = fdiv double %i.ez, %i.ew
  %i.fb = tail call double @pow(double noundef %i.fa, double noundef %i.at) #11
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %storemerge123
  store double %i.fb, ptr %i.fc, align 8, !tbaa !53
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.fd = add nuw i64 %storemerge123, 1           ; 2 uses
  %exitcond126.not = icmp eq i64 %i.fd, %i.f
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph124.split, !llvm.loop !436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost3obj9cuda_impl25LambdaRankGetGradientNDCGEPKNS_7ContextEjRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoESt10shared_ptrINS_3ltr9NDCGCacheEENS_6linalg10TensorViewIKdLi1EEESJ_NSH_IdLi1EEESK_PNSG_6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(248) %3, ptr nofree noundef readnone align 8 captures(none) %4, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView") align 8 captures(none) %5, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView") align 8 captures(none) %6, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView.0") align 8 captures(none) %7, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView.0") align 8 captures(none) %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.12, i32 noundef 187)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.b

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.13, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit:      ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost3obj9cuda_impl28LambdaRankUpdatePositionBiasEPKNS_7ContextENS_6linalg10TensorViewIKdLi1EEES8_PNS5_6TensorIdLi1EEESB_SB_SB_St10shared_ptrINS_3ltr12RankingCacheEE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView") align 8 captures(none) %1, ptr nofree noundef readnone byval(%"class.xgboost::linalg::TensorView") align 8 captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone align 8 captures(none) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.12, i32 noundef 187)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.b

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.13, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.d

end_hunk_0
