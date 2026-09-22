Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calculator?download=true
inline.NumInlined: 8941
inline.NumDeleted: 2472
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorIN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEESaIS3_EEaSERKS5_:bb.a

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !196

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  br label %_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 4
  store i64 %i.ah, ptr %i.i, align 4
  br label %_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load ptr, ptr %1, align 8, !tbaa !77
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !202 ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !77
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.r, label %bb.s, !prof !196

bb.r:                                             ; preds = %_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.ao, i64 %i.as, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib23TwoParameterInteractionINS2_38HalfAttractiveQuarticBondTypeParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEES4_ET0_T_S6_S5_.exit
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib23TwoParameterInteractionINS2_38HalfAttractiveQuarticBondTypeParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.t:                                             ; preds = %bb.s
  %i.av = load i64, ptr %i.ao, align 4
  store i64 %i.av, ptr %i.aj, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib23TwoParameterInteractionINS2_38HalfAttractiveQuarticBondTypeParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib23TwoParameterInteractionINS2_38HalfAttractiveQuarticBondTypeParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN5nblib23TwoParameterInteractionINS0_38HalfAttractiveQuarticBondTypeParameterEEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !202
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib23TwoParameterInteractionINS2_38HalfAttractiveQuarticBondTypeParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE11_M_allocateEm.exit.i, !prof !168

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #24
  br label %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5nblib10PairLJTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !203
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !196

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 4
  store i64 %i.af, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 8
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !196

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 4
  store i64 %i.ai, ptr %i.i, align 4
  br label %_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = load ptr, ptr %1, align 8, !tbaa !81    ; 2 uses
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !203 ; 6 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !81
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao ; 6 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !203 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit
  %i.ar = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.as = ptrtoaddr ptr %i.aq to i64
  %i.at = add i64 %i.an, %i.as
  %i.au = add i64 %i.at, -8
  %i.av = add i64 %i.ar, %i.am
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  %i.az = sub i64 %i.ar, %i.an
  %diff.check = icmp ugt i64 %i.az, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.aw, 120
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ay, 12
  %n.vec = and i64 %i.ay, 4611686018427387888     ; 4 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ak, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ap, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.be ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.ap, i64 %i.be ; 4 uses
  %i.bf = getelementptr i8, ptr %next.gep33, i64 32
  %i.bg = getelementptr i8, ptr %next.gep33, i64 64
  %i.bh = getelementptr i8, ptr %next.gep33, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <4 x i64>, ptr %i.bf, align 4
  %wide.load35 = load <4 x i64>, ptr %i.bg, align 4
  %wide.load36 = load <4 x i64>, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %next.gep, i64 32
  %i.bj = getelementptr i8, ptr %next.gep, i64 64
  %i.bk = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load34, ptr %i.bi, align 4
  store <4 x i64> %wide.load35, ptr %i.bj, align 4
  store <4 x i64> %wide.load36, ptr %i.bk, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !265

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.ay, 4611686018427387900   ; 3 uses
  %i.bm = shl i64 %n.vec38, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ak, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.ap, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index39, 3                     ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.bp
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 %i.bp
  %wide.load42 = load <4 x i64>, ptr %next.gep41, align 4
  store <4 x i64> %wide.load42, ptr %next.gep40, align 4
  %index.next43 = add nuw i64 %index39, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %i.ay, %n.vec38
  br i1 %cmp.n44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ap, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.br = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.br, ptr %.011.i.i.i.i, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !262

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt4copyIPN5nblib10PairLJTypeES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5nblib10PairLJTypeESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bu = load ptr, ptr %0, align 8, !tbaa !81
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !203
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib10PairLJTypeESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = load ptr, ptr %1, align 8, !tbaa !89     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.i = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE11_M_allocateEm.exit.i, !prof !168

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !196

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 4
  store i64 %i.r, ptr %i.o, align 4
  br label %_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #24
  br label %_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !90
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib20AngleInteractionTypeINS2_22HarmonicAngleParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !204
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !196

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib20AngleInteractionTypeINS2_22HarmonicAngleParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib20AngleInteractionTypeINS2_22HarmonicAngleParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 4
  store i64 %i.ae, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5nblib20AngleInteractionTypeINS2_22HarmonicAngleParameterEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !196

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  br label %_ZSt4copyIPN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEES4_ET0_T_S6_S5_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEES4_ET0_T_S6_S5_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 4
  store i64 %i.ah, ptr %i.i, align 4
  br label %_ZSt4copyIPN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN5nblib20AngleInteractionTypeINS0_22HarmonicAngleParameterEEES4_ET0_T_S6_S5_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load ptr, ptr %1, align 8, !tbaa !89
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !204 ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !89
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_13CrossBondBondENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %.pre-phi333376 = phi i64 [ %i.hf, %.loopexit.thread ], [ %.pre-phi333, %.loopexit ], [ %.pre-phi333, %..loopexit_crit_edge21.i.i.i.i105 ], [ %.pre-phi333, %.lr.ph.i.i.i.i101 ]
  %i.if = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.if, align 8, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i32 %.sroa.5194.8.extract.trunc, ptr %i.ig, align 8, !tbaa !240
  %i.ih = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi333376, i64 noundef %i.l, ptr noundef nonnull %i.if, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i107: ; preds = %.loopexit.i.i106
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i106
  %.pn.i.i108 = phi ptr [ %i.ih, %.loopexit.i.i106 ], [ %i.hv, %bb.aj ], [ %i.ia, %bb.ak ]
  %.1.i.i109 = getelementptr inbounds nuw i8, ptr %.pn.i.i108, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i109, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0198, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0198)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit99

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit99: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit110
  %i.ij = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ik = urem i64 %i.l, %i.ij                    ; 3 uses
  %i.il = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ik
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i111, label %.loopexit.i.i117, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit99
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !42 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !160
  %i.ir = icmp eq i32 %i.iq, %.sroa.5194.8.extract.trunc
  br i1 %i.ir, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121, label %.lr.ph.i.i.i.i112

bb.an:                                            ; preds = %bb.ao
  %i.is = icmp eq i32 %i.iv, %.sroa.5194.8.extract.trunc
  br i1 %i.is, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121, label %.lr.ph.i.i.i.i112, !llvm.loop !6

.lr.ph.i.i.i.i112:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i113 = phi ptr [ %i.it, %bb.an ], [ %i.io, %bb.am ]
  %i.it = load ptr, ptr %.020.i.i.i.i113, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i114 = icmp eq ptr %i.it, null
  br i1 %.not18.i.i.i.i114, label %.loopexit.i.i117, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i112
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !160 ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = urem i64 %i.iw, %i.ij
  %.not19.i.i.i.i115 = icmp eq i64 %i.ix, %i.ik
  br i1 %.not19.i.i.i.i115, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i116, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i116:                ; preds = %bb.ao
  br label %.loopexit.i.i117, !llvm.loop !6

