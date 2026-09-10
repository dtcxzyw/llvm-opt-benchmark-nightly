Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/zfile?download=true
inline.NumInlined: 3184
inline.NumDeleted: 962
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11OpenImageIO4v3_110ZfileInput20read_native_scanlineEiiiiPv:bb.a
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i7.i41 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i7.i41, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i40
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !104
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #29
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit43

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit43:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i40, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit

bb.q:                                             ; preds = %bb.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pre = load i32, ptr %i.k, align 4, !tbaa !86
  %i.cw = icmp sgt i32 %.pre, %3
  br i1 %i.cw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.s
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !84
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !311
  %i.db = shl i32 %i.da, 2
  %i.dc = invoke i32 @gzread(ptr noundef %i.cz, ptr noundef %5, i32 noundef %i.db)
          to label %bb.s unwind label %.loopexit  ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dd = load i32, ptr %i.k, align 4, !tbaa !86  ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.k, align 4, !tbaa !86
  %.not.not = icmp slt i32 %i.dd, %3
  br i1 %.not.not, label %bb.r, label %._crit_edge, !llvm.loop !307

._crit_edge:                                      ; preds = %bb.s, %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !85, !range !112, !noundef !113
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.t, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit

bb.t:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !311 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.t
  %wide.trip.count.i = zext nneg i32 %i.dj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dj, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !89
  %wide.load77 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !89
  %i.dn = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.do = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load77)
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !89
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !89
  %i.ds = call noundef i32 @llvm.bswap.i32(i32 %i.dr)
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit, label %.lr.ph.i, !llvm.loop !309

