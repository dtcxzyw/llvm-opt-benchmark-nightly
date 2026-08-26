Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pnginput?download=true
inline.NumInlined: 3330
inline.NumDeleted: 1008
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN11OpenImageIO4v3_17PNG_pvt18read_next_scanlineB5cxx11ERP14png_struct_defPv:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i6, %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInput14associateAlphaItEEvPT_iiibf(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, float noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !82
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %or.cond = select i1 %5, i1 %i.c, i1 false
  br i1 %or.cond, label %.preheader94, label %bb.h

.preheader94:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph117, label %.loopexit95

.lr.ph117:                                        ; preds = %.preheader94
  %i.e = sext i32 %4 to i64
  %i.f = icmp sgt i32 %3, 0
  %i.g = sext i32 %3 to i64
  br i1 %i.f, label %.lr.ph117.split.us.preheader, label %.loopexit95

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.h = zext i32 %4 to i64
  %wide.trip.count134 = zext nneg i32 %3 to i64
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %..loopexit_crit_edge.us
  %.054115.us = phi ptr [ %i.ak, %..loopexit_crit_edge.us ], [ %1, %.lr.ph117.split.us.preheader ] ; 3 uses
  %.057114.us = phi i32 [ %i.aj, %..loopexit_crit_edge.us ], [ 0, %.lr.ph117.split.us.preheader ]
  %i.i = getelementptr inbounds [2 x i8], ptr %.054115.us, i64 %i.e
  %i.j = load i16, ptr %i.i, align 2, !tbaa !121
  %i.k = uitofp i16 %i.j to float
  %i.l = fmul nnan float %i.k, f0x37800080        ; 2 uses
  %i.m = fcmp une float %i.l, 1.000000e+00
  br i1 %i.m, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph117.split.us, %bb.g
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.g ], [ 0, %.lr.ph117.split.us ] ; 3 uses
  %.not65.us = icmp eq i64 %indvars.iv131, %i.h
  br i1 %.not65.us, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.054115.us, i64 %indvars.iv131 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !121
  %i.p = uitofp i16 %i.o to float
  %i.q = fmul nnan float %i.p, f0x37800080        ; 3 uses
  %i.r = fcmp ugt float %i.q, 4.045000e-02
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fmul nnan float %i.q, f0x3D9E8391
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