.loopexit.i.i117:                                 ; preds = %.lr.ph.i.i.i.i112, %..loopexit_crit_edge21.i.i.i.i116, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit99
  %i.iy = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.iy, align 8, !tbaa !42
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %.sroa.5194.8.extract.trunc, ptr %i.iz, align 8, !tbaa !240
  %i.ja = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ik, i64 noundef %i.l, ptr noundef nonnull %i.iy, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i118

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i118: ; preds = %.loopexit.i.i117
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121: ; preds = %bb.an, %bb.am, %.loopexit.i.i117
  %.pn.i.i119 = phi ptr [ %i.ja, %.loopexit.i.i117 ], [ %i.io, %bb.am ], [ %i.it, %bb.an ]
  %.1.i.i120 = getelementptr inbounds nuw i8, ptr %.pn.i.i119, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121
  %.0.i.i = phi ptr [ %i.gz, %bb.ac ], [ %.1.i.i120, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit121 ] ; 3 uses
  %i.jc = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.jd = fadd <2 x float> %i.bd, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !169
  %i.jg = fadd float %i.be, %i.jf
  store <2 x float> %i.jd, ptr %.0.i.i, align 4
  store float %i.jg, ptr %i.je, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0140.0.vec.extract = extractelement <2 x float> %.sroa.0140.0297, i64 0
  %i.jh = fadd float %.sroa.0140.0.vec.extract, %i.al
  %.sroa.0140.0.vec.insert = insertelement <2 x float> %.sroa.0140.0297, float %i.jh, i64 0 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0132.0298, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ji, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0231 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0224 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0218 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %.not326 = icmp eq ptr %0, %1
  br i1 %.not326, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0159.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0159.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0159.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0151.0328 = phi ptr [ %0, %.lr.ph ], [ %i.ju, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0159.0327 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0159.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0151.0328, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0151.0328, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0213.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0213.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0213.4.extract.trunc = trunc nuw i64 %.sroa.0213.4.extract.shift to i32 ; 11 uses
  %.sroa.5214.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.h = ashr exact i64 %sext, 32                 ; 7 uses
  %i.i = getelementptr inbounds [12 x i8], ptr %4, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.j = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext293 = shl i64 %.sroa.2.0.copyload, 32
  %i.l = ashr exact i64 %sext293, 32              ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  %i.n = ashr i64 %.sroa.2.0.copyload, 32
  %i.o = getelementptr inbounds [16 x i8], ptr %2, i64 %i.n ; 4 uses
  %.sroa.0203.0.copyload = load float, ptr %i.o, align 4, !tbaa !169 ; 2 uses
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4204.0.copyload = load float, ptr %.sroa.4204.0..sroa_idx, align 4, !tbaa !169
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5205.0.copyload = load float, ptr %.sroa.5205.0..sroa_idx, align 4, !tbaa !169
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.6206.0.copyload = load float, ptr %.sroa.6206.0..sroa_idx, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.p = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.r = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.s ; 3 uses
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.043.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.244.0.copyload.i = load float, ptr %.sroa.244.0..sroa_idx.i, align 8, !tbaa !185 ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.043.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.043.0.copyload.i, %.sroa.043.0.copyload.i
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.y = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.x)
  %i.z = call noundef float @llvm.fmuladd.f32(float %.sroa.244.0.copyload.i, float %.sroa.244.0.copyload.i, float %i.y)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.z) ; 2 uses
  %.sroa.039.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 3 uses
  %.sroa.240.0.copyload.i = load float, ptr %.sroa.240.0..sroa_idx.i, align 8, !tbaa !185 ; 2 uses
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %14, align 8 ; 3 uses
  %.sroa.236.0.copyload.i = load float, ptr %.sroa.236.0..sroa_idx.i, align 8, !tbaa !185 ; 2 uses
  %i.aa = fsub float %sqrt.i.i, %.sroa.4204.0.copyload
  %i.ab = fneg float %.sroa.0203.0.copyload
  %i.ac = shufflevector <2 x float> %.sroa.039.0.copyload.i, <2 x float> %.sroa.035.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.039.0.copyload.i, <2 x float> %.sroa.035.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.af = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ae, <2 x float> %i.ad)
  %i.ag = insertelement <2 x float> poison, float %.sroa.240.0.copyload.i, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.236.0.copyload.i, i64 1 ; 2 uses
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ai) ; 3 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = fsub float %i.ak, %.sroa.5205.0.copyload
  %15 = fadd float %i.aa, %i.al                   ; 2 uses
  %16 = extractelement <2 x float> %i.aj, i64 1
  %17 = fsub float %16, %.sroa.6206.0.copyload    ; 2 uses
  %18 = fmul float %.sroa.0203.0.copyload, %17
  %i.am = fmul float %15, %18
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = insertelement <2 x float> %19, float %15, i64 1
  %i.an = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %20, %i.ao             ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %i.as = fdiv <2 x float> %i.ap, %i.aj           ; 4 uses
  %i.at = fmul float %.sroa.244.0.copyload.i, %i.ar
  %i.au = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x float> %i.au, %.sroa.035.0.copyload.i ; 2 uses
  %i.aw = extractelement <2 x float> %i.as, i64 1
  %i.ax = fmul float %.sroa.236.0.copyload.i, %i.aw ; 2 uses
  %i.ay = fadd float %i.ax, %i.at                 ; 3 uses
  %i.az = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.az, %.sroa.039.0.copyload.i
  %i.bb = extractelement <2 x float> %i.as, i64 0
  %i.bc = fmul float %.sroa.240.0.copyload.i, %i.bb
  %i.bd = fsub <2 x float> %i.ba, %i.av           ; 3 uses
  %i.be = fsub float %i.bc, %i.ax                 ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %.sroa.043.0.copyload.i
  %i.bi = fadd <2 x float> %i.av, %i.bh           ; 3 uses
  %i.bj = fadd <2 x float> %i.bi, %i.bd           ; 2 uses
  %i.bk = fadd float %i.ay, %i.be                 ; 2 uses
  %i.bl = fadd <2 x float> %i.bi, zeroinitializer
  %i.bm = fadd float %i.ay, 0.000000e+00
  %i.bn = fsub <2 x float> zeroinitializer, %i.bj
  %i.bo = fsub float 0.000000e+00, %i.bk
  %i.bp = fadd <2 x float> %i.bd, zeroinitializer
  %i.bq = fadd float %i.be, 0.000000e+00
  %i.br = load <2 x float>, ptr %i.t, align 4, !tbaa !169
  %i.bs = fadd <2 x float> %i.br, %i.bi
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !169
  %i.bv = fadd float %i.bu, %i.ay
  store <2 x float> %i.bs, ptr %i.t, align 4
  store float %i.bv, ptr %i.bt, align 4, !tbaa !185
  %i.bw = load <2 x float>, ptr %i.w, align 4, !tbaa !169
  %i.bx = fsub <2 x float> %i.bw, %i.bj
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !169
  %i.ca = fsub float %i.bz, %i.bk
  store <2 x float> %i.bx, ptr %i.w, align 4
  store float %i.ca, ptr %i.by, align 4, !tbaa !185
  %i.cb = load <2 x float>, ptr %i.v, align 4, !tbaa !169
  %i.cc = fadd <2 x float> %i.bd, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !169
  %i.cf = fadd float %i.be, %i.ce
  store <2 x float> %i.cc, ptr %i.v, align 4
  store float %i.cf, ptr %i.cd, align 4, !tbaa !185
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.cg, %.sroa.0213.0.extract.trunc
  %i.ch = load i32, ptr %i.b, align 4
  %i.ci = icmp sgt i32 %i.ch, %.sroa.0213.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.ci, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cj = load i64, ptr %6, align 8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds [12 x i8], ptr %i.ck, i64 %i.h
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.not.i.i.i, label %.preheader334, label %bb.f

.preheader334:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit300.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader334
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !160
  %i.cp = icmp eq i32 %i.co, %.sroa.0213.0.extract.trunc
  br i1 %i.cp, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader334, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.cr = urem i64 %i.h, %i.cq                    ; 5 uses
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %.loopexit300.thread, label %bb.g

.loopexit300.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0231)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0231, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !160
  %i.cy = icmp eq i32 %i.cx, %.sroa.0213.0.extract.trunc
  br i1 %i.cy, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.cz = icmp eq i32 %i.dc, %.sroa.0213.0.extract.trunc
  br i1 %i.cz, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.da, %bb.h ], [ %i.cv, %bb.g ]
  %i.da = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit300, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !160 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = urem i64 %i.dd, %i.cq
  %.not19.i.i.i.i.i = icmp eq i64 %i.de, %i.cr
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit300, !llvm.loop !6

