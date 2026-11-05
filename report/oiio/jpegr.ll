Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegr?download=true
inline.NumInlined: 1677
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh:bb.a
  %i.ai = load ptr, ptr %0, align 8, !tbaa !189   ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #29
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !358

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !176
  store i8 %i.az, ptr %i.au, align 1, !tbaa !176
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !358

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !176
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !176
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !190
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bi) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !189
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !255
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !190
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #20 align 2 !guid !866 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.ultrahdr::Color", align 8  ; 5 uses
  %2 = alloca %"struct.ultrahdr::Color", align 4  ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !146   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load ptr, ptr %.val, align 8, !tbaa !207
  %i.d = load i32, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.h = load i32, ptr %i.g, align 8, !tbaa !164
  %i.i = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.h)
  %i.j = load ptr, ptr %.val, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !201
  %.not162.i.i.i = icmp eq i32 %i.l, 0            ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !208  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !14
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !867, !nonnull !134, !align !353
  %i.ae = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ae, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.af = icmp eq i32 %i.d, 0                     ; 3 uses
  %i.ag = select i1 %i.af, i64 2, i64 1           ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.aq = select i1 %i.af, i32 4, i32 1
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = zext i1 %i.af to i64                    ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x i1> poison, i1 %.not162.i.i.i, i64 0
  %i.aw = shufflevector <2 x i1> %i.av, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.b

.loopexit.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %bb.b
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !867, !nonnull !134, !align !353
  %i.ay = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ay, label %bb.b, label %"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", !llvm.loop !860

bb.b:                                             ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %i.az = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp ult i32 %i.az, %i.ba
  br i1 %i.bc, label %.preheader164.preheader.i.i.i, label %.loopexit.i.i.i

.preheader164.preheader.i.i.i:                    ; preds = %bb.b
  %i.bd = zext i32 %i.az to i64
  %.pre.i.i.i = load ptr, ptr %.val, align 8, !tbaa !207
  br label %.preheader164.i.i.i

.preheader164.i.i.i:                              ; preds = %._crit_edge.i.i.i, %.preheader164.preheader.i.i.i
  %i.be = phi ptr [ %i.bk, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %.preheader164.preheader.i.i.i ] ; 2 uses
  %.0176.i.i.i = phi i64 [ %i.bl, %._crit_edge.i.i.i ], [ %i.bd, %.preheader164.preheader.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !235
  %.not179.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not179.i.i.i, label %._crit_edge.i.i.i, label %.preheader163.lr.ph.i.i.i

.preheader163.lr.ph.i.i.i:                        ; preds = %.preheader164.i.i.i
  %i.bh = lshr i64 %.0176.i.i.i, %i.as            ; 2 uses
  %i.bi = mul nuw i64 %i.bh, %i.y
  %invariant.gep172.i.i.i = getelementptr i8, ptr %i.q, i64 %i.bi
  %i.bj = mul nuw i64 %i.bh, %i.ab
  %invariant.gep174.i.i.i = getelementptr i8, ptr %i.s, i64 %i.bj
  br label %.preheader163.i.i.i

.preheader163.i.i.i:                              ; preds = %bb.n, %.preheader163.lr.ph.i.i.i
  %.0142171.i.i.i = phi i64 [ 0, %.preheader163.lr.ph.i.i.i ], [ %i.ex, %bb.n ] ; 4 uses
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.o, i64 %.0142171.i.i.i
  br label %.preheader.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %.preheader164.i.i.i
  %i.bk = phi ptr [ %i.be, %.preheader164.i.i.i ], [ %i.ey, %bb.n ]
  %i.bl = add nuw nsw i64 %.0176.i.i.i, %i.ag     ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bl, %i.bb
  br i1 %i.bm, label %.preheader164.i.i.i, label %.loopexit.i.i.i, !llvm.loop !861

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader163.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ 0, %.preheader163.i.i.i ], [ %indvars.iv.next182.i.i.i, %bb.d ] ; 2 uses
  %i.bn = phi <2 x float> [ zeroinitializer, %.preheader163.i.i.i ], [ %i.em, %bb.d ]
  %i.bo = add nuw nsw i64 %indvars.iv181.i.i.i, %.0176.i.i.i ; 4 uses
  %i.bp = mul nuw i64 %i.bo, %i.v
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.bp
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !164
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.d:                                             ; preds = %bb.l
  %indvars.iv.next182.i.i.i = add nuw nsw i64 %indvars.iv181.i.i.i, 1 ; 2 uses
  %exitcond185.not.i.i.i = icmp eq i64 %indvars.iv.next182.i.i.i, %i.ag
  br i1 %exitcond185.not.i.i.i, label %bb.c, label %.preheader.i.i.i, !llvm.loop !862

