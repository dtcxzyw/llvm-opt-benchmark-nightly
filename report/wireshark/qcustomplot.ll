Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN28QCPSelectionDecoratorBracketD0Ev:bb.a

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracket13setBracketPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) #49 ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = tail call noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 8 dereferenceable(8) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketWidthEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((128, 132)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket16setBracketHeightEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((132, 136)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 132
  store i32 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket15setBracketStyleENS_12BracketStyleE(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((136, 140)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket16setTangentToDataEb(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((140, 141)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 140
  store i8 %i.a, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN28QCPSelectionDecoratorBracket17setTangentAverageEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(148) initializes((144, 148)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.a = getelementptr i8, ptr %0, i64 144
  store i32 %spec.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK28QCPSelectionDecoratorBracket11drawBracketEP10QCPPainteri(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(148) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QLine, align 16              ; 4 uses
  %6 = alloca %class.QLine, align 16              ; 4 uses
  %7 = alloca %class.QLine, align 16              ; 4 uses
  %8 = alloca %class.QLine, align 8               ; 5 uses
  %9 = alloca %class.QLine, align 8               ; 5 uses
  %10 = alloca %class.QLineF, align 8             ; 7 uses
  %11 = alloca %class.QLineF, align 8             ; 7 uses
  %12 = alloca %class.QLineF, align 8             ; 4 uses
  %13 = alloca %class.QRectF, align 16            ; 5 uses
  %14 = alloca %class.QRectF, align 16            ; 5 uses
  %15 = alloca %class.QLineF, align 8             ; 4 uses
  %16 = alloca %class.QLineF, align 16            ; 5 uses
  %17 = alloca %class.QDebug, align 8             ; 12 uses
  %18 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.c = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i32 %i.d, %2
  %i.f = sitofp i32 %i.e to double                ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 132        ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i32 0, %i.h
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01      ; 4 uses
  store double %i.f, ptr %10, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double 0.000000e+00, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24
  store double %i.k, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %1, i64 12         ; 3 uses
  %i.p = load i8, ptr %i.o, align 4, !range !175, !noundef !176
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 1
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.u = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.f)
  %i.v = fadd double %i.u, %i.f
  %i.w = fptosi double %i.v to i32
  %i.x = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.k)
  %i.y = fadd double %i.k, %i.x
  %i.z = fptosi double %i.y to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.z to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.w to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %9, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.0.insert.shift.i.i.i, ptr %i.aa, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit

_ZN10QCPPainter8drawLineERK6QLineF.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.ab = load i32, ptr %i.c, align 8
  %i.ac = mul i32 %i.ab, %2
  %i.ad = sitofp i32 %i.ac to double              ; 3 uses
  %i.ae = load i32, ptr %i.g, align 4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01    ; 4 uses
  store double %i.ad, ptr %11, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double 0.000000e+00, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %i.ag, ptr %i.aj, align 8
  %i.ak = load i8, ptr %i.o, align 4, !range !175, !noundef !176
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 1
  %.not.i12 = icmp eq i32 %i.ao, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN10QCPPainter8drawLineERK6QLineF.exit
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit21

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.ap = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ad)
  %i.aq = fadd double %i.ap, %i.ad
  %i.ar = fptosi double %i.aq to i32
  %i.as = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ag)
  %i.at = fadd double %i.ag, %i.as
  %i.au = fptosi double %i.at to i32
  %.sroa.2.0.insert.ext.i.i.i13 = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i.i.i14 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i13, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i15 = zext i32 %i.ar to i64
  %.sroa.0.0.insert.insert.i.i.i16 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i14, %.sroa.0.0.insert.ext.i.i.i15
  store i64 %.sroa.0.0.insert.insert.i.i.i16, ptr %8, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.0.insert.shift.i.i.i14, ptr %i.av, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit21

_ZN10QCPPainter8drawLineERK6QLineF.exit21:        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.aw = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ax = sub i32 0, %i.aw
  %i.ay = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.az = insertelement <2 x i32> %i.ay, i32 %i.aw, i64 1
  %i.ba = sitofp <2 x i32> %i.az to <2 x double>
  %i.bb = fmul nnan <2 x double> %i.ba, splat (double 5.000000e-01) ; 3 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %19 = shufflevector <4 x double> %i.bc, <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  store <4 x double> %19, ptr %12, align 8
  %i.bd = load i8, ptr %i.o, align 4, !range !175, !noundef !176
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  %i.bf = getelementptr i8, ptr %1, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 1
  %.not.i22 = icmp eq i32 %i.bh, 0
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN10QCPPainter8drawLineERK6QLineF.exit21
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.bi = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.bb)
  %i.bj = fadd <2 x double> %i.bb, %i.bi
  %i.bk = fptosi <2 x double> %i.bj to <2 x i32>
  %i.bl = zext <2 x i32> %i.bk to <2 x i64>
  %i.bm = shl nuw <2 x i64> %i.bl, splat (i64 32)
  store <2 x i64> %i.bm, ptr %7, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit31

_ZN10QCPPainter8drawLineERK6QLineF.exit31:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.bn = getelementptr i8, ptr %0, i64 128
  %i.bo = load <2 x i32>, ptr %i.bn, align 8      ; 2 uses
  %i.bp = sub <2 x i32> zeroinitializer, %i.bo
  %i.bq = sitofp <2 x i32> %i.bp to <2 x double>
  %i.br = fmul nnan <2 x double> %i.bq, splat (double 5.000000e-01)
  store <2 x double> %i.br, ptr %13, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bt = sitofp <2 x i32> %i.bo to <2 x double>
  store <2 x double> %i.bt, ptr %i.bs, align 16
  %i.bu = mul i32 %2, -2880
  call void @_ZN8QPainter7drawArcERK6QRectFii(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef -1440, i32 noundef %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %i.bv = getelementptr i8, ptr %0, i64 128
  %i.bw = load <2 x i32>, ptr %i.bv, align 8      ; 2 uses
  %i.bx = sub <2 x i32> zeroinitializer, %i.bw
  %i.by = sitofp <2 x i32> %i.bx to <2 x double>
  %i.bz = fmul nnan <2 x double> %i.by, splat (double 5.000000e-01)
  store <2 x double> %i.bz, ptr %14, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cb = sitofp <2 x i32> %i.bw to <2 x double>
  store <2 x double> %i.cb, ptr %i.ca, align 16
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.cc = getelementptr i8, ptr %0, i64 132
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = sub i32 0, %i.cd
  %i.cf = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %i.cg = insertelement <2 x i32> %i.cf, i32 %i.cd, i64 1
  %i.ch = sitofp <2 x i32> %i.cg to <2 x double>
  %i.ci = fmul nnan <2 x double> %i.ch, splat (double 5.000000e-01) ; 3 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %20 = shufflevector <4 x double> %i.cj, <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  store <4 x double> %20, ptr %15, align 8
  %i.ck = getelementptr i8, ptr %1, i64 12        ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4, !range !175, !noundef !176
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr i8, ptr %1, i64 8
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 1
  %.not.i32 = icmp eq i32 %i.cp, 0
  br i1 %.not.i32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.cq = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.ci)
  %i.cr = fadd <2 x double> %i.ci, %i.cq
  %i.cs = fptosi <2 x double> %i.cr to <2 x i32>
  %i.ct = zext <2 x i32> %i.cs to <2 x i64>
  %i.cu = shl nuw <2 x i64> %i.ct, splat (i64 32)
  store <2 x i64> %i.cu, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit41

_ZN10QCPPainter8drawLineERK6QLineF.exit41:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  %i.cv = getelementptr i8, ptr %0, i64 128
  %i.cw = load i32, ptr %i.cv, align 8            ; 2 uses
  %i.cx = sub i32 0, %i.cw
  %i.cy = insertelement <2 x i32> poison, i32 %i.cx, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %i.cw, i64 1
  %i.da = sitofp <2 x i32> %i.cz to <2 x double>
  %i.db = fmul nnan <2 x double> %i.da, splat (double 5.000000e-01) ; 4 uses
  %i.dc = insertelement <2 x double> %i.db, double 0.000000e+00, i64 1
  store <2 x double> %i.dc, ptr %16, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.de = shufflevector <2 x double> %i.db, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.de, ptr %i.dd, align 16
  %i.df = load i8, ptr %i.ck, align 4, !range !175, !noundef !176
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  %i.dh = getelementptr i8, ptr %1, i64 8
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 1
  %.not.i42 = icmp eq i32 %i.dj, 0
  br i1 %.not.i42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN10QCPPainter8drawLineERK6QLineF.exit41
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit51

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.dk = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.db)
  %i.dl = fadd <2 x double> %i.db, %i.dk
  %i.dm = fptosi <2 x double> %i.dl to <2 x i32>
  %i.dn = zext <2 x i32> %i.dm to <2 x i64>
  store <2 x i64> %i.dn, ptr %5, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit51

