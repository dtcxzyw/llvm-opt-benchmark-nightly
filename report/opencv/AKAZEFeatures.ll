Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/AKAZEFeatures?download=true
inline.NumInlined: 1054
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi:bb.a
  %i.hx = fmul <4 x float> %broadcast.splat, %wide.load.6
  %i.hy = fmul <4 x float> %broadcast.splat, %wide.load280.6
  store <4 x float> %i.hx, ptr %i.hv, align 4, !tbaa !10
  store <4 x float> %i.hy, ptr %i.hw, align 4, !tbaa !10
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.hz, align 4, !tbaa !10
  %wide.load280.7 = load <4 x float>, ptr %i.ia, align 4, !tbaa !10
  %i.ib = fmul <4 x float> %broadcast.splat, %wide.load.7
  %i.ic = fmul <4 x float> %broadcast.splat, %wide.load280.7
  store <4 x float> %i.ib, ptr %i.hz, align 4, !tbaa !10
  store <4 x float> %i.ic, ptr %i.ia, align 4, !tbaa !10
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.l
  %.pn219.pn = phi { ptr, i32 } [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.de, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn219.pn.pn = phi { ptr, i32 } [ %.pn219.pn, %bb.x ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn219.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_Invoker32Get_Upright_MLDB_Full_DescriptorERKNS_8KeyPointEPhi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = alloca [48 x float], align 16            ; 39 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i32, ptr %i.g, align 4, !tbaa !259
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_Invoker32Get_Upright_MLDB_Full_DescriptorERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 1761) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !50
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cn

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !248
  %i.s = shl nuw i32 1, %i.r
  %i.t = sitofp i32 %i.s to float                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !249
  %i.w = fmul float %i.v, 5.000000e-01
  %i.x = fdiv float %i.w, %i.t
  %i.y = insertelement <4 x float> poison, float %i.x, i64 0
  %i.z = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw [1080 x i8], ptr %i.ad, i64 %i.ac
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw [1080 x i8], ptr %i.af, i64 %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw [1080 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.ak)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = load <2 x float>, ptr %1, align 4, !tbaa !10
  %i.am = insertelement <2 x float> poison, float %i.t, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !260 ; 14 uses
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_Invoker32Get_Upright_MLDB_Full_DescriptorERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 1776) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.o
  %.pn160 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ck

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.be = shl nsw i32 %i.ar, 1
  %i.bf = or disjoint i32 %i.be, 2
  %i.bg = udiv i32 %i.bf, 3
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bi = lshr exact i32 %i.ar, 1
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !9
  %i.bj = sext i32 %3 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.bj, i1 false)
  %i.bk = sub i32 0, %i.ar                        ; 4 uses
  %i.bl = icmp sgt i32 %i.ar, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp slt i32 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp slt i32 %i.bw, 2
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp slt i32 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ci = load i64, ptr %i.ch, align 8
  br i1 %i.bl, label %.preheader196.lr.ph.us.preheader, label %.lr.ph

.preheader196.lr.ph.us.preheader:                 ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %.fr = freeze i32 %i.ck
  %i.cl = extractelement <2 x float> %i.ao, i64 0
  %i.cm = extractelement <2 x float> %i.ao, i64 1
  br label %.preheader196.lr.ph.us

