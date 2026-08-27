Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_ZN16VoxelManipulator7addAreaERK9VoxelArea:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.n = load i16, ptr %i.m, align 2, !tbaa !120
  %.not9.i = icmp sgt i16 %i.l, %i.n
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = load i16, ptr %i.q, align 2, !tbaa !65
  %.not10.i = icmp slt i16 %i.p, %i.r
  br i1 %.not10.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i16, ptr %i.s, align 4, !tbaa !121
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i16, ptr %i.u, align 8, !tbaa !121
  %.not11.i = icmp sgt i16 %i.t, %i.v
  br i1 %.not11.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !62
  %.not12.i = icmp slt i16 %i.x, %i.z
  br i1 %.not12.i, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %_ZNK9VoxelArea8containsERKS_.exit

_ZNK9VoxelArea8containsERKS_.exit:                ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !122
  %.not86 = icmp sgt i16 %i.ab, %i.ad
  br i1 %.not86, label %_ZNK9VoxelArea8containsERKS_.exit.thread, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea8containsERKS_.exit.thread:         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZNK9VoxelArea8containsERKS_.exit
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !11
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !11
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %.not.i.i33 = icmp eq i32 %.sroa.20.0.copyload, 0
  %.not1.i.i34 = icmp eq i32 %.sroa.25.0.copyload, 0
  %or.cond.i.i35 = select i1 %.not.i.i33, i1 true, i1 %.not1.i.i34
  %.not2.i.i36 = icmp eq i32 %.sroa.30.0.copyload, 0
  %or.cond.i37 = select i1 %or.cond.i.i35, i1 true, i1 %.not2.i.i36
  br i1 %or.cond.i37, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i, label %bb.g

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i:   ; preds = %_ZNK9VoxelArea8containsERKS_.exit.thread
  %i.ae = load <2 x i16>, ptr %1, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load <4 x i16>, ptr %.sroa.11.0..sroa_idx48, align 4, !tbaa !12
  br label %_ZN9VoxelArea7addAreaERKS_.exit

bb.g:                                             ; preds = %_ZNK9VoxelArea8containsERKS_.exit.thread
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.18.0.copyload = load i16, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !12
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  %i.ag = load <2 x i16>, ptr %i.h, align 8, !tbaa !12
  %i.ah = load <2 x i16>, ptr %1, align 4, !tbaa !12
  %i.ai = tail call <2 x i16> @llvm.smin.v2i16(<2 x i16> %i.ah, <2 x i16> %i.ag) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = load i16, ptr %i.am, align 2, !tbaa !122
  %.sroa.11.0 = tail call i16 @llvm.smin.i16(i16 %i.ak, i16 %.sroa.11.0.copyload) ; 2 uses
  %.sroa.18.0 = tail call i16 @llvm.smax.i16(i16 %i.an, i16 %.sroa.18.0.copyload) ; 2 uses
  %i.ao = load <2 x i16>, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !12
  %i.ap = load <2 x i16>, ptr %i.al, align 2, !tbaa !12
  %i.aq = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.ap, <2 x i16> %i.ao) ; 2 uses
  %i.ar = sext <2 x i16> %i.aq to <2 x i32>
  %i.as = sext <2 x i16> %i.ai to <2 x i32>
  %i.at = sub nsw <2 x i32> %i.ar, %i.as
  %i.au = add nsw <2 x i32> %i.at, splat (i32 1)
  %i.av = sext i16 %.sroa.18.0 to i32
  %i.aw = sext i16 %.sroa.11.0 to i32
  %reass.sub101 = sub nsw i32 %i.av, %i.aw
  %i.ax = add nsw i32 %reass.sub101, 1
  %i.ay = insertelement <4 x i16> poison, i16 %.sroa.11.0, i64 0
  %i.az = shufflevector <2 x i16> %i.aq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x i16> %i.ay, <4 x i16> %i.az, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bb = insertelement <4 x i16> %i.ba, i16 %.sroa.18.0, i64 3
  br label %_ZN9VoxelArea7addAreaERKS_.exit

