Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/CalcTangentsProcess?download=true
inline.NumInlined: 329
inline.NumDeleted: 191
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

@_ZN6Assimp19CalcTangentsProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp19CalcTangentsProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp19CalcTangentsProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp19CalcTangentsProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float f0x3F490FDB, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp19CalcTangentsProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i1
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19CalcTangentsProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, float noundef 4.500000e+01) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = fcmp ogt float %i.a, 4.500000e+01
  %.sroa.speculated4 = select i1 %i.c, float 4.500000e+01, float %i.a ; 2 uses
  %i.d = fcmp olt float %.sroa.speculated4, 0.000000e+00
  %.sroa.speculated = select i1 %i.d, float 0.000000e+00, float %.sroa.speculated4
  %i.e = fmul float %.sroa.speculated, f0x3C8EFA35
  store float %i.e, ptr %i.b, align 8
  %i.f = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i32 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %i.g, align 4
  ret void
}

declare noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19CalcTangentsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  br i1 %spec.select, label %bb.c, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.078 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = tail call noundef zeroext i1 @_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g, i32 noundef %i.h)
  %spec.select = select i1 %i.i, i1 true, i1 %.078 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !4

bb.c:                                             ; preds = %._crit_edge
  %i.m = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull @.str.3)
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.n = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.Assimp::SpatialSort", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.15", align 8    ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8
  %i.e = and i32 %i.d, 12
  %.not256 = icmp eq i32 %i.e, 0
  br i1 %.not256, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.5)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull @.str.6)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp ugt i32 %i.l, 7
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %.not257 = icmp eq ptr %i.q, null
  br i1 %.not257, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorIJRA52_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(52) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 63                 ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1073741816
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 3 uses
  %i.z = lshr i64 %i.v, 6                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %.idx.i = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %.idx.i, i1 false)
  %.pr = load i32, ptr %i.s, align 4
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.j, %bb.i
  %i.ab = phi i32 [ %.pr, %bb.j ], [ 0, %bb.i ]   ; 2 uses
  %.sroa.0493.0 = phi ptr [ %i.y, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.sroa.18502.0 = phi ptr [ %i.aa, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 12               ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #20
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %.loopexit542, label %.loopexit542.loopexit

.loopexit542.loopexit:                            ; preds = %bb.k
  %i.ag = add nsw i64 %i.ad, -12                  ; 2 uses
  %i.ah = urem i64 %i.ag, 12
  %i.ai = sub nuw nsw i64 %i.ag, %i.ah
  %i.aj = add nsw i64 %i.ai, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.aj, i1 false)
  br label %.loopexit542

.loopexit542:                                     ; preds = %.loopexit542.loopexit, %bb.k
  store ptr %i.ae, ptr %i.b, align 8
  %i.ak = load i32, ptr %i.s, align 4             ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 12               ; 2 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #20
          to label %bb.l unwind label %bb.m       ; 9 uses

bb.l:                                             ; preds = %.loopexit542
  %i.ao = icmp eq i32 %i.ak, 0
  br i1 %i.ao, label %.loopexit541, label %.loopexit541.loopexit

.loopexit541.loopexit:                            ; preds = %bb.l
  %i.ap = add nsw i64 %i.am, -12                  ; 2 uses
  %i.aq = urem i64 %i.ap, 12
  %i.ar = sub nuw nsw i64 %i.ap, %i.aq
  %i.as = add nsw i64 %i.ar, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.as, i1 false)
  br label %.loopexit541

.loopexit541:                                     ; preds = %.loopexit541.loopexit, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.an, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ax = load i32, ptr %i.k, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %.not605 = icmp eq i32 %i.bd, 0
  br i1 %.not605, label %._crit_edge, label %.lr.ph569

.lr.ph569:                                        ; preds = %.loopexit541
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit539, %.loopexit541
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %3)
          to label %bb.aa unwind label %bb.ac

bb.m:                                             ; preds = %.loopexit542, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.n:                                             ; preds = %.lr.ph569, %.loopexit539
  %indvars.iv640 = phi i64 [ 0, %.lr.ph569 ], [ %indvars.iv.next641, %.loopexit539 ] ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv640 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 3
  br i1 %i.bj, label %.preheader538, label %.lr.ph.preheader

.preheader538:                                    ; preds = %bb.n
  %.not607 = icmp eq i32 %i.bi, 0
  br i1 %.not607, label %.loopexit539, label %.lr.ph567