.loopexit300.loopexit:                            ; preds = %.preheader334
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre354 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre359 = urem i64 %i.h, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre354, i64 %.pre359
  %.pre364 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit300

.loopexit300:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit300.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.df = phi ptr [ %i.cu, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre364, %.loopexit300.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.cr, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre359, %.loopexit300.loopexit ], [ %i.cr, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.dg = phi i64 [ %i.cq, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit300.loopexit ], [ %i.cq, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0231)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0231, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit300
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !42 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !160
  %i.dk = icmp eq i32 %i.dj, %.sroa.0213.0.extract.trunc
  br i1 %i.dk, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.dl = icmp eq i32 %i.do, %.sroa.0213.0.extract.trunc
  br i1 %i.dl, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.dm, %bb.k ], [ %i.dh, %bb.j ]
  %i.dm = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !160 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = urem i64 %i.dp, %i.dg
  %.not19.i.i.i.i = icmp eq i64 %i.dq, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit300.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit300
  %.pre-phi403 = phi i64 [ %i.cr, %.loopexit300.thread ], [ %.pre-phi, %.loopexit300 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.dr = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.dr, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 %.sroa.0213.0.extract.trunc, ptr %i.ds, align 8, !tbaa !240
  %i.dt = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi403, i64 noundef %i.h, ptr noundef nonnull %i.dr, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i137, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa432.sink = phi ptr [ %i.jk, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i137 ], [ %i.ir, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126 ], [ %i.gx, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.ge, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.ek, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.dr, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.jn, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i137 ], [ %i.iu, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126 ], [ %i.ha, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i99 ], [ %i.gh, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i88 ], [ %i.en, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i61 ], [ %i.du, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa432.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.dt, %.loopexit.i.i ], [ %i.dh, %bb.j ], [ %i.dm, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0231, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0231)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.dw = urem i64 %i.h, %i.dv                    ; 3 uses
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i54, label %.loopexit.i.i60, label %bb.m
end_hunk_1
begin_hunk_2_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES7_NS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = getelementptr inbounds [12 x i8], ptr %i.hk, i64 %i.l
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

bb.ad:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i105 = icmp eq i64 %i.hm, 0
  br i1 %.not.not.i.i.i105, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i115 = phi ptr [ %.sroa.06.0.i.i.i116, %bb.ae ], [ %i.f, %bb.ad ]
  %.sroa.06.0.i.i.i116 = load ptr, ptr %.sroa.06.0.in.i.i.i115, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %.sroa.06.0.i.i.i116, null
  br i1 %.not.i.i.i117, label %.loopexit.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i116, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !160
  %i.hp = icmp eq i32 %i.ho, %.sroa.5214.8.extract.trunc
  br i1 %i.hp, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118, label %.preheader, !llvm.loop !5

bb.af:                                            ; preds = %bb.ad
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.hr = urem i64 %i.l, %i.hq                    ; 5 uses
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i106, label %.loopexit.thread, label %bb.ag

.loopexit.thread:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0218, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i125

bb.ag:                                            ; preds = %bb.af
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !42 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !160
  %i.hy = icmp eq i32 %i.hx, %.sroa.5214.8.extract.trunc
  br i1 %i.hy, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118, label %.lr.ph.i.i.i.i.i107

bb.ah:                                            ; preds = %bb.ai
  %i.hz = icmp eq i32 %i.ic, %.sroa.5214.8.extract.trunc
  br i1 %i.hz, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118, label %.lr.ph.i.i.i.i.i107, !llvm.loop !6

.lr.ph.i.i.i.i.i107:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i108 = phi ptr [ %i.ia, %bb.ah ], [ %i.hv, %bb.ag ]
  %i.ia = load ptr, ptr %.020.i.i.i.i.i108, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i109 = icmp eq ptr %i.ia, null
  br i1 %.not18.i.i.i.i.i109, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i107
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !160 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = urem i64 %i.id, %i.hq
  %.not19.i.i.i.i.i110 = icmp eq i64 %i.ie, %i.hr
  br i1 %.not19.i.i.i.i.i110, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i111, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i111:              ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre357 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre358 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre362 = urem i64 %i.l, %.pre357              ; 2 uses
  %.phi.trans.insert367 = getelementptr inbounds nuw [8 x i8], ptr %.pre358, i64 %.pre362
  %.pre368 = load ptr, ptr %.phi.trans.insert367, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i107, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i111
  %i.if = phi ptr [ %i.hu, %..loopexit_crit_edge21.i.i.i.i.i111 ], [ %.pre368, %.loopexit.loopexit ], [ %i.hu, %.lr.ph.i.i.i.i.i107 ] ; 2 uses
  %.pre-phi363 = phi i64 [ %i.hr, %..loopexit_crit_edge21.i.i.i.i.i111 ], [ %.pre362, %.loopexit.loopexit ], [ %i.hr, %.lr.ph.i.i.i.i.i107 ] ; 4 uses
  %i.ig = phi i64 [ %i.hq, %..loopexit_crit_edge21.i.i.i.i.i111 ], [ %.pre357, %.loopexit.loopexit ], [ %i.hq, %.lr.ph.i.i.i.i.i107 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0218, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i119 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i119, label %.loopexit.i.i125, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !42 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !160
  %i.ik = icmp eq i32 %i.ij, %.sroa.5214.8.extract.trunc
  br i1 %i.ik, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129, label %.lr.ph.i.i.i.i120

bb.ak:                                            ; preds = %bb.al
  %i.il = icmp eq i32 %i.io, %.sroa.5214.8.extract.trunc
  br i1 %i.il, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129, label %.lr.ph.i.i.i.i120, !llvm.loop !6

.lr.ph.i.i.i.i120:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i121 = phi ptr [ %i.im, %bb.ak ], [ %i.ih, %bb.aj ]
  %i.im = load ptr, ptr %.020.i.i.i.i121, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i122 = icmp eq ptr %i.im, null
  br i1 %.not18.i.i.i.i122, label %.loopexit.i.i125, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i120
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !160 ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = urem i64 %i.ip, %i.ig
  %.not19.i.i.i.i123 = icmp eq i64 %i.iq, %.pre-phi363
  br i1 %.not19.i.i.i.i123, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i124, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i124:                ; preds = %bb.al
  br label %.loopexit.i.i125, !llvm.loop !6

.loopexit.i.i125:                                 ; preds = %.lr.ph.i.i.i.i120, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i124, %.loopexit
  %.pre-phi363409 = phi i64 [ %i.hr, %.loopexit.thread ], [ %.pre-phi363, %.loopexit ], [ %.pre-phi363, %..loopexit_crit_edge21.i.i.i.i124 ], [ %.pre-phi363, %.lr.ph.i.i.i.i120 ]
  %i.ir = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ir, align 8, !tbaa !42
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %.sroa.5214.8.extract.trunc, ptr %i.is, align 8, !tbaa !240
  %i.it = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi363409, i64 noundef %i.l, ptr noundef nonnull %i.ir, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126: ; preds = %.loopexit.i.i125
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i125
  %.pn.i.i127 = phi ptr [ %i.it, %.loopexit.i.i125 ], [ %i.ih, %bb.aj ], [ %i.im, %bb.ak ]
  %.1.i.i128 = getelementptr inbounds nuw i8, ptr %.pn.i.i127, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i128, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0218, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0218)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit129
  %i.iv = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.iw = urem i64 %i.l, %i.iv                    ; 3 uses
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i130 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i130, label %.loopexit.i.i136, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !42 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !160
  %i.jd = icmp eq i32 %i.jc, %.sroa.5214.8.extract.trunc
  br i1 %i.jd, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140, label %.lr.ph.i.i.i.i131

bb.an:                                            ; preds = %bb.ao
  %i.je = icmp eq i32 %i.jh, %.sroa.5214.8.extract.trunc
  br i1 %i.je, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140, label %.lr.ph.i.i.i.i131, !llvm.loop !6

.lr.ph.i.i.i.i131:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i132 = phi ptr [ %i.jf, %bb.an ], [ %i.ja, %bb.am ]
  %i.jf = load ptr, ptr %.020.i.i.i.i132, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i133 = icmp eq ptr %i.jf, null
  br i1 %.not18.i.i.i.i133, label %.loopexit.i.i136, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i131
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !160 ; 2 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = urem i64 %i.ji, %i.iv
  %.not19.i.i.i.i134 = icmp eq i64 %i.jj, %i.iw
  br i1 %.not19.i.i.i.i134, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i135, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i135:                ; preds = %bb.ao
  br label %.loopexit.i.i136, !llvm.loop !6

.loopexit.i.i136:                                 ; preds = %.lr.ph.i.i.i.i131, %..loopexit_crit_edge21.i.i.i.i135, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit118
  %i.jk = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.jk, align 8, !tbaa !42
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i32 %.sroa.5214.8.extract.trunc, ptr %i.jl, align 8, !tbaa !240
  %i.jm = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.iw, i64 noundef %i.l, ptr noundef nonnull %i.jk, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i137

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i137: ; preds = %.loopexit.i.i136
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140: ; preds = %bb.an, %bb.am, %.loopexit.i.i136
  %.pn.i.i138 = phi ptr [ %i.jm, %.loopexit.i.i136 ], [ %i.ja, %bb.am ], [ %i.jf, %bb.an ]
  %.1.i.i139 = getelementptr inbounds nuw i8, ptr %.pn.i.i138, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140
  %.0.i.i = phi ptr [ %i.hl, %bb.ac ], [ %.1.i.i139, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit140 ] ; 3 uses
  %i.jo = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.jp = fadd <2 x float> %i.bp, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !169
  %i.js = fadd float %i.bq, %i.jr
  store <2 x float> %i.jp, ptr %.0.i.i, align 4
  store float %i.js, ptr %i.jq, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0159.0.vec.extract = extractelement <2 x float> %.sroa.0159.0327, i64 0
  %i.jt = fadd float %.sroa.0159.0.vec.extract, %i.am
  %.sroa.0159.0.vec.insert = insertelement <2 x float> %.sroa.0159.0327, float %i.jt, i64 0 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0151.0328, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ju, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_23TwoParameterInteractionINS_20LinearAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEES9_NS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0222 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0215 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0209 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not319 = icmp eq ptr %0, %1
  br i1 %.not319, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0149.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0149.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0149.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0141.0321 = phi ptr [ %0, %.lr.ph ], [ %i.jw, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0149.0320 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0149.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_S4_NS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0141.0321, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0141.0321, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %i.i = load ptr, ptr %7, align 8, !tbaa !216    ; 4 uses
  %.sroa.0204.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0204.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0204.4.extract.trunc = trunc nuw i64 %.sroa.0204.4.extract.shift to i32 ; 11 uses
  %.sroa.5205.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.j = ashr exact i64 %sext, 32                 ; 7 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %4, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.l = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %4, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext286 = shl i64 %.sroa.2.0.copyload, 32
  %i.n = ashr exact i64 %sext286, 32              ; 7 uses
  %i.o = getelementptr inbounds [12 x i8], ptr %4, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !186
  %i.p = ashr i64 %.sroa.2.0.copyload, 32
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 264 ; 2 uses
  %i.s = load float, ptr %.sroa_idx, align 4      ; 5 uses
  %i.t = load float, ptr %i.q, align 4            ; 3 uses
  %i.u = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.v = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.w = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.x ; 3 uses
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.z ; 3 uses
  %i.ab = load <2 x float>, ptr %13, align 8, !tbaa !169
  %i.ac = fsub float 1.000000e+00, %i.s
  %i.ad = fadd float %i.s, -1.000000e+00          ; 2 uses
  %i.ae = fmul float %i.t, %i.ac                  ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.ab
  %i.ai = load float, ptr %i.a, align 8, !tbaa !169
  %i.aj = fmul float %i.ad, %i.ai
  %i.ak = load <2 x float>, ptr %12, align 8, !tbaa !169
  %i.al = insertelement <2 x float> poison, float %i.s, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = load float, ptr %i.b, align 8, !tbaa !169
  %i.ap = fmul float %i.s, %i.ao
  %i.aq = fsub <2 x float> %i.ah, %i.an           ; 5 uses
  %i.ar = fsub float %i.aj, %i.ap                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aq, %i.aq
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.aw = fmul float %i.t, %sqrt.i.i
  %i.ax = fpext float %i.aw to double
  %i.ay = fmul double %i.ax, 5.000000e-01
  %i.az = fpext float %sqrt.i.i to double
  %i.ba = fmul double %i.ay, %i.az
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.t, %i.s                   ; 2 uses
  %i.bd = fmul float %i.bc, %i.ar                 ; 3 uses
  %i.be = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.aq           ; 3 uses
  %i.bh = fmul float %i.ae, %i.ar                 ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bj, %i.aq           ; 3 uses
  %i.bl = fadd <2 x float> %i.bk, %i.bg           ; 2 uses
  %i.bm = fadd float %i.bd, %i.bh                 ; 2 uses
  %i.bn = fadd <2 x float> %i.bk, zeroinitializer
  %i.bo = fadd float %i.bd, 0.000000e+00
  %i.bp = fsub <2 x float> zeroinitializer, %i.bl
  %i.bq = fsub float 0.000000e+00, %i.bm
  %i.br = fadd <2 x float> %i.bg, zeroinitializer
  %i.bs = fadd float %i.bh, 0.000000e+00
  %i.bt = load <2 x float>, ptr %i.y, align 4, !tbaa !169
  %i.bu = fadd <2 x float> %i.bt, %i.bk
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !169
  %i.bx = fadd float %i.bw, %i.bd
  store <2 x float> %i.bu, ptr %i.y, align 4
  store float %i.bx, ptr %i.bv, align 4, !tbaa !185
  %i.by = load <2 x float>, ptr %i.r, align 4, !tbaa !169
  %i.bz = fsub <2 x float> %i.by, %i.bl
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !169
  %i.cc = fsub float %i.cb, %i.bm
  store <2 x float> %i.bz, ptr %i.r, align 4
  store float %i.cc, ptr %i.ca, align 4, !tbaa !185
  %i.cd = load <2 x float>, ptr %i.aa, align 4, !tbaa !169
  %i.ce = fadd <2 x float> %i.bg, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !169
  %i.ch = fadd float %i.bh, %i.cg
  store <2 x float> %i.ce, ptr %i.aa, align 4
  store float %i.ch, ptr %i.cf, align 4, !tbaa !185
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.ci, %.sroa.0204.0.extract.trunc
  %i.cj = load i32, ptr %i.d, align 4
  %i.ck = icmp sgt i32 %i.cj, %.sroa.0204.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.ck, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cl = load i64, ptr %6, align 8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.cm, i64 %i.j
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.co = load i64, ptr %i.f, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.not.i.i.i, label %.preheader327, label %bb.f

.preheader327:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.h, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit293.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader327
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !160
  %i.cr = icmp eq i32 %i.cq, %.sroa.0204.0.extract.trunc
  br i1 %i.cr, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader327, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !44  ; 4 uses
  %i.ct = urem i64 %i.j, %i.cs                    ; 5 uses
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i, label %.loopexit293.thread, label %bb.g

.loopexit293.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0222)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0222, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !42 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !160
  %i.da = icmp eq i32 %i.cz, %.sroa.0204.0.extract.trunc
  br i1 %i.da, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.db = icmp eq i32 %i.de, %.sroa.0204.0.extract.trunc
  br i1 %i.db, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6
end_hunk_2
begin_hunk_3_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_13CrossBondBondENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a

..loopexit_crit_edge21.i.i.i.i101:                ; preds = %bb.al
  br label %.loopexit.i.i102, !llvm.loop !6

.loopexit.i.i102:                                 ; preds = %.lr.ph.i.i.i.i97, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i101, %.loopexit
  %.pre-phi314357 = phi i64 [ %i.gj, %.loopexit.thread ], [ %.pre-phi314, %.loopexit ], [ %.pre-phi314, %..loopexit_crit_edge21.i.i.i.i101 ], [ %.pre-phi314, %.lr.ph.i.i.i.i97 ]
  %i.hj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.hj, align 8, !tbaa !42
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %.sroa.5190.8.extract.trunc, ptr %i.hk, align 8, !tbaa !240
  %i.hl = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi314357, i64 noundef %i.k, ptr noundef nonnull %i.hj, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i103: ; preds = %.loopexit.i.i102
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i102
  %.pn.i.i104 = phi ptr [ %i.hl, %.loopexit.i.i102 ], [ %i.gz, %bb.aj ], [ %i.he, %bb.ak ]
  %.1.i.i105 = getelementptr inbounds nuw i8, ptr %.pn.i.i104, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i105, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0194, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0194)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit95

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit95: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit106
  %i.hn = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ho = urem i64 %i.k, %i.hn                    ; 3 uses
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i107, label %.loopexit.i.i113, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit95
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !42 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !160
  %i.hv = icmp eq i32 %i.hu, %.sroa.5190.8.extract.trunc
  br i1 %i.hv, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117, label %.lr.ph.i.i.i.i108

