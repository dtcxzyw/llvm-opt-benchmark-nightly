Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/basicretinafilter?download=true
inline.NumInlined: 322
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN2cv11bioinspired17BasicRetinaFilter21setLPfilterParametersEfffj:bb.a
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.s = fmul float %3, %3
  %i.t = fmul float %i.s, 1.600000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.023 = phi float [ f0x35D6BF97, %.thread ], [ %i.t, %bb.f ]
  %i.u = mul i32 %4, 3                            ; 3 uses
  %i.v = fadd float %1, %2
  %i.w = fadd float %i.v, 1.000000e+00            ; 2 uses
  %i.x = fdiv float %i.w, %.023
  %i.y = fadd float %i.x, 1.000000e+00            ; 3 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float -1.000000e+00)
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #17
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.u to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  store float %i.ab, ptr %i.af, align 4, !tbaa !14
  %i.ag = fsub float 1.000000e+00, %i.ab          ; 4 uses
  %i.ah = fmul float %i.ag, %i.ag
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = fdiv float %i.aj, %i.w
  %i.al = add i32 %i.u, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  store float %i.ak, ptr %i.an, align 4, !tbaa !14
  %i.ao = add i32 %i.u, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ap
  store float %2, ptr %i.aq, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired17BasicRetinaFilter45setProgressiveFilterConstants_CentredAccuracyEfffj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %_ZNSt8valarrayIfE6resizeEmf.exit71, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !13
  tail call void @_ZdlPv(ptr noundef %.pre.i) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !8
  %i.f = shl i64 %i.d, 2                          ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !13
  %.not4.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZNSt8valarrayIfE6resizeEmf.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !14
  br label %_ZNSt8valarrayIfE6resizeEmf.exit

_ZNSt8valarrayIfE6resizeEmf.exit:                 ; preds = %.lr.ph.i.i.i.preheader, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !8    ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !8
  %.not.i62 = icmp eq i64 %i.k, %i.i
  %.pre.i63 = load ptr, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  br i1 %.not.i62, label %._crit_edge.i69, label %bb.c

._crit_edge.i69:                                  ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  %.pre5.i70 = shl i64 %i.i, 2
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  tail call void @_ZdlPv(ptr noundef %.pre.i63) #17
  store i64 %i.i, ptr %i.h, align 8, !tbaa !8
  %i.l = shl i64 %i.i, 2                          ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #16 ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i69
  %.idx.pre-phi.i64 = phi i64 [ %.pre5.i70, %._crit_edge.i69 ], [ %i.l, %bb.c ]
  %i.n = phi ptr [ %.pre.i63, %._crit_edge.i69 ], [ %i.m, %bb.c ]
  %.not4.i.i.i65 = icmp eq i64 %i.i, 0
  br i1 %.not4.i.i.i65, label %_ZNSt8valarrayIfE6resizeEmf.exit71, label %.lr.ph.i.i.i66.preheader

.lr.ph.i.i.i66.preheader:                         ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.pre-phi.i64, i1 false), !tbaa !14
  br label %_ZNSt8valarrayIfE6resizeEmf.exit71