.lr.ph567:                                        ; preds = %.preheader538
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph567, %bb.o
  %indvars.iv637 = phi i64 [ 0, %.lr.ph567 ], [ %indvars.iv.next638, %bb.o ] ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv637
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = lshr i32 %i.bn, 6
  %.zext = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0493.0, i64 %.zext ; 2 uses
  %i.br = and i64 %i.bo, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = load i64, ptr %i.bq, align 8
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bq, align 8
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bo ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.bv, align 4
  %.sroa.5488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float +qnan, ptr %.sroa.5488.0..sroa_idx, align 4
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.bo ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.bw, align 4
  %.sroa.5485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float +qnan, ptr %.sroa.5485.0..sroa_idx, align 4
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %i.bx = load i32, ptr %i.bh, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next638, %i.by
  br i1 %i.bz, label %bb.o, label %.loopexit539, !llvm.loop !5

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.ce to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.ch ; 2 uses
  %i.cj = zext i32 %i.cc to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load float, ptr %i.cn, align 4          ; 2 uses
  %i.cp = fsub float %i.cm, %i.co
  %i.cq = zext i32 %i.cg to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.cq ; 2 uses
  %i.cs = load <2 x float>, ptr %i.ci, align 4
  %i.ct = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.cu = fsub <2 x float> %i.cs, %i.ct           ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cr, align 4
  %i.cw = fsub <2 x float> %i.cv, %i.ct           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fsub float %i.cy, %i.co
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ch
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cj
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cq
  %i.dd = load <2 x float>, ptr %i.da, align 4
  %i.de = load <2 x float>, ptr %i.db, align 4    ; 2 uses
  %i.df = fsub <2 x float> %i.dd, %i.de           ; 3 uses
  %i.dg = load <2 x float>, ptr %i.dc, align 4
  %i.dh = fsub <2 x float> %i.dg, %i.de           ; 3 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dj = extractelement <2 x float> %i.df, i64 1
  %i.dk = extractelement <2 x float> %i.dh, i64 0
  %i.dl = fmul <2 x float> %i.df, %i.di           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.dn = fneg float %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dj, float %i.dn)
  %i.dp = fcmp olt float %i.do, 0.000000e+00
  %i.dq = select i1 %i.dp, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.dr = extractelement <2 x float> %i.dl, i64 1
  %i.ds = fcmp oeq float %i.dm, %i.dr             ; 2 uses
  %i.dt = select i1 %i.ds, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.df ; 3 uses
  %i.du = select i1 %i.ds, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.dh
  %i.dv = fneg <2 x float> %i.du                  ; 3 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fmul <2 x float> %i.cu, %i.dw
  %i.dy = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = fmul <2 x float> %i.eb, %i.dz           ; 3 uses
  %i.ed = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.cu, %i.ed
  %i.ef = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ef, <2 x float> %i.ee)
  %i.eh = fmul <2 x float> %i.eb, %i.eg           ; 3 uses
  %i.ei = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.ej, %i.dv
  %i.el = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.dt, <2 x float> %i.ek) ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 1
  %i.ep = fmul float %i.dq, %i.eo                 ; 2 uses
  %i.eq = extractelement <2 x float> %i.en, i64 0
  %i.er = fmul float %i.dq, %i.eq                 ; 2 uses
  %i.es = extractelement <2 x float> %i.eh, i64 0
  %i.et = extractelement <2 x float> %i.ec, i64 0
  %shift = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %shift736 = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309 ] ; 2 uses
  %i.eu = load ptr, ptr %i.ca, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 3 uses
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.ex ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4          ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fb = load <2 x float>, ptr %i.fa, align 4    ; 8 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %shift, %i.fb
  %i.fd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.et, float %i.ez, float %i.fd)
  %i.ff = extractelement <2 x float> %i.fb, i64 1 ; 5 uses
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %i.ep, float %i.ff, float %i.fe) ; 2 uses
  %i.fh = fmul float %i.ff, %i.fg
  %i.fi = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x float> %i.fi, float %i.ez, i64 0 ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fj, %i.fl
  %i.fn = fsub <2 x float> %i.ec, %i.fm           ; 5 uses
  %i.fo = fsub float %i.ep, %i.fh                 ; 4 uses
  %foldExtExtBinop737 = fmul <2 x float> %shift736, %i.fb
  %i.fp = extractelement <2 x float> %foldExtExtBinop737, i64 0
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.es, float %i.ez, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.er, float %i.ff, float %i.fq) ; 2 uses
  %i.fs = fmul float %i.ff, %i.fr
  %i.ft = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fj, %i.fu
  %i.fw = fsub <2 x float> %i.eh, %i.fv           ; 5 uses
  %i.fx = fsub float %i.er, %i.fs                 ; 4 uses
  %foldExtExtBinop739 = fmul <2 x float> %i.fn, %i.fn
  %i.fy = extractelement <2 x float> %foldExtExtBinop739, i64 1
  %i.fz = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.fy)
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.ga) ; 2 uses
  %i.gc = fcmp ogt float %i.gb, 0.000000e+00
  br i1 %i.gc, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gb)
  %i.gd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.fn, %i.gf
  %i.gh = fmul float %i.fo, %i.gd
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %.lr.ph
  %.sroa.20469.1 = phi float [ %i.gh, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.fo, %.lr.ph ] ; 6 uses
  %.sroa.0446.1 = phi <2 x float> [ %i.gg, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.fn, %.lr.ph ] ; 7 uses
  %foldExtExtBinop741 = fmul <2 x float> %i.fw, %i.fw
  %i.gi = extractelement <2 x float> %foldExtExtBinop741, i64 1
  %i.gj = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.gj, float %i.gi)
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.gk) ; 2 uses
  %i.gm = fcmp ogt float %i.gl, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj:bb.a
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = sub i64 %i.kp, %i.kq
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.kr) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit319

