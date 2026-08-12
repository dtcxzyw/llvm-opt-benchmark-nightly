inline.NumInlined: 228
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ncnn19get_rotation_matrixEffffPf(float noundef nofpclass(nan inf) %0, float noundef nofpclass(nan inf) %1, float noundef nofpclass(nan inf) %2, float noundef nofpclass(nan inf) %3, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul fast float %0, f0x3C8EFA35
  %sincos = tail call fast { float, float } @llvm.sincos.f32(float %i.a) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.b = fmul fast float %cos, %1                 ; 3 uses
  %i.c = fmul fast float %sin, %1                 ; 4 uses
  store float %i.b, ptr %4, align 4, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !9
  %i.e = fsub fast float 1.000000e+00, %i.b       ; 2 uses
  %i.f = fmul fast float %i.e, %2
  %i.g = fmul fast float %i.c, %3
  %i.h = fsub fast float %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !9
  %i.j = fneg fast float %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.b, ptr %i.l, align 4, !tbaa !9
  %i.m = fmul fast float %i.c, %2
  %i.n = fmul fast float %i.e, %3
  %i.o = fadd fast float %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.o, ptr %i.p, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn20get_affine_transformEPKfS1_iPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 4 uses
  %i.c = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi296.a = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi297.a = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi298 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi299 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi300 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi301 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.g = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.g
  %next.gep302 = getelementptr i8, ptr %1, i64 %i.g
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !9 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %strided.vec303 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.h = fmul fast <4 x float> %strided.vec, %strided.vec
  %i.i = fmul fast <4 x float> %strided.vec303, %strided.vec303
  %i.j = fadd fast <4 x float> %i.h, %vec.phi
  %i.k = fadd fast <4 x float> %i.j, %i.i         ; 2 uses
  %i.l = fadd fast <4 x float> %strided.vec, %vec.phi296.a ; 2 uses
  %i.m = fadd fast <4 x float> %strided.vec303, %vec.phi297.a ; 2 uses
  %wide.vec304 = load <8 x float>, ptr %next.gep302, align 4, !tbaa !9 ; 2 uses
  %strided.vec305 = shufflevector <8 x float> %wide.vec304, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec306 = shufflevector <8 x float> %wide.vec304, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.n = fmul fast <4 x float> %strided.vec305, %strided.vec
  %i.o = fmul fast <4 x float> %strided.vec306, %strided.vec303
  %i.p = fadd fast <4 x float> %i.n, %vec.phi298
  %i.q = fadd fast <4 x float> %i.p, %i.o         ; 2 uses
  %i.r = fmul fast <4 x float> %strided.vec306, %strided.vec
  %i.s = fmul fast <4 x float> %strided.vec303, %strided.vec305
  %i.t = fsub fast <4 x float> %vec.phi299, %i.s
  %i.u = fadd fast <4 x float> %i.t, %i.r         ; 2 uses
  %i.v = fadd fast <4 x float> %strided.vec305, %vec.phi300 ; 2 uses
  %i.w = fadd fast <4 x float> %strided.vec306, %vec.phi301 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %i.y = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.k) ; 2 uses
  %i.z = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.l)
  %i.aa = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.m)
  %i.ab = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.q) ; 2 uses
  %i.ac = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.u) ; 2 uses
  %i.ad = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.v) ; 2 uses
  %i.ae = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.w) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %i.af = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.aa, i64 1 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ae, i64 1
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader321