bb.an:                                            ; preds = %bb.ao
  %i.hw = icmp eq i32 %i.hz, %.sroa.5190.8.extract.trunc
  br i1 %i.hw, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117, label %.lr.ph.i.i.i.i108, !llvm.loop !6

.lr.ph.i.i.i.i108:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i109 = phi ptr [ %i.hx, %bb.an ], [ %i.hs, %bb.am ]
  %i.hx = load ptr, ptr %.020.i.i.i.i109, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i110 = icmp eq ptr %i.hx, null
  br i1 %.not18.i.i.i.i110, label %.loopexit.i.i113, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i108
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !160 ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = urem i64 %i.ia, %i.hn
  %.not19.i.i.i.i111 = icmp eq i64 %i.ib, %i.ho
  br i1 %.not19.i.i.i.i111, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i112, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i112:                ; preds = %bb.ao
  br label %.loopexit.i.i113, !llvm.loop !6

.loopexit.i.i113:                                 ; preds = %.lr.ph.i.i.i.i108, %..loopexit_crit_edge21.i.i.i.i112, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit95
  %i.ic = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ic, align 8, !tbaa !42
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i32 %.sroa.5190.8.extract.trunc, ptr %i.id, align 8, !tbaa !240
  %i.ie = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ho, i64 noundef %i.k, ptr noundef nonnull %i.ic, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i114

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i114: ; preds = %.loopexit.i.i113
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117: ; preds = %bb.an, %bb.am, %.loopexit.i.i113
  %.pn.i.i115 = phi ptr [ %i.ie, %.loopexit.i.i113 ], [ %i.hs, %bb.am ], [ %i.hx, %bb.an ]
  %.1.i.i116 = getelementptr inbounds nuw i8, ptr %.pn.i.i115, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_13CrossBondBondES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEES6_NS_14CrossBondAngleENS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117
  %.0.i.i = phi ptr [ %i.gd, %bb.ac ], [ %.1.i.i116, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit117 ] ; 3 uses
  %i.ig = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.ih = fadd <2 x float> %i.av, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !169
  %i.ik = extractelement <2 x float> %i.aw, i64 1
  %i.il = fadd float %i.ik, %i.ij
  store <2 x float> %i.ih, ptr %.0.i.i, align 4
  store float %i.il, ptr %i.ii, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0136.0.vec.extract = extractelement <2 x float> %.sroa.0136.0278, i64 0
  %i.im = fadd float %.sroa.0136.0.vec.extract, %i.af
  %.sroa.0136.0.vec.insert = insertelement <2 x float> %.sroa.0136.0278, float %i.im, i64 0 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0128.0279, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.in, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0227 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0220 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0214 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %.not307 = icmp eq ptr %0, %1
  br i1 %.not307, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0155.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0155.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0155.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0147.0309 = phi ptr [ %0, %.lr.ph ], [ %i.iz, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0155.0308 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0155.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0147.0309, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0147.0309, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0209.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0209.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0209.4.extract.trunc = trunc nuw i64 %.sroa.0209.4.extract.shift to i32 ; 11 uses
  %.sroa.5210.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.g = ashr exact i64 %sext, 32                 ; 7 uses
  %i.h = getelementptr inbounds [12 x i8], ptr %4, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.i = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext274 = shl i64 %.sroa.2.0.copyload, 32
  %i.k = ashr exact i64 %sext274, 32              ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  %i.m = ashr i64 %.sroa.2.0.copyload, 32
  %i.n = getelementptr inbounds [16 x i8], ptr %2, i64 %i.m ; 4 uses
  %.sroa.0199.0.copyload = load float, ptr %i.n, align 4, !tbaa !169 ; 2 uses
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4200.0.copyload = load float, ptr %.sroa.4200.0..sroa_idx, align 4, !tbaa !169
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5201.0.copyload = load float, ptr %.sroa.5201.0..sroa_idx, align 4, !tbaa !169
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.6202.0.copyload = load float, ptr %.sroa.6202.0..sroa_idx, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.o = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.p = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.q = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %.sroa.043.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 4 uses
  %.sroa.244.0.copyload.i = load float, ptr %.sroa.244.0..sroa_idx.i, align 8, !tbaa !185 ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.043.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.043.0.copyload.i, %.sroa.043.0.copyload.i
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.s = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.r)
  %i.t = call noundef float @llvm.fmuladd.f32(float %.sroa.244.0.copyload.i, float %.sroa.244.0.copyload.i, float %i.s)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.t) ; 2 uses
  %.sroa.039.0.copyload.i = load <2 x float>, ptr %13, align 8 ; 3 uses
  %.sroa.240.0.copyload.i = load float, ptr %.sroa.240.0..sroa_idx.i, align 8, !tbaa !185 ; 2 uses
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %14, align 8 ; 3 uses
  %.sroa.236.0.copyload.i = load float, ptr %.sroa.236.0..sroa_idx.i, align 8, !tbaa !185 ; 2 uses
  %i.u = fsub float %sqrt.i.i, %.sroa.4200.0.copyload
  %i.v = fneg float %.sroa.0199.0.copyload
  %i.w = shufflevector <2 x float> %.sroa.039.0.copyload.i, <2 x float> %.sroa.035.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %i.y = shufflevector <2 x float> %.sroa.039.0.copyload.i, <2 x float> %.sroa.035.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.z = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = insertelement <2 x float> poison, float %.sroa.240.0.copyload.i, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %.sroa.236.0.copyload.i, i64 1 ; 2 uses
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.z)
  %i.ad = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 3 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fsub float %i.ae, %.sroa.5201.0.copyload
  %15 = fadd float %i.u, %i.af                    ; 2 uses
  %16 = extractelement <2 x float> %i.ad, i64 1
  %17 = fsub float %16, %.sroa.6202.0.copyload    ; 2 uses
  %18 = fmul float %.sroa.0199.0.copyload, %17
  %i.ag = fmul float %15, %18
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = insertelement <2 x float> %19, float %15, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %20, %i.ai             ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = fdiv float %i.ak, %sqrt.i.i             ; 2 uses
  %i.am = fdiv <2 x float> %i.aj, %i.ad           ; 4 uses
  %i.an = fmul float %.sroa.244.0.copyload.i, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x float> %i.ao, %.sroa.035.0.copyload.i ; 2 uses
  %i.aq = extractelement <2 x float> %i.am, i64 1
  %i.ar = fmul float %.sroa.236.0.copyload.i, %i.aq ; 2 uses
  %i.as = fadd float %i.ar, %i.an                 ; 2 uses
  %i.at = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %.sroa.039.0.copyload.i
  %i.av = extractelement <2 x float> %i.am, i64 0
  %i.aw = fmul float %.sroa.240.0.copyload.i, %i.av
  %i.ax = fsub <2 x float> %i.au, %i.ap           ; 2 uses
  %i.ay = fsub float %i.aw, %i.ar                 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %.sroa.043.0.copyload.i
  %i.bc = fadd <2 x float> %i.ap, %i.bb           ; 2 uses
  %i.bd = fadd <2 x float> %i.bc, %i.ax
  %i.be = fadd float %i.as, %i.ay
  %i.bf = fadd <2 x float> %i.bc, zeroinitializer
  %i.bg = fadd float %i.as, 0.000000e+00
  %i.bh = fsub <2 x float> zeroinitializer, %i.bd
  %i.bi = fsub float 0.000000e+00, %i.be
  %i.bj = fadd <2 x float> %i.ax, zeroinitializer
  %i.bk = fadd float %i.ay, 0.000000e+00
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.bl, %.sroa.0209.0.extract.trunc
  %i.bm = load i32, ptr %i.b, align 4
  %i.bn = icmp sgt i32 %i.bm, %.sroa.0209.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.bn, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %6, align 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.bp, i64 %i.g
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.br = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i, label %.preheader315, label %bb.f