.preheader196.lr.ph.us:                           ; preds = %.preheader196.lr.ph.us.preheader, %.loopexit.us.thread
  %indvars.iv353 = phi i64 [ 0, %.preheader196.lr.ph.us.preheader ], [ %indvars.iv.next354, %.loopexit.us.thread ] ; 3 uses
  %indvars.iv351 = phi i64 [ 5, %.preheader196.lr.ph.us.preheader ], [ %indvars.iv.next352, %.loopexit.us.thread ] ; 2 uses
  %indvars.iv345 = phi i32 [ 4, %.preheader196.lr.ph.us.preheader ], [ %indvars.iv.next346, %.loopexit.us.thread ] ; 2 uses
  %.0132247.us = phi i32 [ 0, %.preheader196.lr.ph.us.preheader ], [ %i.eo, %.loopexit.us.thread ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv353
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !9  ; 12 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.preheader196.us.us.us, label %.preheader196.us.us249.preheader

.preheader196.us.us249.preheader:                 ; preds = %.preheader196.lr.ph.us
  %i.cq = sub i32 %i.co, %i.ar
  %i.cr = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.cq)
  %i.cs = add nuw i32 %i.ar, %i.cr                ; 2 uses
  %i.ct = icmp ne i32 %i.cs, %i.co
  %i.cu = zext i1 %i.ct to i32                    ; 2 uses
  %i.cv = add i32 %i.co, %i.cu
  %i.cw = sub i32 %i.cs, %i.cv
  %i.cx = call i32 @llvm.umax.i32(i32 %i.co, i32 1)
  %i.cy = udiv i32 %i.cw, %i.cx
  %i.cz = add i32 %i.cy, %i.cu                    ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cz, 3
  %n.vec = and i64 %i.db, 8589934588              ; 4 uses
  %i.dc = trunc i64 %n.vec to i32
  %i.dd = mul i32 %i.co, %i.dc
  %i.de = sub i32 %i.dd, %i.ar
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br label %.preheader196.us.us249

bb.r:                                             ; preds = %.lr.ph.us, %bb.x
  %indvars.iv340 = phi i64 [ %indvars.iv338395, %.lr.ph.us ], [ %indvars.iv.next341, %bb.x ] ; 2 uses
  %.2134243.us = phi i32 [ %.1133245.us396, %.lr.ph.us ], [ %i.eo, %bb.x ] ; 5 uses
  %.idx382 = mul nuw nsw i64 %indvars.iv340, 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx382 ; 3 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !10
  %i.dh = fcmp ogt float %.pre360, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = and i32 %.2134243.us, 7
  %i.dj = shl nuw nsw i32 1, %i.di
  %i.dk = sdiv i32 %.2134243.us, 8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !50
  %i.do = trunc nuw i32 %i.dj to i8
  %i.dp = or i8 %i.dn, %i.do
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !10
  %i.ds = fcmp ogt float %i.hd, %i.dr
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dt = add nsw i32 %.2134243.us, 1             ; 2 uses
  %i.du = and i32 %i.dt, 7
  %i.dv = shl nuw nsw i32 1, %i.du
  %i.dw = sdiv i32 %i.dt, 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %2, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !50
  %i.ea = trunc nuw i32 %i.dv to i8
  %i.eb = or i8 %i.dz, %i.ea
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = fcmp ogt float %i.hf, %i.ed
  br i1 %i.ee, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ef = add nsw i32 %.2134243.us, 2             ; 2 uses
  %i.eg = and i32 %i.ef, 7
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = sdiv i32 %i.ef, 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %2, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !50
  %i.em = trunc nuw i32 %i.eh to i8
  %i.en = or i8 %i.el, %i.em
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eo = add nsw i32 %.2134243.us, 3             ; 4 uses
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next341, %wide.trip.count
  br i1 %exitcond347.not, label %.loopexit.us, label %bb.r, !llvm.loop !261

.loopexit.us.thread:                              ; preds = %.loopexit.us
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 2
  %i.ep = trunc nuw nsw i64 %indvars.iv351 to i32
  %indvars.iv.next346 = add i32 %indvars.iv345, %i.ep
  %exitcond358.not = icmp eq i64 %indvars.iv.next354, 3
  br i1 %exitcond358.not, label %.split256.us, label %.preheader196.lr.ph.us, !llvm.loop !262

.loopexit.us:                                     ; preds = %bb.x
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338395, 1
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv.next349397, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %indvars.iv.next349, %i.fd
  br i1 %i.eq, label %.lr.ph.us, label %.loopexit.us.thread, !llvm.loop !263