_ZN9VoxelArea7addAreaERKS_.exit:                  ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i, %bb.g
  %.sroa.30.0 = phi i32 [ %i.g, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.ax, %bb.g ] ; 3 uses
  %i.bc = phi <4 x i16> [ %i.af, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bd = phi <2 x i16> [ %i.ae, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.ai, %bb.g ] ; 3 uses
  %i.be = phi <2 x i32> [ %i.b, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.bf = extractelement <2 x i32> %i.be, i64 0   ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = extractelement <2 x i32> %i.be, i64 1   ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sext i32 %.sroa.30.0 to i64
  %i.bk = mul nsw i64 %i.bi, %i.bj
  %i.bl = mul i64 %i.bk, %i.bg
  %i.bm = icmp ugt i64 %i.bl, 150000000
  br i1 %i.bm, label %bb.h, label %_ZL9checkAreaRK9VoxelArea.exit

bb.h:                                             ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef 150000000)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %bb.i
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  invoke void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #21
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i: ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !123   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !50
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !50
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.cf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i
  %.pn.pn18.i = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @__cxa_free_exception(ptr %i.bn) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  %.pn.pn17.i = phi { ptr, i32 } [ %.pn.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread25.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ]
  resume { ptr, i32 } %.pn.pn17.i

bb.m:                                             ; preds = %bb.j
  unreachable

_ZL9checkAreaRK9VoxelArea.exit:                   ; preds = %_ZN9VoxelArea7addAreaERKS_.exit
  %i.cg = mul i32 %i.bh, %.sroa.30.0
  %i.ch = mul i32 %i.cg, %i.bf
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #22 ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cl, i8 1, i64 %i.ci, i1 false)
  %i.cm = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %i.cn = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !54 ; 3 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = load i16, ptr %.sroa.18.0..sroa_idx, align 2, !tbaa !55 ; 2 uses
  %.not96 = icmp sgt i16 %i.cn, %i.cp
  br i1 %.not96, label %._crit_edge99.split, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZL9checkAreaRK9VoxelArea.exit
  %i.cq = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !53 ; 2 uses
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %i.cs = load i16, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.not3092 = icmp sgt i16 %i.cq, %i.cs
  %i.ct = extractelement <4 x i16> %i.bc, i64 0
  %i.cu = sext i16 %i.ct to i32
  %i.cv = extractelement <2 x i16> %i.bd, i64 1
  %i.cw = sext i16 %i.cv to i32
  %i.cx = zext i32 %i.cm to i64                   ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2
  br i1 %.not3092, label %._crit_edge99.split, label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %i.cz = sext i16 %i.cs to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = extractelement <2 x i16> %i.bd, i64 0
  %i.dd = sext i16 %i.dc to i32
  %i.de = load i16, ptr %i.h, align 8, !tbaa !58
  %i.df = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !63
  %i.dg = sext i16 %i.de to i32
  %invariant.op94 = sub nsw i32 %i.dg, %i.dd
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !14
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !22
  %4 = tail call i16 @llvm.smax.i16(i16 %i.cn, i16 %i.cp)
  %smax102 = sext i16 %4 to i32
  br label %.lr.ph

._crit_edge99.split:                              ; preds = %._crit_edge, %.lr.ph98, %_ZL9checkAreaRK9VoxelArea.exit
  store <2 x i16> %i.bd, ptr %i.h, align 8, !tbaa !12
  store <4 x i16> %i.bc, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  store <2 x i32> %i.be, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !11
  store i32 %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ck, ptr %i.dj, align 8, !tbaa !14
  store ptr %i.cl, ptr %i.dl, align 8, !tbaa !22
  %i.dn = icmp eq ptr %i.dk, null
  br i1 %i.dn, label %bb.p, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph98.split, %._crit_edge
  %.02797 = phi i32 [ %i.co, %.lr.ph98.split ], [ %i.dt, %._crit_edge ] ; 4 uses
  %i.do = sub nsw i32 %.02797, %i.co
  %i.dp = mul nsw i32 %i.do, %i.df
  %invariant.op = sub i32 %i.dp, %i.cr
  %i.dq = sub nsw i32 %.02797, %i.cu
  %i.dr = mul nsw i32 %i.dq, %i.bh
  %i.ds = sub i32 %i.dr, %i.cw
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  %i.dt = add nsw i32 %.02797, 1
  %exitcond103.not = icmp eq i32 %.02797, %smax102
  br i1 %exitcond103.not, label %._crit_edge99.split, label %.lr.ph, !llvm.loop !124

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.093 = phi i32 [ %i.cr, %.lr.ph ], [ %i.ed, %bb.n ] ; 4 uses
  %.reass = add i32 %.093, %invariant.op
  %i.du = mul i32 %.reass, %i.cm
  %i.dv = add i32 %i.ds, %.093
  %i.dw = mul i32 %i.dv, %i.bf
  %.reass95 = add i32 %i.dw, %invariant.op94
  %i.dx = zext i32 %.reass95 to i64               ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dx
  %i.dz = zext i32 %i.du to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %i.ea, i64 %i.cy, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr align 1 %i.ec, i64 %i.cx, i1 false)
  %i.ed = add nsw i32 %.093, 1
  %exitcond.not = icmp eq i32 %.093, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !125