_ZNSt6vectorIjSaIjEED2Ev.exit319:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit319
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit319, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i.i320 = icmp eq ptr %.sroa.0493.0, null
  br i1 %.not.i.i320, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit
  %i.kz = ptrtoint ptr %.sroa.18502.0 to i64
  %i.la = ptrtoint ptr %.sroa.0493.0 to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = ashr exact i64 %i.lb, 3
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %.sroa.18502.0, i64 %i.ld
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lb) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.am:                                            ; preds = %.lr.ph601, %.loopexit
  %indvars.iv650 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next651, %.loopexit ] ; 8 uses
  %.sroa.35.0597 = phi ptr [ null, %.lr.ph601 ], [ %.sroa.35.4, %.loopexit ] ; 6 uses
  %.sroa.20.0596 = phi ptr [ null, %.lr.ph601 ], [ %.sroa.20.3, %.loopexit ] ; 3 uses
  %.sroa.0387.0595 = phi ptr [ null, %.lr.ph601 ], [ %.sroa.0387.4, %.loopexit ] ; 11 uses
  %i.lf = trunc nuw i64 %indvars.iv650 to i32     ; 2 uses
  %i.lg = lshr i64 %indvars.iv650, 6
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0493.0, i64 %i.lg
  %i.li = and i64 %indvars.iv650, 63
  %i.lj = shl nuw i64 1, %i.li
  %i.lk = load i64, ptr %i.lh, align 8
  %i.ll = and i64 %i.lk, %i.lj
  %.not527 = icmp eq i64 %i.ll, 0
  br i1 %.not527, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %.loopexit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.am
  %i.lm = load ptr, ptr %i.au, align 8
  %i.ln = load ptr, ptr %i.g, align 8
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.ln, i64 %indvars.iv650 ; 3 uses
  %i.lp = load ptr, ptr %i.b, align 8
  %i.lq = getelementptr inbounds nuw [12 x i8], ptr %i.lp, i64 %indvars.iv650 ; 3 uses
  %i.lr = load ptr, ptr %i.at, align 8
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.lr, i64 %indvars.iv650 ; 3 uses
  %i.lt = ptrtoint ptr %.sroa.0387.0595 to i64    ; 2 uses
  %.not.i.i325 = icmp eq ptr %.sroa.20.0596, %.sroa.0387.0595
  %.sroa.20.4 = select i1 %.not.i.i325, ptr %.sroa.20.0596, ptr %.sroa.0387.0595 ; 2 uses
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %i.lm, i64 %indvars.iv650
  invoke void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49) %.2223, ptr noundef nonnull align 4 dereferenceable(12) %i.lu, float noundef %.2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.an unwind label %.loopexit531

bb.an:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.lv = load ptr, ptr %i.ki, align 8
  %i.lw = load ptr, ptr %4, align 8
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = ashr exact i64 %i.lz, 2
  %i.mb = add nsw i64 %i.ma, 5                    ; 4 uses
  %i.mc = icmp ugt i64 %i.mb, 2305843009213693951
  br i1 %i.mc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc326 unwind label %.loopexit.split-lp532

.noexc326:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.md = ptrtoint ptr %.sroa.35.0597 to i64
  %i.me = sub i64 %i.md, %i.lt                    ; 2 uses
  %i.mf = ashr exact i64 %i.me, 2
  %i.mg = icmp ult i64 %i.mf, %i.mb
  br i1 %i.mg, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.ap
  %i.mh = ptrtoint ptr %.sroa.20.4 to i64
  %i.mi = sub i64 %i.mh, %i.lt                    ; 3 uses
  %i.mj = shl nuw nsw i64 %i.mb, 2
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #20
          to label %.noexc327 unwind label %.loopexit531 ; 4 uses

.noexc327:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.ml = icmp sgt i64 %i.mi, 0
  br i1 %i.ml, label %bb.aq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.aq:                                            ; preds = %.noexc327
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %.sroa.0387.0595, i64 %i.mi, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.aq, %.noexc327
  %.not.i8.i = icmp eq ptr %.sroa.0387.0595, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0595, i64 noundef %i.me) #21
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.ar, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mi
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mb
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.ap
  %.sroa.0387.6 = phi ptr [ %i.mk, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %.sroa.0387.0595, %bb.ap ] ; 7 uses
  %.sroa.20.5 = phi ptr [ %i.mm, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %.sroa.20.4, %bb.ap ] ; 6 uses
  %.sroa.35.6 = phi ptr [ %i.mn, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %.sroa.35.0597, %bb.ap ] ; 2 uses
  %.not.i328 = icmp eq ptr %.sroa.20.5, %.sroa.35.6
  br i1 %.not.i328, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  store i32 %i.lf, ptr %.sroa.20.5, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.mo = ptrtoint ptr %.sroa.20.5 to i64
  %i.mp = ptrtoint ptr %.sroa.0387.6 to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 6 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775804
  br i1 %i.mr, label %bb.au, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc330 unwind label %.loopexit.split-lp532