_ZN10QCPPainter8drawLineERK6QLineF.exit51:        ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  br label %bb.ah

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #49
  store i32 2, ptr %18, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.do, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.dp, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %17, ptr noundef nonnull align 8 dereferenceable_or_null(32) %18)
  %i.dq = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 79, ptr @__PRETTY_FUNCTION__._ZNK28QCPSelectionDecoratorBracket11drawBracketEP10QCPPainteri)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.u
  %i.dr = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %.noexc
  %i.ds = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.v
  %i.dt = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.dt, 1
  br i1 %.not.i.i.i, label %bb.w, label %_ZN7QStringD2Ev.exit.i

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.du = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.du, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.dv = load ptr, ptr %17, align 8              ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 48
  %i.dx = load i8, ptr %i.dw, align 8, !range !175, !noundef !176
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.x, label %_ZN6QDebuglsEPKc.exit

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.dz = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.dv, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.x
  %.pre = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.y:                                             ; preds = %.noexc
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.y
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ec, 1
  br i1 %.not.i.i4.i, label %bb.z, label %_ZN7QStringD2Ev.exit5.i

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ed = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ed, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ee = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.dv, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 72, ptr @.str.142)
          to label %.noexc61 unwind label %bb.ag

.noexc61:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.ef = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.aa unwind label %bb.ad     ; 0 uses

bb.aa:                                            ; preds = %.noexc61
  %i.eg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i57, label %_ZN7QStringD2Ev.exit.i60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58:  ; preds = %bb.aa
  %i.eh = atomicrmw add ptr %i.eg, i32 -1 acq_rel, align 4
  %.not.i.i.i59 = icmp eq i32 %i.eh, 1
  br i1 %.not.i.i.i59, label %bb.ab, label %_ZN7QStringD2Ev.exit.i60

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58
  %i.ei = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ei, i64 noundef 2, i64 noundef 8) #49
  br label %_ZN7QStringD2Ev.exit.i60

_ZN7QStringD2Ev.exit.i60:                         ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i58, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.ej = load ptr, ptr %17, align 8              ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 48
  %i.el = load i8, ptr %i.ek, align 8, !range !175, !noundef !176
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ac, label %_ZN6QDebuglsEPKc.exit65

bb.ac:                                            ; preds = %_ZN7QStringD2Ev.exit.i60
  %i.en = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ej, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit65_crit_edge unwind label %bb.ag ; 0 uses

._ZN6QDebuglsEPKc.exit65_crit_edge:               ; preds = %bb.ac
  %.pre68 = load ptr, ptr %17, align 8
  br label %_ZN6QDebuglsEPKc.exit65

bb.ad:                                            ; preds = %.noexc61
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i53 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i2.i53, label %_ZN7QStringD2Ev.exit5.i56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54: ; preds = %bb.ad
  %i.eq = atomicrmw add ptr %i.ep, i32 -1 acq_rel, align 4
  %.not.i.i4.i55 = icmp eq i32 %i.eq, 1
  br i1 %.not.i.i4.i55, label %bb.ae, label %_ZN7QStringD2Ev.exit5.i56

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i54
  %i.er = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.er, i64 noundef 2, i64 noundef 8) #49
end_hunk_0
begin_hunk_1_@_ZNK12QCPFinancial14drawLegendIconEP10QCPPainterRK6QRectF:bb.a
  %i.ov = trunc nuw i8 %i.ou to i1
  %i.ow = getelementptr i8, ptr %1, i64 8         ; 9 uses
  br i1 %i.ov, label %bb.bp, label %bb.di

bb.bp:                                            ; preds = %bb.bo
  %i.ox = getelementptr i8, ptr %0, i64 232
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.ox)
  %i.oy = getelementptr i8, ptr %0, i64 248
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.oy)
  %i.oz = load i32, ptr %i.ow, align 4
  %i.pa = and i32 %i.oz, 4
  %.not.i382 = icmp eq i32 %i.pa, 0
  br i1 %.not.i382, label %_ZN10QCPPainter6setPenERK4QPen.exit383, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit383