bb.d:                                             ; preds = %bb.b
  %i.t = fadd nnan float %i.q, 5.500000e-02
  %i.u = fmul nnan float %i.t, f0x3F72A76F
  %i.v = tail call float @llvm.pow.f32(float %i.u, float 2.400000e+00)
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us:  ; preds = %bb.d, %bb.c
  %i.w = phi float [ %i.s, %bb.c ], [ %i.v, %bb.d ]
  %i.x = fmul float %i.l, %i.w                    ; 3 uses
  %i.y = fcmp ugt float %i.x, 3.130800e-03
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.z = fmul nnan float %i.x, 1.292000e+01
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.aa = tail call float @llvm.pow.f32(float %i.x, float f0x3ED55555)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us:  ; preds = %bb.f, %bb.e
  %i.ac = phi float [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = fmul float %i.ac, 6.553500e+04          ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, float -5.000000e-01, float 5.000000e-01
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %.inv.i.i.i.us = fcmp oge float %i.ag, 0.000000e+00
  %.0.i.i.i.i.us = select i1 %.inv.i.i.i.us, float %i.ag, float 0.000000e+00 ; 2 uses
  %i.ah = fcmp ogt float %.0.i.i.i.i.us, 6.553500e+04
  %.1.i.i.i.i.us = select i1 %i.ah, float 6.553500e+04, float %.0.i.i.i.i.us
  %i.ai = fptoui float %.1.i.i.i.i.us to i16
  store i16 %i.ai, ptr %i.n, align 2, !tbaa !121
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us, %.preheader.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !157

..loopexit_crit_edge.us:                          ; preds = %bb.g, %.lr.ph117.split.us
  %i.aj = add nuw nsw i32 %.057114.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.054115.us, i64 %i.g
  %exitcond136.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond136.not, label %.loopexit95, label %.lr.ph117.split.us, !llvm.loop !158

bb.h:                                             ; preds = %bb.a
  %i.al = fcmp une float %6, 1.000000e+00
  %or.cond70 = select i1 %i.al, i1 %i.c, i1 false
  br i1 %or.cond70, label %bb.k, label %.preheader101

.preheader101:                                    ; preds = %bb.h
  %i.am = icmp sgt i32 %2, 0
  br i1 %i.am, label %.lr.ph107, label %.loopexit95

.lr.ph107:                                        ; preds = %.preheader101
  %i.an = sext i32 %4 to i64
  %i.ao = icmp sgt i32 %3, 0
  %i.ap = sext i32 %3 to i64
  br i1 %i.ao, label %.lr.ph107.split.us.preheader, label %.loopexit95

.lr.ph107.split.us.preheader:                     ; preds = %.lr.ph107
  %i.aq = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph107.split.us

.lr.ph107.split.us:                               ; preds = %.lr.ph107.split.us.preheader, %..loopexit100_crit_edge.us
  %.2105.us = phi ptr [ %i.bg, %..loopexit100_crit_edge.us ], [ %1, %.lr.ph107.split.us.preheader ] ; 3 uses
  %.055104.us = phi i32 [ %i.bf, %..loopexit100_crit_edge.us ], [ 0, %.lr.ph107.split.us.preheader ]
  %i.ar = getelementptr inbounds [2 x i8], ptr %.2105.us, i64 %i.an
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !121
  %i.at = uitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x37800080      ; 2 uses
  %i.av = fcmp une float %i.au, 1.000000e+00
  br i1 %i.av, label %.preheader99.us, label %..loopexit100_crit_edge.us

.preheader99.us:                                  ; preds = %.lr.ph107.split.us, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph107.split.us ] ; 3 uses
  %.not.us = icmp eq i64 %indvars.iv, %i.aq
  br i1 %.not.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader99.us
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.2105.us, i64 %indvars.iv ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !121
  %i.ay = uitofp i16 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x37800080
  %i.ba = fmul float %i.au, %i.az
  %i.bb = fmul float %i.ba, 6.553500e+04
  %i.bc = fadd float %i.bb, 5.000000e-01          ; 2 uses
  %i.bd = fcmp ogt float %i.bc, 6.553500e+04
  %.1.i.i.i.i76.us = select i1 %i.bd, float 6.553500e+04, float %i.bc
  %i.be = fptoui float %.1.i.i.i.i76.us to i16
  store i16 %i.be, ptr %i.aw, align 2, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader99.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit100_crit_edge.us, label %.preheader99.us, !llvm.loop !159

..loopexit100_crit_edge.us:                       ; preds = %bb.j, %.lr.ph107.split.us
  %i.bf = add nuw nsw i32 %.055104.us, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.2105.us, i64 %i.ap
  %exitcond124.not = icmp eq i32 %i.bf, %2
  br i1 %exitcond124.not, label %.loopexit95, label %.lr.ph107.split.us, !llvm.loop !160

bb.k:                                             ; preds = %bb.h
  %i.bh = fdiv float 1.000000e+00, %6
  %i.bi = icmp sgt i32 %2, 0
  br i1 %i.bi, label %.lr.ph112, label %.loopexit95

.lr.ph112:                                        ; preds = %bb.k
  %i.bj = sext i32 %4 to i64
  %i.bk = icmp sgt i32 %3, 0
  %i.bl = sext i32 %3 to i64
  br i1 %i.bk, label %.lr.ph112.split.us.preheader, label %.loopexit95

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %i.bm = zext i32 %4 to i64
  %wide.trip.count128 = zext nneg i32 %3 to i64
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %..loopexit97_crit_edge.us
  %.1110.us = phi ptr [ %i.ce, %..loopexit97_crit_edge.us ], [ %1, %.lr.ph112.split.us.preheader ] ; 3 uses
  %.058109.us = phi i32 [ %i.cd, %..loopexit97_crit_edge.us ], [ 0, %.lr.ph112.split.us.preheader ]
  %i.bn = getelementptr inbounds [2 x i8], ptr %.1110.us, i64 %i.bj
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !121
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x37800080      ; 2 uses
  %i.br = fcmp une float %i.bq, 1.000000e+00
  br i1 %i.br, label %.preheader96.us, label %..loopexit97_crit_edge.us