.noexc330:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.at
  %i.ms = ashr exact i64 %i.mq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 2305843009213693951)
  %i.mw = select i1 %i.mu, i64 2305843009213693951, i64 %i.mv ; 3 uses
  %.not.i.i.i329 = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i329)
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #20
          to label %.noexc331 unwind label %.loopexit531 ; 4 uses

.noexc331:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mq ; 2 uses
  store i32 %i.lf, ptr %i.mz, align 4
  %i.na = icmp sgt i64 %i.mq, 0
  br i1 %i.na, label %bb.av, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.av:                                            ; preds = %.noexc331
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.my, ptr align 4 %.sroa.0387.6, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.av, %.noexc331
  %.not.i17.i.i = icmp eq ptr %.sroa.0387.6, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.6, i64 noundef %i.mq) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aw, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.as, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %.sroa.0387.7 = phi ptr [ %i.my, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0387.6, %bb.as ] ; 2 uses
  %.pn = phi ptr [ %i.mz, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.20.5, %bb.as ]
  %.sroa.35.7 = phi ptr [ %i.nb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.35.6, %bb.as ] ; 2 uses
  %.sroa.20.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.nc = load ptr, ptr %i.ki, align 8            ; 2 uses
  %i.nd = load ptr, ptr %4, align 8               ; 2 uses
  %.not609 = icmp eq ptr %i.nc, %i.nd
  br i1 %.not609, label %.preheader, label %.lr.ph574

.lr.ph574:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  br label %bb.ax

.preheader:                                       ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.0387.1.lcssa = phi ptr [ %.sroa.0387.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0387.3, %bb.bh ] ; 9 uses
  %.sroa.20.1.lcssa = phi ptr [ %.sroa.20.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.20.2, %bb.bh ] ; 5 uses
  %.sroa.35.1.lcssa = phi ptr [ %.sroa.35.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.35.3, %bb.bh ] ; 3 uses
  %i.nk = ptrtoint ptr %.sroa.20.1.lcssa to i64
  %i.nl = ptrtoint ptr %.sroa.0387.1.lcssa to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 3 uses
  %i.nn = ashr exact i64 %i.nm, 2                 ; 3 uses
  %.not610 = icmp eq ptr %.sroa.20.1.lcssa, %.sroa.0387.1.lcssa ; 2 uses
  br i1 %.not610, label %._crit_edge585, label %.lr.ph584