_ZNSt8valarrayIfE6resizeEmf.exit71:               ; preds = %.lr.ph.i.i.i66.preheader, %bb.d, %bb.a
  %i.o = fadd float %1, %2
  %i.p = fcmp ugt float %3, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit71
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 99) ; 0 uses
  %i.r = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 6 uses
  %.not.i.i.i72 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i72, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !50
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10), !inline_history !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.aa, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSt8valarrayIfE6resizeEmf.exit71
  %i.ah = mul i32 %4, 3                           ; 3 uses
  %i.ai = fadd float %i.o, 1.000000e+00           ; 4 uses
  %i.aj = fdiv float %i.ai, f0x3FA3D70B
  %i.ak = fadd float %i.aj, 1.000000e+00          ; 3 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float -1.000000e+00)
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #17
  %i.an = fsub float %i.ak, %i.am                 ; 2 uses
  %i.ao = zext i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  store float %i.an, ptr %i.ar, align 4, !tbaa !14
  %i.as = fsub float 1.000000e+00, %i.an          ; 4 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = fmul float %i.as, %i.at
  %i.av = fmul float %i.as, %i.au
  %i.aw = fdiv float %i.av, %i.ai
  %i.ax = add i32 %i.ah, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ay
  store float %i.aw, ptr %i.az, align 4, !tbaa !14
  %i.ba = add i32 %i.ah, 2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  store float %2, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !59 ; 7 uses
  %i.bf = mul i32 %i.be, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !58 ; 9 uses
  %i.bi = mul i32 %i.bh, %i.bh
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = uitofp i32 %i.bj to float
  %i.bl = fadd nnan float %i.bk, 1.000000e+00
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.bl)
  %i.bm = fdiv float %3, %sqrt                    ; 2 uses
  %.not77 = icmp eq i32 %i.be, 0
  br i1 %.not77, label %._crit_edge76.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %.not78 = icmp eq i32 %i.bh, 0
  %i.bn = add i32 %i.be, -1
  %i.bo = add i32 %i.bh, -1                       ; 2 uses
  br i1 %.not78, label %._crit_edge76.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 16 uses
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !13 ; 16 uses
  %wide.trip.count = zext i32 %i.bh to i64        ; 5 uses
  %i.bw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bx = add i32 %i.bh, %i.be
  %i.by = add i32 %i.bx, -2                       ; 4 uses
  %i.bz = shl nuw nsw i64 %wide.trip.count, 2     ; 5 uses
  %scevgep87 = getelementptr i8, ptr %i.bu, i64 %i.bz
  %scevgep90 = getelementptr i8, ptr %i.bu, i64 %i.bz
  %i.ca = sub nsw i64 4, %i.bz                    ; 4 uses
  %scevgep92 = getelementptr i8, ptr %i.bu, i64 %i.ca
  %scevgep94 = getelementptr i8, ptr %i.bu, i64 4
  %scevgep96 = getelementptr i8, ptr %i.bu, i64 %i.ca
  %scevgep98 = getelementptr i8, ptr %i.bu, i64 4
  %scevgep101 = getelementptr i8, ptr %i.bv, i64 %i.bz
  %scevgep104 = getelementptr i8, ptr %i.bv, i64 %i.bz
  %scevgep106 = getelementptr i8, ptr %i.bv, i64 %i.ca
  %scevgep108 = getelementptr i8, ptr %i.bv, i64 4
  %scevgep110 = getelementptr i8, ptr %i.bv, i64 %i.ca
  %scevgep112 = getelementptr i8, ptr %i.bv, i64 4
  %min.iters.check = icmp ult i32 %i.bh, 12
  %ident.check = icmp ne i64 %i.bs, 1
  %i.cb = trunc i64 %i.bw to i32                  ; 4 uses
  %i.cc = icmp ugt i64 %i.bw, 4294967295
  %invariant.op = or i1 %i.cc, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert221 = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat222 = shufflevector <4 x float> %broadcast.splatinsert221, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat224 = shufflevector <4 x float> %broadcast.splatinsert223, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.06075 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.ek, %._crit_edge ] ; 9 uses
  %i.cd = add i32 %i.by, %.06075
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2                ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.cf ; 7 uses
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.cf ; 7 uses
  %i.cg = sub i32 %i.by, %.06075
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 8 uses
  %scevgep89 = getelementptr i8, ptr %i.bu, i64 %i.ci ; 7 uses
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.ci ; 7 uses
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.cf ; 7 uses
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %i.cf ; 7 uses
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %i.ci ; 7 uses
  %scevgep99 = getelementptr i8, ptr %scevgep98, i64 %i.ci ; 7 uses
  %scevgep100 = getelementptr i8, ptr %i.bv, i64 %i.cf ; 7 uses
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.cf ; 7 uses
  %scevgep103 = getelementptr i8, ptr %i.bv, i64 %i.ci ; 7 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.ci ; 7 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.cf ; 7 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.cf ; 7 uses
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.ci ; 7 uses
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.ci ; 7 uses
  %i.cj = mul i32 %.06075, %.06075
  %i.ck = uitofp i32 %i.cj to float               ; 2 uses
  %i.cl = add i32 %i.bn, %.06075                  ; 4 uses
  %i.cm = xor i32 %.06075, -1
  %i.cn = add i32 %i.be, %i.cm                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.co = sub i32 %i.by, %.06075                  ; 2 uses
  %i.cp = add i32 %i.by, %.06075                  ; 2 uses
  %i.cq = xor i32 %i.cp, -1
  %i.cr = icmp ult i32 %i.cq, %i.cb
  %i.cs = xor i32 %i.co, -1
  %i.ct = icmp ult i32 %i.cs, %i.cb
  %i.cu = icmp ult i32 %i.cp, %i.cb
  %i.cv = icmp ult i32 %i.co, %i.cb
  %.reass = or i1 %i.cr, %invariant.op
  %i.cw = or i1 %i.ct, %.reass
  %i.cx = or i1 %i.cu, %i.cw
  %i.cy = or i1 %i.cv, %i.cx
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  %bound0114 = icmp ult ptr %scevgep, %scevgep95
  %bound1115 = icmp ult ptr %scevgep93, %scevgep88
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %found.conflict, %found.conflict116
  %bound0117 = icmp ult ptr %scevgep, %scevgep99
  %bound1118 = icmp ult ptr %scevgep97, %scevgep88
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx, %found.conflict119
  %bound0121 = icmp ult ptr %scevgep, %scevgep102
  %bound1122 = icmp ult ptr %scevgep100, %scevgep88
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %scevgep, %scevgep105
  %bound1126 = icmp ult ptr %scevgep103, %scevgep88
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep, %scevgep109
  %bound1130 = icmp ult ptr %scevgep107, %scevgep88
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep, %scevgep113
  %bound1134 = icmp ult ptr %scevgep111, %scevgep88
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep89, %scevgep95
  %bound1138 = icmp ult ptr %scevgep93, %scevgep91
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %scevgep89, %scevgep99
  %bound1142 = icmp ult ptr %scevgep97, %scevgep91
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  %bound0145 = icmp ult ptr %scevgep89, %scevgep102
  %bound1146 = icmp ult ptr %scevgep100, %scevgep91
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %scevgep89, %scevgep105
  %bound1150 = icmp ult ptr %scevgep103, %scevgep91
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %scevgep89, %scevgep109
  %bound1154 = icmp ult ptr %scevgep107, %scevgep91
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %scevgep89, %scevgep113
  %bound1158 = icmp ult ptr %scevgep111, %scevgep91
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %scevgep93, %scevgep99
  %bound1162 = icmp ult ptr %scevgep97, %scevgep95
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %scevgep93, %scevgep102
  %bound1166 = icmp ult ptr %scevgep100, %scevgep95
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %scevgep93, %scevgep105
  %bound1170 = icmp ult ptr %scevgep103, %scevgep95
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %scevgep93, %scevgep109
  %bound1174 = icmp ult ptr %scevgep107, %scevgep95
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %scevgep93, %scevgep113
  %bound1178 = icmp ult ptr %scevgep111, %scevgep95
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep97, %scevgep102
  %bound1182 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep97, %scevgep105
  %bound1186 = icmp ult ptr %scevgep103, %scevgep99
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %scevgep97, %scevgep109
  %bound1190 = icmp ult ptr %scevgep107, %scevgep99
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %scevgep97, %scevgep113
  %bound1194 = icmp ult ptr %scevgep111, %scevgep99
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %scevgep100, %scevgep105
  %bound1198 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %scevgep100, %scevgep109
  %bound1202 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %scevgep100, %scevgep113
  %bound1206 = icmp ult ptr %scevgep111, %scevgep102
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %scevgep103, %scevgep109
  %bound1210 = icmp ult ptr %scevgep107, %scevgep105
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %scevgep103, %scevgep113
  %bound1214 = icmp ult ptr %scevgep111, %scevgep105
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %scevgep107, %scevgep113
  %bound1218 = icmp ult ptr %scevgep111, %scevgep109
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  br i1 %conflict.rdx220, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cz = trunc i64 %index to i32                 ; 2 uses
  %i.da = mul <4 x i32> %vec.ind, %vec.ind
  %i.db = uitofp <4 x i32> %i.da to <4 x float>
  %i.dc = fadd nnan <4 x float> %broadcast.splat, %i.db
  %i.dd = tail call nnan <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dc)
  %i.de = fmul <4 x float> %broadcast.splat222, %i.dd ; 2 uses
  %i.df = fcmp ogt <4 x float> %i.de, splat (float 1.000000e+00)
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float 1.000000e+00), <4 x float> %i.de ; 4 uses
  %i.dh = add i32 %i.bo, %i.cz                    ; 2 uses
  %i.di = add i32 %i.dh, %i.cl
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dj
  store <4 x float> %i.dg, ptr %i.dk, align 4, !tbaa !14, !alias.scope !66, !noalias !69
  %i.dl = add i32 %i.dh, %i.cn
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dm
  store <4 x float> %i.dg, ptr %i.dn, align 4, !tbaa !14, !alias.scope !77, !noalias !78
  %i.do = xor i32 %i.cz, -1
  %i.dp = add i32 %i.bh, %i.do                    ; 2 uses
  %i.dq = add i32 %i.dp, %i.cl
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -12
  %reverse = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x float> %reverse, ptr %i.dt, align 4, !tbaa !14, !alias.scope !79, !noalias !80
  %i.du = add i32 %i.dp, %i.cn
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -12
  store <4 x float> %reverse, ptr %i.dx, align 4, !tbaa !14, !alias.scope !81, !noalias !82
  %i.dy = fsub <4 x float> splat (float 1.000000e+00), %i.dg ; 4 uses
  %i.dz = fmul <4 x float> %i.dy, %i.dy
  %i.ea = fmul <4 x float> %i.dy, %i.dz
  %i.eb = fmul <4 x float> %i.dy, %i.ea
  %i.ec = fdiv <4 x float> %i.eb, %broadcast.splat224 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dj
  store <4 x float> %i.ec, ptr %i.ed, align 4, !tbaa !14, !alias.scope !83, !noalias !84
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dm
  store <4 x float> %i.ec, ptr %i.ee, align 4, !tbaa !14, !alias.scope !85, !noalias !86
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dr
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -12
  %reverse225 = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x float> %reverse225, ptr %i.eg, align 4, !tbaa !14, !alias.scope !87, !noalias !88
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dv
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -12
  store <4 x float> %reverse225, ptr %i.ei, align 4, !tbaa !14, !alias.scope !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge76.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.i
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ek = add nuw i32 %.06075, 1                  ; 2 uses
  %exitcond80.not = icmp eq i32 %i.ek, %i.be
  br i1 %exitcond80.not, label %._crit_edge76.split, label %.preheader, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv to i32        ; 4 uses
  %i.em = mul i32 %i.el, %i.el
  %i.en = uitofp i32 %i.em to float
  %i.eo = fadd nnan float %i.ck, %i.en
  %sqrt73 = tail call nnan float @llvm.sqrt.f32(float %i.eo)
  %i.ep = fmul float %i.bm, %sqrt73               ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 1.000000e+00
  %.0 = select i1 %i.eq, float 1.000000e+00, float %i.ep ; 5 uses
  %i.er = add i32 %i.bo, %i.el
  %i.es = mul i32 %i.er, %i.bt                    ; 2 uses
  %i.et = add i32 %i.es, %i.cl
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.eu
  store float %.0, ptr %i.ev, align 4, !tbaa !14
  %i.ew = add i32 %i.es, %i.cn
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ex
  store float %.0, ptr %i.ey, align 4, !tbaa !14
  %i.ez = xor i32 %i.el, -1
  %i.fa = add i32 %i.bh, %i.ez
  %i.fb = mul i32 %i.fa, %i.bt                    ; 2 uses
  %i.fc = add i32 %i.fb, %i.cl
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.fd
  store float %.0, ptr %i.fe, align 4, !tbaa !14
  %i.ff = add i32 %i.fb, %i.cn
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.fg
  store float %.0, ptr %i.fh, align 4, !tbaa !14
  %i.fi = fsub float 1.000000e+00, %.0            ; 4 uses
  %i.fj = fmul float %i.fi, %i.fi
  %i.fk = fmul float %i.fi, %i.fj
  %i.fl = fmul float %i.fi, %i.fk
  %i.fm = fdiv float %i.fl, %i.ai                 ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.eu
  store float %i.fm, ptr %i.fn, align 4, !tbaa !14
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ex
  store float %i.fm, ptr %i.fo, align 4, !tbaa !14
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fd
  store float %i.fm, ptr %i.fp, align 4, !tbaa !14
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.fg
  store float %i.fm, ptr %i.fq, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired17BasicRetinaFilter44setProgressiveFilterConstants_CustomAccuracyEfffRKSt8valarrayIfEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8
  %.not = icmp eq i64 %i.a, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 129) ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 6 uses
  %.not.i.i.i56 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i56, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !50
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8
  %.not45 = icmp eq i64 %i.v, %i.a
  br i1 %.not45, label %_ZNSt8valarrayIfE6resizeEmf.exit55, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !13
  tail call void @_ZdlPv(ptr noundef %.pre.i) #17
  store i64 %i.a, ptr %i.u, align 8, !tbaa !8
  %i.x = shl i64 %i.a, 2                          ; 2 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #16 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !13
  %.not4.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not4.i.i.i, label %_ZNSt8valarrayIfE6resizeEmf.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.x, i1 false), !tbaa !14
  br label %_ZNSt8valarrayIfE6resizeEmf.exit