.preheader196.us.us249:                           ; preds = %.preheader196.us.us249.preheader, %._crit_edge.split.us239.us
  %.0128233.us.us250 = phi i32 [ %i.fa, %._crit_edge.split.us239.us ], [ %i.bk, %.preheader196.us.us249.preheader ]
  %.0129232.us.us251 = phi i64 [ %indvars.iv.next.lcssa, %._crit_edge.split.us239.us ], [ 0, %.preheader196.us.us249.preheader ] ; 3 uses
  br i1 %min.iters.check, label %.preheader195.us236.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader196.us.us249
  %i.er = add i64 %.0129232.us.us251, %n.vec      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %.0129232.us.us251, %index
  %i.et = mul nsw i64 %i.es, 12
  %i.eu = getelementptr inbounds i8, ptr %i.a, i64 %i.et
  store <12 x float> zeroinitializer, ptr %i.eu, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us239.us, label %.preheader195.us236.us.preheader

.preheader195.us236.us.preheader:                 ; preds = %.preheader196.us.us249, %middle.block
  %indvars.iv.ph = phi i64 [ %.0129232.us.us251, %.preheader196.us.us249 ], [ %i.er, %middle.block ]
  %.0127230.us237.us.ph = phi i32 [ %i.bk, %.preheader196.us.us249 ], [ %i.de, %middle.block ]
  br label %.preheader195.us236.us

.preheader195.us236.us:                           ; preds = %.preheader195.us236.us.preheader, %.preheader195.us236.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader195.us236.us ], [ %indvars.iv.ph, %.preheader195.us236.us.preheader ] ; 2 uses
  %.0127230.us237.us = phi i32 [ %i.ey, %.preheader195.us236.us ], [ %.0127230.us237.us.ph, %.preheader195.us236.us.preheader ]
  %.idx379 = mul nsw i64 %indvars.iv, 12
  %i.ew = getelementptr inbounds i8, ptr %i.a, i64 %.idx379 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ew, align 4, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ey = add nsw i32 %.0127230.us237.us, %i.co   ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ar
  br i1 %i.ez, label %.preheader195.us236.us, label %._crit_edge.split.us239.us, !llvm.loop !267

._crit_edge.split.us239.us:                       ; preds = %.preheader195.us236.us, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.er, %middle.block ], [ %indvars.iv.next, %.preheader195.us236.us ]
  %i.fa = add nsw i32 %.0128233.us.us250, %i.co   ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %i.ar
  br i1 %i.fb, label %.preheader196.us.us249, label %._crit_edge235.split.us.us, !llvm.loop !268

._crit_edge235.split.us.us:                       ; preds = %._crit_edge.split.us239.us, %._crit_edge.split.us.us.us.us
  %i.fc = add nuw nsw i64 %indvars.iv353, 2       ; 2 uses
  %i.fd = mul nuw nsw i64 %i.fc, %i.fc
  %wide.trip.count = zext i32 %indvars.iv345 to i64
  br label %.lr.ph.us

.preheader196.us.us.us:                           ; preds = %.preheader196.lr.ph.us, %._crit_edge.split.us.us.us.us
  %.0128233.us.us.us = phi i32 [ %i.gz, %._crit_edge.split.us.us.us.us ], [ %i.bk, %.preheader196.lr.ph.us ] ; 2 uses
  %.0129232.us.us.us = phi i64 [ %indvars.iv.next332, %._crit_edge.split.us.us.us.us ], [ 0, %.preheader196.lr.ph.us ]
  br label %.preheader195.us.us.us.us
end_hunk_0
begin_hunk_1_@_ZNK2cv11xfeatures2d28MLDB_Full_Descriptor_Invoker16MLDB_Fill_ValuesEPfiifffff:bb.a
  %i.aw = zext i1 %i.av to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.ay = icmp eq i32 %i.am, 2
  %.sroa.gep197 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %.sroa.gep197.val = load i32, ptr %.sroa.gep197, align 8
  %.val200 = load i32, ptr %i.ax, align 4         ; 2 uses
  %i.az = select i1 %i.ay, i32 %.sroa.gep197.val, i32 %.val200 ; 2 uses
  %.not.i165 = icmp eq i32 %i.am, 1
  br i1 %.not.i165, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.thread.i160
  %i.ba = phi i32 [ %i.aw, %.thread.i160 ], [ %i.az, %bb.o ]
  %i.bb = icmp sgt i32 %i.am, -1
  %i.bc = zext i1 %i.bb to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bd = phi i32 [ %i.ba, %bb.p ], [ %i.az, %bb.o ]
  %i.be = phi i32 [ %i.bc, %bb.p ], [ %.val200, %bb.o ]
  %i.bf = icmp eq i32 %i.aj, %i.bd
  %i.bg = icmp eq i32 %i.ak, %i.be
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.aa, label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.s:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.t:                                             ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d28MLDB_Full_Descriptor_Invoker16MLDB_Fill_ValuesEPfiifffff, ptr noundef nonnull @.str.1, i32 noundef 1867) #25
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.z:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !50
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.y ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body