.preheader96.us:                                  ; preds = %.lr.ph112.split.us, %bb.m
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.m ], [ 0, %.lr.ph112.split.us ] ; 3 uses
  %.not64.us = icmp eq i64 %indvars.iv125, %i.bm
  br i1 %.not64.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader96.us
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.1110.us, i64 %indvars.iv125 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !121
  %i.bu = uitofp i16 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x37800080
  %i.bw = tail call float @llvm.pow.f32(float %i.bv, float %6)
  %i.bx = fmul float %i.bq, %i.bw
  %i.by = tail call float @llvm.pow.f32(float %i.bx, float %i.bh)
  %i.bz = fmul float %i.by, 6.553500e+04
  %i.ca = fadd float %i.bz, 5.000000e-01          ; 2 uses
  %.inv.i.i.i71.us = fcmp oge float %i.ca, 0.000000e+00
  %.0.i.i.i.i72.us = select i1 %.inv.i.i.i71.us, float %i.ca, float 0.000000e+00 ; 2 uses
  %i.cb = fcmp ogt float %.0.i.i.i.i72.us, 6.553500e+04
  %.1.i.i.i.i73.us = select i1 %i.cb, float 6.553500e+04, float %.0.i.i.i.i72.us
  %i.cc = fptoui float %.1.i.i.i.i73.us to i16
  store i16 %i.cc, ptr %i.bs, align 2, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader96.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit97_crit_edge.us, label %.preheader96.us, !llvm.loop !161

..loopexit97_crit_edge.us:                        ; preds = %bb.m, %.lr.ph112.split.us
  %i.cd = add nuw nsw i32 %.058109.us, 1          ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.1110.us, i64 %i.bl
  %exitcond130.not = icmp eq i32 %i.cd, %2
  br i1 %exitcond130.not, label %.loopexit95, label %.lr.ph112.split.us, !llvm.loop !162

.loopexit95:                                      ; preds = %..loopexit100_crit_edge.us, %..loopexit97_crit_edge.us, %..loopexit_crit_edge.us, %.lr.ph112, %.lr.ph107, %.lr.ph117, %.preheader101, %bb.k, %.preheader94
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInput14associateAlphaIhEEvPT_iiibf(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, float noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !82
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %or.cond = select i1 %5, i1 %i.c, i1 false
  br i1 %or.cond, label %.preheader94, label %bb.h

.preheader94:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph117, label %.loopexit95

.lr.ph117:                                        ; preds = %.preheader94
  %i.e = sext i32 %4 to i64
  %i.f = icmp sgt i32 %3, 0
  %i.g = sext i32 %3 to i64
  br i1 %i.f, label %.lr.ph117.split.us.preheader, label %.loopexit95

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.h = zext i32 %4 to i64
  %wide.trip.count134 = zext nneg i32 %3 to i64
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %..loopexit_crit_edge.us
  %.054115.us = phi ptr [ %i.ak, %..loopexit_crit_edge.us ], [ %1, %.lr.ph117.split.us.preheader ] ; 3 uses
  %.057114.us = phi i32 [ %i.aj, %..loopexit_crit_edge.us ], [ 0, %.lr.ph117.split.us.preheader ]
  %i.i = getelementptr inbounds i8, ptr %.054115.us, i64 %i.e
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = uitofp i8 %i.j to float
  %i.l = fmul nnan float %i.k, f0x3B808081        ; 2 uses
  %i.m = fcmp une float %i.l, 1.000000e+00
  br i1 %i.m, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph117.split.us, %bb.g
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.g ], [ 0, %.lr.ph117.split.us ] ; 3 uses
  %.not65.us = icmp eq i64 %indvars.iv131, %i.h
  br i1 %.not65.us, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.n = getelementptr inbounds nuw i8, ptr %.054115.us, i64 %indvars.iv131 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = uitofp i8 %i.o to float
  %i.q = fmul nnan float %i.p, f0x3B808081        ; 3 uses
  %i.r = fcmp ugt float %i.q, 4.045000e-02
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fmul nnan float %i.q, f0x3D9E8391
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