bb.e:                                             ; preds = %bb.l, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %i.bt = phi <2 x float> [ %i.bn, %.preheader.i.i.i ], [ %i.em, %bb.l ] ; 3 uses
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !213
  %i.bv = load ptr, ptr %.val, align 8, !tbaa !207
  %i.bw = add nuw nsw i64 %indvars.iv.i.i.i, %.0142171.i.i.i ; 3 uses
  %i.bx = call { <2 x float>, float } %i.bu(ptr noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bo), !inline_history !863 ; 3 uses
  br i1 %i.e, label %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.fca.0.extract69.i.i.i = extractvalue { <2 x float>, float } %i.bx, 0
  %.fca.1.extract70.i.i.i = extractvalue { <2 x float>, float } %i.bx, 1
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !211
  %i.bz = call { <2 x float>, float } %i.by(<2 x float> %.fca.0.extract69.i.i.i, float %.fca.1.extract70.i.i.i), !inline_history !863
  br label %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i

_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { <2 x float>, float } [ %i.bz, %bb.f ], [ %i.bx, %bb.e ] ; 2 uses
  %.sroa.582.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 1
  %.sroa.081.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 0
  %i.ca = load ptr, ptr %i.aj, align 8, !tbaa !209
  %i.cb = call { <2 x float>, float } %i.ca(<2 x float> %.sroa.081.0.i.i.i, float %.sroa.582.0.i.i.i), !inline_history !863 ; 2 uses
  %.fca.0.extract49.i.i.i = extractvalue { <2 x float>, float } %i.cb, 0
  %.fca.1.extract50.i.i.i = extractvalue { <2 x float>, float } %i.cb, 1
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !216
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !215
  %i.ce = call { <2 x float>, float } %i.cc(<2 x float> %.fca.0.extract49.i.i.i, float %.fca.1.extract50.i.i.i, ptr noundef %i.cd), !inline_history !863 ; 2 uses
  %.fca.0.extract39.i.i.i = extractvalue { <2 x float>, float } %i.ce, 0 ; 2 uses
  %.fca.1.extract40.i.i.i = extractvalue { <2 x float>, float } %i.ce, 1 ; 2 uses
  %i.cf = load float, ptr %i.am, align 8, !tbaa !212
  %i.cg = fdiv contract float %i.cf, 2.030000e+02 ; 4 uses
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul contract <2 x float> %i.ci, %.fca.0.extract39.i.i.i
  %i.ck = fmul contract float %.fca.1.extract40.i.i.i, %i.cg
  %i.cl = select <2 x i1> %i.aw, <2 x float> %.fca.0.extract39.i.i.i, <2 x float> %i.cj ; 4 uses
  %.sroa.11.0.i.i.i.i = select i1 %.not162.i.i.i, float %.fca.1.extract40.i.i.i, float %i.ck ; 4 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.co = fcmp contract olt float %i.cm, %i.cn
  %i.cp = select i1 %i.co, float %i.cn, float %i.cm ; 2 uses
  %i.cq = fcmp contract olt float %i.cp, %.sroa.11.0.i.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.cq, float %.sroa.11.0.i.i.i.i, float %i.cp ; 5 uses
  %i.cr = fmul contract float %i.cg, %i.cg
  %i.cs = fdiv contract float %.sroa.speculated.i.i.i.i, %i.cr
  %i.ct = fadd contract float %i.cs, 1.000000e+00
  %i.cu = fadd contract float %.sroa.speculated.i.i.i.i, 1.000000e+00
  %i.cv = fdiv contract float %i.ct, %i.cu
  %i.cw = fmul contract float %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = fcmp contract ogt <2 x float> %i.cl, zeroinitializer
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul contract <2 x float> %i.cl, %i.cz
  %i.db = insertelement <2 x float> poison, float %.sroa.speculated.i.i.i.i, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv contract <2 x float> %i.da, %i.dc
  %i.de = select <2 x i1> %i.cx, <2 x float> %i.dd, <2 x float> zeroinitializer
  %i.df = fcmp contract ogt float %.sroa.11.0.i.i.i.i, 0.000000e+00
  %i.dg = fmul contract float %.sroa.11.0.i.i.i.i, %i.cw
  %i.dh = fdiv contract float %i.dg, %.sroa.speculated.i.i.i.i
  %.0.i.i.2.i.i.i.i = select i1 %i.df, float %i.dh, float 0.000000e+00
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !210
  %i.dj = call { <2 x float>, float } %i.di(<2 x float> %i.de, float %.0.i.i.2.i.i.i.i), !inline_history !863 ; 2 uses
  %.fca.0.extract27.i.i.i = extractvalue { <2 x float>, float } %i.dj, 0 ; 3 uses
  %.fca.1.extract28.i.i.i = extractvalue { <2 x float>, float } %i.dj, 1 ; 3 uses
  %i.dk = fcmp contract olt <2 x float> %.fca.0.extract27.i.i.i, zeroinitializer
  %i.dl = fcmp contract ogt <2 x float> %.fca.0.extract27.i.i.i, splat (float 1.000000e+00)
  %i.dm = select <2 x i1> %i.dl, <2 x float> splat (float 1.000000e+00), <2 x float> %.fca.0.extract27.i.i.i
  %i.dn = select <2 x i1> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.dm
  %i.do = fcmp contract olt float %.fca.1.extract28.i.i.i, 0.000000e+00
  %i.dp = fcmp contract ogt float %.fca.1.extract28.i.i.i, 1.000000e+00
  %i.dq = select contract i1 %i.dp, float 1.000000e+00, float %.fca.1.extract28.i.i.i
  %i.dr = select contract i1 %i.do, float 0.000000e+00, float %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ds = call { <2 x float>, float } @_ZN8ultrahdr8srgbOetfENS_5ColorE(<2 x float> %i.dn, float %i.dr) ; 2 uses
  %.fca.0.extract10.i.i.i = extractvalue { <2 x float>, float } %i.ds, 0 ; 2 uses
  %.fca.1.extract11.i.i.i = extractvalue { <2 x float>, float } %i.ds, 1 ; 2 uses
  store <2 x float> %.fca.0.extract10.i.i.i, ptr %1, align 8
  store float %.fca.1.extract11.i.i.i, ptr %.sroa.213.0..sroa_idx.i.i.i, align 8
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  %i.dt = load ptr, ptr %i.ap, align 8, !tbaa !214
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !208
  call void %i.dt(ptr noundef %i.du, i64 noundef %i.bw, i64 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %1), !inline_history !863
  br label %bb.l