.preheader315:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit281.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader315
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !160
  %i.bu = icmp eq i32 %i.bt, %.sroa.0209.0.extract.trunc
  br i1 %i.bu, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader315, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.bw = urem i64 %i.g, %i.bv                    ; 5 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %.loopexit281.thread, label %bb.g

.loopexit281.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0227)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0227, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !160
  %i.cd = icmp eq i32 %i.cc, %.sroa.0209.0.extract.trunc
  br i1 %i.cd, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ce = icmp eq i32 %i.ch, %.sroa.0209.0.extract.trunc
  br i1 %i.ce, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.ca, %bb.g ]
  %i.cf = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit281, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !160 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.i.i.i.i.i = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit281, !llvm.loop !6

.loopexit281.loopexit:                            ; preds = %.preheader315
  %.pre = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %.pre335 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre340 = urem i64 %i.g, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre335, i64 %.pre340
  %.pre345 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit281

.loopexit281:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit281.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
  %i.ck = phi ptr [ %i.bz, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre345, %.loopexit281.loopexit ], [ %i.bz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.bw, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre340, %.loopexit281.loopexit ], [ %i.bw, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.cl = phi i64 [ %i.bv, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.pre, %.loopexit281.loopexit ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0227)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0227, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit281
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !160
  %i.cp = icmp eq i32 %i.co, %.sroa.0209.0.extract.trunc
  br i1 %i.cp, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.ct, %.sroa.0209.0.extract.trunc
  br i1 %i.cq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.cr, %bb.k ], [ %i.cm, %bb.j ]
  %i.cr = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !160 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = urem i64 %i.cu, %i.cl
  %.not19.i.i.i.i = icmp eq i64 %i.cv, %.pre-phi
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !6

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %.loopexit281.thread, %..loopexit_crit_edge21.i.i.i.i, %.loopexit281
  %.pre-phi384 = phi i64 [ %i.bw, %.loopexit281.thread ], [ %.pre-phi, %.loopexit281 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre-phi, %.lr.ph.i.i.i.i ]
  %i.cw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sroa.0209.0.extract.trunc, ptr %i.cx, align 8, !tbaa !240
  %i.cy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi384, i64 noundef %i.g, ptr noundef nonnull %i.cw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i133, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i95, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i84, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i57, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.lcssa413.sink = phi ptr [ %i.ip, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i133 ], [ %i.hw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122 ], [ %i.gc, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i95 ], [ %i.fj, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i84 ], [ %i.dp, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i57 ], [ %i.cw, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.is, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i133 ], [ %i.hz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122 ], [ %i.gf, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i95 ], [ %i.fm, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i84 ], [ %i.ds, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i57 ], [ %i.cz, %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa413.sink, i64 noundef 24) #24
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cy, %.loopexit.i.i ], [ %i.cm, %bb.j ], [ %i.cr, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0227, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0227)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit
  %i.da = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.db = urem i64 %i.g, %i.da                    ; 3 uses
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i50, label %.loopexit.i.i56, label %bb.m

