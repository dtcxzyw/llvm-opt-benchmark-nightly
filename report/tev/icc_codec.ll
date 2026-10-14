Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/icc_codec?download=true
inline.NumInlined: 507
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_17ShuffleEP22JxlMemoryManagerStructPhmm:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.039.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.039.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !17
  %i.ay = add nuw i64 %.039.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !93

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.039.unr = phi i64 [ %.039.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph.prol ]
  %i.az = sub i64 %.039.ph, %2
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge, label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.02338 = phi i64 [ 0, %.lr.ph.new ], [ %i.bo, %bb.d ] ; 3 uses
  %.02437 = phi i64 [ 0, %.lr.ph.new ], [ %spec.select30.1, %bb.d ] ; 2 uses
  %.02536 = phi i64 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.02437
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02338
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !17
  %i.bf = add i64 %.02437, %i.d                   ; 2 uses
  %.not = icmp ult i64 %i.bf, %2                  ; 2 uses
  %i.bg = add i64 %.02536, 1                      ; 2 uses
  %spec.select = select i1 %.not, i64 %.02536, i64 %i.bg ; 2 uses
  %spec.select30 = select i1 %.not, i64 %i.bf, i64 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select30
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.02338
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !17
  %i.bm = add i64 %spec.select30, %i.d            ; 2 uses
  %.not.1 = icmp ult i64 %i.bm, %2                ; 2 uses
  %i.bn = add i64 %spec.select, 1                 ; 2 uses
  %spec.select.1 = select i1 %.not.1, i64 %spec.select, i64 %i.bn
  %spec.select30.1 = select i1 %.not.1, i64 %i.bm, i64 %i.bn ; 2 uses
  %i.bo = add nuw i64 %.02338, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %iter.check.unr-lcssa, label %bb.d, !llvm.loop !94

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.039 = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.039.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.039
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.039
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !17
  %i.bs = add nuw i64 %.039, 1                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !17
  %i.bw = add nuw i64 %.039, 2                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !17
  %i.ca = add nuw i64 %.039, 3                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !17
  %i.ce = add nuw i64 %.039, 4                    ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %i.ce, %2
  br i1 %exitcond43.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.pr = load i32, ptr %i.j, align 8, !tbaa !24
  %i.cf = icmp eq i32 %.pr, 0
  br i1 %i.cf, label %bb.e, label %_ZN3jxl8StatusOrINS_11PaddedBytesEED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #13
  br label %_ZN3jxl8StatusOrINS_11PaddedBytesEED2Ev.exit

_ZN3jxl8StatusOrINS_11PaddedBytesEED2Ev.exit:     ; preds = %_ZN3jxl11PaddedBytes16WithInitialSpaceEP22JxlMemoryManagerStructm.exit, %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cg) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %i.q
}

declare noundef zeroext i8 @_ZN3jxl21LinearPredictICCValueEPKhmmmmi(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl9ICCReader4InitEPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef initializes((56, 64)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.jxl::StatusOr.23", align 8  ; 8 uses
  %3 = alloca %"class.jxl::ANSSymbolReader", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = add i64 %i.g, %i.i
  %i.k = shl i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = sub i64 %i.s, %i.f
  %i.u = shl i64 %i.t, 3
  %.not.i.not = icmp ugt i64 %i.n, %i.u
  br i1 %.not.i.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.n, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef i64 @_ZN3jxl8U64Coder4ReadEPNS_9BitReaderE(ptr noundef nonnull %1) #13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !59
  %i.ad = icmp ugt i64 %i.ab, 268435456
  br i1 %i.ad, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ag = tail call i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef %i.w, ptr noundef nonnull %1, i64 noundef 41, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i1 noundef zeroext false) #13 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN3jxl15ANSSymbolReader6CreateEPKNS_7ANSCodeEPNS_9BitReaderEm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.23") align 8 %2, ptr noundef nonnull %i.ae, ptr noundef nonnull %1, i64 noundef 0) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 608 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(604) %3, ptr noundef nonnull align 8 dereferenceable(612) %2, i64 44, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #13
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(532) %i.an, ptr noundef nonnull align 8 dereferenceable(532) %i.ao, i64 532, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(604) %i.ap, ptr noundef nonnull align 8 dereferenceable(604) %3, i64 44, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.al) #13 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(532) %i.as, ptr noundef nonnull align 8 dereferenceable(532) %i.an, i64 532, i1 false)
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store i64 0, ptr %0, align 8, !tbaa !60
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !19
  %.sroa.speculated34 = call i64 @llvm.umin.i64(i64 %i.at, i64 1024) ; 2 uses
  %i.au = call i32 @_ZN3jxl11PaddedBytes7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 noundef %.sroa.speculated34) #15 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN3jxl11PaddedBytes6resizeEm.exit, label %bb.m