bb.h:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.dv = call { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float> %.fca.0.extract10.i.i.i, float %.fca.1.extract11.i.i.i) ; 2 uses
  %.fca.0.extract2.i.i.i = extractvalue { <2 x float>, float } %i.dv, 0 ; 2 uses
  %.fca.1.extract3.i.i.i = extractvalue { <2 x float>, float } %i.dv, 1
  %i.dw = extractelement <2 x float> %.fca.0.extract2.i.i.i, i64 0
  %i.dx = fadd contract float %i.dw, 0.000000e+00 ; 2 uses
  store float %i.dx, ptr %2, align 4, !tbaa !176
  %i.dy = shufflevector <2 x float> %.fca.0.extract2.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x float> %i.dy, float %.fca.1.extract3.i.i.i, i64 1
  %i.ea = fadd contract <2 x float> %i.dz, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.ea, ptr %i.ao, align 4, !tbaa !176
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !208 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !164
  %.not.i.i.i = icmp eq i32 %i.ec, 1
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = load ptr, ptr %i.ap, align 8, !tbaa !214
  call void %i.ed(ptr noundef nonnull %i.eb, i64 noundef %i.bw, i64 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %2), !inline_history !863
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ee = fmul contract float %i.dx, 2.550000e+02
  %i.ef = call contract noundef float @llvm.round.f32(float %i.ee)
  %i.eg = fptosi float %i.ef to i32
  %.sroa.speculate.load.false.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %i.eh = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.i.i.i.i, i32 255)
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = getelementptr i8, ptr %gep.i.i.i, i64 %indvars.iv.i.i.i
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !176
  %i.ek = fadd contract <2 x float> %i.bt, %i.ea
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.el = phi <2 x float> [ %i.bt, %bb.i ], [ %i.ek, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.em = phi <2 x float> [ %i.bt, %bb.g ], [ %i.el, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %bb.d, label %bb.e, !llvm.loop !864

bb.m:                                             ; preds = %bb.c
  %i.en = fdiv contract <2 x float> %i.em, %i.au
  %i.eo = lshr i64 %.0142171.i.i.i, %i.as         ; 2 uses
  %gep173.i.i.i = getelementptr i8, ptr %invariant.gep172.i.i.i, i64 %i.eo
  %i.ep = fmul contract <2 x float> %i.en, splat (float 2.550000e+02)
  %i.eq = call contract <2 x float> @llvm.round.v2f32(<2 x float> %i.ep)
  %i.er = fptosi <2 x float> %i.eq to <2 x i32>
  %i.es = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.er, <2 x i32> zeroinitializer)
  %i.et = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.es, <2 x i32> splat (i32 255))
  %i.eu = trunc nuw <2 x i32> %i.et to <2 x i8>   ; 2 uses
  %i.ev = extractelement <2 x i8> %i.eu, i64 0
  store i8 %i.ev, ptr %gep173.i.i.i, align 1, !tbaa !176
  %gep175.i.i.i = getelementptr i8, ptr %invariant.gep174.i.i.i, i64 %i.eo
  %i.ew = extractelement <2 x i8> %i.eu, i64 1
  store i8 %i.ew, ptr %gep175.i.i.i, align 1, !tbaa !176
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.ex = add nuw nsw i64 %.0142171.i.i.i, %i.ag  ; 2 uses
  %i.ey = load ptr, ptr %.val, align 8, !tbaa !207 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !235
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %i.ex, %i.fb
  br i1 %i.fc, label %.preheader163.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !865