_ZN10QCPPainter6setPenERK4QPen.exit383:           ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #49
  %i.pb = load double, ptr %2, align 8            ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.pd = load double, ptr %i.pc, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.pf = load double, ptr %i.pe, align 8
  %i.pg = fadd double %i.pd, %i.pf                ; 2 uses
  %i.ph = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pb)
  %i.pi = fadd double %i.pb, %i.ph
  %i.pj = fptosi double %i.pi to i32
  %i.pk = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pg)
  %i.pl = fadd double %i.pg, %i.pk
  %i.pm = fptosi double %i.pl to i32
  %.sroa.2.0.insert.ext.i386 = zext i32 %i.pm to i64
  %.sroa.2.0.insert.shift.i387 = shl nuw i64 %.sroa.2.0.insert.ext.i386, 32
  %.sroa.0.0.insert.ext.i388 = zext i32 %i.pj to i64
  %.sroa.0.0.insert.insert.i389 = or disjoint i64 %.sroa.2.0.insert.shift.i387, %.sroa.0.0.insert.ext.i388
  store i64 %.sroa.0.0.insert.insert.i389, ptr %43, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %43)
          to label %.noexc393 unwind label %bb.co

.noexc393:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.po = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i390 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i.i.i.i390, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391: ; preds = %.noexc393
  %i.pp = load atomic i32, ptr %i.po monotonic, align 4
  %i.pq = icmp sgt i32 %i.pp, 1
  br i1 %i.pq, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, label %_ZN5QListI6QPointElsEOS0_.exit395

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %.noexc393
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit395 unwind label %bb.co

_ZN5QListI6QPointElsEOS0_.exit395:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i391, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #49
  %i.pr = load double, ptr %2, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.pt = load double, ptr %i.ps, align 8
  %i.pu = fadd double %i.pr, %i.pt                ; 2 uses
  %i.pv = load double, ptr %i.pc, align 8         ; 2 uses
  %i.pw = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pu)
  %i.px = fadd double %i.pu, %i.pw
  %i.py = fptosi double %i.px to i32
  %i.pz = call double @llvm.copysign.f64(double 5.000000e-01, double %i.pv)
  %i.qa = fadd double %i.pv, %i.pz
  %i.qb = fptosi double %i.qa to i32
  %.sroa.2.0.insert.ext.i398 = zext i32 %i.qb to i64
  %.sroa.2.0.insert.shift.i399 = shl nuw i64 %.sroa.2.0.insert.ext.i398, 32
  %.sroa.0.0.insert.ext.i400 = zext i32 %i.py to i64
  %.sroa.0.0.insert.insert.i401 = or disjoint i64 %.sroa.2.0.insert.shift.i399, %.sroa.0.0.insert.ext.i400
  store i64 %.sroa.0.0.insert.insert.i401, ptr %44, align 8
  %i.qc = load i64, ptr %i.pn, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.qc, ptr noundef nonnull align 4 dereferenceable(8) %44)
          to label %.noexc405 unwind label %bb.cp

.noexc405:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit395
  %i.qd = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i402 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i.i.i.i402, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403: ; preds = %.noexc405
  %i.qe = load atomic i32, ptr %i.qd monotonic, align 4
  %i.qf = icmp sgt i32 %i.qe, 1
  br i1 %i.qf, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, label %_ZN5QListI6QPointElsEOS0_.exit407

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %.noexc405
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit407 unwind label %bb.cp

_ZN5QListI6QPointElsEOS0_.exit407:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i403, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #49
  %i.qg = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.qh = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.qg)
  %i.qi = fadd <2 x double> %i.qg, %i.qh
  %i.qj = fptosi <2 x double> %i.qi to <2 x i32>
  store <2 x i32> %i.qj, ptr %45, align 8
  %i.qk = load i64, ptr %i.pn, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i64 noundef %i.qk, ptr noundef nonnull align 4 dereferenceable(8) %45)
          to label %.noexc417 unwind label %bb.cq

.noexc417:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit407
  %i.ql = load ptr, ptr %42, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i414 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i.i.i414, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415: ; preds = %.noexc417
  %i.qm = load atomic i32, ptr %i.ql monotonic, align 4
  %i.qn = icmp sgt i32 %i.qm, 1
  br i1 %i.qn, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, label %_ZN5QListI6QPointElsEOS0_.exit419.thread

_ZN5QListI6QPointElsEOS0_.exit419.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415
  store ptr %i.ql, ptr %41, align 16
  %i.qo = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  store ptr %i.qq, ptr %i.qo, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qs = load i64, ptr %i.pn, align 16
  store i64 %i.qs, ptr %i.qr, align 16
  br label %bb.br

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i415, %.noexc417
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %42, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit419 unwind label %bb.cq

_ZN5QListI6QPointElsEOS0_.exit419:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416
  %i.qt = load <2 x ptr>, ptr %42, align 16
  %.pre = load ptr, ptr %42, align 16             ; 2 uses
  store <2 x ptr> %i.qt, ptr %41, align 16
  %i.qu = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qv = load i64, ptr %i.pn, align 16
  store i64 %i.qv, ptr %i.qu, align 16
  %.not.i.i.i.i420 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i420, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421, label %bb.br

bb.br:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit419.thread, %_ZN5QListI6QPointElsEOS0_.exit419
  %i.qw = phi ptr [ %i.ql, %_ZN5QListI6QPointElsEOS0_.exit419.thread ], [ %.pre, %_ZN5QListI6QPointElsEOS0_.exit419 ]
  %i.qx = atomicrmw add ptr %i.qw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit421

_ZN8QPolygonC2ERK5QListI6QPointE.exit421:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit419, %bb.br
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 0)
          to label %bb.bs unwind label %bb.cr

bb.bs:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1)
          to label %bb.bt unwind label %bb.cs

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #49
  %i.qy = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i422 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i.i422, label %_ZN5QListI6QPointED2Ev.exit425, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423: ; preds = %bb.bt
  %i.qz = atomicrmw add ptr %i.qy, i32 -1 acq_rel, align 4
  %.not.i.i424 = icmp eq i32 %i.qz, 1
  br i1 %.not.i.i424, label %bb.bu, label %_ZN5QListI6QPointED2Ev.exit425

bb.bu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423
  %i.ra = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ra, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit425

_ZN5QListI6QPointED2Ev.exit425:                   ; preds = %bb.bt, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i423, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #49
  %i.rb = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i426, label %_ZN5QListI6QPointED2Ev.exit429, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427: ; preds = %_ZN5QListI6QPointED2Ev.exit425
  %i.rc = atomicrmw add ptr %i.rb, i32 -1 acq_rel, align 4
  %.not.i.i428 = icmp eq i32 %i.rc, 1
  br i1 %.not.i.i428, label %bb.bv, label %_ZN5QListI6QPointED2Ev.exit429

bb.bv:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427
  %i.rd = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rd, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit429

