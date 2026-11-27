Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cuda_gpu_mat?download=true
inline.NumInlined: 169
inline.NumDeleted: 76
begin_hunk_0_@_ZN2cv4cuda16createContinuousEiiiRKNS_12_OutputArrayE:bb.a

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.bz, align 8, !tbaa !43 ; 3 uses
  %i.cf = and i32 %i.ce, 4095
  %.not.i20 = icmp eq i32 %i.cf, %2
  %i.cg = and i32 %i.ce, 16384
  %i.ch = icmp ne i32 %i.cg, 0
  %or.cond.i21 = and i1 %.not.i20, %i.ch
  br i1 %or.cond.i21, label %bb.v, label %.critedge.i22

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %.not16.i25 = icmp eq i32 %i.cm, %i.ca
  br i1 %.not16.i25, label %bb.w, label %.critedge.i22

.critedge.i22:                                    ; preds = %bb.v, %bb.u, %bb.t
  tail call void @_ZN2cv4cuda7HostMem6createEiii(ptr noundef nonnull align 8 dereferenceable(60) %i.bz, i32 noundef 1, i32 noundef %i.ca, i32 noundef %2)
  %.pre.i23 = load i32, ptr %i.bz, align 8, !tbaa !43
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i22, %bb.v
  %i.cn = phi i32 [ %.pre.i23, %.critedge.i22 ], [ %i.ce, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.co = lshr i32 %i.cn, 5
  %i.cp = and i32 %i.co, 127
  %i.cq = add nuw nsw i32 %i.cp, 1
  call void @_ZNK2cv4cuda7HostMem7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::cuda::HostMem") align 8 %5, ptr noundef nonnull align 8 dereferenceable(60) %i.bz, i32 noundef %i.cq, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.cr = load i32, ptr %5, align 8, !tbaa !43    ; 2 uses
  store i32 %i.cr, ptr %4, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !45 ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !44 ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !46 ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !25 ; 3 uses
  store <2 x ptr> %i.dd, ptr %i.db, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !32 ; 2 uses
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !56 ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !56
  %i.dk = extractelement <2 x ptr> %i.dd, i64 1   ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.dk, null
  %i.dl = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> <ptr poison, ptr null, ptr poison, ptr poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.dn = shufflevector <2 x ptr> %i.dd, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <4 x ptr> %i.dn, <4 x ptr> %i.dm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br i1 %.not.i.i.i24, label %_ZN2cv4cuda7HostMemC2ERKS1_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = atomicrmw add ptr %i.dk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load i32, ptr %4, align 8, !tbaa !8
  %.pre4.i.i = load i32, ptr %i.cs, align 4, !tbaa !8
  %.pre5.i.i = load i32, ptr %i.cv, align 8, !tbaa !8
  %.pre6.i.i = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.dq = load <4 x ptr>, ptr %i.db, align 8, !tbaa !25
  %.pre11.i.i = load i32, ptr %i.dh, align 8, !tbaa !57
  br label %_ZN2cv4cuda7HostMemC2ERKS1_.exit.i.i

_ZN2cv4cuda7HostMemC2ERKS1_.exit.i.i:             ; preds = %bb.x, %bb.w
  %i.dr = phi i32 [ %i.dj, %bb.w ], [ %.pre11.i.i, %bb.x ]
  %i.ds = phi i64 [ %i.da, %bb.w ], [ %.pre6.i.i, %bb.x ]
  %i.dt = phi i32 [ %i.cx, %bb.w ], [ %.pre5.i.i, %bb.x ]
  %i.du = phi i32 [ %i.cu, %bb.w ], [ %.pre4.i.i, %bb.x ]
  %i.dv = phi i32 [ %i.cr, %bb.w ], [ %.pre.i.i, %bb.x ]
  %i.dw = phi <4 x ptr> [ %i.do, %bb.w ], [ %i.dq, %bb.x ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dy = load <2 x i32>, ptr %i.bz, align 8, !tbaa !8
  store i32 %i.dv, ptr %i.bz, align 8, !tbaa !8
  store i32 %i.du, ptr %i.dx, align 4, !tbaa !8
  store <2 x i32> %i.dy, ptr %4, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !8
  store i32 %i.dt, ptr %i.dz, align 8, !tbaa !8
  store i32 %i.ea, ptr %i.cv, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !16
  store i64 %i.ds, ptr %i.eb, align 8, !tbaa !16
  store i64 %i.ec, ptr %i.cy, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ee = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !25
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !32
  store <4 x ptr> %i.dw, ptr %i.cb, align 8, !tbaa !25
  store <2 x ptr> %i.ef, ptr %i.de, align 8, !tbaa !32
  store <2 x ptr> %i.ee, ptr %i.db, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !57
  store i32 %i.dr, ptr %i.eg, align 8, !tbaa !57
  store i32 %i.eh, ptr %i.dh, align 8, !tbaa !57
  invoke void @_ZN2cv4cuda7HostMem7releaseEv(ptr noundef nonnull align 8 dereferenceable(60) %4)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_ZN2cv4cuda7HostMemC2ERKS1_.exit.i.i
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #19
  unreachable

bb.z:                                             ; preds = %_ZN2cv4cuda7HostMemC2ERKS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  invoke void @_ZN2cv4cuda7HostMem7releaseEv(ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %_ZN12_GLOBAL__N_120createContinuousImplIN2cv4cuda7HostMemEEEviiiRT_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #19
  unreachable

_ZN12_GLOBAL__N_120createContinuousImplIN2cv4cuda7HostMemEEEviiiRT_.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN12_GLOBAL__N_120createContinuousImplIN2cv4cuda7HostMemEEEviiiRT_.exit, %_ZN12_GLOBAL__N_120createContinuousImplIN2cv4cuda6GpuMatEEEviiiRT_.exit, %_ZN12_GLOBAL__N_120createContinuousImplIN2cv3MatEEEviiiRT_.exit
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2cv12_OutputArray12getGpuMatRefEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZNK2cv12_OutputArray13getHostMemRefEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4cuda18ensureSizeIsEnoughEiiiRKNS_12_OutputArrayE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  switch i32 %i.a, label %bb.t [
    i32 65536, label %bb.b
    i32 589824, label %bb.i
    i32 524288, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1) ; 10 uses
  %i.c = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.b)
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.e = and i32 %i.d, 4095
  %.not.i = icmp eq i32 %i.e, %2
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %.not33.i = icmp eq ptr %i.g, %i.i
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = lshr i32 %i.d, 5
  %i.k = and i32 %i.j, 127
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = shl i32 %i.d, 2
  %i.n = and i32 %i.m, 124
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 1275511473185297, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 15
  %i.s = mul nuw nsw i32 %i.r, %i.l
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.t
  %i.ad = sub i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.ag = udiv i64 %i.ad, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !8
  %.sroa.speculated38.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ak) ; 2 uses
  %i.al = add nsw i32 %.sroa.speculated38.i, -1
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.af, %i.am
  %i.ao = sub i64 %i.y, %i.an
  %i.ap = udiv i64 %i.ao, %i.t
  %i.aq = trunc i64 %i.ap to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.aq)
  %i.ar = icmp slt i32 %.sroa.speculated38.i, %0
  %i.as = icmp slt i32 %.sroa.speculated.i, %1
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.h:                                             ; preds = %bb.f
  %4 = zext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  store i64 %7, ptr %i.aj, align 8
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.i:                                             ; preds = %bb.a
  %i.at = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2cv12_OutputArray12getGpuMatRefEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !17 ; 3 uses
  %i.ay = and i32 %i.ax, 4095
  %.not.i16 = icmp eq i32 %i.ay, %2
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %.not33.i17 = icmp eq ptr %i.av, %i.ba
  %or.cond45.i = select i1 %.not.i16, i1 %.not33.i17, i1 false
  br i1 %or.cond45.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = lshr i32 %i.ax, 5
  %i.bc = and i32 %i.bb, 127
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = shl i32 %i.ax, 2
  %i.bf = and i32 %i.be, 124
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = lshr i64 1275511473185297, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 15
  %i.bk = mul nuw nsw i32 %i.bj, %i.bd
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.av to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !19 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, %i.bl
  %i.bv = sub i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !15 ; 2 uses
  %i.by = udiv i64 %i.bv, %i.bx
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %.sroa.speculated39.i = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %i.cc) ; 2 uses
  %i.cd = add nsw i32 %.sroa.speculated39.i, -1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.bx, %i.ce
  %i.cg = sub i64 %i.bq, %i.cf
  %i.ch = udiv i64 %i.cg, %i.bl
  %i.ci = trunc i64 %i.ch to i32
  %.sroa.speculated.i18 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.ci)
  %i.cj = icmp slt i32 %.sroa.speculated39.i, %0
  %i.ck = icmp slt i32 %.sroa.speculated.i18, %1
  %or.cond.i19 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i19, label %bb.m, label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv4cuda6GpuMatEEEviiiRT_.exit

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable

