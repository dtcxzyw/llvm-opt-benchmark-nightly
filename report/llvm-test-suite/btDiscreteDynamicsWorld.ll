Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.arf, ptr noundef nonnull align 4 dereferenceable(16) %i.aod, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %20, float noundef %i.t, float noundef %i.t, float noundef %i.aqt, float noundef %i.aqv, ptr noundef nonnull align 4 dereferenceable(16) %23, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %i.anj, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anl, ptr noundef nonnull align 8 dereferenceable(16) %i.ank, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ann, ptr noundef nonnull align 8 dereferenceable(16) %i.anm, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ano, ptr noundef nonnull align 8 dereferenceable(16) %i.anp, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.arg = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %i.arg, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.arh = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %i.arh, i64 16, i1 false), !tbaa.struct !120
  %i.ari = load ptr, ptr %0, align 8, !tbaa !44
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 32
  %i.ark = load ptr, ptr %i.arj, align 8
  %i.arl = call noundef ptr %i.ark(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.arl, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge164
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.aj

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 844 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.arm, i64 16, i1 false), !tbaa.struct !120
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 860 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aro, ptr noundef nonnull align 4 dereferenceable(16) %i.arn, i64 16, i1 false), !tbaa.struct !120
  %i.arp = getelementptr inbounds nuw i8, ptr %1, i64 876 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arq, ptr noundef nonnull align 4 dereferenceable(16) %i.arp, i64 16, i1 false), !tbaa.struct !120
  %i.arr = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 892 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arr, ptr noundef nonnull align 4 dereferenceable(16) %i.ars, i64 16, i1 false), !tbaa.struct !120
  br i1 %.not, label %.critedge166, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.art = load ptr, ptr %0, align 8, !tbaa !44
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 32
  %i.arv = load ptr, ptr %i.aru, align 8
  %i.arw = tail call noundef ptr %i.arv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.arw, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.arx, i64 16, i1 false), !tbaa.struct !120
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aro, ptr noundef nonnull align 4 dereferenceable(16) %i.ary, i64 16, i1 false), !tbaa.struct !120
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arq, ptr noundef nonnull align 4 dereferenceable(16) %i.arz, i64 16, i1 false), !tbaa.struct !120
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arr, ptr noundef nonnull align 4 dereferenceable(16) %i.asa, i64 16, i1 false), !tbaa.struct !120
  %i.asb = load ptr, ptr %0, align 8, !tbaa !44
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 32
  %i.asd = load ptr, ptr %i.asc, align 8
  %i.ase = call noundef ptr %i.asd(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.ase, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  br label %bb.ag

.critedge166:                                     ; preds = %bb.ae
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.asf, i64 16, i1 false), !tbaa.struct !120
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aro, ptr noundef nonnull align 4 dereferenceable(16) %i.asg, i64 16, i1 false), !tbaa.struct !120
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arq, ptr noundef nonnull align 4 dereferenceable(16) %i.ash, i64 16, i1 false), !tbaa.struct !120
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.arr, ptr noundef nonnull align 4 dereferenceable(16) %i.asi, i64 16, i1 false), !tbaa.struct !120
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge166, %bb.af
  br i1 %.not160, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 852
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 868
  %.sroa.18.16.copyload = load float, ptr %.sroa.18.16..sroa_idx, align 4
  %.sroa.20364.32.copyload = load float, ptr %i.arp, align 4 ; 2 uses
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.sroa.24.32.copyload = load float, ptr %.sroa.24.32..sroa_idx, align 8 ; 2 uses
  %.sroa.27.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 884
  %.sroa.27.32.copyload = load float, ptr %.sroa.27.32..sroa_idx, align 4
  %.sroa.34.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 900
  %.sroa.34.48.copyload = load float, ptr %.sroa.34.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ask = load <2 x float>, ptr %i.arm, align 4  ; 2 uses
  %i.asl = load <2 x float>, ptr %i.arn, align 4  ; 2 uses
  %i.asm = load <2 x float>, ptr %i.ars, align 4  ; 2 uses
  %i.asn = shufflevector <2 x float> %i.ask, <2 x float> %i.asl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aso = fmul <2 x float> %i.asn, zeroinitializer ; 2 uses
  %i.asp = shufflevector <2 x float> %i.ask, <2 x float> %i.asl, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.asq = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.asr = insertelement <2 x float> %i.asq, float %.sroa.18.16.copyload, i64 1 ; 2 uses
  %i.ass = fmul float %.sroa.24.32.copyload, 0.000000e+00
  %i.ast = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.asu = load <2 x float>, ptr %i.asj, align 8, !tbaa !41 ; 3 uses
  %i.asv = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asp, <2 x float> %i.asv, <2 x float> %i.aso)
  %i.asx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asr, <2 x float> zeroinitializer, <2 x float> %i.asw)
  %i.asy = fadd <2 x float> %i.asm, %i.asx
  %i.asz = insertelement <2 x float> poison, float %.sroa.20364.32.copyload, i64 0
  %i.ata = shufflevector <2 x float> %i.asz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atb = insertelement <2 x float> poison, float %i.ass, i64 0
  %i.atc = shufflevector <2 x float> %i.atb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ata, <2 x float> %i.asu, <2 x float> %i.atc)
  %i.ate = insertelement <2 x float> poison, float %.sroa.27.32.copyload, i64 0
  %i.atf = shufflevector <2 x float> %i.ate, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atf, <2 x float> zeroinitializer, <2 x float> %i.atd)
  %i.ath = insertelement <2 x float> poison, float %.sroa.34.48.copyload, i64 0
  %i.ati = shufflevector <2 x float> %i.ath, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atj = fadd <2 x float> %i.ati, %i.atg        ; 2 uses
  %i.atk = insertelement <2 x float> %i.atj, float 0.000000e+00, i64 1
  store <2 x float> %i.asy, ptr %28, align 8
  store <2 x float> %i.atk, ptr %i.ast, align 8
  %i.atl = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.atm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asp, <2 x float> %i.atl, <2 x float> %i.aso)
  %i.atn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asr, <2 x float> zeroinitializer, <2 x float> %i.atm)
  %i.ato = fadd <2 x float> %i.asm, %i.atn
  %i.atp = shufflevector <2 x float> %i.atj, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.ato, ptr %29, align 8
  %i.atq = getelementptr inbounds nuw i8, ptr %29, i64 8
  store <2 x float> %i.atp, ptr %i.atq, align 8
  %i.atr = load ptr, ptr %0, align 8, !tbaa !44
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 32
  %i.att = load ptr, ptr %i.ats, align 8
  %i.atu = call noundef ptr %i.att(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !44
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 40
  %i.atx = load ptr, ptr %i.atw, align 8
  call void %i.atx(ptr noundef nonnull align 8 dereferenceable(8) %i.atu, ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %.sroa.3.12.vec.insert.i328 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.20364.32.copyload, i64 0
  store <2 x float> %i.asp, ptr %31, align 8
  %i.aty = getelementptr inbounds nuw i8, ptr %31, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i328, ptr %i.aty, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %.sroa.3.12.vec.insert.i333 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.24.32.copyload, i64 0
  store <2 x float> %i.asn, ptr %32, align 8
  %i.atz = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i333, ptr %i.atz, align 8
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aub = load float, ptr %i.aua, align 8, !tbaa !244
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !245
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 956
  %i.auf = load ptr, ptr %0, align 8, !tbaa !44
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 32
  %i.auh = load ptr, ptr %i.aug, align 8
  %i.aui = call noundef ptr %i.auh(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.aui, ptr noundef nonnull align 4 dereferenceable(16) %i.aue, ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, float noundef %i.t, float noundef %i.t, float noundef %i.aub, float noundef %i.aud, ptr noundef nonnull align 4 dereferenceable(16) %33, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.e, %bb.v, %bb.ad, %bb.ai, %bb.b, %bb.j, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr nofree noundef nonnull readonly align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !255 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 10 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 16          ; 4 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 16          ; 4 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %11 = alloca %class.btTransform, align 16       ; 8 uses
  %12 = alloca %class.btTransform, align 8        ; 14 uses
  %13 = alloca %class.btVector3, align 16         ; 14 uses
  %14 = alloca %class.btVector3, align 8          ; 13 uses
  %15 = alloca %class.btTransform, align 4        ; 8 uses
  %16 = alloca %class.btTransform, align 4        ; 8 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 4          ; 7 uses
  %26 = alloca %class.btVector3, align 4          ; 7 uses
  %27 = alloca %class.btVector3, align 4          ; 7 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %30 = alloca %class.btVector3, align 8          ; 5 uses
  %31 = alloca %class.btVector3, align 8          ; 5 uses
  %32 = alloca %class.btVector3, align 8          ; 5 uses
  %33 = alloca %class.btVector3, align 8          ; 5 uses
  %34 = alloca %class.btVector3, align 8          ; 5 uses
  %35 = alloca %class.btVector3, align 8          ; 5 uses
  %36 = alloca %class.btVector3, align 8          ; 5 uses
  %37 = alloca %class.btVector3, align 4          ; 7 uses
  %38 = alloca %class.btVector3, align 4          ; 7 uses
  %39 = alloca %class.btVector3, align 8          ; 5 uses
  %40 = alloca %class.btVector3, align 8          ; 5 uses
  %41 = alloca %class.btVector3, align 8          ; 5 uses
  %42 = alloca %class.btVector3, align 8          ; 5 uses
  %43 = alloca %class.btVector3, align 8          ; 5 uses
  %44 = alloca %class.btVector3, align 8          ; 5 uses
  %45 = alloca %class.btVector3, align 8          ; 5 uses
  %46 = alloca %class.btVector3, align 8          ; 5 uses
  %47 = alloca %class.btVector3, align 16         ; 5 uses
  %48 = alloca %class.btVector3, align 16         ; 5 uses
  %49 = alloca %class.DebugDrawcallback, align 8  ; 15 uses
  %50 = alloca %class.btVector3, align 16         ; 5 uses
  %51 = alloca %class.btVector3, align 16         ; 5 uses
  %52 = alloca %class.DebugDrawcallback, align 8  ; 14 uses
  %53 = alloca %class.btVector3, align 16         ; 5 uses
  %54 = alloca %class.btVector3, align 8          ; 5 uses
  %55 = alloca %class.btVector3, align 8          ; 5 uses
  %56 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !120
  %i.b = load ptr, ptr %0, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load <2 x float>, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 19 uses
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !41
  %i.p = fmul <2 x float> %i.o, <float 1.000000e+00, float 0.000000e+00>
  %i.q = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !41
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.q)
  %i.u = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.v = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  %i.x = fmul <2 x float> %i.w, zeroinitializer
  %i.y = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.z = fadd <2 x float> %i.y, %i.x
  %i.aa = insertelement <2 x float> %i.h, float %i.l, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.z)
  %i.ac = load <2 x float>, ptr %4, align 8, !tbaa !41
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !41
  %i.ag = fadd float %i.t, %i.af
  %.sroa.3.12.vec.insert.i160 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0
  store <2 x float> %i.ad, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i160, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %6, align 16, !tbaa !41
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.al = load ptr, ptr %0, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ap = load <2 x float>, ptr %i.g, align 4
  %i.aq = load float, ptr %i.k, align 4, !tbaa !41
  %i.ar = load float, ptr %i.m, align 4, !tbaa !41
  %i.as = load float, ptr %i.n, align 4, !tbaa !41
  %i.at = call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.as)
  %i.au = load float, ptr %i.r, align 4, !tbaa !41
  %i.av = call noundef float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.at)
  %i.aw = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.ba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer, <2 x float> %i.az)
  %i.bb = insertelement <2 x float> %i.ap, float %i.aq, i64 1
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> zeroinitializer, <2 x float> %i.ba)
  %i.bd = load <2 x float>, ptr %4, align 8, !tbaa !41
  %i.be = fadd <2 x float> %i.bc, %i.bd
  %i.bf = load float, ptr %i.ae, align 8, !tbaa !41
  %i.bg = fadd float %i.av, %i.bf
  %.sroa.3.12.vec.insert.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  store <2 x float> %i.be, ptr %7, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i170, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !41
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bl = load ptr, ptr %0, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bp = load <2 x float>, ptr %i.g, align 4
  %i.bq = load float, ptr %i.k, align 4, !tbaa !41
  %i.br = load float, ptr %i.m, align 4, !tbaa !41
  %i.bs = load float, ptr %i.n, align 4, !tbaa !41
  %i.bt = fmul float %i.bs, 0.000000e+00
  %i.bu = call float @llvm.fmuladd.f32(float %i.br, float 0.000000e+00, float %i.bt)
  %i.bv = load float, ptr %i.r, align 4, !tbaa !41
  %i.bw = fadd float %i.bv, %i.bu
  %i.bx = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.by = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 1, i32 3>
  %i.ca = fmul <2 x float> %i.bz, zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.ca)
  %i.cd = insertelement <2 x float> %i.bp, float %i.bq, i64 1
  %i.ce = fadd <2 x float> %i.cd, %i.cc
  %i.cf = load <2 x float>, ptr %4, align 8, !tbaa !41
  %i.cg = fadd <2 x float> %i.ce, %i.cf
  %i.ch = load float, ptr %i.ae, align 8, !tbaa !41
  %i.ci = fadd float %i.bw, %i.ch
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.cg, ptr %9, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !41
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !122 ; 3 uses
  switch i32 %i.co, label %bb.m [
    i32 31, label %bb.b
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 10, label %bb.g
    i32 11, label %bb.h
    i32 13, label %bb.i
    i32 28, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !259 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cx = zext nneg i32 %i.cq to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph822, %bb.c
  %indvars.iv828 = phi i64 [ %i.cx, %.lr.ph822 ], [ %indvars.iv.next829, %bb.c ] ; 2 uses
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -1 ; 2 uses
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !260
  %i.cz = getelementptr inbounds nuw [88 x i8], ptr %i.cy, i64 %indvars.iv.next829 ; 13 uses
  %.sroa.4769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.5770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.8773.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %.sroa.12776.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  %.sroa.13777.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %.sroa.16780.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 52
  %.sroa.17781.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !263
  %i.df = load <2 x float>, ptr %i.cz, align 8    ; 2 uses
  %i.dg = load <2 x float>, ptr %i.da, align 8    ; 2 uses
  %i.dh = load <2 x float>, ptr %i.dc, align 8    ; 3 uses
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.dk = load <2 x float>, ptr %i.db, align 8    ; 2 uses
  %i.dl = load <2 x float>, ptr %.sroa.4769.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5770.0.copyload = load float, ptr %.sroa.5770.0..sroa_idx, align 8
  %i.dm = load <2 x float>, ptr %.sroa.8773.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 8
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <4 x float> %i.di, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.dj, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dr = load <2 x float>, ptr %.sroa.12776.32..sroa_idx, align 4 ; 2 uses
  %.sroa.13777.32.copyload = load float, ptr %.sroa.13777.32..sroa_idx, align 8
  %i.ds = shufflevector <2 x float> %i.dg, <2 x float> %i.dm, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dt = insertelement <4 x float> %i.ds, float 1.000000e+00, i64 3 ; 2 uses
  %i.du = shufflevector <2 x float> %i.df, <2 x float> %i.dl, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 0.000000e+00, i64 3 ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dk, <2 x float> %i.dr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dx = insertelement <4 x float> %i.dw, float 0.000000e+00, i64 3 ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dk, <2 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.dz = insertelement <4 x float> %i.dv, float %.sroa.5770.0.copyload, i64 2
  %i.ea = insertelement <4 x float> %i.dx, float %.sroa.13777.32.copyload, i64 2
  %.sroa.17781.48.copyload = load float, ptr %.sroa.17781.48..sroa_idx, align 8 ; 2 uses
  %.sroa.16780.48.copyload = load float, ptr %.sroa.16780.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.eb = load <2 x float>, ptr %1, align 4, !tbaa !41, !noalias !265 ; 3 uses
  %i.ec = load <2 x float>, ptr %i.f, align 4, !tbaa !41, !noalias !265 ; 3 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ee = fmul <4 x float> %i.ed, %i.dt
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.eg = insertelement <4 x float> %i.ef, float -0.000000e+00, i64 3
  %i.eh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.eg, <4 x float> %i.ee)
  %i.ei = shufflevector <2 x float> %i.ec, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ei, <4 x float> %i.eh)
  %i.ek = load <2 x float>, ptr %i.m, align 4, !tbaa !41, !noalias !265 ; 3 uses
  %i.el = load <2 x float>, ptr %i.n, align 4, !tbaa !41, !noalias !265 ; 3 uses
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.eb, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.en = fmul <4 x float> %i.do, %i.em
  %i.eo = shufflevector <2 x float> %i.ek, <2 x float> %i.eb, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.dq, <4 x float> %i.en)
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> %i.ec, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.er = insertelement <4 x float> %i.dy, float %.sroa.17781.48.copyload, i64 3
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.er, <4 x float> %i.ep) ; 2 uses
  %i.et = load float, ptr %i.a, align 4, !tbaa !41, !noalias !264
  %i.eu = extractelement <4 x float> %i.es, i64 3
  %i.ev = fadd float %i.eu, %i.et
  %i.ew = load <2 x float>, ptr %i.ct, align 4, !tbaa !41, !noalias !264
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = load <2 x float>, ptr %i.i, align 4, !tbaa !41, !noalias !265 ; 4 uses
  %i.ez = load <2 x float>, ptr %i.j, align 4, !tbaa !41, !noalias !265 ; 3 uses
  %i.fa = insertelement <2 x float> poison, float %.sroa.16780.48.copyload, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.el, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2>
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.ek, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.ff = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fd)
  %i.fh = shufflevector <2 x float> %i.el, <2 x float> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.fi = insertelement <2 x float> poison, float %.sroa.17781.48.copyload, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fj, <2 x float> %i.fg)
  %i.fl = fadd <2 x float> %i.fk, %i.ex           ; 2 uses
  %i.fm = insertelement <2 x float> %i.fl, float 0.000000e+00, i64 1
  store <4 x float> %i.ej, ptr %11, align 16, !alias.scope !264
  %i.fn = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.fo = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 3
  %i.fp = insertelement <4 x float> %i.fo, float %.sroa.9.16.copyload, i64 2
  %i.fq = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.dt, <4 x float> %i.fq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fs = fmul <4 x float> %i.fp, %i.fr
  %i.ft = shufflevector <2 x float> %i.ey, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.fw, <4 x float> %i.fu)
  %i.fy = insertelement <2 x float> %i.fl, float %i.ev, i64 0
  store <4 x float> %i.fx, ptr %i.cu, align 16, !alias.scope !264
  %i.fz = insertelement <4 x float> %i.es, float 0.000000e+00, i64 3
  store <4 x float> %i.fz, ptr %i.cv, align 16, !alias.scope !264
  store <2 x float> %i.fy, ptr %i.cw, align 16, !alias.scope !264
  store <2 x float> %i.fm, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !108, !alias.scope !264
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ga = icmp samesign ugt i64 %indvars.iv828, 1
  br i1 %i.ga, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.gb = load ptr, ptr %2, align 8, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef float %i.gd(ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.ge, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !269 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.6.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %57 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.10.16..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.11.16..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %12, i64 28
  %58 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.go = zext nneg i32 %i.gg to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.go, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !270
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv.next ; 3 uses
  %.sroa.19767.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gr = load ptr, ptr %i.gj, align 8, !tbaa !274
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.gu = load float, ptr %i.g, align 4, !tbaa !41, !noalias !276 ; 2 uses
  %i.gv = load float, ptr %i.k, align 4, !tbaa !41, !noalias !276 ; 3 uses
  %i.gw = load float, ptr %i.r, align 4, !tbaa !41, !noalias !276 ; 3 uses
  %.sroa.17.48.copyload.a = load float, ptr %i.gk, align 4, !tbaa !41, !noalias !275
  %59 = insertelement <2 x float> poison, float %i.gu, i64 0 ; 2 uses
  %60 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> zeroinitializer
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i188, align 4, !tbaa !108, !alias.scope !275
  %61 = insertelement <2 x float> poison, float %i.gv, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = load float, ptr %i.gq, align 4          ; 2 uses
  %i.gy = load float, ptr %.sroa.19767.48..sroa_idx, align 4 ; 2 uses
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4 ; 2 uses
  %63 = load <2 x float>, ptr %i.a, align 4, !tbaa !41, !noalias !275
  %64 = load <2 x float>, ptr %1, align 4, !tbaa !41, !noalias !276 ; 4 uses
  %65 = extractelement <2 x float> %64, i64 0
  %66 = load <2 x float>, ptr %i.i, align 4, !tbaa !41, !noalias !276 ; 4 uses
  %67 = insertelement <2 x float> poison, float %i.gy, i64 0
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer
  %69 = shufflevector <2 x float> %64, <2 x float> %66, <2 x i32> <i32 1, i32 3>
  %70 = fmul <2 x float> %68, %69
  %71 = shufflevector <2 x float> %64, <2 x float> %66, <2 x i32> <i32 0, i32 2>
  %72 = insertelement <2 x float> poison, float %i.gx, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %73, <2 x float> %70)
  %75 = insertelement <2 x float> %59, float %i.gv, i64 1
  %76 = insertelement <2 x float> poison, float %.sroa.20.48.copyload, i64 0
  %77 = shufflevector <2 x float> %76, <2 x float> poison, <2 x i32> zeroinitializer
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %77, <2 x float> %74)
  %79 = fadd <2 x float> %78, %63
  %80 = extractelement <2 x float> %66, i64 0
  %81 = load <4 x float>, ptr %i.f, align 4
  %82 = load float, ptr %i.j, align 4, !tbaa !41, !noalias !276
  %83 = insertelement <4 x float> %81, float %82, i64 1
  %84 = shufflevector <4 x float> %83, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %85 = fmul <4 x float> %84, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %86 = extractelement <4 x float> %85, i64 2
  %87 = fadd float %65, %86
  %88 = insertelement <4 x float> poison, float %87, i64 0
  %89 = shufflevector <2 x float> %64, <2 x float> %66, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %90 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %89, <4 x float> zeroinitializer, <4 x float> %85) ; 4 uses
  %91 = shufflevector <4 x float> %88, <4 x float> %90, <2 x i32> <i32 0, i32 4>
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> zeroinitializer, <2 x float> %91)
  %92 = extractelement <4 x float> %90, i64 2
  %93 = fadd float %i.gu, %92
  store <2 x float> %i.gz, ptr %12, align 8, !alias.scope !275
  store float %93, ptr %.sroa.5.0..sroa_idx.i187, align 8, !alias.scope !275
  %94 = extractelement <4 x float> %85, i64 3
  %95 = fadd float %80, %94
  %96 = insertelement <4 x float> poison, float %95, i64 0
  %97 = shufflevector <4 x float> %96, <4 x float> %90, <2 x i32> <i32 0, i32 5>
  %98 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> zeroinitializer, <2 x float> %97)
  %99 = extractelement <4 x float> %90, i64 3
  %100 = fadd float %i.gv, %99
  store <2 x float> %98, ptr %57, align 8, !alias.scope !275
  store float %100, ptr %.sroa.10.16..sroa_idx.i190, align 8, !alias.scope !275
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i191, align 4, !tbaa !108, !alias.scope !275
  %101 = load float, ptr %i.m, align 4, !tbaa !41, !noalias !276 ; 4 uses
  %102 = load float, ptr %i.n, align 4, !tbaa !41, !noalias !276 ; 3 uses
  %103 = fmul float %102, 0.000000e+00            ; 2 uses
  %i.ha = fadd float %101, %103
  %104 = call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %102)
  %105 = insertelement <2 x float> poison, float %i.gw, i64 0
  %106 = shufflevector <2 x float> %105, <2 x float> poison, <2 x i32> zeroinitializer
  %107 = insertelement <2 x float> poison, float %i.ha, i64 0
  %108 = insertelement <2 x float> %107, float %104, i64 1
  %109 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %106, <2 x float> zeroinitializer, <2 x float> %108)
  %110 = call float @llvm.fmuladd.f32(float %101, float 0.000000e+00, float %103)
  %111 = fadd float %i.gw, %110
  %112 = fmul float %i.gy, %102
  %113 = call float @llvm.fmuladd.f32(float %101, float %i.gx, float %112)
  %114 = call noundef float @llvm.fmuladd.f32(float %i.gw, float %.sroa.20.48.copyload, float %113)
  %115 = fadd float %114, %.sroa.17.48.copyload.a
  %.sroa.3.12.vec.insert.i.i185 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %115, i64 0
  store <2 x float> %109, ptr %58, align 8, !alias.scope !275
  store float %111, ptr %i.gl, align 8, !alias.scope !275
  store float 0.000000e+00, ptr %i.gm, align 4, !tbaa !108, !alias.scope !275
  store <2 x float> %79, ptr %i.gn, align 8, !alias.scope !275
  store <2 x float> %.sroa.3.12.vec.insert.i.i185, ptr %.sroa.4.0..sroa_idx.i195, align 8, !tbaa !108, !alias.scope !275
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.gt, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.hb = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.hb, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !278 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.hf = sext i32 %i.hd to i64                   ; 3 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.hk = fneg float %i.hh
  %i.hl = getelementptr inbounds [4 x i8], ptr %13, i64 %i.hf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store float %i.hk, ptr %i.hl, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %14, i64 %i.hf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store float %i.hh, ptr %i.ho, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hw = insertelement <2 x i32> poison, i32 %i.hd, i64 0
  %i.hx = shufflevector <2 x i32> %i.hw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hy = add nsw <2 x i32> %i.hx, <i32 2, i32 1>
  %i.hz = srem <2 x i32> %i.hy, splat (i32 3)     ; 2 uses
  %i.ia = extractelement <2 x i32> %i.hz, i64 0
  %i.ib = sext i32 %i.ia to i64                   ; 3 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !41 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hq, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !120
  %i.ie = load <2 x float>, ptr %i.g, align 4
  %i.if = load float, ptr %i.k, align 4, !tbaa !41
  %i.ig = load float, ptr %13, align 16, !tbaa !41 ; 2 uses
  %i.ih = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.ii = load float, ptr %i.hi, align 4, !tbaa !41 ; 2 uses
  %i.ij = load float, ptr %i.hj, align 8, !tbaa !41 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.il = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> %i.ie, float %i.if, i64 1
  %i.iu = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.is)
  %i.ix = load <2 x float>, ptr %i.a, align 4, !tbaa !41
  %i.iy = fadd <2 x float> %i.iw, %i.ix
  %i.iz = load float, ptr %i.m, align 4, !tbaa !41
  %i.ja = load float, ptr %i.n, align 4, !tbaa !41
  %i.jb = fmul float %i.ii, %i.ja
  %i.jc = call float @llvm.fmuladd.f32(float %i.iz, float %i.ig, float %i.jb)
  %i.jd = load float, ptr %i.r, align 4, !tbaa !41
  %i.je = call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.ij, float %i.jc)
  %i.jf = load float, ptr %i.hs, align 4, !tbaa !41
  %i.jg = fadd float %i.jf, %i.je
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jg, i64 0
  store <2 x float> %i.iy, ptr %i.hr, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !108
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.id, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ht, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !120
  %i.jh = load <2 x float>, ptr %i.g, align 4
  %i.ji = load float, ptr %i.k, align 4, !tbaa !41
  %i.jj = load float, ptr %14, align 8, !tbaa !41 ; 2 uses
  %i.jk = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.jl = load float, ptr %i.hm, align 4, !tbaa !41 ; 2 uses
  %i.jm = load float, ptr %i.hn, align 8, !tbaa !41 ; 2 uses
  %i.jn = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.jo = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = shufflevector <2 x float> %i.jk, <2 x float> %i.jn, <2 x i32> <i32 1, i32 3>
  %i.jr = fmul <2 x float> %i.jp, %i.jq
  %i.js = shufflevector <2 x float> %i.jk, <2 x float> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jt = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.ju, <2 x float> %i.jr)
  %i.jw = insertelement <2 x float> %i.jh, float %i.ji, i64 1
  %i.jx = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jy, <2 x float> %i.jv)
  %i.ka = load <2 x float>, ptr %i.a, align 4, !tbaa !41
  %i.kb = fadd <2 x float> %i.jz, %i.ka
  %i.kc = load float, ptr %i.m, align 4, !tbaa !41
  %i.kd = load float, ptr %i.n, align 4, !tbaa !41
  %i.ke = fmul float %i.jl, %i.kd
  %i.kf = call float @llvm.fmuladd.f32(float %i.kc, float %i.jj, float %i.ke)
  %i.kg = load float, ptr %i.r, align 4, !tbaa !41
  %i.kh = call noundef float @llvm.fmuladd.f32(float %i.kg, float %i.jm, float %i.kf)
  %i.ki = load float, ptr %i.hs, align 4, !tbaa !41
  %i.kj = fadd float %i.ki, %i.kh
  %.sroa.3.12.vec.insert.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kj, i64 0
  store <2 x float> %i.kb, ptr %i.hv, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i201, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !108
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.id, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.sroa.19744.0.copyload = load float, ptr %i.hs, align 4 ; 7 uses
  %i.kk = extractelement <2 x i32> %i.hz, i64 1
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %13, i64 %i.kl ; 3 uses
  store float %i.id, ptr %i.km, align 4, !tbaa !41
  %i.kn = getelementptr inbounds [4 x i8], ptr %14, i64 %i.kl ; 3 uses
  store float %i.id, ptr %i.kn, align 4, !tbaa !41
  %i.ko = load ptr, ptr %0, align 8, !tbaa !44
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.ks = call noundef ptr %i.kq(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.kt = load float, ptr %13, align 16, !tbaa !41 ; 2 uses
  %i.ku = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 2 uses
  %i.kv = load float, ptr %i.hi, align 4, !tbaa !41 ; 2 uses
  %i.kw = load float, ptr %i.hj, align 8, !tbaa !41 ; 2 uses
  %i.kx = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.ky = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = shufflevector <2 x float> %i.ku, <2 x float> %i.kx, <2 x i32> <i32 1, i32 3>
  %i.lb = fmul <2 x float> %i.kz, %i.la
  %i.lc = shufflevector <2 x float> %i.ku, <2 x float> %i.kx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.le, <2 x float> %i.lb)
  %i.lg = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = load float, ptr %i.m, align 4, !tbaa !41 ; 2 uses
  %i.lj = load float, ptr %i.n, align 4, !tbaa !41 ; 2 uses
  %i.lk = fmul float %i.kv, %i.lj
  %i.ll = call float @llvm.fmuladd.f32(float %i.li, float %i.kt, float %i.lk)
  %i.lm = load float, ptr %i.r, align 4, !tbaa !41 ; 2 uses
  %i.ln = call noundef float @llvm.fmuladd.f32(float %i.lm, float %i.kw, float %i.ll)
  %i.lo = fadd float %.sroa.19744.0.copyload, %i.ln
  %.sroa.3.12.vec.insert.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lo, i64 0
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i211, ptr %i.lp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.lq = load <2 x float>, ptr %i.f, align 4, !tbaa !41 ; 2 uses
  %i.lr = load <2 x float>, ptr %i.j, align 4, !tbaa !41 ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lq, <2 x float> %i.lr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.lh, <2 x float> %i.lf)
  %i.lu = fadd <2 x float> %i.kr, %i.lt
  store <2 x float> %i.lu, ptr %17, align 8
  %i.lv = load float, ptr %14, align 8, !tbaa !41 ; 2 uses
  %i.lw = load float, ptr %i.hm, align 4, !tbaa !41 ; 2 uses
  %i.lx = load float, ptr %i.hn, align 8, !tbaa !41 ; 2 uses
  %i.ly = shufflevector <2 x float> %i.lq, <2 x float> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.lz = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x float> %i.ly, %i.ma
  %i.mc = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.md, <2 x float> %i.mb)
  %i.mf = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.mg, <2 x float> %i.me)
  %i.mi = fmul float %i.lj, %i.lw
  %i.mj = call float @llvm.fmuladd.f32(float %i.li, float %i.lv, float %i.mi)
  %i.mk = call noundef float @llvm.fmuladd.f32(float %i.lm, float %i.lx, float %i.mj)
  %i.ml = fadd <2 x float> %i.kr, %i.mh
  %i.mm = fadd float %.sroa.19744.0.copyload, %i.mk
  %.sroa.3.12.vec.insert.i221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mm, i64 0
  store <2 x float> %i.ml, ptr %18, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i221, ptr %i.mn, align 8
  %i.mo = load ptr, ptr %i.ks, align 8, !tbaa !44
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.mr = fneg float %i.id                        ; 4 uses
  store float %i.mr, ptr %i.km, align 4, !tbaa !41
  store float %i.mr, ptr %i.kn, align 4, !tbaa !41
  %i.ms = load ptr, ptr %0, align 8, !tbaa !44
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = call noundef ptr %i.mu(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
end_hunk_0