_ZN5QListI6QPointED2Ev.exit429:                   ; preds = %_ZN5QListI6QPointED2Ev.exit425, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i427, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #49
  %i.re = load <2 x double>, ptr %i.ps, align 8
  %i.rf = fmul <2 x double> %i.re, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %i.rg = load <1 x double>, ptr %2, align 8
  %i.rh = load double, ptr %i.pc, align 8
  %i.ri = extractelement <2 x double> %i.rf, i64 1
  %i.rj = fadd double %i.ri, %i.rh                ; 4 uses
  %i.rk = shufflevector <1 x double> %i.rg, <1 x double> poison, <2 x i32> zeroinitializer
  %61 = shufflevector <2 x double> %i.rf, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.rl = fadd <2 x double> %i.rk, %61            ; 4 uses
  %i.rm = extractelement <2 x double> %i.rl, i64 0
  store double %i.rm, ptr %46, align 8, !alias.scope !1370
  %.sroa.46.0..sroa_idx.i432 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store double %i.rj, ptr %.sroa.46.0..sroa_idx.i432, align 8, !alias.scope !1370
  %i.rn = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.ro = extractelement <2 x double> %i.rl, i64 1
  store double %i.ro, ptr %i.rn, align 8, !alias.scope !1370
  %.sroa.4.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %46, i64 24
  store double %i.rj, ptr %.sroa.4.0..sroa_idx.i433, align 8, !alias.scope !1370
  %i.rp = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit429
  %i.rr = load i32, ptr %i.ow, align 4
  %i.rs = and i32 %i.rr, 1
  %.not.i434 = icmp eq i32 %i.rs, 0
  br i1 %.not.i434, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN5QListI6QPointED2Ev.exit429
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %46, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.rt = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.rl)
  %i.ru = call double @llvm.copysign.f64(double 5.000000e-01, double %i.rj)
  %i.rv = fadd double %i.rj, %i.ru
  %i.rw = fptosi double %i.rv to i32
  %.sroa.2.0.insert.ext.i.i.i435 = zext i32 %i.rw to i64
  %.sroa.2.0.insert.shift.i.i.i436 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i435, 32
  %i.rx = fadd <2 x double> %i.rl, %i.rt
  %i.ry = fptosi <2 x double> %i.rx to <2 x i32>
  %i.rz = zext <2 x i32> %i.ry to <2 x i64>
  %i.sa = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i436, i64 0
  %i.sb = shufflevector <2 x i64> %i.sa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.sc = or disjoint <2 x i64> %i.sb, %i.rz
  store <2 x i64> %i.sc, ptr %8, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit443

_ZN10QCPPainter8drawLineERK6QLineF.exit443:       ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #49
  %i.sd = load <2 x double>, ptr %i.ps, align 8   ; 2 uses
  %i.se = fmul <2 x double> %i.sd, <double 7.500000e-01, double 5.000000e-01>
  %i.sf = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.sg = fadd <2 x double> %i.se, %i.sf          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.sd, %i.sf
  %i.sh = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  store <2 x double> %i.sg, ptr %47, align 16, !alias.scope !1371
  %i.si = getelementptr inbounds nuw i8, ptr %47, i64 16
  store double %i.sh, ptr %i.si, align 16, !alias.scope !1371
  %.sroa.4.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.sj = extractelement <2 x double> %i.sg, i64 1 ; 3 uses
  store double %i.sj, ptr %.sroa.4.0..sroa_idx.i447, align 8, !alias.scope !1371
  %i.sk = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  %i.sm = load i32, ptr %i.ow, align 4
  %i.sn = and i32 %i.sm, 1
  %.not.i448 = icmp eq i32 %i.sn, 0
  br i1 %.not.i448, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN10QCPPainter8drawLineERK6QLineF.exit443
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %47, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.so = extractelement <2 x double> %i.sg, i64 0 ; 2 uses
  %i.sp = call double @llvm.copysign.f64(double 5.000000e-01, double %i.so)
  %i.sq = fadd double %i.so, %i.sp
  %i.sr = fptosi double %i.sq to i32
  %i.ss = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sj)
  %i.st = fadd double %i.sj, %i.ss
  %i.su = fptosi double %i.st to i32
  %.sroa.2.0.insert.ext.i.i.i449 = zext i32 %i.su to i64
  %.sroa.2.0.insert.shift.i.i.i450 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i449, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i451 = zext i32 %i.sr to i64
  %.sroa.0.0.insert.insert.i.i.i452 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i.i.i451
  %i.sv = call double @llvm.copysign.f64(double 5.000000e-01, double %i.sh)
  %i.sw = fadd double %i.sh, %i.sv
  %i.sx = fptosi double %i.sw to i32
  %.sroa.0.0.insert.ext.i3.i.i455 = zext i32 %i.sx to i64
  %.sroa.0.0.insert.insert.i4.i.i456 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i450, %.sroa.0.0.insert.ext.i3.i.i455
  store i64 %.sroa.0.0.insert.insert.i.i.i452, ptr %7, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i456, ptr %i.sy, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit457

_ZN10QCPPainter8drawLineERK6QLineF.exit457:       ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #49
  %i.sz = load <2 x double>, ptr %i.ps, align 8   ; 2 uses
  %i.ta = fmul <2 x double> %i.sz, splat (double 2.500000e-01)
  %i.tb = load <2 x double>, ptr %2, align 8
  %i.tc = fadd <2 x double> %i.ta, %i.tb
  store <2 x double> %i.tc, ptr %48, align 16, !alias.scope !1372
  %i.td = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.te = fmul <2 x double> %i.sz, splat (double 5.000000e-01)
  store <2 x double> %i.te, ptr %i.td, align 16, !alias.scope !1372
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #49
  %i.tf = getelementptr i8, ptr %0, i64 240
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.tf)
  %i.tg = getelementptr i8, ptr %0, i64 256
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.tg)
  %i.th = load i32, ptr %i.ow, align 4
  %i.ti = and i32 %i.th, 4
  %.not.i460 = icmp eq i32 %i.ti, 0
  br i1 %.not.i460, label %_ZN10QCPPainter6setPenERK4QPen.exit461, label %bb.cc

bb.cc:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit461

_ZN10QCPPainter6setPenERK4QPen.exit461:           ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit457, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #49
  %i.tj = load double, ptr %2, align 8            ; 2 uses
  %i.tk = load double, ptr %i.pc, align 8
  %i.tl = load double, ptr %i.pe, align 8
  %i.tm = fadd double %i.tk, %i.tl                ; 2 uses
  %i.tn = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tj)
  %i.to = fadd double %i.tj, %i.tn
  %i.tp = fptosi double %i.to to i32
  %i.tq = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tm)
  %i.tr = fadd double %i.tm, %i.tq
  %i.ts = fptosi double %i.tr to i32
  %.sroa.2.0.insert.ext.i464 = zext i32 %i.ts to i64
  %.sroa.2.0.insert.shift.i465 = shl nuw i64 %.sroa.2.0.insert.ext.i464, 32
  %.sroa.0.0.insert.ext.i466 = zext i32 %i.tp to i64
  %.sroa.0.0.insert.insert.i467 = or disjoint i64 %.sroa.2.0.insert.shift.i465, %.sroa.0.0.insert.ext.i466
  store i64 %.sroa.0.0.insert.insert.i467, ptr %52, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %52)
          to label %.noexc471 unwind label %bb.cy