_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv4cuda6GpuMatEEEviiiRT_.exit: ; preds = %bb.l
  store i32 %1, ptr %i.br, align 8, !tbaa !19
  store i32 %0, ptr %i.cb, align 4, !tbaa !18
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.n:                                             ; preds = %bb.a
  %i.cl = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZNK2cv12_OutputArray13getHostMemRefEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.cl, align 8, !tbaa !43 ; 3 uses
  %i.cq = and i32 %i.cp, 4095
  %.not.i20 = icmp eq i32 %i.cq, %2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not33.i21 = icmp eq ptr %i.cn, %i.cs
  %or.cond45.i22 = select i1 %.not.i20, i1 %.not33.i21, i1 false
  br i1 %or.cond45.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN2cv4cuda7HostMem6createEiii(ptr noundef nonnull align 8 dereferenceable(60) %i.cl, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.q:                                             ; preds = %bb.o
  %i.ct = lshr i32 %i.cp, 5
  %i.cu = and i32 %i.ct, 127
  %i.cv = add nuw nsw i32 %i.cu, 1
  %i.cw = shl i32 %i.cp, 2
  %i.cx = and i32 %i.cw, 124
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 1275511473185297, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i32 %i.da, 15
  %i.dc = mul nuw nsw i32 %i.db, %i.cv
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.cn to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !44 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dl, %i.dd
  %i.dn = sub i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !46 ; 2 uses
  %i.dq = udiv i64 %i.dn, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add i32 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %.sroa.speculated38.i23 = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %i.du) ; 2 uses
  %i.dv = add nsw i32 %.sroa.speculated38.i23, -1
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.dp, %i.dw
  %i.dy = sub i64 %i.di, %i.dx
  %i.dz = udiv i64 %i.dy, %i.dd
  %i.ea = trunc i64 %i.dz to i32
  %.sroa.speculated.i24 = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.ea)
  %i.eb = icmp slt i32 %.sroa.speculated38.i23, %0
  %i.ec = icmp slt i32 %.sroa.speculated.i24, %1
  %or.cond.i25 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.i25, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN2cv4cuda7HostMem6createEiii(ptr noundef nonnull align 8 dereferenceable(60) %i.cl, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.s:                                             ; preds = %bb.q
  store i32 %1, ptr %i.dj, align 8, !tbaa !44
  store i32 %0, ptr %i.dt, align 4, !tbaa !45
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

bb.t:                                             ; preds = %bb.a
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit

_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv3MatEEEviiiRT_.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.h, %bb.g, %bb.e, %bb.t, %_ZN12_GLOBAL__N_122ensureSizeIsEnoughImplIN2cv4cuda6GpuMatEEEviiiRT_.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv4cuda11getInputMatERKNS_11_InputArrayERNS0_6StreamE(ptr dead_on_unwind noalias nofree readnone sret(%"class.cv::cuda::GpuMat") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal fastcc void @_ZL13throw_no_cudav() unnamed_addr #7 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 44, ptr %i.a, align 8, !tbaa !16
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.c, ptr noundef nonnull align 1 dereferenceable(44) @.str.8, i64 44, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -216, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @__func__._ZL13throw_no_cudav, ptr noundef nonnull @.str.9, i32 noundef 16) #17
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !29
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv4cuda12getOutputMatERKNS_12_OutputArrayEiiiRNS0_6StreamE(ptr dead_on_unwind noalias nofree readnone sret(%"class.cv::cuda::GpuMat") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv4cuda10syncOutputERKNS0_6GpuMatERKNS_12_OutputArrayERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv4cuda6GpuMat19setDefaultAllocatorEPNS1_9AllocatorE(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN2cv4cuda6GpuMat15getStdAllocatorEv() local_unnamed_addr #3 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN2cv4cuda6GpuMat6createEiii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN2cv4cuda6GpuMat7releaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 32), (40, 56)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !17
  %i.f = and i32 %i.e, 65535
  store i32 %i.f, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4cuda6GpuMat3fitEiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.i = lshr i32 %3, 5
  %i.j = and i32 %i.i, 127
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = shl i32 %3, 2
  %i.m = and i32 %i.l, 124
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 1275511473185297, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 15
  %i.r = mul nuw nsw i32 %i.q, %i.k
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sext i32 %1 to i64
  %i.u = sext i32 %2 to i64
  %i.v = mul nsw i64 %i.s, %i.u                   ; 2 uses
  %i.w = mul i64 %i.v, %i.t                       ; 2 uses
  %.not19 = icmp eq i64 %i.w, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  br i1 %.not19, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i32 %.pre, 16384
  %.not22 = icmp eq i32 %i.x, 0
  %i.y = icmp ugt i64 %i.w, %i.h
  %or.cond = or i1 %i.y, %.not22
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZNK2cv4cuda6GpuMat8downloadERKNS_12_OutputArrayE:bb.a
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat8downloadERKNS_12_OutputArrayERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat6copyToERKNS_12_OutputArrayE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat6copyToERKNS_12_OutputArrayERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define noalias noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv4cuda6GpuMat5setToENS_7Scalar_IdEERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readnone align 8 captures(none) dead_on_return %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define noalias noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv4cuda6GpuMat5setToENS_7Scalar_IdEERKNS_11_InputArrayERNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readnone align 8 captures(none) dead_on_return %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat9convertToERKNS_12_OutputArrayEiRNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK2cv4cuda6GpuMat9convertToERKNS_12_OutputArrayEiddRNS0_6StreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, double noundef %3, double noundef %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #6 align 2 {
bb.a:
  tail call fastcc void @_ZL13throw_no_cudav() #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #13

declare void @_ZN2cv4cuda7HostMem6createEiii(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv4cuda7HostMem7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::cuda::HostMem") align 8, ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv4cuda7HostMem7releaseEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"p1 _ZTSN2cv4cuda6GpuMat9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN2cv4cuda6GpuMatE", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !11, i64 24, !12, i64 32, !11, i64 40, !11, i64 48, !13, i64 56}
!15 = !{!14, !9, i64 16}
!16 = !{!9, !9, i64 0}
!17 = !{!14, !5, i64 0}
!18 = !{!14, !5, i64 4}
!19 = !{!14, !5, i64 8}
!20 = !{!14, !11, i64 24}
!21 = !{!14, !12, i64 32}
!22 = !{!14, !11, i64 40}
!23 = !{!14, !13, i64 56}
!24 = !{!14, !11, i64 48}
!25 = !{!10, !10, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !9, i64 8, !4, i64 16}
!28 = !{!27, !11, i64 0}
!29 = !{!4, !4, i64 0}
!30 = !{!26, !11, i64 0}
!31 = !{!27, !9, i64 8}
!32 = !{!11, !11, i64 0}
!33 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!34 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!35 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!36 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !35, i64 4, !5, i64 8, !4, i64 12}
!37 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!38 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !33, i64 56, !34, i64 64, !36, i64 72, !37, i64 128}
!39 = !{!38, !5, i64 0}
!40 = !{!"_ZTSN2cv4cuda7HostMem9AllocTypeE", !4, i64 0}
!41 = !{!"_ZTSN2cv4cuda7HostMemE", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !11, i64 24, !12, i64 32, !11, i64 40, !11, i64 48, !40, i64 56}
!42 = !{!41, !11, i64 24}
!43 = !{!41, !5, i64 0}
!44 = !{!41, !5, i64 8}
!45 = !{!41, !5, i64 4}
!46 = !{!41, !9, i64 16}
!47 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!48 = !{!47, !5, i64 4}
!49 = !{!47, !5, i64 0}
!50 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!51 = !{!50, !5, i64 4}
!52 = !{!50, !5, i64 0}
!53 = !{!36, !5, i64 0}
!54 = !{!12, !12, i64 0}
!55 = !{!13, !13, i64 0}
!56 = !{!41, !40, i64 56}
!57 = !{!40, !40, i64 0}
!58 = !{!38, !11, i64 24}
!59 = !{!38, !11, i64 32}
!60 = !{!38, !11, i64 40}
!61 = !{!38, !5, i64 12}
!62 = !{!41, !11, i64 48}
end_hunk_1