bb.aa:                                            ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !272 ; 6 uses
  %i.bv = icmp slt i32 %i.bu, 3
  br i1 %i.bv, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc179 unwind label %bb.ai

.noexc179:                                        ; preds = %bb.ab
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.30, i32 noundef 109) #25
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc179
  unreachable

bb.ad:                                            ; preds = %.noexc179
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170: ; preds = %bb.ad
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !50
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i171: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.ae:                                            ; preds = %bb.aa
  %i.cc = icmp sgt i32 %i.bu, 0
  br i1 %i.cc, label %bb.af, label %.thread.i173

.thread.i173:                                     ; preds = %bb.ae
  %i.cd = icmp eq i32 %i.bu, 0
  %i.ce = zext i1 %i.cd to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.cg = icmp eq i32 %i.bu, 2
  %.sroa.gep194 = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep194.val = load i32, ptr %.sroa.gep194, align 8
  %.val201 = load i32, ptr %i.cf, align 4         ; 2 uses
  %i.ch = select i1 %i.cg, i32 %.sroa.gep194.val, i32 %.val201 ; 2 uses
  %.not.i178 = icmp eq i32 %i.bu, 1
  br i1 %.not.i178, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %.thread.i173
  %i.ci = phi i32 [ %i.ce, %.thread.i173 ], [ %i.ch, %bb.af ]
  %i.cj = icmp sgt i32 %i.bu, -1
  %i.ck = zext i1 %i.cj to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cl = phi i32 [ %i.ci, %bb.ag ], [ %i.ch, %bb.af ]
  %i.cm = phi i32 [ %i.ck, %bb.ag ], [ %.val201, %bb.af ]
  %i.cn = icmp eq i32 %i.aj, %i.cl
  %i.co = icmp eq i32 %i.ak, %i.cm
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.ao, label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d28MLDB_Full_Descriptor_Invoker16MLDB_Fill_ValuesEPfiifffff, ptr noundef nonnull @.str.1, i32 noundef 1868) #25
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.an:                                            ; preds = %bb.ak
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %20, align 8, !tbaa !46   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.an
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !50
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.am
  %.pn137 = phi { ptr, i32 } [ %i.cr, %bb.am ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.cs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body

bb.ao:                                            ; preds = %bb.ah
  %i.cy = sub i32 0, %i.f                         ; 5 uses
  %i.cz = icmp sgt i32 %i.f, 0
  br i1 %i.cz, label %.preheader207.lr.ph, label %._crit_edge371

.preheader207.lr.ph:                              ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.db = load i32, ptr %i.da, align 8            ; 10 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.dd = load i32, ptr %i.dc, align 4            ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.df = load i32, ptr %i.de, align 4
  %.fr = freeze i32 %i.df
  %i.dg = icmp slt i32 %.fr, 2                    ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.di = load ptr, ptr %i.dh, align 8            ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.dk = load i64, ptr %i.dj, align 8            ; 4 uses
  %i.dl = icmp sgt i32 %.fr493, 1                 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %.fr494 = freeze i32 %i.dn
  %i.do = icmp slt i32 %.fr494, 2                 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8            ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.ds = load i64, ptr %i.dr, align 8            ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %.fr495 = freeze i32 %i.du
  %i.dv = icmp slt i32 %.fr495, 2                 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8            ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.dz = load i64, ptr %i.dy, align 8            ; 6 uses
  %i.ea = icmp eq i32 %.fr493, 2                  ; 3 uses
  %i.eb = sext i32 %.fr493 to i64                 ; 4 uses
  %i.ec = icmp sgt i32 %2, 0
  %i.ed = sub i32 %2, %i.f
  %i.ee = call i32 @llvm.smax.i32(i32 %i.f, i32 %i.ed)
  %i.ef = add nuw i32 %i.f, %i.ee                 ; 2 uses
  %i.eg = icmp ne i32 %i.ef, %2
  %i.eh = zext i1 %i.eg to i32                    ; 2 uses
  %i.ei = add i32 %2, %i.eh
  %i.ej = sub i32 %i.ef, %i.ei
  %i.ek = call i32 @llvm.umax.i32(i32 %2, i32 1)
  %ident.check.not = icmp eq i32 %.fr493, 1
  %i.el = insertelement <2 x float> poison, float %6, i64 0
  %i.em = insertelement <2 x float> %i.el, float %7, i64 1 ; 2 uses
  %i.en = insertelement <2 x float> poison, float %8, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ep = insertelement <2 x float> poison, float %7, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %6, i64 1
  %i.er = insertelement <2 x float> poison, float %4, i64 0
  %i.es = insertelement <2 x float> %i.er, float %5, i64 1
  %i.et = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = insertelement <2 x float> poison, float %4, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %5, i64 1
  %i.ew = insertelement <2 x float> poison, float %6, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %7, i64 1 ; 5 uses
  %i.ey = insertelement <2 x float> poison, float %8, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fa = insertelement <2 x float> poison, float %7, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %6, i64 1
  %i.fc = insertelement <2 x float> poison, float %4, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %5, i64 1
  %i.fe = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %4, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %5, i64 1
  %i.fi = insertelement <2 x float> poison, float %6, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %7, i64 1 ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %8, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fm = insertelement <2 x float> poison, float %7, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %6, i64 1
  %i.fo = insertelement <2 x float> poison, float %4, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %5, i64 1
  %i.fq = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fr = insertelement <2 x float> poison, float %4, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %5, i64 1
  %i.ft = insertelement <2 x float> poison, float %6, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %7, i64 1 ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %8, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fx = insertelement <2 x float> poison, float %7, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %6, i64 1
  %i.fz = insertelement <2 x float> poison, float %4, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %5, i64 1
  %i.gb = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = insertelement <2 x float> poison, float %4, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %5, i64 1
  %i.ge = insertelement <2 x float> poison, float %6, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %7, i64 1 ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %8, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gi = insertelement <2 x float> poison, float %7, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %6, i64 1
  %i.gk = insertelement <2 x float> poison, float %4, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %5, i64 1
  %i.gm = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = insertelement <2 x float> poison, float %4, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %5, i64 1
  br label %.preheader207.us

.preheader207.us:                                 ; preds = %._crit_edge.us, %.preheader207.lr.ph
  %.0114369.us = phi i32 [ %i.cy, %.preheader207.lr.ph ], [ %i.gp, %._crit_edge.us ] ; 6 uses
  %.0115368.us = phi i64 [ 0, %.preheader207.lr.ph ], [ %.us-phi345.us.in, %._crit_edge.us ]
  %i.gp = add nsw i32 %.0114369.us, %2            ; 7 uses
  %sext = shl i64 %.0115368.us, 32
  %i.gq = ashr exact i64 %sext, 32                ; 6 uses
  br i1 %i.ec, label %.preheader.lr.ph.split.us.us.us, label %.preheader206.lr.ph.split.us377

.preheader206.us372:                              ; preds = %.preheader206.us372.preheader611, %.preheader206.us372
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader206.us372 ], [ %indvars.iv.ph, %.preheader206.us372.preheader611 ] ; 2 uses
  %.0113280.us373 = phi i32 [ %i.gs, %.preheader206.us372 ], [ %.0113280.us373.ph, %.preheader206.us372.preheader611 ]
  %i.gr = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.eb ; 2 uses
  %i.gs = add nsw i32 %.0113280.us373, %2         ; 2 uses
  %i.gt = icmp slt i32 %i.gs, %i.f
  br i1 %i.gt, label %.preheader206.us372, label %._crit_edge.us, !llvm.loop !273