.noexc471:                                        ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.tu = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i468 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i.i.i.i.i468, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469: ; preds = %.noexc471
  %i.tv = load atomic i32, ptr %i.tu monotonic, align 4
  %i.tw = icmp sgt i32 %i.tv, 1
  br i1 %i.tw, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, label %_ZN5QListI6QPointElsEOS0_.exit473

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %.noexc471
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit473 unwind label %bb.cy

_ZN5QListI6QPointElsEOS0_.exit473:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i469, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #49
  %i.tx = load double, ptr %2, align 8
  %i.ty = load double, ptr %i.ps, align 8
  %i.tz = fadd double %i.tx, %i.ty                ; 2 uses
  %i.ua = load double, ptr %i.pc, align 8         ; 2 uses
  %i.ub = call double @llvm.copysign.f64(double 5.000000e-01, double %i.tz)
  %i.uc = fadd double %i.tz, %i.ub
  %i.ud = fptosi double %i.uc to i32
  %i.ue = call double @llvm.copysign.f64(double 5.000000e-01, double %i.ua)
  %i.uf = fadd double %i.ua, %i.ue
  %i.ug = fptosi double %i.uf to i32
  %.sroa.2.0.insert.ext.i476 = zext i32 %i.ug to i64
  %.sroa.2.0.insert.shift.i477 = shl nuw i64 %.sroa.2.0.insert.ext.i476, 32
  %.sroa.0.0.insert.ext.i478 = zext i32 %i.ud to i64
  %.sroa.0.0.insert.insert.i479 = or disjoint i64 %.sroa.2.0.insert.shift.i477, %.sroa.0.0.insert.ext.i478
  store i64 %.sroa.0.0.insert.insert.i479, ptr %53, align 8
  %i.uh = load i64, ptr %i.tt, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.uh, ptr noundef nonnull align 4 dereferenceable(8) %53)
          to label %.noexc483 unwind label %bb.cz

.noexc483:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit473
  %i.ui = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i.i.i.i.i480 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i.i.i.i.i480, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481: ; preds = %.noexc483
  %i.uj = load atomic i32, ptr %i.ui monotonic, align 4
  %i.uk = icmp sgt i32 %i.uj, 1
  br i1 %i.uk, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, label %_ZN5QListI6QPointElsEOS0_.exit485

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %.noexc483
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit485 unwind label %bb.cz

_ZN5QListI6QPointElsEOS0_.exit485:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i481, %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #49
  %i.ul = load <2 x double>, ptr %2, align 8
  %i.um = load <2 x double>, ptr %i.ps, align 8
  %i.un = fadd <2 x double> %i.ul, %i.um          ; 2 uses
  %i.uo = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.un)
  %i.up = fadd <2 x double> %i.un, %i.uo
  %i.uq = fptosi <2 x double> %i.up to <2 x i32>
  store <2 x i32> %i.uq, ptr %54, align 8
  %i.ur = load i64, ptr %i.tt, align 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsI6QPointE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i64 noundef %i.ur, ptr noundef nonnull align 4 dereferenceable(8) %54)
          to label %.noexc495 unwind label %bb.da

.noexc495:                                        ; preds = %_ZN5QListI6QPointElsEOS0_.exit485
  %i.us = load ptr, ptr %51, align 16             ; 4 uses
  %.not.i.i.i.i.i.i.i492 = icmp eq ptr %i.us, null
  br i1 %.not.i.i.i.i.i.i.i492, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493: ; preds = %.noexc495
  %i.ut = load atomic i32, ptr %i.us monotonic, align 4
  %i.uu = icmp sgt i32 %i.ut, 1
  br i1 %i.uu, label %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, label %_ZN5QListI6QPointElsEOS0_.exit497.thread

_ZN5QListI6QPointElsEOS0_.exit497.thread:         ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493
  store ptr %i.us, ptr %50, align 16
  %i.uv = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8
  store ptr %i.ux, ptr %i.uv, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.uz = load i64, ptr %i.tt, align 16
  store i64 %i.uz, ptr %i.uy, align 16
  br label %bb.cd

_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494: ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.i.i.i.i.i.i493, %.noexc495
  invoke void @_ZN17QArrayDataPointerI6QPointE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %51, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QPointElsEOS0_.exit497 unwind label %bb.da

_ZN5QListI6QPointElsEOS0_.exit497:                ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494
  %i.va = load <2 x ptr>, ptr %51, align 16
  %.pre713 = load ptr, ptr %51, align 16          ; 2 uses
  store <2 x ptr> %i.va, ptr %50, align 16
  %i.vb = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.vc = load i64, ptr %i.tt, align 16
  store i64 %i.vc, ptr %i.vb, align 16
  %.not.i.i.i.i498 = icmp eq ptr %.pre713, null
  br i1 %.not.i.i.i.i498, label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499, label %bb.cd

bb.cd:                                            ; preds = %_ZN5QListI6QPointElsEOS0_.exit497.thread, %_ZN5QListI6QPointElsEOS0_.exit497
  %i.vd = phi ptr [ %i.us, %_ZN5QListI6QPointElsEOS0_.exit497.thread ], [ %.pre713, %_ZN5QListI6QPointElsEOS0_.exit497 ]
  %i.ve = atomicrmw add ptr %i.vd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8QPolygonC2ERK5QListI6QPointE.exit499

_ZN8QPolygonC2ERK5QListI6QPointE.exit499:         ; preds = %_ZN5QListI6QPointElsEOS0_.exit497, %bb.cd
  invoke void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, i32 noundef 0)
          to label %bb.ce unwind label %bb.db

bb.ce:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  invoke void @_ZN8QPainter13setClipRegionERK7QRegionN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1)
          to label %bb.cf unwind label %bb.dc

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #49
  %i.vf = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i500 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i500, label %_ZN5QListI6QPointED2Ev.exit503, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501: ; preds = %bb.cf
  %i.vg = atomicrmw add ptr %i.vf, i32 -1 acq_rel, align 4
  %.not.i.i502 = icmp eq i32 %i.vg, 1
  br i1 %.not.i.i502, label %bb.cg, label %_ZN5QListI6QPointED2Ev.exit503

bb.cg:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501
  %i.vh = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.vh, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit503