bb.o:                                             ; preds = %._crit_edge99.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge99.split
  %i.ee = icmp eq ptr %i.dm, null
  br i1 %i.ee, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.dm) #18
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.a, %bb.p, %bb.q, %_ZNK9VoxelArea8containsERKS_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator8copyFromEP7MapNodebRK9VoxelAreaN4core8vector3dIsEES7_RKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %3, i48 %4, i48 %5, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %6) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !126
  %i.h = icmp sgt i16 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.7.0.extract.shift = lshr i48 %5, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.i = sext i16 %.sroa.7.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !62
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = sub nsw i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63   ; 2 uses
  %i.p = mul nsw i32 %i.m, %i.o
  %.sroa.4.0.extract.shift = lshr i48 %5, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %i.q = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = load i16, ptr %i.e, align 2, !tbaa !127  ; 4 uses
  %i.t = sext i16 %i.s to i32
  %i.u = add i16 %.sroa.7.0.extract.trunc, 1
  %i.v = sext i16 %i.u to i32
  %i.w = sub nsw i32 %i.v, %i.l
  %i.x = mul nsw i32 %i.w, %i.o
  %i.y = add i32 %i.x, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = add i32 %i.r, %i.t
  %reass.mul58 = sub i32 %i.y, %i.ab
  %invariant.op = mul i32 %reass.mul58, %i.d
  %i.ac = icmp sgt i16 %i.s, 0
  br i1 %i.ac, label %.preheader.preheader, label %._crit_edge57

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.sroa.032.0.extract.trunc = trunc i48 %4 to i16
  %i.ad = sext i16 %.sroa.032.0.extract.trunc to i32
  %i.ae = load i16, ptr %3, align 4, !tbaa !66
  %i.af = sext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.ad, %i.af
  %i.ah = ashr i48 %4, 32
  %i.ai = trunc nsw i48 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !62
  %i.al = sext i16 %i.ak to i32
  %i.am = sub nsw i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63
  %i.ap = mul nsw i32 %i.am, %i.ao
  %.sroa.2.0.extract.shift = lshr i48 %4, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.aq = sext i16 %.sroa.2.0.extract.trunc to i32
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !65
  %i.au = sext i16 %i.at to i32
  %i.av = sub i32 %i.ar, %i.au
  %i.aw = mul i32 %i.av, %i.b
  %i.ax = add nsw i32 %i.ag, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !65
  %i.ba = sext i16 %i.az to i32
  %i.bb = sub i32 %i.r, %i.ba
  %i.bc = mul i32 %i.bb, %i.d
  %.sroa.0.0.extract.trunc = trunc i48 %5 to i16
  %i.bd = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !66
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg
  %i.bi = add nsw i32 %i.bc, %i.bh
  %i.bj = sext i32 %i.d to i64                    ; 2 uses
  %i.bk = sext i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bl = phi i16 [ %i.cy, %._crit_edge ], [ %i.s, %.preheader.preheader ] ; 4 uses
  %i.bm = phi i16 [ %i.cz, %._crit_edge ], [ %i.s, %.preheader.preheader ] ; 2 uses
  %.03356 = phi i16 [ %i.da, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03455 = phi i32 [ %.reass, %._crit_edge ], [ %i.bi, %.preheader.preheader ] ; 4 uses
  %.03554 = phi i32 [ %.136.lcssa, %._crit_edge ], [ %i.ax, %.preheader.preheader ] ; 4 uses
  %i.bn = icmp sgt i16 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bo = sext i32 %.03455 to i64
  %i.bp = sext i32 %.03554 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bq = load i16, ptr %6, align 2, !tbaa !128   ; 2 uses
  %i.br = icmp slt i16 %i.bq, 1
  br i1 %i.br, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.bs = sext i32 %.03455 to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %smax = tail call i16 @llvm.smax.i16(i16 %i.bl, i16 1)
  %i.bt = zext nneg i16 %smax to i32              ; 2 uses
  %i.bu = mul i32 %i.b, %i.bt
  %i.bv = add i32 %.03554, %i.bu
  %i.bw = mul i32 %i.d, %i.bt
  %i.bx = add i32 %.03455, %i.bw
  br label %._crit_edge

.lr.ph.split.us.splitthread-pre-split:            ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us
  %.pr79 = load i16, ptr %6, align 2, !tbaa !128
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.splitthread-pre-split, %.lr.ph.split.us.split.preheader
  %i.by = phi i16 [ %.pr79, %.lr.ph.split.us.splitthread-pre-split ], [ %i.bq, %.lr.ph.split.us.split.preheader ] ; 2 uses
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph.split.us.splitthread-pre-split ], [ %i.bs, %.lr.ph.split.us.split.preheader ] ; 3 uses
  %.049.us = phi i16 [ %i.cr, %.lr.ph.split.us.splitthread-pre-split ], [ 0, %.lr.ph.split.us.split.preheader ]
  %.13645.us = phi i32 [ %i.cq, %.lr.ph.split.us.splitthread-pre-split ], [ %.03554, %.lr.ph.split.us.split.preheader ]
  %i.bz = icmp slt i16 %i.by, 1
  br i1 %i.bz, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us, label %.lr.ph.preheader.i.i.i.i.us

.lr.ph.preheader.i.i.i.i.us:                      ; preds = %.lr.ph.split.us.split
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv69 ; 4 uses
  %i.cc = zext nneg i16 %i.by to i64
  %.idx.i.i.us = shl nuw nsw i64 %i.cc, 2         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.us
  %.pre.i.i.i.i.us = load i32, ptr %1, align 4    ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.us, -4            ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.us
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 3 uses
  %i.ch = shl i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
end_hunk_0