.preheader206.lr.ph.split.us377:                  ; preds = %.preheader207.us
  br i1 %i.dl, label %.preheader206.lr.ph.split.split.us.us, label %.preheader206.us372.preheader

.preheader206.us372.preheader:                    ; preds = %.preheader206.lr.ph.split.us377
  %i.gu = udiv i32 %i.ej, %i.ek
  %i.gv = add i32 %i.gu, %i.eh                    ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check = icmp ugt i32 %i.gv, 6
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader206.us372.preheader611

vector.ph:                                        ; preds = %.preheader206.us372.preheader
  %n.vec = and i64 %i.gx, 8589934584              ; 4 uses
  %i.gy = add nsw i64 %i.gq, %n.vec               ; 2 uses
  %i.gz = trunc i64 %n.vec to i32
  %i.ha = mul i32 %2, %i.gz
  %i.hb = sub i32 %i.ha, %i.f
  %i.hc = getelementptr [4 x i8], ptr %1, i64 %i.gq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <4 x float> zeroinitializer, ptr %i.hd, align 4, !tbaa !10
  store <4 x float> zeroinitializer, ptr %i.he, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gx, %n.vec
  br i1 %cmp.n, label %._crit_edge.us, label %.preheader206.us372.preheader611

.preheader206.us372.preheader611:                 ; preds = %.preheader206.us372.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gq, %.preheader206.us372.preheader ], [ %i.gy, %middle.block ]
  %.0113280.us373.ph = phi i32 [ %i.cy, %.preheader206.us372.preheader ], [ %i.hb, %middle.block ]
  br label %.preheader206.us372