_ZN5QListI6QPointED2Ev.exit503:                   ; preds = %bb.cf, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i501, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  %i.vi = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i504 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i504, label %_ZN5QListI6QPointED2Ev.exit507, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505: ; preds = %_ZN5QListI6QPointED2Ev.exit503
  %i.vj = atomicrmw add ptr %i.vi, i32 -1 acq_rel, align 4
  %.not.i.i506 = icmp eq i32 %i.vj, 1
  br i1 %.not.i.i506, label %bb.ch, label %_ZN5QListI6QPointED2Ev.exit507

bb.ch:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505
  %i.vk = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.vk, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit507

_ZN5QListI6QPointED2Ev.exit507:                   ; preds = %_ZN5QListI6QPointED2Ev.exit503, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i505, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #49
  %i.vl = load <2 x double>, ptr %i.ps, align 8
  %i.vm = fmul <2 x double> %i.vl, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %i.vn = load <1 x double>, ptr %2, align 8
  %i.vo = load double, ptr %i.pc, align 8
  %i.vp = extractelement <2 x double> %i.vm, i64 1
  %i.vq = fadd double %i.vp, %i.vo                ; 4 uses
  %i.vr = shufflevector <1 x double> %i.vn, <1 x double> poison, <2 x i32> zeroinitializer
  %62 = shufflevector <2 x double> %i.vm, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.vs = fadd <2 x double> %i.vr, %62            ; 4 uses
  %i.vt = extractelement <2 x double> %i.vs, i64 0
  store double %i.vt, ptr %55, align 8, !alias.scope !1373
  %.sroa.46.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store double %i.vq, ptr %.sroa.46.0..sroa_idx.i510, align 8, !alias.scope !1373
  %i.vu = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.vv = extractelement <2 x double> %i.vs, i64 1
  store double %i.vv, ptr %i.vu, align 8, !alias.scope !1373
  %.sroa.4.0..sroa_idx.i511 = getelementptr inbounds nuw i8, ptr %55, i64 24
  store double %i.vq, ptr %.sroa.4.0..sroa_idx.i511, align 8, !alias.scope !1373
  %i.vw = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit507
  %i.vy = load i32, ptr %i.ow, align 4
  %i.vz = and i32 %i.vy, 1
  %.not.i512 = icmp eq i32 %i.vz, 0
  br i1 %.not.i512, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN5QListI6QPointED2Ev.exit507
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.wa = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.vs)
  %i.wb = call double @llvm.copysign.f64(double 5.000000e-01, double %i.vq)
  %i.wc = fadd double %i.vq, %i.wb
  %i.wd = fptosi double %i.wc to i32
  %.sroa.2.0.insert.ext.i.i.i513 = zext i32 %i.wd to i64
  %.sroa.2.0.insert.shift.i.i.i514 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i513, 32
  %i.we = fadd <2 x double> %i.vs, %i.wa
  %i.wf = fptosi <2 x double> %i.we to <2 x i32>
  %i.wg = zext <2 x i32> %i.wf to <2 x i64>
  %i.wh = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i514, i64 0
  %i.wi = shufflevector <2 x i64> %i.wh, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wj = or disjoint <2 x i64> %i.wi, %i.wg
  store <2 x i64> %i.wj, ptr %6, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit521

_ZN10QCPPainter8drawLineERK6QLineF.exit521:       ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #49
  %i.wk = load <2 x double>, ptr %i.ps, align 8   ; 2 uses
  %i.wl = fmul <2 x double> %i.wk, <double 7.500000e-01, double 5.000000e-01>
  %i.wm = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.wn = fadd <2 x double> %i.wl, %i.wm          ; 3 uses
  %foldExtExtBinop752 = fadd <2 x double> %i.wk, %i.wm
  %i.wo = extractelement <2 x double> %foldExtExtBinop752, i64 0 ; 3 uses
  store <2 x double> %i.wn, ptr %56, align 16, !alias.scope !1374
  %i.wp = getelementptr inbounds nuw i8, ptr %56, i64 16
  store double %i.wo, ptr %i.wp, align 16, !alias.scope !1374
  %.sroa.4.0..sroa_idx.i525 = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.wq = extractelement <2 x double> %i.wn, i64 1 ; 3 uses
  store double %i.wq, ptr %.sroa.4.0..sroa_idx.i525, align 8, !alias.scope !1374
  %i.wr = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  %i.wt = load i32, ptr %i.ow, align 4
  %i.wu = and i32 %i.wt, 1
  %.not.i526 = icmp eq i32 %i.wu, 0
  br i1 %.not.i526, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN10QCPPainter8drawLineERK6QLineF.exit521
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.wv = extractelement <2 x double> %i.wn, i64 0 ; 2 uses
  %i.ww = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wv)
  %i.wx = fadd double %i.wv, %i.ww
  %i.wy = fptosi double %i.wx to i32
  %i.wz = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wq)
  %i.xa = fadd double %i.wq, %i.wz
  %i.xb = fptosi double %i.xa to i32
  %.sroa.2.0.insert.ext.i.i.i527 = zext i32 %i.xb to i64
  %.sroa.2.0.insert.shift.i.i.i528 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i527, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i529 = zext i32 %i.wy to i64
  %.sroa.0.0.insert.insert.i.i.i530 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i.i.i529
  %i.xc = call double @llvm.copysign.f64(double 5.000000e-01, double %i.wo)
  %i.xd = fadd double %i.wo, %i.xc
  %i.xe = fptosi double %i.xd to i32
  %.sroa.0.0.insert.ext.i3.i.i533 = zext i32 %i.xe to i64
  %.sroa.0.0.insert.insert.i4.i.i534 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i528, %.sroa.0.0.insert.ext.i3.i.i533
  store i64 %.sroa.0.0.insert.insert.i.i.i530, ptr %5, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i534, ptr %i.xf, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit535

_ZN10QCPPainter8drawLineERK6QLineF.exit535:       ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #49
  %i.xg = load <2 x double>, ptr %i.ps, align 8   ; 2 uses
  %i.xh = fmul <2 x double> %i.xg, splat (double 2.500000e-01)
  %i.xi = load <2 x double>, ptr %2, align 8
  %i.xj = fadd <2 x double> %i.xh, %i.xi
  store <2 x double> %i.xj, ptr %57, align 16, !alias.scope !1375
  %i.xk = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.xl = fmul <2 x double> %i.xg, splat (double 5.000000e-01)
  store <2 x double> %i.xl, ptr %i.xk, align 16, !alias.scope !1375
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #49
  br label %bb.dq

bb.co:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i392, %_ZN10QCPPainter6setPenERK4QPen.exit383
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cp:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i404, %_ZN5QListI6QPointElsEOS0_.exit395
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cq:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i416, %_ZN5QListI6QPointElsEOS0_.exit407
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit541