.lr.ph.preheader321:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0271.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.0243270.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.sroa.087.0269.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.sroa.069.0266.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.sroa.974.0265.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.0244262.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.ph = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.ph322 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %4 = extractelement <2 x float> %i.bq, i64 1
  %5 = extractelement <2 x float> %i.bq, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.a
  %.sroa.21.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %middle.block ], [ %4, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ad, %middle.block ], [ %5, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.974.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %middle.block ], [ %i.bp, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.069.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %middle.block ], [ %i.bl, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %middle.block ], [ %i.bf, %._crit_edge.loopexit ] ; 10 uses
  %i.aj = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %middle.block ], [ %i.bg, %._crit_edge.loopexit ] ; 7 uses
  %6 = extractelement <2 x float> %i.aj, i64 1    ; 13 uses
  %7 = extractelement <2 x float> %i.aj, i64 0    ; 9 uses
  %i.ak = fneg fast float %6                      ; 4 uses
  %8 = sitofp fast i32 %2 to float                ; 6 uses
  %9 = fmul fast float %8, %8
  %10 = fmul fast float %i.ak, %8                 ; 3 uses
  %11 = fmul fast float %7, %8                    ; 4 uses
  %12 = fneg fast float %11
  %13 = fneg fast float %8
  %14 = fmul fast float %6, %13                   ; 3 uses
  %15 = fmul fast float %.sroa.087.0.lcssa, %8    ; 2 uses
  %16 = fmul fast float %6, %6
  %17 = fsub fast float %15, %16                  ; 2 uses
  %18 = fmul fast float %.sroa.087.0.lcssa, %i.ak ; 2 uses
  %19 = fneg fast float %7                        ; 2 uses
  %20 = fmul fast float %.sroa.087.0.lcssa, %19   ; 2 uses
  %21 = fmul fast float %9, %.sroa.087.0.lcssa    ; 2 uses
  %22 = fmul fast float %10, %6
  %23 = fadd fast float %21, %22
  %.neg = fmul fast float %11, %19                ; 2 uses
  %24 = fadd fast float %23, %.neg                ; 2 uses
  %25 = fmul fast float %24, %.sroa.087.0.lcssa
  %26 = fmul fast float %11, %6                   ; 2 uses
  %27 = fmul fast float %7, %14
  %28 = fadd fast float %26, %27
  %29 = fmul fast float %.sroa.087.0.lcssa, %14
  %30 = fmul fast float %10, %7
  %31 = fadd fast float %26, %30
  %32 = fmul fast float %17, %6
  %33 = fmul fast float %14, %6
  %34 = fadd fast float %21, %33
  %35 = fadd fast float %34, %.neg
  %36 = fmul fast float %18, %6
  %37 = fmul fast float %20, %6
  %38 = fmul fast float %18, %7
  %39 = fmul fast float %17, %.sroa.087.0.lcssa
  %i.al = fmul fast float %20, %7
  %40 = fadd fast float %39, %i.al
  %41 = fmul fast float %24, %.sroa.069.0.lcssa
  %42 = fmul fast float %31, %.sroa.974.0.lcssa
  %43 = fadd fast float %41, %42
  %44 = fmul fast float %35, %.sroa.974.0.lcssa
  %45 = fmul fast float %.sroa.069.0.lcssa, %28
  %46 = fsub fast float %44, %45
  %47 = fmul fast float %40, %.sroa.21.0.lcssa
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %50 = fmul fast float %7, %6                    ; 3 uses
  %51 = insertelement <2 x float> %i.aj, float %i.ak, i64 1
  %52 = fmul fast <2 x float> %i.aj, %51          ; 4 uses
  %i.am = extractelement <2 x float> %52, i64 0
  %53 = fsub fast float %15, %i.am                ; 2 uses
  %54 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %55 = fsub fast <2 x float> %52, %54            ; 2 uses
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = insertelement <4 x float> %56, float %50, i64 2
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %59 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %60 = fmul fast <4 x float> %58, %59            ; 3 uses
  %61 = insertelement <4 x float> poison, float %11, i64 0
  %i.an = insertelement <4 x float> %61, float %10, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %53, i64 2
  %62 = insertelement <4 x float> %i.ao, float %12, i64 3
  %63 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %64 = insertelement <2 x float> %63, float %.sroa.087.0.lcssa, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %66 = fmul fast <4 x float> %62, %65            ; 4 uses
  %67 = fsub fast <4 x float> %60, %66            ; 2 uses
  %68 = fadd fast <4 x float> %60, %66
  %69 = shufflevector <4 x float> %67, <4 x float> %68, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %70 = extractelement <4 x float> %67, i64 0
  %71 = fmul fast float %70, %7
  %72 = fadd fast float %25, %71
  %73 = extractelement <2 x float> %55, i64 0     ; 2 uses
  %74 = fmul fast float %73, %i.ak
  %75 = fsub fast float %74, %29                  ; 2 uses
  %76 = fmul fast float %6, %75
  %77 = fsub fast float %72, %76
  %78 = fdiv fast float 1.000000e+00, %77
  %79 = fmul fast float %50, %7
  %80 = fsub fast float %79, %32
  %foldExtExtBinop = fmul fast <2 x float> %52, %i.aj
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %81 = extractelement <4 x float> %60, i64 2
  %i.aq = fadd fast float %81, %i.ap
  %82 = extractelement <4 x float> %66, i64 3
  %83 = fadd fast float %i.aq, %82
  %84 = fmul fast float %73, %6
  %85 = extractelement <4 x float> %66, i64 1
  %86 = fadd fast float %84, %85
  %87 = fmul fast float %53, %.sroa.087.0.lcssa
  %88 = fadd fast float %87, %36
  %89 = fmul fast float %.sroa.087.0.lcssa, %50   ; 2 uses
  %90 = fadd fast float %37, %89
  %91 = fadd fast float %38, %89
  %92 = fmul fast float %88, %.sroa.15.0.lcssa
  %.neg251 = fmul fast float %86, %.sroa.974.0.lcssa
  %.neg252 = fmul fast float %90, %.sroa.21.0.lcssa
  %93 = insertelement <4 x float> poison, float %.sroa.069.0.lcssa, i64 0
  %94 = insertelement <4 x float> %93, float %.sroa.15.0.lcssa, i64 1
  %95 = insertelement <4 x float> %94, float %.sroa.974.0.lcssa, i64 3
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %97 = fmul fast <4 x float> %69, %96
  %.neg254 = fmul fast float %75, %.sroa.069.0.lcssa
  %.neg255 = fmul fast float %91, %.sroa.15.0.lcssa
  %reass.add = fadd fast float %.neg254, %.neg255
  %98 = fmul fast float %80, %.sroa.21.0.lcssa
  %99 = fmul fast float %83, %.sroa.21.0.lcssa
  %reass.add259 = fadd fast float %.neg251, %.neg252
  %100 = insertelement <4 x float> poison, float %92, i64 0
  %101 = insertelement <4 x float> %100, float %46, i64 1
  %102 = insertelement <4 x float> %101, float %43, i64 2
  %103 = insertelement <4 x float> %102, float %47, i64 3
  %i.ar = fadd fast <4 x float> %103, %97         ; 2 uses
  %104 = insertelement <4 x float> poison, float %reass.add259, i64 0
  %105 = insertelement <4 x float> %104, float %99, i64 1
  %106 = insertelement <4 x float> %105, float %98, i64 2
  %107 = insertelement <4 x float> %106, float %reass.add, i64 3 ; 2 uses
  %108 = fsub fast <4 x float> %i.ar, %107
  %109 = fadd fast <4 x float> %i.ar, %107
  %110 = shufflevector <4 x float> %108, <4 x float> %109, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.as = insertelement <4 x float> poison, float %78, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fmul fast <4 x float> %i.at, %110       ; 3 uses
  %i.av = extractelement <4 x float> %i.au, i64 2
  store float %i.av, ptr %3, align 4, !tbaa !9
  %i.aw = extractelement <4 x float> %i.au, i64 1
  %i.ax = fneg fast float %i.aw
  store float %i.ax, ptr %48, align 4, !tbaa !9
  store <4 x float> %i.au, ptr %49, align 4, !tbaa !9
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader321, %.lr.ph
  %.0271 = phi ptr [ %i.br, %.lr.ph ], [ %.0271.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.0243270 = phi ptr [ %i.bs, %.lr.ph ], [ %.0243270.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.sroa.087.0269 = phi float [ %i.bf, %.lr.ph ], [ %.sroa.087.0269.ph, %.lr.ph.preheader321 ]
  %.sroa.069.0266 = phi float [ %i.bl, %.lr.ph ], [ %.sroa.069.0266.ph, %.lr.ph.preheader321 ]
  %.sroa.974.0265 = phi float [ %i.bp, %.lr.ph ], [ %.sroa.974.0265.ph, %.lr.ph.preheader321 ]
  %.0244262 = phi i32 [ %i.bt, %.lr.ph ], [ %.0244262.ph, %.lr.ph.preheader321 ]
  %i.ay = phi <2 x float> [ %i.bg, %.lr.ph ], [ %.ph, %.lr.ph.preheader321 ]
  %i.az = phi <2 x float> [ %i.bq, %.lr.ph ], [ %.ph322, %.lr.ph.preheader321 ]
  %i.ba = load <2 x float>, ptr %.0271, align 4, !tbaa !9 ; 6 uses
  %i.bb = fmul fast <2 x float> %i.ba, %i.ba      ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fadd fast float %i.bc, %.sroa.087.0269
  %i.be = extractelement <2 x float> %i.bb, i64 1
  %i.bf = fadd fast float %i.bd, %i.be            ; 2 uses
  %i.bg = fadd fast <2 x float> %i.ba, %i.ay      ; 2 uses
  %111 = load <2 x float>, ptr %.0243270, align 4, !tbaa !9 ; 4 uses
  %i.bh = fmul fast <2 x float> %111, %i.ba       ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fadd fast float %i.bi, %.sroa.069.0266
  %i.bk = extractelement <2 x float> %i.bh, i64 1
  %i.bl = fadd fast float %i.bj, %i.bk            ; 2 uses
  %shift = shufflevector <2 x float> %111, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop316 = fmul fast <2 x float> %shift, %i.ba
  %i.bm = extractelement <2 x float> %foldExtExtBinop316, i64 0
  %shift318 = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319 = fmul fast <2 x float> %shift318, %111
  %i.bn = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %i.bo = fsub fast float %.sroa.974.0265, %i.bn
  %i.bp = fadd fast float %i.bo, %i.bm            ; 2 uses
  %i.bq = fadd fast <2 x float> %111, %i.az       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0271, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0243270, i64 8
  %i.bt = add nuw nsw i32 %.0244262, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn23invert_affine_transformEPKfPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !9    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = fmul fast float %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !9  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = fmul fast float %i.h, %i.f
  %i.j = fsub fast float %i.d, %i.i               ; 2 uses
  %i.k = fcmp fast une float %i.j, 0.000000e+00
  %i.l = fdiv fast float 1.000000e+00, %i.j
  %i.m = select fast i1 %i.k, float %i.l, float 0.000000e+00 ; 4 uses
  %i.n = fmul fast float %i.m, %i.c               ; 2 uses
  %i.o = fmul fast float %i.m, %i.a               ; 2 uses
  %i.p = fneg fast float %i.f
  %i.q = fmul fast float %i.m, %i.p               ; 2 uses
  %i.r = fneg fast float %i.h
  %i.s = fmul fast float %i.m, %i.r               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = fneg fast float %i.u                     ; 2 uses
  %i.w = fmul fast float %i.n, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !9  ; 2 uses
  %i.z = fmul fast float %i.q, %i.y
  %i.aa = fsub fast float %i.w, %i.z
  %i.ab = fmul fast float %i.s, %i.v
  %i.ac = fmul fast float %i.o, %i.y
  %i.ad = fsub fast float %i.ab, %i.ac
  store float %i.n, ptr %1, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.q, ptr %i.ae, align 4, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.aa, ptr %i.af, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.s, ptr %i.ag, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.o, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ad, ptr %i.ai, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %4, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca i8, align 4                   ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %10 to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %.sroa.0, align 4, !tbaa !16
  %i.a = sub nsw i32 %7, %5
  %i.b = sext i32 %5 to i64                       ; 5 uses
  %i.c = icmp slt i32 %5, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %.preheader624, label %.noexc397

.noexc397:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12 ; 7 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  store i32 0, ptr %i.e, align 4, !tbaa !16
  %i.g = add nsw i64 %i.b, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc397
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.noexc397, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12
          to label %.noexc405 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc405:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b
  store i32 0, ptr %i.j, align 4, !tbaa !16
  br i1 %i.h, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400: ; preds = %.noexc405
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i401 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i401, i1 false), !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400, %.noexc405
  %i.m = load float, ptr %8, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = fmul fast <2 x float> %i.q, splat (float 1.024000e+03) ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat712 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = uitofp nneg <4 x i32> %vec.ind to <4 x float> ; 2 uses
  %i.t = fmul fast <4 x float> %broadcast.splat, %i.s ; 2 uses
  %i.u = fcmp fast oge <4 x float> %i.t, zeroinitializer
  %i.v = select fast <4 x i1> %i.u, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.w = fadd fast <4 x float> %i.v, %i.t
  %i.x = fptosi <4 x float> %i.w to <4 x i32>
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <4 x i32> %i.x, ptr %i.y, align 4, !tbaa !16
  %i.z = fmul fast <4 x float> %broadcast.splat712, %i.s ; 2 uses
  %i.aa = fcmp fast oge <4 x float> %i.z, zeroinitializer
  %i.ab = select fast <4 x i1> %i.aa, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ac = fadd fast <4 x float> %i.ab, %i.z
  %i.ad = fptosi <4 x float> %i.ac to <4 x i32>
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader624.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader624.loopexit:                           ; preds = %scalar.ph, %middle.block
  %i.ag = ptrtoint ptr %i.k to i64
  %i.ah = ptrtoint ptr %i.f to i64
  br label %.preheader624

.preheader624:                                    ; preds = %.preheader624.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0590.0703 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.j, %.preheader624.loopexit ] ; 8 uses
  %.sroa.14.0701 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.preheader624.loopexit ]
  %.sroa.15.0611699 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.preheader624.loopexit ]
  %.sroa.0598.0613697 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.e, %.preheader624.loopexit ] ; 8 uses
  %i.ai = icmp sgt i32 %6, 0
  br i1 %i.ai, label %.lr.ph644, label %._crit_edge645

.lr.ph644:                                        ; preds = %.preheader624
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.an = icmp samesign ugt i32 %5, 7
  %i.ao = add nsw i32 %1, -1                      ; 4 uses
  %i.ap = add nsw i32 %2, -1                      ; 4 uses
  %.not362 = icmp eq i32 %9, -233                 ; 3 uses
  %i.aq = sext i32 %i.a to i64
  %invariant.op = add nsw i64 %i.b, -7
  %wide.trip.count672 = zext nneg i32 %5 to i64
  br label %bb.c

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #13
  resume { ptr, i32 } %i.ar

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = uitofp nneg i32 %i.as to float
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul fast <2 x float> %i.r, %i.aw       ; 2 uses
  %i.ay = fcmp fast oge <2 x float> %i.ax, zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.ba = fadd fast <2 x float> %i.az, %i.ax
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>   ; 2 uses
  %i.bc = extractelement <2 x i32> %i.bb, i64 0
  store i32 %i.bc, ptr %i.au, align 4, !tbaa !16
end_hunk_0