bb.m:                                             ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !42 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !160
  %i.di = icmp eq i32 %i.dh, %.sroa.0209.0.extract.trunc
  br i1 %i.di, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit60, label %.lr.ph.i.i.i.i51

bb.n:                                             ; preds = %bb.o
  %i.dj = icmp eq i32 %i.dm, %.sroa.0209.0.extract.trunc
  br i1 %i.dj, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit60, label %.lr.ph.i.i.i.i51, !llvm.loop !6

.lr.ph.i.i.i.i51:                                 ; preds = %bb.m, %bb.n
  %.020.i.i.i.i52 = phi ptr [ %i.dk, %bb.n ], [ %i.df, %bb.m ]
  %i.dk = load ptr, ptr %.020.i.i.i.i52, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i53 = icmp eq ptr %i.dk, null
  br i1 %.not18.i.i.i.i53, label %.loopexit.i.i56, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i51
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !160 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5nblib13computeForcesISt5arrayIiLm4EENS_14CrossBondAngleENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS5_8ArrayRefIKT_EENSC_IKT0_EENSC_IKS7_EEPT1_NSC_IT2_EERKT3_:bb.a
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.k
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

bb.ad:                                            ; preds = %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit22.i
  %i.gr = load i64, ptr %i.d, align 8, !tbaa !171
  %.not.not.i.i.i101 = icmp eq i64 %i.gr, 0
  br i1 %.not.not.i.i.i101, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.06.0.in.i.i.i111 = phi ptr [ %.sroa.06.0.i.i.i112, %bb.ae ], [ %i.f, %bb.ad ]
  %.sroa.06.0.i.i.i112 = load ptr, ptr %.sroa.06.0.in.i.i.i111, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %.sroa.06.0.i.i.i112, null
  br i1 %.not.i.i.i113, label %.loopexit.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.preheader
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i112, i64 8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !160
  %i.gu = icmp eq i32 %i.gt, %.sroa.5210.8.extract.trunc
  br i1 %i.gu, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114, label %.preheader, !llvm.loop !5

bb.af:                                            ; preds = %bb.ad
  %i.gv = load i64, ptr %i.e, align 8, !tbaa !44  ; 4 uses
  %i.gw = urem i64 %i.k, %i.gv                    ; 5 uses
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i102, label %.loopexit.thread, label %bb.ag

.loopexit.thread:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0214)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0214, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i121

bb.ag:                                            ; preds = %bb.af
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !42 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !160
  %i.hd = icmp eq i32 %i.hc, %.sroa.5210.8.extract.trunc
  br i1 %i.hd, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114, label %.lr.ph.i.i.i.i.i103

bb.ah:                                            ; preds = %bb.ai
  %i.he = icmp eq i32 %i.hh, %.sroa.5210.8.extract.trunc
  br i1 %i.he, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114, label %.lr.ph.i.i.i.i.i103, !llvm.loop !6

