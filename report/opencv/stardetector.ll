inline.NumInlined: 338
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv11xfeatures2d16StarDetectorImpl21setSuppressNonmaxSizeEi:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d16StarDetectorImpl21getSuppressNonmaxSizeEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: nounwind
declare void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d12StarDetectorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare void @_ZNK2cv9Feature2D5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN2cv9Feature2D4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN2cv9Feature2D6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS5_EES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !34
  %i.g = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.g, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.i, ptr %i.h, align 1, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !50
  %i.l = load ptr, ptr %0, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN2cv11xfeatures2dL25StarDetectorSuppressLinesERKNS_3MatES3_NS_6Point_IiEEii(ptr nofree readonly captures(none) %.24.val, i64 %.128.val, ptr nofree readonly captures(none) %.24.val1, i64 %.128.val3, i64 %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 4 uses
  %.sroa.6.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.a = lshr i64 %.128.val3, 1                   ; 2 uses
  %i.b = mul i64 %.sroa.6.0.extract.shift, %i.a
  %i.c = add i64 %i.b, %0
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 31
  %i.e = getelementptr inbounds i8, ptr %.24.val1, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !88   ; 8 uses
  %i.g = sdiv i16 %i.f, 4                         ; 3 uses
  %i.h = sext i16 %i.g to i32
  %i.i = shl nsw i32 %i.h, 2                      ; 6 uses
  %i.j = sub i32 %.sroa.6.0.extract.trunc, %i.i   ; 2 uses
  %i.k = add nsw i32 %i.i, %.sroa.6.0.extract.trunc ; 2 uses
  %.not12 = icmp slt i16 %i.f, -3                 ; 2 uses
  br i1 %.not12, label %._crit_edge19, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = add nsw i32 %i.i, %.sroa.0.0.extract.trunc
  %i.m = sub i32 %.sroa.0.0.extract.trunc, %i.i
  %i.n = sext i32 %i.m to i64
  %i.o = sext i16 %i.g to i64                     ; 2 uses
  %i.p = sext i32 %i.l to i64
  %i.q = sext i32 %i.j to i64
  %i.r = shl i64 %.128.val, 30
  %i.s = ashr i64 %i.r, 32                        ; 3 uses
  %i.t = sext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv59 = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next60, %._crit_edge ] ; 4 uses
  %.012113 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.an, %._crit_edge ]
  %i.u = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ap, %._crit_edge ]
  %i.v = mul nsw i64 %indvars.iv59, %i.s
  %i.w = add nsw i64 %indvars.iv59, 1
  %i.x = mul nsw i64 %i.w, %i.s
  %i.y = add nsw i64 %indvars.iv59, -1
  %i.z = mul nsw i64 %i.y, %i.s
  %invariant.gep = getelementptr [4 x i8], ptr %.24.val, i64 %i.v
  %invariant.gep76 = getelementptr [4 x i8], ptr %.24.val, i64 %i.x
  %invariant.gep78 = getelementptr [4 x i8], ptr %.24.val, i64 %i.z
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.11226 = phi float [ %.012113, %.lr.ph ], [ %i.an, %bb.b ]
  %i.aa = phi <2 x float> [ %i.u, %.lr.ph ], [ %i.ap, %bb.b ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr i8, ptr %gep, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !98
  %i.ad = getelementptr i8, ptr %gep, i64 -4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !98
  %gep77 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %indvars.iv
  %i.af = load float, ptr %gep77, align 4, !tbaa !98
  %gep79 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %indvars.iv
  %i.ag = load float, ptr %gep79, align 4, !tbaa !98
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ac, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ae, i64 1
  %i.al = fsub <2 x float> %i.ai, %i.ak           ; 3 uses
  %i.am = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %.11226) ; 3 uses
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.al, <2 x float> %i.aa) ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.o ; 2 uses
  %.not128 = icmp sgt i64 %indvars.iv.next, %i.p
  br i1 %.not128, label %._crit_edge, label %bb.b, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, %i.o ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next60, %i.t
  br i1 %.not, label %._crit_edge19, label %.lr.ph, !llvm.loop !156

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  %.0121.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.aq = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.as = fadd float %.0121.lcssa, %i.ar          ; 2 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = sitofp i32 %1 to float
  %i.av = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.aw = fneg float %i.av
  %i.ax = fmul float %i.av, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ar, float %.0121.lcssa, float %i.ax)
  %i.az = fmul float %i.ay, %i.au
  %i.ba = fcmp ult float %i.at, %i.az
  br i1 %i.ba, label %.preheader, label %bb.c