bb.d:                                             ; preds = %bb.b
  %i.t = fadd nnan float %i.q, 5.500000e-02
  %i.u = fmul nnan float %i.t, f0x3F72A76F
  %i.v = tail call float @llvm.pow.f32(float %i.u, float 2.400000e+00)
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us:  ; preds = %bb.d, %bb.c
  %i.w = phi float [ %i.s, %bb.c ], [ %i.v, %bb.d ]
  %i.x = fmul float %i.l, %i.w                    ; 3 uses
  %i.y = fcmp ugt float %i.x, 3.130800e-03
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.z = fmul nnan float %i.x, 1.292000e+01
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.aa = tail call float @llvm.pow.f32(float %i.x, float f0x3ED55555)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us:  ; preds = %bb.f, %bb.e
  %i.ac = phi float [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = fmul float %i.ac, 2.550000e+02          ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, float -5.000000e-01, float 5.000000e-01
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %.inv.i.i.i.us = fcmp oge float %i.ag, 0.000000e+00
  %.0.i.i.i.i.us = select i1 %.inv.i.i.i.us, float %i.ag, float 0.000000e+00 ; 2 uses
  %i.ah = fcmp ogt float %.0.i.i.i.i.us, 2.550000e+02
  %.1.i.i.i.i.us = select i1 %i.ah, float 2.550000e+02, float %.0.i.i.i.i.us
  %i.ai = fptoui float %.1.i.i.i.i.us to i8
  store i8 %i.ai, ptr %i.n, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us, %.preheader.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !163

..loopexit_crit_edge.us:                          ; preds = %bb.g, %.lr.ph117.split.us
  %i.aj = add nuw nsw i32 %.057114.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.054115.us, i64 %i.g
  %exitcond136.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond136.not, label %.loopexit95, label %.lr.ph117.split.us, !llvm.loop !164

bb.h:                                             ; preds = %bb.a
  %i.al = fcmp une float %6, 1.000000e+00
  %or.cond70 = select i1 %i.al, i1 %i.c, i1 false
  br i1 %or.cond70, label %bb.k, label %.preheader101

.preheader101:                                    ; preds = %bb.h
  %i.am = icmp sgt i32 %2, 0
  br i1 %i.am, label %.lr.ph107, label %.loopexit95

.lr.ph107:                                        ; preds = %.preheader101
  %i.an = sext i32 %4 to i64
  %i.ao = icmp sgt i32 %3, 0
  %i.ap = sext i32 %3 to i64
  br i1 %i.ao, label %.lr.ph107.split.us.preheader, label %.loopexit95

.lr.ph107.split.us.preheader:                     ; preds = %.lr.ph107
  %i.aq = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph107.split.us

.lr.ph107.split.us:                               ; preds = %.lr.ph107.split.us.preheader, %..loopexit100_crit_edge.us
  %.2105.us = phi ptr [ %i.bg, %..loopexit100_crit_edge.us ], [ %1, %.lr.ph107.split.us.preheader ] ; 3 uses
  %.055104.us = phi i32 [ %i.bf, %..loopexit100_crit_edge.us ], [ 0, %.lr.ph107.split.us.preheader ]
  %i.ar = getelementptr inbounds i8, ptr %.2105.us, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081      ; 2 uses
  %i.av = fcmp une float %i.au, 1.000000e+00
  br i1 %i.av, label %.preheader99.us, label %..loopexit100_crit_edge.us

.preheader99.us:                                  ; preds = %.lr.ph107.split.us, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph107.split.us ] ; 3 uses
  %.not.us = icmp eq i64 %indvars.iv, %i.aq
  br i1 %.not.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader99.us
  %i.aw = getelementptr inbounds nuw i8, ptr %.2105.us, i64 %indvars.iv ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = fmul float %i.au, %i.az
  %i.bb = fmul float %i.ba, 2.550000e+02
  %i.bc = fadd float %i.bb, 5.000000e-01          ; 2 uses
  %i.bd = fcmp ogt float %i.bc, 2.550000e+02
  %.1.i.i.i.i76.us = select i1 %i.bd, float 2.550000e+02, float %i.bc
  %i.be = fptoui float %.1.i.i.i.i76.us to i8
  store i8 %i.be, ptr %i.aw, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader99.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit100_crit_edge.us, label %.preheader99.us, !llvm.loop !165

..loopexit100_crit_edge.us:                       ; preds = %bb.j, %.lr.ph107.split.us
  %i.bf = add nuw nsw i32 %.055104.us, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.2105.us, i64 %i.ap
  %exitcond124.not = icmp eq i32 %i.bf, %2
  br i1 %exitcond124.not, label %.loopexit95, label %.lr.ph107.split.us, !llvm.loop !166

bb.k:                                             ; preds = %bb.h
  %i.bh = fdiv float 1.000000e+00, %6
  %i.bi = icmp sgt i32 %2, 0
  br i1 %i.bi, label %.lr.ph112, label %.loopexit95