.loopexit531:                                     ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0387.2.ph = phi ptr [ %.sroa.0387.0595, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.0387.0595, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ %.sroa.0387.6, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.35.2.ph = phi ptr [ %.sroa.35.0597, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.35.0597, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ %.sroa.20.5, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit535 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp532:                            ; preds = %bb.ao, %bb.au
  %.sroa.0387.2.ph533 = phi ptr [ %.sroa.0387.6, %bb.au ], [ %.sroa.0387.0595, %bb.ao ]
  %.sroa.35.2.ph534 = phi ptr [ %.sroa.20.5, %bb.au ], [ %.sroa.35.0597, %bb.ao ]
  %lpad.loopexit.split-lp536 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ax:                                            ; preds = %.lr.ph574, %bb.bh
  %i.no = phi ptr [ %i.nd, %.lr.ph574 ], [ %i.qd, %bb.bh ] ; 5 uses
  %i.np = phi ptr [ %i.nc, %.lr.ph574 ], [ %i.qe, %bb.bh ] ; 4 uses
  %i.nq = phi i64 [ 0, %.lr.ph574 ], [ %i.qg, %bb.bh ]
  %.0218573 = phi i32 [ 0, %.lr.ph574 ], [ %i.qf, %bb.bh ]
  %.sroa.35.1572 = phi ptr [ %.sroa.35.7, %.lr.ph574 ], [ %.sroa.35.3, %bb.bh ] ; 9 uses
  %.sroa.20.1571 = phi ptr [ %.sroa.20.6, %.lr.ph574 ], [ %.sroa.20.2, %bb.bh ] ; 7 uses
  %.sroa.0387.1570 = phi ptr [ %.sroa.0387.7, %.lr.ph574 ], [ %.sroa.0387.3, %bb.bh ] ; 11 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4            ; 4 uses
  %i.nt = zext i32 %i.ns to i64                   ; 4 uses
  %i.nu = lshr i32 %i.ns, 6
  %.zext523 = zext nneg i32 %i.nu to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0493.0, i64 %.zext523 ; 3 uses
  %i.nw = and i64 %i.nt, 63
  %i.nx = shl nuw i64 1, %i.nw                    ; 2 uses
  %i.ny = load i64, ptr %i.nv, align 8
  %i.nz = and i64 %i.nx, %i.ny
  %.not528 = icmp eq i64 %i.nz, 0
  br i1 %.not528, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.oa = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.nt ; 3 uses
  %i.ob = load float, ptr %i.oa, align 4
  %i.oc = load float, ptr %i.lo, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oe = load float, ptr %i.od, align 4
  %i.of = load float, ptr %i.ne, align 4
  %i.og = fmul float %i.oe, %i.of
  %i.oh = call float @llvm.fmuladd.f32(float %i.ob, float %i.oc, float %i.og)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oj = load float, ptr %i.oi, align 4
  %i.ok = load float, ptr %i.nf, align 4
  %i.ol = call noundef float @llvm.fmuladd.f32(float %i.oj, float %i.ok, float %i.oh)
  %i.om = fcmp olt float %i.ol, f0x3F7FF972
  br i1 %i.om, label %bb.bh, label %bb.az

.loopexit530:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.nt ; 3 uses
  %i.oo = load float, ptr %i.on, align 4
  %i.op = load float, ptr %i.lq, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.or = load float, ptr %i.oq, align 4
  %i.os = load float, ptr %i.ng, align 4
  %i.ot = fmul float %i.or, %i.os
  %i.ou = call float @llvm.fmuladd.f32(float %i.oo, float %i.op, float %i.ot)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ow = load float, ptr %i.ov, align 4
  %i.ox = load float, ptr %i.nh, align 4
  %i.oy = call noundef float @llvm.fmuladd.f32(float %i.ow, float %i.ox, float %i.ou)
  %i.oz = fcmp olt float %i.oy, %i.kg
  br i1 %i.oz, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.nt ; 3 uses
  %i.pb = load float, ptr %i.pa, align 4
  %i.pc = load float, ptr %i.ls, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pe = load float, ptr %i.pd, align 4
  %i.pf = load float, ptr %i.ni, align 4
  %i.pg = fmul float %i.pe, %i.pf
  %i.ph = call float @llvm.fmuladd.f32(float %i.pb, float %i.pc, float %i.pg)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pj = load float, ptr %i.pi, align 4
  %i.pk = load float, ptr %i.nj, align 4
  %i.pl = call noundef float @llvm.fmuladd.f32(float %i.pj, float %i.pk, float %i.ph)
  %i.pm = fcmp olt float %i.pl, %i.kg
  br i1 %i.pm, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i336 = icmp eq ptr %.sroa.20.1571, %.sroa.35.1572
  br i1 %.not.i336, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.ns, ptr %.sroa.20.1571, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345

bb.bd:                                            ; preds = %bb.bb
  %i.pn = ptrtoint ptr %.sroa.35.1572 to i64
  %i.po = ptrtoint ptr %.sroa.0387.1570 to i64
  %i.pp = sub i64 %i.pn, %i.po                    ; 6 uses
  %i.pq = icmp eq i64 %i.pp, 9223372036854775804
  br i1 %i.pq, label %bb.be, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc343 unwind label %.loopexit.split-lp

.noexc343:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337: ; preds = %bb.bd
  %i.pr = ashr exact i64 %i.pp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.pr, i64 1)
  %i.ps = add nsw i64 %.sroa.speculated.i.i.i338, %i.pr ; 2 uses
  %i.pt = icmp ult i64 %i.ps, %i.pr
  %i.pu = call i64 @llvm.umin.i64(i64 %i.ps, i64 2305843009213693951)
  %i.pv = select i1 %i.pt, i64 2305843009213693951, i64 %i.pu ; 3 uses
  %.not.i.i.i339 = icmp ne i64 %i.pv, 0
  call void @llvm.assume(i1 %.not.i.i.i339)
  %i.pw = shl nuw nsw i64 %i.pv, 2
  %i.px = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pw) #20
          to label %.noexc344 unwind label %.loopexit530 ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 %i.pp ; 2 uses
  store i32 %i.ns, ptr %i.py, align 4
  %i.pz = icmp sgt i64 %i.pp, 0
  br i1 %i.pz, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340

bb.bf:                                            ; preds = %.noexc344
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.px, ptr align 4 %.sroa.0387.1570, i64 %i.pp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340: ; preds = %bb.bf, %.noexc344
  %.not.i17.i.i341 = icmp eq ptr %.sroa.0387.1570, null
  br i1 %.not.i17.i.i341, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.1570, i64 noundef %i.pp) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pv
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345

