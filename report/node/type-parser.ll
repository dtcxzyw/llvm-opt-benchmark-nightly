inline.NumInlined: 1888
inline.NumDeleted: 883
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft10TypeParser9ParseTypeEv:bb.a
  store i8 0, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gd = load i8, ptr %i.gc, align 8, !range !7, !noundef !8
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ao, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115

bb.ao:                                            ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 24, i1 false)
  store i8 1, ptr %i.gb, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115

_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115: ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit114, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ap

.loopexit:                                        ; preds = %bb.aj, %bb.am, %bb.ak, %bb.an, %.loopexit174
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gf, align 8
  br label %bb.ap

.loopexit175:                                     ; preds = %bb.c, %bb.m, %bb.w, %bb.ag, %bb.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i86, %.loopexit178
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.gg, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit175, %.loopexit, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit115, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit176, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit80, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_9FloatTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit179, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit46, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm64EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit, %.loopexit182, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit12, %_ZNSt8optionalIN2v88internal8compiler10turboshaft4TypeEEC2INS3_8WordTypeILm32EEETnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_T_EESt16is_constructibleIS4_JSC_EESt14is_convertibleISC_S4_ESA_ISt5__or_IJSF_IS4_JRKS_ISC_EEESF_IS4_JRSK_EESF_IS4_JOSL_EESF_IS4_JOSK_EESH_ISM_S4_ESH_ISO_S4_ESH_ISQ_S4_ESH_ISS_S4_EEEEEEbE4typeELb1EEESS_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_8WordTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit20

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit20, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 123
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %.loopexit20

.loopexit20:                                      ; preds = %bb.c, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.m, align 8
  br label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.f, 1
  store i64 %i.n, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsIjEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.p = load i8, ptr %i.o, align 8, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %.thread45

.thread45:                                        ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.r, align 8
  br label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i2, %i.s
  br i1 %i.t, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.f
  %i.u = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i4
  %i.v = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.z, %bb.h ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.z, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp ne i64 %i.s, %i.v
  %i.ab = icmp eq i8 %i.x, 125
  %or.cond53 = and i1 %i.aa, %i.ab
  br i1 %or.cond53, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ac, align 8
  store i8 0, ptr %i.o, align 8
  br label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.v, 1
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %2, align 8               ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 6 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.n, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp samesign ult i64 %i.ak, 3
  br i1 %i.ao, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.ag, align 4, !noalias !11
  %i.aq = icmp eq i64 %i.aj, 8
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !noalias !11
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw i64 %i.at, 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.4.0.i.i = phi i64 [ %i.au, %bb.p ], [ 0, %bb.o ]
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.ap to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.av = add nuw i64 %i.aj, 4
  %i.aw = and i64 %i.av, -8                       ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !noalias !11 ; 2 uses
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.s, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !9

bb.s:                                             ; preds = %bb.r
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 noundef %i.aw) #13, !noalias !11
  %.pre.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !11
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %bb.s, %bb.r
  %i.bd = phi i64 [ %.pre.i.i.i.i, %bb.s ], [ %i.ba, %bb.r ] ; 4 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bf = add i64 %i.bd, %i.aw
  store i64 %i.bf, ptr %i.az, align 8, !noalias !11
  %min.iters.check.not = icmp ne i64 %i.aj, 32
  %i.bg = sub i64 %i.bd, %i.ai
  %diff.check = icmp ult i64 %i.bg, 32
  %or.cond62 = select i1 %min.iters.check.not, i1 true, i1 %diff.check
  br i1 %or.cond62, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.bh = icmp eq i64 %i.aj, 12
  br i1 %i.bh, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %unroll_iter = and i64 %i.ak, 12
  br label %scalar.ph