_ZN3jxl11PaddedBytes6resizeEm.exit:               ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i64 %.sroa.speculated34, ptr %i.aw, align 8, !tbaa !16
  %.pr = load i64, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated66 = call i64 @llvm.umin.i64(i64 %i.ax, i64 2)
  %i.ay = icmp ult i64 %.pr, %.sroa.speculated66
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3jxl11PaddedBytes6resizeEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.ba = phi i64 [ %.pr, %.lr.ph ], [ %i.bq, %bb.i ] ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !13
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bd, %bb.h ], [ 0, %bb.g ]
  %i.bf = call noundef i64 @_ZN3jxl13ICCANSContextEmmm(i64 noundef %i.ba, i64 noundef %i.be, i64 noundef 0) #13
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !61, !noalias !109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17, !noalias !109
  %i.bj = zext i8 %i.bi to i64
  %i.bk = call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %i.ap, i64 noundef %i.bj, ptr noundef nonnull %1) #15
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = load i64, ptr %0, align 8, !tbaa !60
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !17
  %i.bp = load i64, ptr %0, align 8, !tbaa !60
  %i.bq = add i64 %i.bp, 1                        ; 4 uses
  store i64 %i.bq, ptr %0, align 8, !tbaa !60
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.br, i64 2)
  %i.bs = icmp ult i64 %i.bq, %.sroa.speculated
  br i1 %i.bs, label %bb.g, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.i, %_ZN3jxl11PaddedBytes6resizeEm.exit
  %.pr56 = phi i64 [ %.pr, %_ZN3jxl11PaddedBytes6resizeEm.exit ], [ %i.bq, %bb.i ] ; 2 uses
  %.lcssa = phi i64 [ %i.ax, %_ZN3jxl11PaddedBytes6resizeEm.exit ], [ %i.br, %bb.i ]
  %i.bt = icmp ugt i64 %.lcssa, 22
  br i1 %i.bt, label %thread-pre-split, label %.critedge

thread-pre-split:                                 ; preds = %._crit_edge
  %i.bu = icmp ult i64 %.pr56, 22
  br i1 %i.bu, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %thread-pre-split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph67, %bb.j
  %i.bw = phi i64 [ %.pr56, %.lr.ph67 ], [ %i.cq, %bb.j ] ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.by, i64 -2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = zext i8 %i.cd to i64
  %i.cf = call noundef i64 @_ZN3jxl13ICCANSContextEmmm(i64 noundef %i.bw, i64 noundef %i.cb, i64 noundef %i.ce) #13
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !61, !noalias !110
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17, !noalias !110
  %i.cj = zext i8 %i.ci to i64
  %i.ck = call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %i.ap, i64 noundef %i.cj, ptr noundef nonnull %1) #15
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = load i64, ptr %0, align 8, !tbaa !60
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !17
  %i.cp = load i64, ptr %0, align 8, !tbaa !60
  %i.cq = add i64 %i.cp, 1                        ; 3 uses
  store i64 %i.cq, ptr %0, align 8, !tbaa !60
  %i.cr = icmp ult i64 %i.cq, 22
  br i1 %i.cr, label %bb.j, label %._crit_edge68, !llvm.loop !106

._crit_edge68:                                    ; preds = %bb.j, %thread-pre-split
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !31
  %i.cy = add i64 %i.cw, %i.cx
  %i.cz = shl i64 %i.cy, 3
  %i.da = load i64, ptr %i.l, align 8, !tbaa !32
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  store i64 %i.db, ptr %i.o, align 8, !tbaa !33
  %i.dc = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cv
  %i.dg = shl i64 %i.df, 3
  %.not.i28.not = icmp ugt i64 %i.db, %i.dg
  br i1 %.not.i28.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge68
  %i.dh = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.di = call i32 @_ZN3jxl13CheckPreambleERKNS_11PaddedBytesEm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 noundef %i.dh) #15 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.k, %._crit_edge
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !31
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = shl i64 %i.dq, 3
  %i.ds = load i64, ptr %i.l, align 8, !tbaa !32
  %i.dt = load i64, ptr %i.x, align 8, !tbaa !57
  %i.du = add i64 %i.dt, %i.ds
  %i.dv = sub i64 %i.dr, %i.du
  store i64 %i.dv, ptr %i.y, align 8, !tbaa !58
  %i.dw = load i32, ptr %i.ai, align 8, !tbaa !108
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.l, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit

bb.l:                                             ; preds = %.critedge
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #13
  br label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit

_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit: ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.u

bb.m:                                             ; preds = %bb.k, %._crit_edge68, %bb.f
  %.sroa.037.0.ph = phi i32 [ %i.di, %bb.k ], [ %i.au, %bb.f ], [ -1, %._crit_edge68 ] ; 2 uses
  %.pr58 = load i32, ptr %i.ai, align 8, !tbaa !108
  %i.dy = icmp eq i32 %.pr58, 0
  br i1 %i.dy, label %bb.n, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30

bb.n:                                             ; preds = %bb.m
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #13
  br label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30

_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30: ; preds = %bb.e, %bb.m, %bb.n
  %.sroa.037.060 = phi i32 [ %.sroa.037.0.ph, %bb.n ], [ %.sroa.037.0.ph, %bb.m ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %.not.i31 = icmp ugt i64 %i.z, %i.m
  br i1 %.not.i31, label %bb.q, label %bb.p, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.dz = sub nuw i64 %i.m, %i.z
  store i64 %i.dz, ptr %i.l, align 8, !tbaa !32
  %i.ea = load i64, ptr %1, align 8, !tbaa !63
  %i.eb = lshr i64 %i.ea, %i.z
  br label %_ZN3jxl9BitReader8SkipBitsEm.exit

bb.q:                                             ; preds = %bb.o
  %i.ec = sub nuw i64 %i.z, %i.m                  ; 2 uses
  %i.ed = lshr i64 %i.ec, 3                       ; 2 uses
  %i.ee = and i64 %i.ec, 7                        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 16, i1 false)
  %i.ef = sub i64 %i.s, %i.e
  %i.eg = icmp ugt i64 %i.ed, %i.ef
  br i1 %i.eg, label %.thread.i, label %bb.r, !prof !64

.thread.i:                                        ; preds = %bb.q
  %i.eh = or disjoint i64 %i.ee, 8
  store ptr %i.r, ptr %i.a, align 8, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed ; 4 uses
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !29
  %i.ej = icmp ugt ptr %i.ei, %i.q
  br i1 %i.ej, label %bb.s, label %bb.t, !prof !111

bb.s:                                             ; preds = %bb.r, %.thread.i
  %.020.i = phi i64 [ %i.eh, %.thread.i ], [ %i.ee, %bb.r ]
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !32
  %.pre12.i = load i64, ptr %1, align 8, !tbaa !63
  br label %_ZN3jxl9BitReader6RefillEv.exit.i

bb.t:                                             ; preds = %bb.r
  %.0.copyload.i.i = load i64, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 7
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !29
  br label %_ZN3jxl9BitReader6RefillEv.exit.i

_ZN3jxl9BitReader6RefillEv.exit.i:                ; preds = %bb.t, %bb.s
  %.019.i = phi i64 [ %.020.i, %bb.s ], [ %i.ee, %bb.t ] ; 2 uses
  %i.el = phi i64 [ %.pre12.i, %bb.s ], [ %.0.copyload.i.i, %bb.t ]
  %i.em = phi i64 [ %.pre.i, %bb.s ], [ 56, %bb.t ]
  %i.en = sub i64 %i.em, %.019.i
  store i64 %i.en, ptr %i.l, align 8, !tbaa !32
  %i.eo = lshr i64 %i.el, %.019.i
  br label %_ZN3jxl9BitReader8SkipBitsEm.exit

_ZN3jxl9BitReader8SkipBitsEm.exit:                ; preds = %bb.p, %_ZN3jxl9BitReader6RefillEv.exit.i
  %storemerge.i = phi i64 [ %i.eb, %bb.p ], [ %i.eo, %_ZN3jxl9BitReader6RefillEv.exit.i ]
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl9BitReader8SkipBitsEm.exit, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit, %bb.d, %bb.c, %bb.a, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30
  %.sroa.037.1 = phi i32 [ -1, %bb.a ], [ %i.ag, %bb.d ], [ %.sroa.037.060, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30 ], [ 1, %bb.c ], [ 0, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit ], [ 0, %_ZN3jxl9BitReader8SkipBitsEm.exit ]
  ret i32 %.sroa.037.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_ZN3jxl9ICCReader8CheckEOIEPNS_9BitReaderE(ptr nofree noundef captures(none) initializes((56, 64)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_0