.preheader:                                       ; preds = %._crit_edge19
  br i1 %.not12, label %._crit_edge44, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.bb = add i32 %i.i, %.sroa.0.0.extract.trunc
  %i.bc = sub i32 %.sroa.0.0.extract.trunc, %i.i
  %i.bd = sext i32 %i.bc to i64                   ; 3 uses
  %i.be = sext i16 %i.g to i64                    ; 2 uses
  %i.bf = sext i32 %i.bb to i64
  %i.bg = sext i32 %i.j to i64
  %sext70 = shl i64 %i.a, 32
  %i.bh = ashr exact i64 %sext70, 32              ; 3 uses
  %i.bi = sext i32 %i.k to i64
  %i.bj = shl i64 %0, 32
  %sext107 = add i64 %i.bj, -17179869184
  %i.bk = ashr exact i64 %sext107, 32             ; 2 uses
  %i.bl = shl i64 %0, 32
  %sext108 = add i64 %i.bl, 17179869184
  %i.bm = ashr exact i64 %sext108, 32
  %i.bn = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.bm)
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = sub i64 %i.bo, %i.bk                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.bp, 7
  %i.bq = and i16 %i.f, -4
  %ident.check.not = icmp eq i16 %i.bq, 4
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.bp, -8                      ; 3 uses
  %i.br = add i64 %n.vec, %i.bd
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer ; 8 uses
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %._crit_edge34
  %indvars.iv65 = phi i64 [ %i.bg, %.lr.ph33.preheader ], [ %indvars.iv.next66, %._crit_edge34 ] ; 4 uses
  %.011341 = phi i32 [ 0, %.lr.ph33.preheader ], [ %.lcssa, %._crit_edge34 ] ; 2 uses
  %.011540 = phi i32 [ 0, %.lr.ph33.preheader ], [ %.lcssa86, %._crit_edge34 ] ; 2 uses
  %.011739 = phi i32 [ 0, %.lr.ph33.preheader ], [ %.lcssa87, %._crit_edge34 ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv65, %i.bh
  %i.bt = add nsw i64 %indvars.iv65, 1
  %i.bu = mul nsw i64 %i.bt, %i.bh
  %i.bv = add nsw i64 %indvars.iv65, -1
  %i.bw = mul nsw i64 %i.bv, %i.bh
  %invariant.gep80 = getelementptr [2 x i8], ptr %.24.val1, i64 %i.bs ; 2 uses
  %invariant.gep82 = getelementptr [2 x i8], ptr %.24.val1, i64 %i.bu ; 2 uses
  %invariant.gep84 = getelementptr [2 x i8], ptr %.24.val1, i64 %i.bw ; 2 uses
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph33
  %i.bx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011341, i64 0
  %i.by = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011540, i64 0
  %i.bz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011739, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bx, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ %i.by, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi94 = phi <4 x i32> [ %i.bz, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.ca = add i64 %index, %i.bd                   ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %invariant.gep80, i64 %i.ca ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 2
  %i.cd = getelementptr i8, ptr %i.cb, i64 10
  %wide.load = load <4 x i16>, ptr %i.cc, align 2, !tbaa !88
  %wide.load96 = load <4 x i16>, ptr %i.cd, align 2, !tbaa !88
  %i.ce = icmp eq <4 x i16> %wide.load, %broadcast.splat
  %i.cf = icmp eq <4 x i16> %wide.load96, %broadcast.splat
  %i.cg = zext <4 x i1> %i.ce to <4 x i32>
  %i.ch = zext <4 x i1> %i.cf to <4 x i32>
  %i.ci = getelementptr i8, ptr %i.cb, i64 -2
  %i.cj = getelementptr i8, ptr %i.cb, i64 6
  %wide.load97 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !88
  %wide.load98 = load <4 x i16>, ptr %i.cj, align 2, !tbaa !88
  %i.ck = icmp eq <4 x i16> %wide.load97, %broadcast.splat
  %i.cl = icmp eq <4 x i16> %wide.load98, %broadcast.splat
  %i.cm = sext <4 x i1> %i.ck to <4 x i32>
  %i.cn = sext <4 x i1> %i.cl to <4 x i32>
  %i.co = add nsw <4 x i32> %i.cm, %i.cg          ; 3 uses
  %i.cp = add nsw <4 x i32> %i.cn, %i.ch          ; 3 uses
  %i.cq = getelementptr [2 x i8], ptr %invariant.gep82, i64 %i.ca ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %wide.load99 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !88
  %wide.load100 = load <4 x i16>, ptr %i.cr, align 2, !tbaa !88
  %i.cs = icmp eq <4 x i16> %wide.load99, %broadcast.splat
  %i.ct = icmp eq <4 x i16> %wide.load100, %broadcast.splat
  %i.cu = zext <4 x i1> %i.cs to <4 x i32>
  %i.cv = zext <4 x i1> %i.ct to <4 x i32>
  %i.cw = getelementptr [2 x i8], ptr %invariant.gep84, i64 %i.ca ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %wide.load101 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !88
  %wide.load102 = load <4 x i16>, ptr %i.cx, align 2, !tbaa !88
  %i.cy = icmp eq <4 x i16> %wide.load101, %broadcast.splat
  %i.cz = icmp eq <4 x i16> %wide.load102, %broadcast.splat
  %i.da = sext <4 x i1> %i.cy to <4 x i32>
  %i.db = sext <4 x i1> %i.cz to <4 x i32>
  %i.dc = add nsw <4 x i32> %i.da, %i.cu          ; 3 uses
  %i.dd = add nsw <4 x i32> %i.db, %i.cv          ; 3 uses
  %i.de = mul nsw <4 x i32> %i.co, %i.co
  %i.df = mul nsw <4 x i32> %i.cp, %i.cp
  %i.dg = add <4 x i32> %i.de, %vec.phi94         ; 2 uses
  %i.dh = add <4 x i32> %i.df, %vec.phi95         ; 2 uses
  %i.di = mul nsw <4 x i32> %i.dc, %i.dc
  %i.dj = mul nsw <4 x i32> %i.dd, %i.dd
  %i.dk = add <4 x i32> %i.di, %vec.phi92         ; 2 uses
  %i.dl = add <4 x i32> %i.dj, %vec.phi93         ; 2 uses
  %i.dm = mul nsw <4 x i32> %i.dc, %i.co
  %i.dn = mul nsw <4 x i32> %i.dd, %i.cp
  %i.do = add <4 x i32> %i.dm, %vec.phi           ; 2 uses
  %i.dp = add <4 x i32> %i.dn, %vec.phi91         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx103 = add <4 x i32> %i.dl, %i.dk
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx103) ; 2 uses
  %bin.rdx104 = add <4 x i32> %i.dh, %i.dg
  %i.dt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx104) ; 2 uses
  br i1 %cmp.n, label %._crit_edge34, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph33, %middle.block
  %indvars.iv62.ph = phi i64 [ %i.bd, %.lr.ph33 ], [ %i.br, %middle.block ]
  %.111430.ph = phi i32 [ %.011341, %.lr.ph33 ], [ %i.dr, %middle.block ]
  %.111629.ph = phi i32 [ %.011540, %.lr.ph33 ], [ %i.ds, %middle.block ]
  %.111828.ph = phi i32 [ %.011739, %.lr.ph33 ], [ %i.dt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 4 uses
  %.111430 = phi i32 [ %i.en, %scalar.ph ], [ %.111430.ph, %scalar.ph.preheader ]
  %.111629 = phi i32 [ %i.el, %scalar.ph ], [ %.111629.ph, %scalar.ph.preheader ]
  %.111828 = phi i32 [ %i.ej, %scalar.ph ], [ %.111828.ph, %scalar.ph.preheader ]
  %gep81 = getelementptr [2 x i8], ptr %invariant.gep80, i64 %indvars.iv62 ; 2 uses
  %i.du = getelementptr i8, ptr %gep81, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !88
  %i.dw = icmp eq i16 %i.dv, %i.f
  %i.dx = zext i1 %i.dw to i32
  %i.dy = getelementptr i8, ptr %gep81, i64 -2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !88
  %i.ea = icmp eq i16 %i.dz, %i.f
  %.neg = sext i1 %i.ea to i32
  %i.eb = add nsw i32 %.neg, %i.dx                ; 3 uses
  %gep83 = getelementptr [2 x i8], ptr %invariant.gep82, i64 %indvars.iv62
  %i.ec = load i16, ptr %gep83, align 2, !tbaa !88
  %i.ed = icmp eq i16 %i.ec, %i.f
  %i.ee = zext i1 %i.ed to i32
  %gep85 = getelementptr [2 x i8], ptr %invariant.gep84, i64 %indvars.iv62
  %i.ef = load i16, ptr %gep85, align 2, !tbaa !88
  %i.eg = icmp eq i16 %i.ef, %i.f
  %.neg127 = sext i1 %i.eg to i32
  %i.eh = add nsw i32 %.neg127, %i.ee             ; 3 uses
  %i.ei = mul nsw i32 %i.eb, %i.eb
  %i.ej = add nsw i32 %i.ei, %.111828             ; 2 uses
  %i.ek = mul nsw i32 %i.eh, %i.eh
  %i.el = add nsw i32 %i.ek, %.111629             ; 2 uses
  %i.em = mul nsw i32 %i.eh, %i.eb
  %i.en = add nsw i32 %i.em, %.111430             ; 2 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, %i.be ; 2 uses
  %.not126 = icmp sgt i64 %indvars.iv.next63, %i.bf
  br i1 %.not126, label %._crit_edge34, label %scalar.ph, !llvm.loop !158

._crit_edge34:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa87 = phi i32 [ %i.dt, %middle.block ], [ %i.ej, %scalar.ph ] ; 2 uses
  %.lcssa86 = phi i32 [ %i.ds, %middle.block ], [ %i.el, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.dr, %middle.block ], [ %i.en, %scalar.ph ] ; 3 uses
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, %i.be ; 2 uses
  %.not124 = icmp sgt i64 %indvars.iv.next66, %i.bi
  br i1 %.not124, label %._crit_edge44.loopexit51, label %.lr.ph33, !llvm.loop !159

._crit_edge44.loopexit51:                         ; preds = %._crit_edge34
  %i.eo = mul nsw i32 %.lcssa, %.lcssa
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit51, %.preheader
  %.0117.lcssa = phi i32 [ 0, %.preheader ], [ %.lcssa87, %._crit_edge44.loopexit51 ] ; 2 uses
  %.0115.lcssa = phi i32 [ 0, %.preheader ], [ %.lcssa86, %._crit_edge44.loopexit51 ] ; 2 uses
  %.0113.lcssa = phi i32 [ 0, %.preheader ], [ %i.eo, %._crit_edge44.loopexit51 ]
  %i.ep = add nsw i32 %.0115.lcssa, %.0117.lcssa  ; 2 uses
  %i.eq = mul nsw i32 %i.ep, %i.ep
  %i.er = mul nsw i32 %.0115.lcssa, %.0117.lcssa
  %i.es = sub nsw i32 %i.er, %.0113.lcssa
  %i.et = mul nsw i32 %i.es, %2
  %.not125 = icmp sge i32 %i.eq, %i.et
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge44, %._crit_edge19
  %.0 = phi i1 [ true, %._crit_edge19 ], [ %.not125, %._crit_edge44 ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
end_hunk_0