_ZNSt8valarrayIfE6resizeEmf.exit:                 ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %4, align 8, !tbaa !8     ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !8
  %.not.i46 = icmp eq i64 %i.ac, %i.aa
  %.pre.i47 = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  br i1 %.not.i46, label %._crit_edge.i53, label %bb.h

._crit_edge.i53:                                  ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  %.pre5.i54 = shl i64 %i.aa, 2
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  tail call void @_ZdlPv(ptr noundef %.pre.i47) #17
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !8
  %i.ad = shl i64 %i.aa, 2                        ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #16 ; 2 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i53
  %.idx.pre-phi.i48 = phi i64 [ %.pre5.i54, %._crit_edge.i53 ], [ %i.ad, %bb.h ]
  %i.af = phi ptr [ %.pre.i47, %._crit_edge.i53 ], [ %i.ae, %bb.h ]
  %.not4.i.i.i49 = icmp eq i64 %i.aa, 0
  br i1 %.not4.i.i.i49, label %_ZNSt8valarrayIfE6resizeEmf.exit55, label %.lr.ph.i.i.i50.preheader

.lr.ph.i.i.i50.preheader:                         ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.pre-phi.i48, i1 false), !tbaa !14
  br label %_ZNSt8valarrayIfE6resizeEmf.exit55

_ZNSt8valarrayIfE6resizeEmf.exit55:               ; preds = %.lr.ph.i.i.i50.preheader, %bb.i, %bb.f
  %i.ag = fadd float %1, %2
  %i.ah = fmul float %3, %3
  %i.ai = fcmp ugt float %3, 0.000000e+00
  br i1 %i.ai, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit55
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 99) ; 0 uses
  %i.ak = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i57 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i57, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58: ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !50
  %.not.i1.i.i59 = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i59, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61: ; preds = %bb.l, %bb.m
  %.0.i.i.i60 = phi i8 [ %i.at, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i60)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61, %_ZNSt8valarrayIfE6resizeEmf.exit55
  %i.ba = mul i32 %5, 3                           ; 3 uses
  %i.bb = fadd float %i.ag, 1.000000e+00          ; 4 uses
  %i.bc = fmul float %i.ah, 1.600000e+00
  %i.bd = fdiv float %i.bb, %i.bc
  %i.be = fadd float %i.bd, 1.000000e+00          ; 3 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float -1.000000e+00)
  %i.bg = tail call noundef float @sqrtf(float noundef %i.bf) #17
  %i.bh = fsub float %i.be, %i.bg                 ; 2 uses
  %i.bi = zext i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store float %i.bh, ptr %i.bl, align 4, !tbaa !14
  %i.bm = fsub float 1.000000e+00, %i.bh          ; 4 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = fmul float %i.bm, %i.bo
  %i.bq = fdiv float %i.bp, %i.bb
  %i.br = add i32 %i.ba, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bs
  store float %i.bq, ptr %i.bt, align 4, !tbaa !14
  %i.bu = add i32 %i.ba, 2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bv
  store float %2, ptr %i.bw, align 4, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20 ; 3 uses
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  %.not64 = icmp eq i32 %i.bz, 0
  br i1 %.not64, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18 ; 3 uses
  %i.cc = and i64 %i.cb, 4294967295
  %.not65 = icmp eq i64 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  br i1 %.not65, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !13 ; 5 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !13 ; 6 uses
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 6 uses
  %wide.trip.count = and i64 %i.cb, 4294967295    ; 5 uses
  %i.ck = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cl = shl i64 %i.by, 2
  %i.cm = add i64 %i.cl, 17179869180
  %i.cn = and i64 %i.cm, 17179869180
  %i.co = shl nuw nsw i64 %wide.trip.count, 2
  %i.cp = add nuw nsw i64 %i.cn, %i.co            ; 3 uses
  %scevgep75 = getelementptr i8, ptr %i.ci, i64 %i.cp ; 3 uses
  %scevgep76 = getelementptr i8, ptr %i.cj, i64 %i.cp ; 3 uses
  %scevgep77 = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %ident.check = icmp ne i64 %i.by, 1
  %i.cq = trunc i64 %i.ck to i32
  %i.cr = icmp ugt i64 %i.ck, 4294967295
  %invariant.op = or i1 %i.cr, %ident.check
  %bound0 = icmp ult ptr %i.cd, %scevgep75
  %bound1 = icmp ult ptr %i.ci, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %i.cd, %scevgep76
  %bound179 = icmp ult ptr %i.cj, %scevgep
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %bound081 = icmp ult ptr %i.ci, %scevgep76
  %bound182 = icmp ult ptr %i.cj, %scevgep75
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx, %found.conflict83
  %bound085 = icmp ult ptr %i.ci, %scevgep77
  %bound186 = icmp ult ptr %i.ch, %scevgep75
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %i.cj, %scevgep77
  %bound190 = icmp ult ptr %i.ch, %scevgep76
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  %n.vec = and i64 %i.cb, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04363 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.dk, %._crit_edge ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.cs = xor i32 %.04363, -1
  %i.ct = icmp ult i32 %i.cs, %i.cq
  %.reass = or i1 %i.ct, %invariant.op
  %brmerge = select i1 %.reass, i1 true, i1 %conflict.rdx92
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cu = load float, ptr %i.cd, align 4, !tbaa !95, !alias.scope !96, !noalias !99
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = trunc nuw i64 %index to i32
  %i.cw = add i32 %.04363, %i.cv
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cx
  %wide.load = load <4 x float>, ptr %i.cy, align 4, !tbaa !14, !alias.scope !102
  %i.cz = fmul <4 x float> %broadcast.splat94, %wide.load ; 2 uses
  %i.da = fcmp ogt <4 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = select <4 x i1> %i.da, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cx
  store <4 x float> %i.db, ptr %i.dc, align 4, !tbaa !14, !alias.scope !104, !noalias !105
  %i.dd = fsub <4 x float> splat (float 1.000000e+00), %i.db ; 4 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fmul <4 x float> %i.dd, %i.de
  %i.dg = fmul <4 x float> %i.dd, %i.df
  %i.dh = fdiv <4 x float> %i.dg, %broadcast.splat
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cx
  store <4 x float> %i.dh, ptr %i.di, align 4, !tbaa !14, !alias.scope !106, !noalias !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.dk = add nuw i32 %.04363, 1                  ; 2 uses
  %exitcond67.not = icmp eq i32 %i.dk, %i.bz
  br i1 %exitcond67.not, label %.loopexit, label %.preheader, !llvm.loop !108

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv to i32
  %i.dm = mul i32 %i.dl, %i.bz
  %i.dn = add i32 %i.dm, %.04363
  %i.do = load float, ptr %i.cd, align 4, !tbaa !95
  %i.dp = zext i32 %i.dn to i64                   ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !14
  %i.ds = fmul float %i.do, %i.dr                 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 1.000000e+00
  %.0 = select i1 %i.dt, float 1.000000e+00, float %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dp
  store float %.0, ptr %i.du, align 4, !tbaa !14
  %i.dv = fsub float 1.000000e+00, %.0            ; 4 uses
  %i.dw = fmul float %i.dv, %i.dv
  %i.dx = fmul float %i.dv, %i.dw
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = fdiv float %i.dy, %i.bb
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dp
  store float %i.dz, ptr %i.ea, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