vector.body:                                      ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !noalias !11
  %wide.load61 = load <4 x i32>, ptr %i.bj, align 4, !noalias !11
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load, ptr %i.bk, align 4, !noalias !11
  store <4 x i32> %wide.load61, ptr %i.bl, align 4, !noalias !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %i.ak
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %vector.body, !llvm.loop !16

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.014.i.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.cc, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.014.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !11
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.014.i.i
  store i32 %i.bo, ptr %i.bp, align 4, !noalias !11
  %i.bq = or disjoint i64 %.014.i.i, 1            ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !noalias !11
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bq
  store i32 %i.bs, ptr %i.bt, align 4, !noalias !11
  %i.bu = or disjoint i64 %.014.i.i, 2            ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !11
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bu
  store i32 %i.bw, ptr %i.bx, align 4, !noalias !11
  %i.by = or disjoint i64 %.014.i.i, 3            ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !11
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.by
  store i32 %i.ca, ptr %i.cb, align 4, !noalias !11
  %i.cc = add nuw i64 %.014.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !19

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit.loopexit.unr-lcssa: ; preds = %scalar.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit.loopexit.unr-lcssa, %scalar.ph.preheader
  %.014.i.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %i.cc, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %.014.i.i.epil = phi i64 [ %i.cg, %scalar.ph.epil ], [ %.014.i.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.014.i.i.epil
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !11
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.014.i.i.epil
  store i32 %i.ce, ptr %i.cf, align 4, !noalias !11
  %i.cg = add nuw i64 %.014.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit, label %scalar.ph.epil, !llvm.loop !20

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit: ; preds = %vector.body, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit.loopexit.unr-lcssa, %scalar.ph.epil
  %.pre.pre = load i8, ptr %i.o, align 8, !range !7
  %i.ch = trunc nuw i8 %.pre.pre to i1
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %bb.q ], [ %i.ch, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.13.0 = phi i64 [ %.sroa.04.0.insert.insert.i.i, %bb.q ], [ %i.bd, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.7.0 = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ci, align 8
  store i8 0, ptr %i.o, align 8
  br i1 %.pre, label %bb.u, label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

bb.u:                                             ; preds = %.thread, %bb.t
  %i.cj = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #15
  br label %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit: ; preds = %.thread45, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorIjSaIjEELb0ELb0EED2Ev.exit, %.loopexit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_8WordTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit41

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit41, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 91
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %.loopexit41

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.f, 1
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.n to i32
  %i.o = and i64 %i.n, 4294967296
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.q = icmp ult i64 %.promoted.i.i1, %i.p
  br i1 %i.q, label %.lr.ph.i.i3, label %.loopexit41

.lr.ph.i.i3:                                      ; preds = %bb.f
  %i.r = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i3
  %i.s = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.w, %bb.h ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = icmp eq i8 %i.u, 32
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.w, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i.i10, label %.loopexit41, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.p, %i.s
  %i.y = icmp eq i8 %i.u, 44
  %or.cond83 = and i1 %i.x, %i.y
  br i1 %or.cond83, label %bb.j, label %.loopexit41

bb.j:                                             ; preds = %bb.i
  %i.z = add i64 %i.s, 1
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.aa to i32
  %i.ab = and i64 %i.aa, 4294967296
  %.not38 = icmp eq i64 %i.ab, 0
  br i1 %.not38, label %.loopexit41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %1, align 8               ; 3 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.ad = icmp ult i64 %.promoted.i.i12, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i14, label %.loopexit41

.lr.ph.i.i14:                                     ; preds = %bb.k
  %i.ae = load ptr, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i14
  %i.af = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.aj, %bb.m ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.aj, %i.ac
  br i1 %exitcond.not.i.i21, label %.loopexit41, label %bb.l, !llvm.loop !5

bb.n:                                             ; preds = %bb.l
  %i.ak = icmp ne i64 %i.ac, %i.af
  %i.al = icmp eq i8 %i.ah, 93
  %or.cond84 = and i1 %i.ak, %i.al
  br i1 %or.cond84, label %bb.o, label %.loopexit41

bb.o:                                             ; preds = %bb.n
  %i.am = add i64 %i.af, 1
  store i64 %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %.sroa.027.0.extract.trunc, i32 noundef %.sroa.023.0.extract.trunc, ptr noundef %i.ao)
  br label %.loopexit41

.loopexit41:                                      ; preds = %bb.c, %bb.h, %bb.m, %bb.k, %bb.n, %bb.j, %bb.f, %bb.i, %bb.e, %bb.a, %bb.d, %bb.o
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.o ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ap, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_8WordTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.57", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit21

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit21, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 123
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %.loopexit21

.loopexit21:                                      ; preds = %bb.c, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.m, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.f, 1
  store i64 %i.n, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsImEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.57") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.p = load i8, ptr %i.o, align 8, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %.thread46

.thread46:                                        ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.r, align 8
  br label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i2 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i2, %i.s
  br i1 %i.t, label %.lr.ph.i.i4, label %.thread

.lr.ph.i.i4:                                      ; preds = %bb.f
  %i.u = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i4
  %i.v = phi i64 [ %.promoted.i.i2, %.lr.ph.i.i4 ], [ %i.z, %bb.h ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.z, ptr %i.a, align 8
  %exitcond.not.i.i11 = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i11, label %.thread, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp ne i64 %i.s, %i.v
  %i.ab = icmp eq i8 %i.x, 125
  %or.cond54 = and i1 %i.aa, %i.ab
  br i1 %or.cond54, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ac, align 8
  store i8 0, ptr %i.o, align 8
  br label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.v, 1
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %2, align 8               ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 9 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.n, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp samesign ult i64 %i.ak, 3
  br i1 %i.ao, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !22 ; 2 uses
  %i.aq = icmp eq i64 %i.aj, 16
  br i1 %i.aq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noalias !22
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noalias !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !22 ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ugt i64 %i.aj, %i.ax
  br i1 %i.ay, label %bb.r, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !9

bb.r:                                             ; preds = %bb.q
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 noundef %i.aj) #13, !noalias !22
  %.pre.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !22
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.r, %bb.q
  %i.az = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.aw, %bb.q ] ; 4 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 6 uses
  %i.bb = add i64 %i.az, %i.aj
  store i64 %i.bb, ptr %i.av, align 8, !noalias !22
  %min.iters.check = icmp ult i64 %i.ak, 6
  %i.bc = sub i64 %i.az, %i.ai
  %diff.check = icmp ult i64 %i.bc, 32
  %or.cond63 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %n.vec = and i64 %i.ak, 12                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <2 x i64>, ptr %i.bd, align 8, !noalias !22
  %wide.load62 = load <2 x i64>, ptr %i.be, align 8, !noalias !22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x i64> %wide.load, ptr %i.bf, align 8, !noalias !22
  store <2 x i64> %wide.load62, ptr %i.bg, align 8, !noalias !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, %middle.block
  %.014.i.i.ph = phi i64 [ 0, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.014.i.i.prol = phi i64 [ %i.bl, %scalar.ph.prol ], [ %.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i.prol
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !22
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.014.i.i.prol
  store i64 %i.bj, ptr %i.bk, align 8, !noalias !22
  %i.bl = add nuw i64 %.014.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !28

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.014.i.i.unr = phi i64 [ %.014.i.i.ph, %scalar.ph.preheader ], [ %i.bl, %scalar.ph.prol ]
  %3 = sub nsw i64 %.014.i.i.ph, %i.ak
  %4 = icmp ugt i64 %3, -4
  br i1 %4, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.014.i.i = phi i64 [ %i.bq, %scalar.ph ], [ %.014.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.014.i.i
  %6 = load i64, ptr %5, align 8, !noalias !22
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.014.i.i
  store i64 %6, ptr %7, align 8, !noalias !22
  %8 = add nuw i64 %.014.i.i, 1                   ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %8
  %10 = load i64, ptr %9, align 8, !noalias !22
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %8
  store i64 %10, ptr %11, align 8, !noalias !22
  %12 = add nuw i64 %.014.i.i, 2                  ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %12
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !22
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %12
  store i64 %i.bn, ptr %i.bo, align 8, !noalias !22
  %i.bp = add nuw i64 %.014.i.i, 3                ; 2 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bp
  %14 = load i64, ptr %13, align 8, !noalias !22
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  store i64 %14, ptr %15, align 8, !noalias !22
  %i.bq = add nuw i64 %.014.i.i, 4                ; 2 uses
  %exitcond.not.i.i13.3 = icmp eq i64 %i.bq, %i.ak
  br i1 %exitcond.not.i.i13.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit, label %scalar.ph, !llvm.loop !29

_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre.pre = load i8, ptr %i.o, align 8, !range !7
  %i.br = trunc nuw i8 %.pre.pre to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.o, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %bb.o ], [ true, %bb.p ], [ %i.br, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %.sink17.i.i = phi i64 [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.az, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %.sink.i.i = phi i64 [ undef, %bb.o ], [ %i.as, %bb.p ], [ 0, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE.exit.loopexit ]
  %i.bs = trunc nuw nsw i64 %i.ak to i8
  store i8 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bs, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bt, align 8
  store i8 0, ptr %i.o, align 8
  br i1 %.pre, label %bb.t, label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bu = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #15
  br label %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit: ; preds = %.thread46, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev.exit, %.loopexit21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_8WordTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit38

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit38, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 91
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %.loopexit38

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.f, 1
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call { i64, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueImEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.o = extractvalue { i64, i8 } %i.n, 0
  %i.p = extractvalue { i64, i8 } %i.n, 1
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %.loopexit38

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.s = icmp ult i64 %.promoted.i.i1, %i.r
  br i1 %i.s, label %.lr.ph.i.i3, label %.loopexit38

.lr.ph.i.i3:                                      ; preds = %bb.f
  %i.t = load ptr, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i3
  %i.u = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.y, %bb.h ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.y, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i10, label %.loopexit38, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.z = icmp ne i64 %i.r, %i.u
  %i.aa = icmp eq i8 %i.w, 44
  %or.cond80 = and i1 %i.z, %i.aa
  br i1 %or.cond80, label %bb.j, label %.loopexit38

bb.j:                                             ; preds = %bb.i
  %i.ab = add i64 %i.u, 1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = tail call { i64, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueImEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ad = extractvalue { i64, i8 } %i.ac, 0
  %i.ae = extractvalue { i64, i8 } %i.ac, 1
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %.loopexit38

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %1, align 8               ; 3 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.ah = icmp ult i64 %.promoted.i.i12, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i14, label %.loopexit38

.lr.ph.i.i14:                                     ; preds = %bb.k
  %i.ai = load ptr, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i14
  %i.aj = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.an, %bb.m ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = icmp eq i8 %i.al, 32
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.an, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond.not.i.i21, label %.loopexit38, label %bb.l, !llvm.loop !5

bb.n:                                             ; preds = %bb.l
  %i.ao = icmp ne i64 %i.ag, %i.aj
  %i.ap = icmp eq i8 %i.al, 93
  %or.cond81 = and i1 %i.ao, %i.ap
  br i1 %or.cond81, label %bb.o, label %.loopexit38

bb.o:                                             ; preds = %bb.n
  %i.aq = add i64 %i.aj, 1
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType.13") align 8 %0, i64 noundef %i.o, i64 noundef %i.ad, ptr noundef %i.as)
  br label %.loopexit38

.loopexit38:                                      ; preds = %bb.c, %bb.h, %bb.m, %bb.k, %bb.n, %bb.j, %bb.f, %bb.i, %bb.e, %bb.a, %bb.d, %bb.o
  %.sink = phi i8 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.o ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.c ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.at, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_9FloatTypeILm32EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::optional.91", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit21

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit21, label %bb.b, !llvm.loop !5
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.07.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.07.us
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = icmp slt i64 %.07.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.07.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load double, ptr %i.u, align 8
  %i.y = load double, ptr %i.w, align 8
  %i.z = fcmp olt double %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.us
  store double %i.ab, ptr %i.ac, align 8
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !92

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.07.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store double %i.ag, ptr %i.ai, align 8
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.07.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !93

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.07.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store double %i.q, ptr %i.ak, align 8
  %.not.us = icmp eq i64 %.07.us, 0
  %i.al = add nsw i64 %.07.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !101

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.07 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.07
  %i.an = load double, ptr %i.am, align 8         ; 2 uses
  %i.ao = icmp slt i64 %.07, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %.split ] ; 2 uses
  %i.ap = shl i64 %.034.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load double, ptr %i.ar, align 8
  %i.av = load double, ptr %i.at, align 8
  %i.aw = fcmp olt double %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i
  store double %i.ay, ptr %i.az, align 8
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !92

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.07, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load double, ptr %i.n, align 8
  store double %i.bc, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.07
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store double %i.bf, ptr %i.bh, align 8
  %i.bi = icmp sgt i64 %.0920.i.i, %.07
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !93

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store double %i.an, ptr %i.bj, align 8
  %.not = icmp eq i64 %.07, 0
  %i.bk = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !101

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!12, !14}
!12 = distinct !{!12, !13, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetENS_4base6VectorIKjEEPNS0_4ZoneE: argument 0"}
!13 = distinct !{!13, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetENS_4base6VectorIKjEEPNS0_4ZoneE"}
!14 = distinct !{!14, !15, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE: argument 0"}
!15 = distinct !{!15, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetERKSt6vectorIjSaIjEEPNS0_4ZoneE"}
!16 = distinct !{!16, !6, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !6, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetENS_4base6VectorIKmEEPNS0_4ZoneE: argument 0"}
!24 = distinct !{!24, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetENS_4base6VectorIKmEEPNS0_4ZoneE"}
!25 = distinct !{!25, !26, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE: argument 0"}
!26 = distinct !{!26, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetERKSt6vectorImSaImEEPNS0_4ZoneE"}
!27 = distinct !{!27, !6, !17, !18}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !6, !17}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE3SetENS_4base6VectorIKfEEjPNS0_4ZoneE: argument 0"}
!32 = distinct !{!32, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE3SetENS_4base6VectorIKfEEjPNS0_4ZoneE"}
!33 = distinct !{!33, !6}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!36 = distinct !{!36, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!37 = distinct !{!37, !38, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE: argument 0"}
!38 = distinct !{!38, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE"}
!39 = distinct !{!39, !6}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE: argument 0"}
!42 = distinct !{!42, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE"}
!43 = distinct !{!43, !44, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE: argument 0"}
!44 = distinct !{!44, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE"}
!45 = !{!43}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{null}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{null}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6}
!70 = distinct !{!70, !6}
!71 = distinct !{!71, !6}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6}
!74 = distinct !{!74, !6}
!75 = distinct !{!75, !6}
!76 = distinct !{null}
!77 = distinct !{!77, !6}
!78 = distinct !{!78, !6}
!79 = distinct !{!79, !6}
!80 = distinct !{!80, !6}
!81 = distinct !{!81, !6}
!82 = distinct !{!82, !6}
!83 = distinct !{!83, !6}
!84 = distinct !{!84, !6}
!85 = distinct !{!85, !6}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
!89 = distinct !{!89, !6}
!90 = distinct !{null}
!91 = distinct !{!91, !6}
!92 = distinct !{!92, !6}
!93 = distinct !{!93, !6}
!94 = distinct !{!94, !6}
!95 = distinct !{!95, !6}
!96 = distinct !{!96, !6}
!97 = distinct !{!97, !6}
!98 = distinct !{!98, !6}
!99 = distinct !{!99, !6}
!100 = distinct !{!100, !6}
!101 = distinct !{!101, !6}
end_hunk_1