"_ZSt10__invoke_rIvRZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS3_E3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %.loopexit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 !guid !868 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS2_E3$_0", ptr %0, align 8, !tbaa !355
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !146
  store ptr %.val, ptr %0, align 8, !tbaa !146
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !335
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !146 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare { <2 x float>, float } @_ZN8ultrahdr8srgbOetfENS_5ColorE(<2 x float>, float) local_unnamed_addr #7

declare { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float>, float) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_jpegr.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 !guid !869 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 16), ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 28, ptr %i.b, align 8, !tbaa !224
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !200
  %i.d = load i64, ptr %i.b, align 8, !tbaa !224  ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 16), align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str, i64 28, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, i64 8), align 8, !tbaa !175
  %i.e = load ptr, ptr @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, align 8, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN8ultrahdrL13kXmpNameSpaceB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 16), ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 27, ptr %i.a, align 8, !tbaa !224
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !200
  %i.i = load i64, ptr %i.a, align 8, !tbaa !224  ; 3 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 16), align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.h, ptr noundef nonnull align 1 dereferenceable(27) @.str.2, i64 27, i1 false)
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 8), align 8, !tbaa !175
  %i.j = load ptr, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, align 8, !tbaa !200
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold nounwind }
attributes #34 = { cold }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !135}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !135}
!5 = distinct !{null, null}
!6 = distinct !{!6, !135}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 7177911938563459688}
!16 = !{i64 1069405855981459787}
!17 = !{i64 -6250355512369266805}
!18 = !{i64 647811320426551150}
end_hunk_0