bb.cr:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit421
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.bs
  %i.xq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %40) #49
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn = phi { ptr, i32 } [ %i.xq, %bb.cs ], [ %i.xp, %bb.cr ] ; 3 uses
  %i.xr = load ptr, ptr %41, align 16             ; 2 uses
  %.not.i.i.i538 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i538, label %_ZN5QListI6QPointED2Ev.exit541, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539: ; preds = %bb.ct
  %i.xs = atomicrmw add ptr %i.xr, i32 -1 acq_rel, align 4
  %.not.i.i540 = icmp eq i32 %i.xs, 1
  br i1 %.not.i.i540, label %bb.cu, label %_ZN5QListI6QPointED2Ev.exit541

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539
  %i.xt = load ptr, ptr %41, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xt, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit541

_ZN5QListI6QPointED2Ev.exit541:                   ; preds = %bb.cu, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539, %bb.ct, %bb.cq
  %.pn.pn = phi { ptr, i32 } [ %i.xo, %bb.cq ], [ %.pn, %bb.ct ], [ %.pn, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i539 ], [ %.pn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #49
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit541, %bb.cp
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN5QListI6QPointED2Ev.exit541 ], [ %i.xn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.co
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cv ], [ %i.xm, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #49
  %i.xu = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.xu, null
  br i1 %.not.i.i.i542, label %_ZN5QListI6QPointED2Ev.exit545, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543: ; preds = %bb.cw
  %i.xv = atomicrmw add ptr %i.xu, i32 -1 acq_rel, align 4
  %.not.i.i544 = icmp eq i32 %i.xv, 1
  br i1 %.not.i.i544, label %bb.cx, label %_ZN5QListI6QPointED2Ev.exit545

bb.cx:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543
  %i.xw = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xw, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit545

_ZN5QListI6QPointED2Ev.exit545:                   ; preds = %bb.cw, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i543, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #49
  br label %bb.dr

bb.cy:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i470, %_ZN10QCPPainter6setPenERK4QPen.exit461
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cz:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i482, %_ZN5QListI6QPointElsEOS0_.exit473
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.da:                                            ; preds = %_ZNK17QArrayDataPointerI6QPointE11needsDetachEv.exit.thread.i.i.i.i.i.i494, %_ZN5QListI6QPointElsEOS0_.exit485
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListI6QPointED2Ev.exit549

bb.db:                                            ; preds = %_ZN8QPolygonC2ERK5QListI6QPointE.exit499
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.ce
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QRegionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %49) #49
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn155 = phi { ptr, i32 } [ %i.yb, %bb.dc ], [ %i.ya, %bb.db ] ; 3 uses
  %i.yc = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i546 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i546, label %_ZN5QListI6QPointED2Ev.exit549, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547: ; preds = %bb.dd
  %i.yd = atomicrmw add ptr %i.yc, i32 -1 acq_rel, align 4
  %.not.i.i548 = icmp eq i32 %i.yd, 1
  br i1 %.not.i.i548, label %bb.de, label %_ZN5QListI6QPointED2Ev.exit549

bb.de:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547
  %i.ye = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ye, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit549

_ZN5QListI6QPointED2Ev.exit549:                   ; preds = %bb.de, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547, %bb.dd, %bb.da
  %.pn155.pn = phi { ptr, i32 } [ %i.xz, %bb.da ], [ %.pn155, %bb.dd ], [ %.pn155, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i547 ], [ %.pn155, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #49
  br label %bb.df

bb.df:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit549, %bb.cz
  %.pn155.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %_ZN5QListI6QPointED2Ev.exit549 ], [ %i.xy, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cy
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn, %bb.df ], [ %i.xx, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  %i.yf = load ptr, ptr %51, align 16             ; 2 uses
  %.not.i.i.i550 = icmp eq ptr %i.yf, null
  br i1 %.not.i.i.i550, label %_ZN5QListI6QPointED2Ev.exit553, label %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551

_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551: ; preds = %bb.dg
  %i.yg = atomicrmw add ptr %i.yf, i32 -1 acq_rel, align 4
  %.not.i.i552 = icmp eq i32 %i.yg, 1
  br i1 %.not.i.i552, label %bb.dh, label %_ZN5QListI6QPointED2Ev.exit553

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551
  %i.yh = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.yh, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN5QListI6QPointED2Ev.exit553

_ZN5QListI6QPointED2Ev.exit553:                   ; preds = %bb.dg, %_ZN17QArrayDataPointerI6QPointE5derefEv.exit.i.i551, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  br label %bb.dr

bb.di:                                            ; preds = %bb.bo
  %i.yi = getelementptr i8, ptr %0, i64 104
  call void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.yi)
  %i.yj = getelementptr i8, ptr %0, i64 96
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.yj)
  %i.yk = load i32, ptr %i.ow, align 4
  %i.yl = and i32 %i.yk, 4
  %.not.i554 = icmp eq i32 %i.yl, 0
  br i1 %.not.i554, label %_ZN10QCPPainter6setPenERK4QPen.exit555, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit555

_ZN10QCPPainter6setPenERK4QPen.exit555:           ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #49
  %i.ym = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.yn = load <2 x double>, ptr %i.ym, align 8
  %i.yo = fmul <2 x double> %i.yn, <double 2.500000e-01, double 5.000000e-01> ; 2 uses
  %i.yp = load <1 x double>, ptr %2, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yr = load double, ptr %i.yq, align 8
  %i.ys = extractelement <2 x double> %i.yo, i64 1
  %i.yt = fadd double %i.ys, %i.yr                ; 4 uses
  %i.yu = shufflevector <1 x double> %i.yp, <1 x double> poison, <2 x i32> zeroinitializer
  %63 = shufflevector <2 x double> %i.yo, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.yv = fadd <2 x double> %i.yu, %63            ; 4 uses
  %i.yw = extractelement <2 x double> %i.yv, i64 0
  store double %i.yw, ptr %58, align 8, !alias.scope !1376
  %.sroa.46.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store double %i.yt, ptr %.sroa.46.0..sroa_idx.i558, align 8, !alias.scope !1376
  %i.yx = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.yy = extractelement <2 x double> %i.yv, i64 1
  store double %i.yy, ptr %i.yx, align 8, !alias.scope !1376
  %.sroa.4.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %58, i64 24
  store double %i.yt, ptr %.sroa.4.0..sroa_idx.i559, align 8, !alias.scope !1376
  %i.yz = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit555
  %i.zb = load i32, ptr %i.ow, align 4
  %i.zc = and i32 %i.zb, 1
  %.not.i560 = icmp eq i32 %i.zc, 0
  br i1 %.not.i560, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10QCPPainter6setPenERK4QPen.exit555
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %58, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.zd = call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 5.000000e-01), <2 x double> %i.yv)
  %i.ze = call double @llvm.copysign.f64(double 5.000000e-01, double %i.yt)
  %i.zf = fadd double %i.yt, %i.ze
  %i.zg = fptosi double %i.zf to i32
  %.sroa.2.0.insert.ext.i.i.i561 = zext i32 %i.zg to i64
  %.sroa.2.0.insert.shift.i.i.i562 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i561, 32
  %i.zh = fadd <2 x double> %i.yv, %i.zd
  %i.zi = fptosi <2 x double> %i.zh to <2 x i32>
  %i.zj = zext <2 x i32> %i.zi to <2 x i64>
  %i.zk = insertelement <2 x i64> poison, i64 %.sroa.2.0.insert.shift.i.i.i562, i64 0
  %i.zl = shufflevector <2 x i64> %i.zk, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.zm = or disjoint <2 x i64> %i.zl, %i.zj
  store <2 x i64> %i.zm, ptr %4, align 16
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit569

