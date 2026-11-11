Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/convert?download=true
begin_hunk_0_@__ocml_cvtrtn_f16_f64:bb.a
  %i.al = icmp eq i32 %i.f, 1039
  %i.am = select i1 %i.al, i32 %i.o, i32 %i.ak
  %i.an = or i32 %i.n, %i.e
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = select i1 %i.ao, i32 0, i32 %i.am
  %i.aq = or i32 %i.ap, %i.s
  %i.ar = trunc i32 %i.aq to i16
  %i.as = bitcast i16 %i.ar to half
  ret half %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_cvtrtp_f16_f64(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 5 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = and i32 %i.d, 2047                       ; 5 uses
  %i.f = add nsw i32 %i.e, -1008                  ; 2 uses
  %i.g = lshr i32 %i.c, 9
  %i.h = and i32 %i.g, 2046
  %i.i = and i32 %i.c, 1023
  %i.j = trunc i64 %i.a to i32
  %i.k = or i32 %i.i, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = or disjoint i32 %i.h, %i.m               ; 4 uses
  %.not = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not, i32 31744, i32 32256
  %i.p = shl nsw i32 %i.f, 11
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = lshr i32 %i.c, 16
  %i.s = and i32 %i.r, 32768
  %i.t = lshr i32 %i.c, 31                        ; 2 uses
  %i.u = sub nuw nsw i32 31744, %i.t
  %i.v = sub nsw i32 1009, %i.e
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 12) ; 2 uses
  %i.y = or disjoint i32 %i.n, 2048               ; 2 uses
  %i.z = lshr i32 %i.y, %i.x                      ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, %i.x
  %i.ab = icmp ne i32 %i.aa, %i.y
  %i.ac = zext i1 %i.ab to i32
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp samesign ult i32 %i.e, 1009
  %i.af = select i1 %i.ae, i32 %i.ad, i32 %i.q    ; 2 uses
  %i.ag = lshr i32 %i.af, 1
  %i.ah = xor i32 %i.t, 1
  %i.ai = and i32 %i.af, %i.ah
  %i.aj = add nuw i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i32 %i.e, 1038
  %i.al = select i1 %i.ak, i32 %i.u, i32 %i.aj
  %i.am = icmp eq i32 %i.f, 1039
  %i.an = select i1 %i.am, i32 %i.o, i32 %i.al
  %i.ao = or i32 %i.n, %i.e
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = select i1 %i.ap, i32 0, i32 %i.an
  %i.ar = or i32 %i.aq, %i.s
  %i.as = trunc i32 %i.ar to i16
  %i.at = bitcast i16 %i.as to half
  ret half %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_cvtrtz_f16_f64(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 4 uses
  %i.d = lshr i32 %i.c, 9
  %i.e = and i32 %i.d, 2046                       ; 2 uses
  %i.f = and i32 %i.c, 1023
  %i.g = trunc i64 %i.a to i32
  %i.h = or i32 %i.f, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = or disjoint i32 %i.e, %i.j
  %i.l = lshr i32 %i.c, 20                        ; 2 uses
  %i.m = and i32 %i.l, 2047                       ; 4 uses
  %i.n = add nsw i32 %i.m, -1008                  ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %i.o = select i1 %.not, i32 31744, i32 32256
  %i.p = lshr exact i32 %i.e, 1                   ; 2 uses
  %i.q = or disjoint i32 %i.p, 1024
  %i.r = sub nsw i32 17, %i.l
  %i.s = and i32 %i.r, 31
  %i.t = lshr i32 %i.q, %i.s
  %i.u = shl nsw i32 %i.n, 10
  %i.v = or disjoint i32 %i.u, %i.p
  %i.w = icmp samesign ugt i32 %i.m, 1038
  %i.x = select i1 %i.w, i32 31743, i32 %i.v
  %i.y = icmp eq i32 %i.n, 1039
  %i.z = select i1 %i.y, i32 %i.o, i32 %i.x
  %i.aa = icmp samesign ult i32 %i.m, 1009
  %i.ab = select i1 %i.aa, i32 %i.t, i32 %i.z
  %i.ac = icmp samesign ult i32 %i.m, 998
  %i.ad = select i1 %i.ac, i32 0, i32 %i.ab
  %i.ae = lshr i32 %i.c, 16
  %i.af = and i32 %i.ae, 32768
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = bitcast i16 %i.ah to half
  ret half %i.ai
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtn_f32_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %0 to float               ; 4 uses
  %i.b = tail call float @__ocml_pred_f32(float noundef %i.a) #5
  %i.c = fpext float %i.a to double
  %i.d = fcmp uge double %0, %i.c
  %i.e = tail call float @llvm.canonicalize.f32(float 1.401300e-45)
  %i.f = tail call i1 @llvm.is.fpclass.f32(float %i.e, /* (pzero) */ i32 64)
  %i.g = fcmp oeq float %i.a, 0.000000e+00
  %i.h = and i1 %i.f, %i.g
  %i.i = or i1 %i.h, %i.d
  %.0 = select i1 %i.i, float %i.a, float %i.b
  ret float %.0
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_pred_f32(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.canonicalize.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #2

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtp_f32_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %0 to float               ; 4 uses
  %i.b = tail call float @__ocml_succ_f32(float noundef %i.a) #5
  %i.c = fpext float %i.a to double
  %i.d = fcmp ule double %0, %i.c
  %i.e = tail call float @llvm.canonicalize.f32(float 1.401300e-45)
  %i.f = tail call i1 @llvm.is.fpclass.f32(float %i.e, /* (pzero) */ i32 64)
  %i.g = fcmp oeq float %i.a, 0.000000e+00
  %i.h = and i1 %i.f, %i.g
  %i.i = or i1 %i.h, %i.d
  %.0 = select i1 %i.i, float %i.a, float %i.b
  ret float %.0
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_succ_f32(float noundef) local_unnamed_addr #1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtz_f32_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fptrunc double %0 to float               ; 3 uses
  %i.c = tail call float @llvm.fabs.f32(float %i.b)
  %i.d = tail call float @__ocml_nextafter_f32(float noundef %i.b, float noundef 0.000000e+00) #5
  %i.e = fpext float %i.c to double
  %i.f = fcmp olt double %i.a, %i.e
  %i.g = select i1 %i.f, float %i.d, float %i.b
  ret float %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_nextafter_f32(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtn_f32_s32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 2147483583)
  %i.b = sitofp i32 %i.a to float                 ; 3 uses
  %i.c = tail call float @__ocml_pred_f32(float noundef %i.b) #5
  %i.d = fptosi float %i.b to i32
  %i.e = icmp slt i32 %0, %i.d
  %i.f = select i1 %i.e, float %i.c, float %i.b
  ret float %i.f
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtp_f32_s32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 2147483583)
  %i.b = sitofp i32 %i.a to float                 ; 3 uses
  %i.c = tail call float @__ocml_succ_f32(float noundef %i.b) #5
  %i.d = fptosi float %i.b to i32
  %i.e = icmp sgt i32 %0, %i.d
  %i.f = select i1 %i.e, float %i.c, float %i.b
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtz_f32_s32(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i32 %0, 31                          ; 3 uses
  %i.b = add nsw i32 %i.a, %0
  %i.c = xor i32 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i32 %0, 0                        ; 2 uses
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true) ; 2 uses
  %i.f = select i1 %i.d, i32 0, i32 %i.e
  %i.g = shl i32 %i.c, %i.f
  %i.h = shl nuw nsw i32 %i.e, 23
  %i.i = sub nuw nsw i32 1325400064, %i.h
  %i.j = select i1 %i.d, i32 0, i32 %i.i
  %i.k = lshr i32 %i.g, 8
  %i.l = and i32 %i.k, 8388607
  %i.m = and i32 %i.a, -2147483648
  %i.n = or disjoint i32 %i.j, %i.m
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = bitcast i32 %i.o to float
  ret float %i.p
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtn_f32_u32(i32 noundef %0) #3 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false) ; 2 uses
  %.not = icmp eq i32 %0, 0
  %i.b = and i32 %i.a, 31
  %i.c = shl i32 %0, %i.b
  %i.d = shl nuw nsw i32 %i.a, 23
  %i.e = sub nuw nsw i32 1325400064, %i.d
  %i.f = select i1 %.not, i32 0, i32 %i.e
  %i.g = lshr i32 %i.c, 8
  %i.h = and i32 %i.g, 8388607
  %i.i = or disjoint i32 %i.h, %i.f
  %i.j = bitcast i32 %i.i to float
  ret float %i.j
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtp_f32_u32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %0, i32 -129)
  %i.b = uitofp i32 %i.a to float                 ; 3 uses
  %i.c = tail call float @__ocml_succ_f32(float noundef %i.b) #5
  %i.d = fptoui float %i.b to i32
  %i.e = icmp ugt i32 %0, %i.d
  %i.f = select i1 %i.e, float %i.c, float %i.b
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtn_f32_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 4 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.g = shl i64 %i.c, %1                         ; 2 uses
  %i.h = shl nuw nsw i32 %i.f, 23
  %i.i = sub nuw nsw i32 1593835520, %i.h
  %i.j = select i1 %i.d, i32 0, i32 %i.i
  %i.k = lshr i64 %i.g, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 8388607
  %i.n = and i64 %i.a, 1099511627775
  %i.o = and i64 %i.n, %i.g
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = trunc nsw i64 %i.a to i32
  %i.s = and i32 %i.r, -2147483648
  %i.t = or disjoint i32 %i.j, %i.s
  %i.u = or disjoint i32 %i.t, %i.m
  %i.v = add nuw nsw i32 %i.u, %i.q
  %i.w = bitcast i32 %i.v to float
  ret float %i.w
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtp_f32_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 3 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.g = shl i64 %i.c, %1                         ; 2 uses
  %i.h = and i64 %i.g, 1099511627775
  %i.i = shl nuw nsw i32 %i.f, 23
  %i.j = sub nuw nsw i32 1593835520, %i.i
  %i.k = select i1 %i.d, i32 0, i32 %i.j
  %i.l = lshr i64 %i.g, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 8388607
  %isneg = icmp sgt i64 %0, -1
  %i.o = icmp ne i64 %i.h, 0
  %i.p = select i1 %isneg, i1 %i.o, i1 false
  %i.q = zext i1 %i.p to i32
  %i.r = trunc nsw i64 %i.a to i32
  %i.s = and i32 %i.r, -2147483648
  %i.t = or disjoint i32 %i.k, %i.s
  %i.u = or disjoint i32 %i.t, %i.n
  %i.v = add nuw nsw i32 %i.u, %i.q
  %i.w = bitcast i32 %i.v to float
  ret float %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtz_f32_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 3 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.g = shl i64 %i.c, %1
  %i.h = shl nuw nsw i32 %i.f, 23
  %i.i = sub nuw nsw i32 1593835520, %i.h
  %i.j = select i1 %i.d, i32 0, i32 %i.i
  %i.k = lshr i64 %i.g, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 8388607
  %i.n = trunc nsw i64 %i.a to i32
  %i.o = and i32 %i.n, -2147483648
  %i.p = or disjoint i32 %i.j, %i.o
  %i.q = or disjoint i32 %i.p, %i.m
  %i.r = bitcast i32 %i.q to float
  ret float %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtn_f32_u64(i64 noundef %0) #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false) ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %.not = icmp eq i64 %0, 0
  %i.c = and i64 %i.a, 63
  %i.d = shl i64 %0, %i.c
  %i.e = shl nuw nsw i32 %i.b, 23
  %i.f = sub nuw nsw i32 1593835520, %i.e
  %i.g = select i1 %.not, i32 0, i32 %i.f
  %i.h = lshr i64 %i.d, 40
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 8388607
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = bitcast i32 %i.k to float
  ret float %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_cvtrtp_f32_u64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false) ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %.not = icmp eq i64 %0, 0
  %i.c = and i64 %i.a, 63
  %i.d = shl i64 %0, %i.c                         ; 2 uses
  %i.e = and i64 %i.d, 1099511627775
  %i.f = shl nuw nsw i32 %i.b, 23
  %i.g = sub nuw nsw i32 1593835520, %i.f
  %i.h = select i1 %.not, i32 0, i32 %i.g
  %i.i = lshr i64 %i.d, 40
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = and i32 %i.j, 8388607
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = icmp ne i64 %i.e, 0
  %i.n = zext i1 %i.m to i32
  %i.o = add nuw nsw i32 %i.l, %i.n
  %i.p = bitcast i32 %i.o to float
  ret float %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_cvtrtn_f64_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 4 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.f = shl i64 %i.c, %1                         ; 2 uses
  %2 = shl nuw nsw i64 %i.e, 52
  %3 = sub nuw nsw i64 4890909195324358656, %2
  %i.g = select i1 %i.d, i64 0, i64 %3
  %i.h = lshr i64 %i.f, 11
  %i.i = and i64 %i.h, 4503599627370495
  %i.j = and i64 %i.a, 2047
  %i.k = and i64 %i.j, %i.f
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = and i64 %i.a, -9223372036854775808
  %i.o = or disjoint i64 %i.g, %i.n
  %i.p = or disjoint i64 %i.o, %i.i
  %i.q = add nuw nsw i64 %i.p, %i.m
  %i.r = bitcast i64 %i.q to double
  ret double %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_cvtrtp_f64_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 3 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.f = shl i64 %i.c, %1                         ; 2 uses
  %i.g = and i64 %i.f, 2047
  %2 = shl nuw nsw i64 %i.e, 52
  %3 = sub nuw nsw i64 4890909195324358656, %2
  %i.h = select i1 %i.d, i64 0, i64 %3
  %i.i = lshr i64 %i.f, 11
  %i.j = and i64 %i.i, 4503599627370495
  %isneg = icmp sgt i64 %0, -1
  %i.k = icmp ne i64 %i.g, 0
  %i.l = select i1 %isneg, i1 %i.k, i1 false
  %i.m = zext i1 %i.l to i64
  %i.n = and i64 %i.a, -9223372036854775808
  %i.o = or disjoint i64 %i.h, %i.n
  %i.p = or disjoint i64 %i.o, %i.j
  %i.q = add nuw nsw i64 %i.p, %i.m
  %i.r = bitcast i64 %i.q to double
  ret double %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_cvtrtz_f64_s64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i64 %0, 63                          ; 3 uses
  %i.b = add nsw i64 %i.a, %0
  %i.c = xor i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp eq i64 %0, 0                        ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 2 uses
  %1 = select i1 %i.d, i64 0, i64 %i.e
  %i.f = shl i64 %i.c, %1
  %2 = shl nuw nsw i64 %i.e, 52
  %3 = sub nuw nsw i64 4890909195324358656, %2
  %i.g = select i1 %i.d, i64 0, i64 %3
  %i.h = lshr i64 %i.f, 11
  %i.i = and i64 %i.h, 4503599627370495
  %i.j = and i64 %i.a, -9223372036854775808
  %i.k = or disjoint i64 %i.g, %i.j
  %i.l = or disjoint i64 %i.k, %i.i
  %i.m = bitcast i64 %i.l to double
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_cvtrtn_f64_u64(i64 noundef %0) #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false) ; 2 uses
  %.not = icmp eq i64 %0, 0
  %i.b = and i64 %i.a, 63
  %i.c = shl i64 %0, %i.b
  %i.d = shl nuw nsw i64 %i.a, 52
  %i.e = sub nuw nsw i64 4890909195324358656, %i.d
  %i.f = select i1 %.not, i64 0, i64 %i.e
  %i.g = lshr i64 %i.c, 11
  %i.h = and i64 %i.g, 4503599627370495
  %i.i = or disjoint i64 %i.h, %i.f
  %i.j = bitcast i64 %i.i to double
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_cvtrtp_f64_u64(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false) ; 2 uses
  %.not = icmp eq i64 %0, 0
  %i.b = and i64 %i.a, 63
  %i.c = shl i64 %0, %i.b                         ; 2 uses
  %i.d = and i64 %i.c, 2047
  %i.e = shl nuw nsw i64 %i.a, 52
  %i.f = sub nuw nsw i64 4890909195324358656, %i.e
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %i.h = lshr i64 %i.c, 11
  %i.i = and i64 %i.h, 4503599627370495
  %i.j = or disjoint i64 %i.i, %i.g
  %i.k = icmp ne i64 %i.d, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.j, %i.l
  %i.n = bitcast i64 %i.m to double
  ret double %i.n
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { convergent nounwind willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
end_hunk_0