_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit: ; preds = %.lr.ph.i, %middle.block, %.noexc, %bb.t, %._crit_edge, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit43, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %.1 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit43 ], [ false, %.noexc ], [ true, %._crit_edge ], [ true, %bb.t ], [ true, %middle.block ], [ true, %.lr.ph.i ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #30
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit
  ret i1 %.1

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit44 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #30
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit44: ; preds = %bb.v
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_subimageEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #6 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_111ZfileOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::(anonymous namespace)::ZfileHeader", align 4 ; 38 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ZfileOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 0, i32 32767, i32 0, i32 32767>, ptr %4, align 16, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.e, align 16, !tbaa !44
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i64 noundef 0)
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 267, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.o, align 4, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 116 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !89
  store i32 789079979, ptr %5, align 4, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !44
  %i.y = trunc <2 x i32> %i.x to <2 x i16>
  store <2 x i16> %i.y, ptr %i.w, align 4, !tbaa !94
  store ptr @.str.6, ptr %6, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.z, align 8, !tbaa !109
  %i.aa = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %6, i64 4107, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 38
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !118, !range !112, !noundef !113
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = select i1 %i.ad, ptr %i.af, ptr %i.ae   ; 16 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !89
  store float %i.ah, ptr %14, align 4, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !89
  store float %i.aj, ptr %i.p, align 4, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %i.al, ptr %i.am, align 4, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %i.ao, ptr %i.ap, align 4, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.ar, ptr %i.as, align 4, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !89
  store float %i.au, ptr %i.q, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !89
  store float %i.aw, ptr %i.r, align 4, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.ay, ptr %i.az, align 4, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.bb, ptr %i.bc, align 4, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 108
  store float %i.be, ptr %i.bf, align 4, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !89
  store float %i.bh, ptr %i.s, align 4, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !89
  store float %i.bj, ptr %i.t, align 4, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !89
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %i.bl, ptr %i.bm, align 4, !tbaa !89
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !89
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 124
  store float %i.bo, ptr %i.bp, align 4, !tbaa !89
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !89
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 128
  store float %i.br, ptr %i.bs, align 4, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr %14, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi float [ 1.000000e+00, %bb.d ], [ %i.bu, %bb.c ]
  store float %.sink, ptr %i.u, align 4, !tbaa !89
  store ptr @.str.5, ptr %7, align 8, !tbaa !108
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.bv, align 8, !tbaa !109
  %i.bw = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %7, i64 4107, i1 noundef zeroext false) ; 3 uses
  %.not14 = icmp eq ptr %i.bw, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 38
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !118, !range !112, !noundef !113
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = select i1 %i.bz, ptr %i.cb, ptr %i.ca   ; 16 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !89
  store float %i.cd, ptr %i.i, align 4, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !89
  store float %i.cf, ptr %i.j, align 4, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !89
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.ch, ptr %i.ci, align 4, !tbaa !89
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !89
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.ck, ptr %i.cl, align 4, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !89
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.cn, ptr %i.co, align 4, !tbaa !89
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !89
  store float %i.cq, ptr %i.k, align 4, !tbaa !89
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !89
  store float %i.cs, ptr %i.l, align 4, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !89
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !89
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !89
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.cx, ptr %i.cy, align 4, !tbaa !89
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.da = load float, ptr %i.cz, align 4, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %i.da, ptr %i.db, align 4, !tbaa !89
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !89
  store float %i.dd, ptr %i.m, align 4, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.df = load float, ptr %i.de, align 4, !tbaa !89
  store float %i.df, ptr %i.n, align 4, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %i.dh, ptr %i.di, align 4, !tbaa !89
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !89
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float %i.dk, ptr %i.dl, align 4, !tbaa !89
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !89
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %i.dn, ptr %i.do, align 4, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 60
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !89
  br label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.e
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %.sink49 = phi float [ 1.000000e+00, %bb.g ], [ %i.dq, %bb.f ]
  store float %.sink49, ptr %i.o, align 4, !tbaa !89
  store ptr @.str.7, ptr %9, align 8, !tbaa !108
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.dr, align 8, !tbaa !109
  store ptr @.str.8, ptr %10, align 8, !tbaa !108
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.ds, align 8, !tbaa !109
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.dt, ptr %11, align 8, !tbaa !50
  store i32 1701736302, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4, ptr %i.du, align 8, !tbaa !105
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 0, ptr %i.dv, align 4, !tbaa !101
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !109
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.h

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %._crit_edge.i.i
  %i.dz = load ptr, ptr %8, align 8, !tbaa !108
  %i.ea = load i32, ptr %i.dz, align 1
  %i.eb = load i32, ptr %i.dt, align 1
  %i.ec = icmp ne i32 %i.ea, %i.eb
  %i.ed = zext i1 %i.ec to i32
  %.not.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !87
  %i.ee = call noundef ptr @gzopen(ptr noundef %.val, ptr noundef nonnull @.str.9)
  store ptr %i.ee, ptr %i.c, align 8, !tbaa !135
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !136
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ef = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %i.ef, ptr %12, align 8, !tbaa !108
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !105
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !109
  store ptr @.str.9, ptr %13, align 8, !tbaa !108
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.ej, align 8, !tbaa !109
  %i.ek = call noundef ptr @_ZN11OpenImageIO4v3_110Filesystem5fopenENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13) ; 2 uses
  store ptr %i.ek, ptr %i.d, align 8, !tbaa !136
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.el = phi ptr [ %i.ek, %bb.i ], [ %.pr, %bb.h ] ; 2 uses
  %.not15 = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  br i1 %.not15, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not16 = icmp eq ptr %i.em, null
  br i1 %.not16, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not17 = icmp eq ptr %i.em, null
  br i1 %.not17, label %.split, label %bb.n

.split:                                           ; preds = %bb.m
  %i.en = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 136, i64 noundef 1, ptr noundef nonnull %i.el)
  %i.eo = icmp ne i64 %i.en, 0                    ; 2 uses
  %storemerge45 = zext i1 %i.eo to i8
  store i8 %storemerge45, ptr %i.a, align 1, !tbaa !137
  br i1 %i.eo, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ep = call i32 @gzwrite(ptr noundef nonnull %i.em, ptr noundef nonnull %5, i32 noundef 136)
  %i.eq = icmp ne i32 %i.ep, 0                    ; 2 uses
  %storemerge = zext i1 %i.eq to i8
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !137
  br i1 %i.eq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split, %bb.n
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJbEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.er = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ZfileOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.p:                                             ; preds = %.split, %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.et = load i32, ptr %i.es, align 8, !tbaa !138
  %.not18 = icmp eq i32 %i.et, 0
  br i1 %.not18, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !312
  %.not19 = icmp eq i32 %i.ev, 0
  br i1 %.not19, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ex = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.g, i1 noundef zeroext false) #28 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !139 ; 2 uses
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !140 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 3 uses
  %i.fe = icmp ugt i64 %i.ex, %i.fd
  br i1 %i.fe, label %bb.s, label %bb.t
end_hunk_0