.lr.ph.i.i.i.i.i103:                              ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i104 = phi ptr [ %i.hf, %bb.ah ], [ %i.ha, %bb.ag ]
  %i.hf = load ptr, ptr %.020.i.i.i.i.i104, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i105 = icmp eq ptr %i.hf, null
  br i1 %.not18.i.i.i.i.i105, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i103
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !160 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = urem i64 %i.hi, %i.gv
  %.not19.i.i.i.i.i106 = icmp eq i64 %i.hj, %i.gw
  br i1 %.not19.i.i.i.i.i106, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i107, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i107:              ; preds = %bb.ai
  br label %.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre338 = load i64, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.pre339 = load ptr, ptr %i.c, align 8, !tbaa !43
  %.pre343 = urem i64 %i.k, %.pre338              ; 2 uses
  %.phi.trans.insert348 = getelementptr inbounds nuw [8 x i8], ptr %.pre339, i64 %.pre343
  %.pre349 = load ptr, ptr %.phi.trans.insert348, align 8, !tbaa !172
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i103, %.loopexit.loopexit, %..loopexit_crit_edge21.i.i.i.i.i107
  %i.hk = phi ptr [ %i.gz, %..loopexit_crit_edge21.i.i.i.i.i107 ], [ %.pre349, %.loopexit.loopexit ], [ %i.gz, %.lr.ph.i.i.i.i.i103 ] ; 2 uses
  %.pre-phi344 = phi i64 [ %i.gw, %..loopexit_crit_edge21.i.i.i.i.i107 ], [ %.pre343, %.loopexit.loopexit ], [ %i.gw, %.lr.ph.i.i.i.i.i103 ] ; 4 uses
  %i.hl = phi i64 [ %i.gv, %..loopexit_crit_edge21.i.i.i.i.i107 ], [ %.pre338, %.loopexit.loopexit ], [ %i.gv, %.lr.ph.i.i.i.i.i103 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0214)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0214, i8 0, i64 12, i1 false), !tbaa !169
  %.not.i.i.i.i115 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i115, label %.loopexit.i.i121, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !160
  %i.hp = icmp eq i32 %i.ho, %.sroa.5210.8.extract.trunc
  br i1 %i.hp, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125, label %.lr.ph.i.i.i.i116

bb.ak:                                            ; preds = %bb.al
  %i.hq = icmp eq i32 %i.ht, %.sroa.5210.8.extract.trunc
  br i1 %i.hq, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125, label %.lr.ph.i.i.i.i116, !llvm.loop !6

.lr.ph.i.i.i.i116:                                ; preds = %bb.aj, %bb.ak
  %.020.i.i.i.i117 = phi ptr [ %i.hr, %bb.ak ], [ %i.hm, %bb.aj ]
  %i.hr = load ptr, ptr %.020.i.i.i.i117, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i118 = icmp eq ptr %i.hr, null
  br i1 %.not18.i.i.i.i118, label %.loopexit.i.i121, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i116
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !160 ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = urem i64 %i.hu, %i.hl
  %.not19.i.i.i.i119 = icmp eq i64 %i.hv, %.pre-phi344
  br i1 %.not19.i.i.i.i119, label %bb.ak, label %..loopexit_crit_edge21.i.i.i.i120, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i120:                ; preds = %bb.al
  br label %.loopexit.i.i121, !llvm.loop !6

.loopexit.i.i121:                                 ; preds = %.lr.ph.i.i.i.i116, %.loopexit.thread, %..loopexit_crit_edge21.i.i.i.i120, %.loopexit
  %.pre-phi344390 = phi i64 [ %i.gw, %.loopexit.thread ], [ %.pre-phi344, %.loopexit ], [ %.pre-phi344, %..loopexit_crit_edge21.i.i.i.i120 ], [ %.pre-phi344, %.lr.ph.i.i.i.i116 ]
  %i.hw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.hw, align 8, !tbaa !42
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %.sroa.5210.8.extract.trunc, ptr %i.hx, align 8, !tbaa !240
  %i.hy = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.pre-phi344390, i64 noundef %i.k, ptr noundef nonnull %i.hw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i122: ; preds = %.loopexit.i.i121
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125: ; preds = %bb.ak, %bb.aj, %.loopexit.i.i121
  %.pn.i.i123 = phi ptr [ %i.hy, %.loopexit.i.i121 ], [ %i.hm, %bb.aj ], [ %i.hr, %bb.ak ]
  %.1.i.i124 = getelementptr inbounds nuw i8, ptr %.pn.i.i123, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i124, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0214, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0214)
  br label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114

_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114: ; preds = %bb.ah, %bb.ae, %bb.ag, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit125
  %i.ia = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ib = urem i64 %i.k, %i.ia                    ; 3 uses
  %i.ic = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i126 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i126, label %.loopexit.i.i132, label %bb.am

bb.am:                                            ; preds = %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !42 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !160
  %i.ii = icmp eq i32 %i.ih, %.sroa.5210.8.extract.trunc
  br i1 %i.ii, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136, label %.lr.ph.i.i.i.i127

bb.an:                                            ; preds = %bb.ao
  %i.ij = icmp eq i32 %i.im, %.sroa.5210.8.extract.trunc
  br i1 %i.ij, label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136, label %.lr.ph.i.i.i.i127, !llvm.loop !6

.lr.ph.i.i.i.i127:                                ; preds = %bb.am, %bb.an
  %.020.i.i.i.i128 = phi ptr [ %i.ik, %bb.an ], [ %i.if, %bb.am ]
  %i.ik = load ptr, ptr %.020.i.i.i.i128, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i129 = icmp eq ptr %i.ik, null
  br i1 %.not18.i.i.i.i129, label %.loopexit.i.i132, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i127
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !160 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = urem i64 %i.in, %i.ia
  %.not19.i.i.i.i130 = icmp eq i64 %i.io, %i.ib
  br i1 %.not19.i.i.i.i130, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i131, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i131:                ; preds = %bb.ao
  br label %.loopexit.i.i132, !llvm.loop !6

.loopexit.i.i132:                                 ; preds = %.lr.ph.i.i.i.i127, %..loopexit_crit_edge21.i.i.i.i131, %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit114
  %i.ip = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 4 uses
  store ptr null, ptr %i.ip, align 8, !tbaa !42
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 %.sroa.5210.8.extract.trunc, ptr %i.iq, align 8, !tbaa !240
  %i.ir = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ib, i64 noundef %i.k, ptr noundef nonnull %i.ip, i64 noundef 1)
          to label %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136 unwind label %_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i133

_ZNSt10_HashtableIiSt4pairIKiN3gmx11BasicVectorIfEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i133: ; preds = %.loopexit.i.i132
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136: ; preds = %bb.an, %bb.am, %.loopexit.i.i132
  %.pn.i.i134 = phi ptr [ %i.ir, %.loopexit.i.i132 ], [ %i.if, %bb.am ], [ %i.ik, %bb.an ]
  %.1.i.i135 = getelementptr inbounds nuw i8, ptr %.pn.i.i134, i64 12
  br label %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit

_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_14CrossBondAngleES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSF_INS_24RestrictedAngleParameterEEENS_13CrossBondBondES6_NS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISA_vEEELi1EEENS2_8ArrayRefIKSA_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit: ; preds = %bb.ac, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136
  %.0.i.i = phi ptr [ %i.gq, %bb.ac ], [ %.1.i.i135, %_ZNSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEEixERS8_.exit136 ] ; 3 uses
  %i.it = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !169
  %i.iu = fadd <2 x float> %i.bj, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !169
  %i.ix = fadd float %i.bk, %i.iw
  store <2 x float> %i.iu, ptr %.0.i.i, align 4
  store float %i.ix, ptr %i.iv, align 4, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.sroa.0155.0.vec.extract = extractelement <2 x float> %.sroa.0155.0308, i64 0
  %i.iy = fadd float %.sroa.0155.0.vec.extract, %i.ag
  %.sroa.0155.0.vec.insert = insertelement <2 x float> %.sroa.0155.0308, float %i.iy, i64 0 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0147.0309, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.iz, %1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, <2 x float> } @_ZN5nblib13computeForcesISt5arrayIiLm4EENS_23TwoParameterInteractionINS_20LinearAngleParameterEEENS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEEDnNS_9PbcHolderEEENS_12KernelEnergyIfEENS7_8ArrayRefIKT_EENSE_IKT0_EENSE_IKS9_EEPT1_NSE_IT2_EERKT3_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, ptr noundef byval(%"class.gmx::ArrayRef.429") align 8 %7, ptr noundef nonnull align 4 dereferenceable(384) %8) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0218 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0211 = alloca [3 x float], align 4       ; 6 uses
  %.sroa.0205 = alloca [3 x float], align 4       ; 6 uses
  %9 = alloca %"class.gmx::BasicVector", align 4  ; 5 uses
  %10 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 5 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 3 uses
  %.not300 = icmp eq ptr %0, %1
  br i1 %.not300, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit, %bb.a
  %.sroa.0145.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0145.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0145.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> zeroinitializer, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit
  %.sroa.0137.0302 = phi ptr [ %0, %.lr.ph ], [ %i.jb, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 3 uses
  %.sroa.0145.0301 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0145.0.vec.insert, %_ZN5nblib19dispatchInteractionINS_16ForceBufferProxyIN3gmx11BasicVectorIfEEEENS_23TwoParameterInteractionINS_20LinearAngleParameterEEES4_DnNS_9PbcHolderETnPNSt9enable_ifIXtlNS_8ContainsIT0_NS_8TypeListIJNS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENS_12QuarticAngleENSH_INS_24RestrictedAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleES8_EEEEEEEvE4typeELPv0EEENS_12KernelEnergyINSt18remove_all_extentsINT1_8RawArrayEE4typeEEESt5arrayIiXpltlNS_7NCenterISC_vEEELi1EEENS2_8ArrayRefIKSC_EENS16_IKSX_EEPT_NS16_IT2_EERKT3_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0137.0302, align 4 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0137.0302, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !185 ; 3 uses
  %.sroa.0200.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 11 uses
  %.sroa.0200.4.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0200.4.extract.trunc = trunc nuw i64 %.sroa.0200.4.extract.shift to i32 ; 11 uses
  %.sroa.5201.8.extract.trunc = trunc i64 %.sroa.2.0.copyload to i32 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %sext = shl i64 %.sroa.0.0.copyload, 32
  %i.i = ashr exact i64 %sext, 32                 ; 7 uses
  %i.j = getelementptr inbounds [12 x i8], ptr %4, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.k = ashr i64 %.sroa.0.0.copyload, 32         ; 7 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %4, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %sext267 = shl i64 %.sroa.2.0.copyload, 32
  %i.m = ashr exact i64 %sext267, 32              ; 7 uses
  %i.n = getelementptr inbounds [12 x i8], ptr %4, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false), !tbaa.struct !186
  %i.o = ashr i64 %.sroa.2.0.copyload, 32
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.q = load float, ptr %.sroa_idx, align 4      ; 5 uses
  %i.r = load float, ptr %i.p, align 4            ; 3 uses
  %i.s = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %i.t = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13) ; 0 uses
  %i.u = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull align 4 dereferenceable(384) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %14) ; 0 uses
  %i.v = load <2 x float>, ptr %13, align 8, !tbaa !169
  %i.w = fsub float 1.000000e+00, %i.q
  %i.x = fadd float %i.q, -1.000000e+00           ; 2 uses
  %i.y = fmul float %i.r, %i.w                    ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.v
  %i.ac = load float, ptr %i.a, align 8, !tbaa !169
  %i.ad = fmul float %i.x, %i.ac
  %i.ae = load <2 x float>, ptr %12, align 8, !tbaa !169
  %i.af = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.ae
  %i.ai = load float, ptr %i.b, align 8, !tbaa !169
  %i.aj = fmul float %i.q, %i.ai
  %i.ak = fsub <2 x float> %i.ab, %i.ah           ; 5 uses
  %i.al = fsub float %i.ad, %i.aj                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ak, %i.ak
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.an = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ao = call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ao)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ap) ; 2 uses
  %i.aq = fmul float %i.r, %sqrt.i.i
  %i.ar = fpext float %i.aq to double
  %i.as = fmul double %i.ar, 5.000000e-01
  %i.at = fpext float %sqrt.i.i to double
  %i.au = fmul double %i.as, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = fmul float %i.r, %i.q                   ; 2 uses
  %i.ax = fmul float %i.aw, %i.al                 ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.y, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.az, %i.ak           ; 2 uses
  %i.bb = fmul float %i.y, %i.al                  ; 2 uses
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.ak           ; 2 uses
  %i.bf = fadd <2 x float> %i.be, %i.ba
  %i.bg = fadd float %i.ax, %i.bb
  %i.bh = fadd <2 x float> %i.be, zeroinitializer
  %i.bi = fadd float %i.ax, 0.000000e+00
  %i.bj = fsub <2 x float> zeroinitializer, %i.bf
  %i.bk = fsub float 0.000000e+00, %i.bg
  %i.bl = fadd <2 x float> %i.ba, zeroinitializer
  %i.bm = fadd float %i.bb, 0.000000e+00
  %i.bn = load i32, ptr %i.c, align 8, !tbaa !167
  %.not.i23.i = icmp sle i32 %i.bn, %.sroa.0200.0.extract.trunc
  %i.bo = load i32, ptr %i.d, align 4
  %i.bp = icmp sgt i32 %i.bo, %.sroa.0200.0.extract.trunc
  %or.cond.i24.i = select i1 %.not.i23.i, i1 %i.bp, i1 false
  br i1 %or.cond.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = load i64, ptr %6, align 8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.br, i64 %i.i
  br label %_ZN5nblib16ForceBufferProxyIN3gmx11BasicVectorIfEEEixEi.exit26.i

bb.d:                                             ; preds = %bb.b
  %i.bt = load i64, ptr %i.f, align 8, !tbaa !171
  %.not.not.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.not.i.i.i, label %.preheader308, label %bb.f

.preheader308:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.h, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit274.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader308
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !160
  %i.bw = icmp eq i32 %i.bv, %.sroa.0200.0.extract.trunc
  br i1 %i.bw, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.preheader308, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !44  ; 4 uses
  %i.by = urem i64 %i.i, %i.bx                    ; 5 uses
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %.loopexit274.thread, label %bb.g

.loopexit274.thread:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0218)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0218, i8 0, i64 12, i1 false), !tbaa !169
  br label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !160
  %i.cf = icmp eq i32 %i.ce, %.sroa.0200.0.extract.trunc
  br i1 %i.cf, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.cg = icmp eq i32 %i.cj, %.sroa.0200.0.extract.trunc
  br i1 %i.cg, label %_ZNKSt13unordered_mapIiN3gmx11BasicVectorIfEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEE5countERS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.ch, %bb.h ], [ %i.cc, %bb.g ]
  %i.ch = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit274, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !160 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = urem i64 %i.ck, %i.bx
  %.not19.i.i.i.i.i = icmp eq i64 %i.cl, %i.by
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit274, !llvm.loop !6

.loopexit274.loopexit:                            ; preds = %.preheader308
  %.pre = load i64, ptr %i.g, align 8, !tbaa !44  ; 2 uses
  %.pre328 = load ptr, ptr %i.e, align 8, !tbaa !43
  %.pre333 = urem i64 %i.i, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre328, i64 %.pre333
  %.pre338 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %.loopexit274

.loopexit274:                                     ; preds = %.lr.ph.i.i.i.i.i, %.loopexit274.loopexit, %..loopexit_crit_edge21.i.i.i.i.i
end_hunk_4