_ZNSt6vectorIjSaIjEE9push_backERKj.exit345:       ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342
  %.sroa.0387.8 = phi ptr [ %i.px, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.0387.1570, %bb.bc ]
  %.pn529 = phi ptr [ %i.py, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.20.1571, %bb.bc ]
  %.sroa.35.8 = phi ptr [ %i.qa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.35.1572, %bb.bc ]
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.pn529, i64 4
  %i.qb = load i64, ptr %i.nv, align 8
  %i.qc = or i64 %i.qb, %i.nx
  store i64 %i.qc, ptr %i.nv, align 8
  %.pre = load ptr, ptr %i.ki, align 8
  %.pre654 = load ptr, ptr %4, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345
  %i.qd = phi ptr [ %i.no, %bb.ax ], [ %i.no, %bb.ay ], [ %i.no, %bb.az ], [ %i.no, %bb.ba ], [ %.pre654, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %i.qe = phi ptr [ %i.np, %bb.ax ], [ %i.np, %bb.ay ], [ %i.np, %bb.az ], [ %i.np, %bb.ba ], [ %.pre, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.0387.3 = phi ptr [ %.sroa.0387.1570, %bb.ax ], [ %.sroa.0387.1570, %bb.ay ], [ %.sroa.0387.1570, %bb.az ], [ %.sroa.0387.1570, %bb.ba ], [ %.sroa.0387.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1571, %bb.ax ], [ %.sroa.20.1571, %bb.ay ], [ %.sroa.20.1571, %bb.az ], [ %.sroa.20.1571, %bb.ba ], [ %.sroa.20.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.35.3 = phi ptr [ %.sroa.35.1572, %bb.ax ], [ %.sroa.35.1572, %bb.ay ], [ %.sroa.35.1572, %bb.az ], [ %.sroa.35.1572, %bb.ba ], [ %.sroa.35.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %i.qf = add i32 %.0218573, 1                    ; 2 uses
  %i.qg = zext i32 %i.qf to i64                   ; 2 uses
  %i.qh = ptrtoint ptr %i.qe to i64
  %i.qi = ptrtoint ptr %i.qd to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = ashr exact i64 %i.qj, 2
  %i.ql = icmp ugt i64 %i.qk, %i.qg
  br i1 %i.ql, label %bb.ax, label %.preheader, !llvm.loop !8

._crit_edge585:                                   ; preds = %.lr.ph584, %.preheader
  %i.qm = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.rl, %.lr.ph584 ] ; 5 uses
  %i.qn = phi <4 x float> [ zeroinitializer, %.preheader ], [ %i.rs, %.lr.ph584 ] ; 6 uses
  %foldExtExtBinop747 = fmul <4 x float> %i.qn, %i.qn
  %i.qo = extractelement <4 x float> %foldExtExtBinop747, i64 1
  %i.qp = extractelement <4 x float> %i.qn, i64 0 ; 2 uses
  %i.qq = call float @llvm.fmuladd.f32(float %i.qp, float %i.qp, float %i.qo)
  %i.qr = extractelement <4 x float> %i.qn, i64 2 ; 4 uses
  %i.qs = call noundef float @llvm.fmuladd.f32(float %i.qr, float %i.qr, float %i.qq) ; 2 uses
  %i.qt = fcmp oeq float %i.qs, 0.000000e+00
  %i.qu = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  br i1 %i.qt, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i350

_ZN10aiVector3tIfEdVEf.exit.i350:                 ; preds = %._crit_edge585
  %sqrt.i.i351 = call noundef float @llvm.sqrt.f32(float %i.qs)
  %i.qv = fdiv float 1.000000e+00, %sqrt.i.i351   ; 2 uses
  %i.qw = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qu, %i.qx
  %i.qz = fmul float %i.qr, %i.qv
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

.lr.ph584:                                        ; preds = %.preheader, %.lr.ph584
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %.lr.ph584 ], [ 0, %.preheader ] ; 2 uses
  %i.ra = phi <2 x float> [ %i.rl, %.lr.ph584 ], [ zeroinitializer, %.preheader ]
  %i.rb = phi <4 x float> [ %i.rs, %.lr.ph584 ], [ zeroinitializer, %.preheader ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv643
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = zext i32 %i.rd to i64                   ; 2 uses
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.re ; 2 uses
  %i.rg = load <2 x float>, ptr %i.rf, align 4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.re ; 2 uses
  %i.rk = load <2 x float>, ptr %i.rj, align 4
  %i.rl = fadd <2 x float> %i.ra, %i.rk           ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rn = load float, ptr %i.rm, align 4
  %i.ro = insertelement <4 x float> poison, float %i.ri, i64 2
  %i.rp = insertelement <4 x float> %i.ro, float %i.rn, i64 3
  %i.rq = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> %i.rp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rs = fadd <4 x float> %i.rb, %i.rr           ; 2 uses
  %indvars.iv.next644 = add i64 %indvars.iv643, 1 ; 2 uses
  %i.rt = and i64 %indvars.iv.next644, 4294967295
  %i.ru = icmp ugt i64 %i.nn, %i.rt
  br i1 %i.ru, label %.lr.ph584, label %._crit_edge585, !llvm.loop !9

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIfEdVEf.exit.i350, %._crit_edge585
  %.sroa.14370.1 = phi float [ %i.qr, %._crit_edge585 ], [ %i.qz, %_ZN10aiVector3tIfEdVEf.exit.i350 ] ; 3 uses
  %i.rv = phi <2 x float> [ %i.qu, %._crit_edge585 ], [ %i.qy, %_ZN10aiVector3tIfEdVEf.exit.i350 ] ; 3 uses
  %foldExtExtBinop749 = fmul <2 x float> %i.qm, %i.qm
  %i.rw = extractelement <2 x float> %foldExtExtBinop749, i64 1
  %i.rx = extractelement <2 x float> %i.qm, i64 0 ; 2 uses
  %i.ry = call float @llvm.fmuladd.f32(float %i.rx, float %i.rx, float %i.rw)
  %i.rz = extractelement <4 x float> %i.qn, i64 3 ; 4 uses
  %i.sa = call noundef float @llvm.fmuladd.f32(float %i.rz, float %i.rz, float %i.ry) ; 2 uses
  %i.sb = fcmp oeq float %i.sa, 0.000000e+00
  br i1 %i.sb, label %_ZN10aiVector3tIfE9NormalizeEv.exit354, label %_ZN10aiVector3tIfEdVEf.exit.i352

_ZN10aiVector3tIfEdVEf.exit.i352:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i353 = call noundef float @llvm.sqrt.f32(float %i.sa)
  %i.sc = fdiv float 1.000000e+00, %sqrt.i.i353   ; 2 uses
  %i.sd = insertelement <2 x float> poison, float %i.sc, i64 0
  %i.se = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sf = fmul <2 x float> %i.qm, %i.se
  %i.sg = fmul float %i.rz, %i.sc
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit354

_ZN10aiVector3tIfE9NormalizeEv.exit354:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i352
  %.sroa.14.1 = phi float [ %i.rz, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.sg, %_ZN10aiVector3tIfEdVEf.exit.i352 ] ; 3 uses
  %i.sh = phi <2 x float> [ %i.qm, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.sf, %_ZN10aiVector3tIfEdVEf.exit.i352 ] ; 3 uses
  br i1 %.not610, label %.loopexit, label %.lr.ph594.preheader

.lr.ph594.preheader:                              ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit354
  %5 = icmp eq i64 %i.nm, 4
  br i1 %5, label %.lr.ph594.epil.preheader, label %.lr.ph594.preheader.new

.lr.ph594.preheader.new:                          ; preds = %.lr.ph594.preheader
  %unroll_iter = and i64 %i.nn, -2
  br label %.lr.ph594

.lr.ph594:                                        ; preds = %.lr.ph594, %.lr.ph594.preheader.new
  %indvars.iv646 = phi i64 [ 0, %.lr.ph594.preheader.new ], [ %indvars.iv.next647, %.lr.ph594 ] ; 3 uses
  %indvars.iv646.a = phi i64 [ 0, %.lr.ph594.preheader.new ], [ %niter.next.1, %.lr.ph594 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv646 ; 2 uses
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %8 ; 2 uses
  store <2 x float> %i.rv, ptr %9, align 4
  %.sroa.14370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %.sroa.14370.1, ptr %.sroa.14370.0..sroa_idx, align 4
  %10 = load i32, ptr %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %11 ; 2 uses
  store <2 x float> %i.sh, ptr %12, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv646
  %13 = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 2 uses
  %i.sj = load i32, ptr %13, align 4
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.sk ; 2 uses
  store <2 x float> %i.rv, ptr %i.sl, align 4
  %.sroa.14370.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store float %.sroa.14370.1, ptr %.sroa.14370.0..sroa_idx.a, align 4
  %i.sm = load i32, ptr %13, align 4
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.sn ; 2 uses
  store <2 x float> %i.sh, ptr %i.so, align 4
  %.sroa.14.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx.a, align 4
  %indvars.iv.next647 = add nuw i64 %indvars.iv646, 2 ; 2 uses
  %niter.next.1 = add i64 %indvars.iv646.a, 2     ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph594, !llvm.loop !10

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph594
  %14 = and i64 %i.nm, 4
  %lcmp.mod.not = icmp eq i64 %14, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph594.epil.preheader

.lr.ph594.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph594.preheader
  %indvars.iv646.epil.init = phi i64 [ 0, %.lr.ph594.preheader ], [ %indvars.iv.next647, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod771 = trunc i64 %i.nn to i1
  call void @llvm.assume(i1 %lcmp.mod771)
  %15 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv646.epil.init ; 2 uses
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %17 ; 2 uses
  store <2 x float> %i.rv, ptr %18, align 4
  %.sroa.14370.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %.sroa.14370.1, ptr %.sroa.14370.0..sroa_idx.epil, align 4
  %19 = load i32, ptr %15, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %20 ; 2 uses
  store <2 x float> %i.sh, ptr %21, align 4
  %.sroa.14.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %21, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx.epil, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph594.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354, %bb.am
  %.sroa.0387.4 = phi ptr [ %.sroa.0387.0595, %bb.am ], [ %.sroa.0387.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.0387.1.lcssa, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.0387.1.lcssa, %.lr.ph594.epil.preheader ] ; 4 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.0596, %bb.am ], [ %.sroa.20.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.20.1.lcssa, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.20.1.lcssa, %.lr.ph594.epil.preheader ]
  %.sroa.35.4 = phi ptr [ %.sroa.35.0597, %bb.am ], [ %.sroa.35.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.35.1.lcssa, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.35.1.lcssa, %.lr.ph594.epil.preheader ] ; 2 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.sp = load i32, ptr %i.s, align 4
  %i.sq = zext i32 %i.sp to i64
  %i.sr = icmp samesign ult i64 %indvars.iv.next651, %i.sq
  br i1 %i.sr, label %bb.am, label %._crit_edge602, !llvm.loop !11

bb.bi:                                            ; preds = %.loopexit530, %.loopexit.split-lp, %.loopexit531, %.loopexit.split-lp532
  %.sroa.0387.5 = phi ptr [ %.sroa.0387.2.ph533, %.loopexit.split-lp532 ], [ %.sroa.0387.2.ph, %.loopexit531 ], [ %.sroa.0387.1570, %.loopexit530 ], [ %.sroa.0387.1570, %.loopexit.split-lp ] ; 3 uses
  %.sroa.35.5 = phi ptr [ %.sroa.35.2.ph534, %.loopexit.split-lp532 ], [ %.sroa.35.2.ph, %.loopexit531 ], [ %.sroa.35.1572, %.loopexit530 ], [ %.sroa.35.1572, %.loopexit.split-lp ]
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp536, %.loopexit.split-lp532 ], [ %lpad.loopexit535, %.loopexit531 ], [ %lpad.loopexit, %.loopexit530 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i355 = icmp eq ptr %.sroa.0387.5, null
  br i1 %.not.i.i.i355, label %_ZNSt6vectorIjSaIjEED2Ev.exit356, label %.thread511

.thread511:                                       ; preds = %bb.bi
  %i.ss = ptrtoint ptr %.sroa.35.5 to i64
  %i.st = ptrtoint ptr %.sroa.0387.5 to i64
  %i.su = sub i64 %i.ss, %i.st
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.5, i64 noundef %i.su) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit356

_ZNSt6vectorIjSaIjEED2Ev.exit356:                 ; preds = %bb.bi, %.thread511
  %i.sv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i357 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i.i357, label %_ZNSt6vectorIjSaIjEED2Ev.exit358, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit356
  %i.sw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sv to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.ta) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit358

_ZNSt6vectorIjSaIjEED2Ev.exit358:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit356, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit358, %bb.ag, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit358 ], [ %i.kd, %bb.ag ], [ %i.ju, %bb.ad ] ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8            ; 3 uses
  %.not.i.i.i.i359 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i359, label %_ZN6Assimp11SpatialSortD2Ev.exit360, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.td = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.th) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit360