.loopexit:                                        ; preds = %._crit_edge, %bb.n, %.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv11bioinspired17BasicRetinaFilter25runFilter_LocalAdapdationERKSt8valarrayIfES5_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 6 uses
  %4 = alloca %"class.cv::bioinspired::BasicRetinaFilter::Parallel_localAdaptation", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = trunc i64 %i.h to i32                    ; 6 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %i.i, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.i, -8
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.017.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.ay, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.017.i.epil = phi float [ %i.m, %.lr.ph.i.epil ], [ %.017.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01316.i.epil = phi ptr [ %i.k, %.lr.ph.i.epil ], [ %.01316.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.01316.i.epil, i64 4
  %i.l = load float, ptr %.01316.i.epil, align 4, !tbaa !14
  %i.m = fadd float %.017.i.epil, %i.l            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !110

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.i.epil ]
  %i.n = uitofp i32 %i.i to float
  %i.o = fdiv float %.0.lcssa.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load float, ptr %i.q, align 8, !tbaa !113
  %i.s = fmul float %i.o, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.s, ptr %i.t, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.i, ptr %i.u, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load float, ptr %i.v, align 4, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11bioinspired17BasicRetinaFilter24Parallel_localAdaptationE, i64 16), ptr %4, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %i.y, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.z, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.s, ptr %i.ab, align 4, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.w, ptr %i.ac, align 8, !tbaa !125
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef -1.000000e+00)
          to label %_ZN2cv11bioinspired17BasicRetinaFilter25_localLuminanceAdaptationEPKfS3_Pfb.exit unwind label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.017.i = phi float [ 0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ]
  %.01316.i = phi ptr [ %i.b, %.lr.ph.i.preheader.new ], [ %i.ay, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01316.i, i64 4
  %i.ae = load float, ptr %.01316.i, align 4, !tbaa !14
  %i.af = fadd float %.017.i, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.01316.i, i64 8
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !14
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01316.i, i64 12
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !14
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.01316.i, i64 16
  %i.an = load float, ptr %i.aj, align 4, !tbaa !14
  %i.ao = fadd float %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.01316.i, i64 20
  %i.aq = load float, ptr %i.am, align 4, !tbaa !14
  %i.ar = fadd float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.01316.i, i64 24
  %i.at = load float, ptr %i.ap, align 4, !tbaa !14
  %i.au = fadd float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.01316.i, i64 28
  %i.aw = load float, ptr %i.as, align 4, !tbaa !14
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.01316.i, i64 32 ; 2 uses
  %i.az = load float, ptr %i.av, align 4, !tbaa !14
  %i.ba = fadd float %i.ax, %i.az                 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !126

bb.b:                                             ; preds = %._crit_edge.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.bb

_ZN2cv11bioinspired17BasicRetinaFilter25_localLuminanceAdaptationEPKfS3_Pfb.exit: ; preds = %._crit_edge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.bc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired17BasicRetinaFilter25_localLuminanceAdaptationEPKfS3_Pfb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Range", align 4         ; 6 uses
  %6 = alloca %"class.cv::bioinspired::BasicRetinaFilter::Parallel_localAdaptation", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  br i1 %4, label %.preheader, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a
end_hunk_0