.lr.ph112:                                        ; preds = %bb.k
  %i.bj = sext i32 %4 to i64
  %i.bk = icmp sgt i32 %3, 0
  %i.bl = sext i32 %3 to i64
  br i1 %i.bk, label %.lr.ph112.split.us.preheader, label %.loopexit95

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %i.bm = zext i32 %4 to i64
  %wide.trip.count128 = zext nneg i32 %3 to i64
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %..loopexit97_crit_edge.us
  %.1110.us = phi ptr [ %i.ce, %..loopexit97_crit_edge.us ], [ %1, %.lr.ph112.split.us.preheader ] ; 3 uses
  %.058109.us = phi i32 [ %i.cd, %..loopexit97_crit_edge.us ], [ 0, %.lr.ph112.split.us.preheader ]
  %i.bn = getelementptr inbounds i8, ptr %.1110.us, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x3B808081      ; 2 uses
  %i.br = fcmp une float %i.bq, 1.000000e+00
  br i1 %i.br, label %.preheader96.us, label %..loopexit97_crit_edge.us

.preheader96.us:                                  ; preds = %.lr.ph112.split.us, %bb.m
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.m ], [ 0, %.lr.ph112.split.us ] ; 3 uses
  %.not64.us = icmp eq i64 %indvars.iv125, %i.bm
  br i1 %.not64.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader96.us
  %i.bs = getelementptr inbounds nuw i8, ptr %.1110.us, i64 %indvars.iv125 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x3B808081
  %i.bw = tail call float @llvm.pow.f32(float %i.bv, float %6)
  %i.bx = fmul float %i.bq, %i.bw
  %i.by = tail call float @llvm.pow.f32(float %i.bx, float %i.bh)
  %i.bz = fmul float %i.by, 2.550000e+02
  %i.ca = fadd float %i.bz, 5.000000e-01          ; 2 uses
  %.inv.i.i.i71.us = fcmp oge float %i.ca, 0.000000e+00
  %.0.i.i.i.i72.us = select i1 %.inv.i.i.i71.us, float %i.ca, float 0.000000e+00 ; 2 uses
  %i.cb = fcmp ogt float %.0.i.i.i.i72.us, 2.550000e+02
  %.1.i.i.i.i73.us = select i1 %i.cb, float 2.550000e+02, float %.0.i.i.i.i72.us
  %i.cc = fptoui float %.1.i.i.i.i73.us to i8
  store i8 %i.cc, ptr %i.bs, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader96.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit97_crit_edge.us, label %.preheader96.us, !llvm.loop !167

..loopexit97_crit_edge.us:                        ; preds = %bb.m, %.lr.ph112.split.us
  %i.cd = add nuw nsw i32 %.058109.us, 1          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1110.us, i64 %i.bl
  %exitcond130.not = icmp eq i32 %i.cd, %2
  br i1 %exitcond130.not, label %.loopexit95, label %.lr.ph112.split.us, !llvm.loop !168

.loopexit95:                                      ; preds = %..loopexit100_crit_edge.us, %..loopexit97_crit_edge.us, %..loopexit_crit_edge.us, %.lr.ph112, %.lr.ph107, %.lr.ph117, %.preheader101, %bb.k, %.preheader94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInputD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNGInput5closeEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInputD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18PNGInputD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) #30
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_18PNGInput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_18PNGInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef dead_on_return %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit [
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = xor i32 %i.d, 1919971177
  %i.f = getelementptr i8, ptr %i.a, i64 3
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 2037935986
  %i.i = or i32 %i.e, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not.i.i = icmp eq i32 %i.k, 0
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 1
  %i.m = icmp ne i32 %i.l, 1718188133
  %i.n = zext i1 %i.m to i32
  %.not.i.i3 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  %i.o = load i32, ptr %i.a, align 1
  %i.p = icmp ne i32 %i.o, 1885563235
  %i.q = zext i1 %i.p to i32
  %.not.i.i8 = icmp eq i32 %i.q, 0
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  %.shrunk = phi i1 [ %.not.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ %.not.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6 ], [ false, %bb.a ]
  %i.r = zext i1 %.shrunk to i32
  ret i32 %i.r
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput4specEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput16read_native_tileEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) unnamed_addr #1

end_hunk_0