_ZN6Assimp11SpatialSortD2Ev.exit360:              ; preds = %bb.bl, %bb.bk, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.ac ], [ %.pn.pn.pn.pn, %bb.bk ], [ %.pn.pn.pn.pn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit360, %bb.m
  %.pn273.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn.pn.pn.pn.pn, %_ZN6Assimp11SpatialSortD2Ev.exit360 ]
  %.not.i.i361 = icmp eq ptr %.sroa.0493.0, null
  br i1 %.not.i.i361, label %.body, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ti = ptrtoint ptr %.sroa.18502.0 to i64
  %i.tj = ptrtoint ptr %.sroa.0493.0 to i64
  %i.tk = sub i64 %i.ti, %i.tj                    ; 2 uses
  %i.tl = ashr exact i64 %i.tk, 3
  %i.tm = sub nsw i64 0, %i.tl
  %i.tn = getelementptr inbounds [8 x i8], ptr %.sroa.18502.0, i64 %i.tm
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tk) #21
  br label %.body

.body:                                            ; preds = %bb.bn, %bb.bm
  resume { ptr, i32 } %.pn273.pn.pn

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.al, %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.a, %bb.h, %bb.e, %bb.c
  %.0219 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.a ], [ true, %_ZN6Assimp11SpatialSortD2Ev.exit ], [ true, %bb.al ]
  ret i1 %.0219
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA52_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %1) #19
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(52) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #19
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS6_S7_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #4

declare void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef) local_unnamed_addr #4

declare void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(12), float noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4
end_hunk_1