._crit_edge.us:                                   ; preds = %.preheader206.us372, %.preheader206.us346.us450, %.preheader206.us346.us.us, %.thread.us.us, %middle.block
  %.us-phi345.us.in = phi i64 [ %indvars.iv.next514, %.preheader206.us346.us450 ], [ %indvars.iv.next517, %.preheader206.us346.us.us ], [ %indvars.iv.next520, %.thread.us.us ], [ %i.gy, %middle.block ], [ %indvars.iv.next, %.preheader206.us372 ]
  %i.hg = icmp slt i32 %i.gp, %i.f
  br i1 %i.hg, label %.preheader207.us, label %._crit_edge371, !llvm.loop !275

bb.ap:                                            ; preds = %._crit_edge224.us.us
  %i.hh = uitofp nneg i32 %.us-phi246.us.us to float
  %i.hi = fdiv float 1.000000e+00, %i.hh          ; 3 uses
  %i.hj = fmul float %i.hu, %i.hi
  %i.hk = fmul float %i.ht, %i.hi
  %i.hl = fmul float %.us-phi245.us.us, %i.hi
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge224.us.us, %bb.ap
  %.3112.us.us = phi float [ %i.hj, %bb.ap ], [ %i.hu, %._crit_edge224.us.us ]
  %.5108.us.us = phi float [ %i.hk, %bb.ap ], [ %i.ht, %._crit_edge224.us.us ]
  %.5.us.us = phi float [ %i.hl, %bb.ap ], [ %.us-phi245.us.us, %._crit_edge224.us.us ]
  %i.hm = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv519 ; 3 uses
  store float %.3112.us.us, ptr %i.hm, align 4, !tbaa !10
  br i1 %i.dl, label %bb.ar, label %.thread.us.us

bb.ar:                                            ; preds = %bb.aq
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  store float %.5108.us.us, ptr %i.hn, align 4, !tbaa !10
  br i1 %i.ea, label %.thread.us.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ho = getelementptr i8, ptr %i.hm, i64 8
  store float %.5.us.us, ptr %i.ho, align 4, !tbaa !10
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.as, %bb.ar, %bb.aq
  %indvars.iv.next520 = add nsw i64 %indvars.iv519, %i.eb ; 2 uses
  %i.hp = icmp slt i32 %i.hv, %i.f
  br i1 %i.hp, label %.preheader.lr.ph.split.us.us.us, label %._crit_edge.us, !llvm.loop !276

._crit_edge224.us.us.loopexit608:                 ; preds = %._crit_edge.split.us239.us.us
  %i.hq = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.us-phi352.us, i64 1
  br label %._crit_edge224.us.us
end_hunk_1