_ZN10QCPPainter8drawLineERK6QLineF.exit569:       ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #49
  %i.zn = load <2 x double>, ptr %i.ym, align 8   ; 2 uses
  %i.zo = fmul <2 x double> %i.zn, <double 7.500000e-01, double 5.000000e-01>
  %i.zp = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.zq = fadd <2 x double> %i.zo, %i.zp          ; 3 uses
  %foldExtExtBinop754 = fadd <2 x double> %i.zn, %i.zp
  %i.zr = extractelement <2 x double> %foldExtExtBinop754, i64 0 ; 3 uses
  store <2 x double> %i.zq, ptr %59, align 16, !alias.scope !1377
  %i.zs = getelementptr inbounds nuw i8, ptr %59, i64 16
  store double %i.zr, ptr %i.zs, align 16, !alias.scope !1377
  %.sroa.4.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.zt = extractelement <2 x double> %i.zq, i64 1 ; 3 uses
  store double %i.zt, ptr %.sroa.4.0..sroa_idx.i573, align 8, !alias.scope !1377
  %i.zu = load i8, ptr %i.a, align 4, !range !175, !noundef !176
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  %i.zw = load i32, ptr %i.ow, align 4
  %i.zx = and i32 %i.zw, 1
  %.not.i574 = icmp eq i32 %i.zx, 0
  br i1 %.not.i574, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN10QCPPainter8drawLineERK6QLineF.exit569
  call void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef 1)
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.zy = extractelement <2 x double> %i.zq, i64 0 ; 2 uses
  %i.zz = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zy)
  %i.aaa = fadd double %i.zy, %i.zz
  %i.aab = fptosi double %i.aaa to i32
  %i.aac = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zt)
  %i.aad = fadd double %i.zt, %i.aac
  %i.aae = fptosi double %i.aad to i32
  %.sroa.2.0.insert.ext.i.i.i575 = zext i32 %i.aae to i64
  %.sroa.2.0.insert.shift.i.i.i576 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i575, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i577 = zext i32 %i.aab to i64
  %.sroa.0.0.insert.insert.i.i.i578 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i.i.i577
  %i.aaf = call double @llvm.copysign.f64(double 5.000000e-01, double %i.zr)
  %i.aag = fadd double %i.zr, %i.aaf
  %i.aah = fptosi double %i.aag to i32
  %.sroa.0.0.insert.ext.i3.i.i581 = zext i32 %i.aah to i64
  %.sroa.0.0.insert.insert.i4.i.i582 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i576, %.sroa.0.0.insert.ext.i3.i.i581
  store i64 %.sroa.0.0.insert.insert.i.i.i578, ptr %3, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0.0.insert.insert.i4.i.i582, ptr %i.aai, align 8
  call void @_ZN8QPainter9drawLinesEPK5QLinei(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %_ZN10QCPPainter8drawLineERK6QLineF.exit583

_ZN10QCPPainter8drawLineERK6QLineF.exit583:       ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #49
  %i.aaj = load <2 x double>, ptr %i.ym, align 8  ; 2 uses
  %i.aak = fmul <2 x double> %i.aaj, splat (double 2.500000e-01)
  %i.aal = load <2 x double>, ptr %2, align 8
  %i.aam = fadd <2 x double> %i.aak, %i.aal
  store <2 x double> %i.aam, ptr %60, align 16, !alias.scope !1378
  %i.aan = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.aao = fmul <2 x double> %i.aaj, splat (double 5.000000e-01)
  store <2 x double> %i.aao, ptr %i.aan, align 16, !alias.scope !1378
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %60, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #49
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN10QCPPainter15setAntialiasingEb.exit, %_ZN10QCPPainter8drawLineERK6QLineF.exit583, %_ZN10QCPPainter8drawLineERK6QLineF.exit535, %_ZN10QCPPainter8drawLineERK6QLineF.exit321, %_ZN10QCPPainter8drawLineERK6QLineF.exit381
  ret void

bb.dr:                                            ; preds = %_ZN5QListI6QPointED2Ev.exit553, %_ZN5QListI6QPointED2Ev.exit545, %_ZN5QListI6QPointED2Ev.exit337, %_ZN5QListI6QPointED2Ev.exit329
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit337 ], [ %.pn160.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit329 ], [ %.pn155.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit553 ], [ %.pn.pn.pn.pn, %_ZN5QListI6QPointED2Ev.exit545 ]
  resume { ptr, i32 } %.pn165.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QRegionC1ERK8QPolygonN2Qt8FillRuleE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZNK12QCPFinancial13getPixelWidthEdd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(264) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QDebug, align 8              ; 10 uses
  %8 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %9 = alloca %class.QDebug, align 8              ; 10 uses
  %10 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.k = getelementptr i8, ptr %0, i64 216
  %i.l = load double, ptr %i.k, align 8
  %i.m = fmul double %i.l, 5.000000e-01           ; 2 uses
  %i.n = load atomic i32, ptr %i.f monotonic, align 4
  %i.o = icmp eq i32 %i.n, 0
  %spec.select = select i1 %i.o, ptr null, ptr %i.j ; 2 uses
  %i.p = getelementptr i8, ptr %spec.select, i64 320
  %i.q = load i8, ptr %i.p, align 8, !range !175, !noundef !176
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr i8, ptr %spec.select, i64 76
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp ne i32 %i.t, 2
  %.not.i = xor i1 %i.u, %i.r
  %i.v = fneg double %i.m
  %i.w = select i1 %.not.i, double %i.m, double %i.v
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.y, i64 4       ; 6 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11:           ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %.not7 = icmp eq ptr %i.ae, null
  br i1 %.not7, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit12

_ZNK8QPointerI7QCPAxisE4dataEv.exit12:            ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit11
  %i.af = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select80 = select i1 %i.ag, ptr null, ptr %i.ae
end_hunk_1
