Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/previewImageExamples?download=true
inline.NumInlined: 66
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Imf_3_4::Array2D" = type { i64, i64, ptr }
%"class.Imf_3_4::Header" = type <{ %"class.std::map", i8, [7 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.Imath_3_2::Vec2" = type { float, float }
%"class.Imf_3_4::PreviewImage" = type { i32, i32, ptr }
%"class.Imf_3_4::RgbaOutputFile" = type { ptr, ptr, ptr }
%"class.Imf_3_4::Array" = type { i64, ptr }
%"class.Imf_3_4::Array2D.0" = type { i64, i64, ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"\0Afiles with preview images\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drawing image then writing file\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"rgbaWithPreview1.exr\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"drawing image while writing file\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"rgbaWithPreview2.exr\00", align 1
@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef zeroext i8 @_Z5gammaf(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt float %0, 0.000000e+00
  %.sroa.speculated = select i1 %i.a, float %0, float 0.000000e+00
  %i.b = fmul nnan float %.sroa.speculated, 5.555500e+00
  %i.c = tail call noundef float @powf(float noundef %i.b, float noundef 4.545000e-01) #10
  %i.d = fmul float %i.c, 8.466000e+01            ; 3 uses
  %i.e = fcmp olt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %i.d, 2.550000e+02
  %i.g = select i1 %i.f, float 2.550000e+02, float %i.d
  %i.h = select i1 %i.e, float 0.000000e+00, float %i.g
  %i.i = fptoui float %i.h to i8
  ret i8 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16makePreviewImageRKN7Imf_3_47Array2DINS_4RgbaEEEiiRNS0_INS_11PreviewRgbaEEERiS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i32 %1, 8
  store i32 %i.a, ptr %4, align 4, !tbaa !9
  %i.b = sdiv i32 %2, 8                           ; 3 uses
  store i32 %i.b, ptr %5, align 4, !tbaa !9
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !9
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = mul nsw i64 %i.e, %i.c                   ; 4 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #11 ; 4 uses
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEE11resizeEraseEll.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #12
  %.pre = load i32, ptr %5, align 4, !tbaa !9
  br label %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEE11resizeEraseEll.exit

_ZN7Imf_3_47Array2DINS_11PreviewRgbaEE11resizeEraseEll.exit: ; preds = %.loopexit.i, %bb.d
  %6 = phi i32 [ %i.b, %.loopexit.i ], [ %.pre, %bb.d ] ; 2 uses
  store i64 %i.c, ptr %3, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.s, align 8, !tbaa !17
  store ptr %i.j, ptr %i.p, align 8, !tbaa !11
  %i.t = icmp sgt i32 %6, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge31

.preheader.lr.ph:                                 ; preds = %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEE11resizeEraseEll.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  %i.x = load i32, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader, label %._crit_edge31

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.z = phi i32 [ %i.aj, %._crit_edge ], [ %6, %.preheader.lr.ph ]
  %i.aa = phi i32 [ %i.ak, %._crit_edge ], [ %i.x, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ac = shl nuw nsw i64 %indvars.iv34, 3
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !21
  %i.af = mul nsw i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  %i.ah = mul nsw i64 %indvars.iv34, %i.e
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ah
  br label %bb.e

._crit_edge31:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEE11resizeEraseEll.exit
  ret void

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre37 = load i32, ptr %5, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aj = phi i32 [ %.pre37, %._crit_edge.loopexit ], [ %i.z, %.preheader ] ; 2 uses
  %i.ak = phi i32 [ %i.cu, %._crit_edge.loopexit ], [ %i.aa, %.preheader ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = icmp slt i64 %indvars.iv.next35, %i.al
  br i1 %i.am, label %.preheader, label %._crit_edge31, !llvm.loop !22

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 4 uses
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !25
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10 ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.at, float %i.as, float 0.000000e+00
  %i.au = fmul nnan float %.sroa.speculated.i, 5.555500e+00
  %i.av = tail call noundef float @powf(float noundef %i.au, float noundef 4.545000e-01) #10
  %i.aw = fmul float %i.av, 8.466000e+01          ; 3 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  %i.ay = fcmp ogt float %i.aw, 2.550000e+02
  %i.az = select i1 %i.ay, float 2.550000e+02, float %i.aw
  %i.ba = select i1 %i.ax, float 0.000000e+00, float %i.az
  %i.bb = fptoui float %i.ba to i8
  store i8 %i.bb, ptr %i.ao, align 1, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !25
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  %.sroa.speculated.i27 = select i1 %i.bh, float %i.bg, float 0.000000e+00
  %i.bi = fmul nnan float %.sroa.speculated.i27, 5.555500e+00
  %i.bj = tail call noundef float @powf(float noundef %i.bi, float noundef 4.545000e-01) #10
  %i.bk = fmul float %i.bj, 8.466000e+01          ; 3 uses
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %i.bm = fcmp ogt float %i.bk, 2.550000e+02
  %i.bn = select i1 %i.bm, float 2.550000e+02, float %i.bk
  %i.bo = select i1 %i.bl, float 0.000000e+00, float %i.bn
  %i.bp = fptoui float %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !25
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !10 ; 2 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  %.sroa.speculated.i28 = select i1 %i.bw, float %i.bv, float 0.000000e+00
  %i.bx = fmul nnan float %.sroa.speculated.i28, 5.555500e+00
  %i.by = tail call noundef float @powf(float noundef %i.bx, float noundef 4.545000e-01) #10
  %i.bz = fmul float %i.by, 8.466000e+01          ; 3 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %i.cb = fcmp ogt float %i.bz, 2.550000e+02
  %i.cc = select i1 %i.cb, float 2.550000e+02, float %i.bz
  %i.cd = select i1 %i.ca, float 0.000000e+00, float %i.cc
  %i.ce = fptoui float %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !25
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10
  %i.cl = fmul float %i.ck, 2.550000e+02          ; 3 uses
  %i.cm = fcmp olt float %i.cl, 0.000000e+00
  %i.cn = fcmp ogt float %i.cl, 2.550000e+02
  %i.co = select i1 %i.cn, float 2.550000e+02, float %i.cl
  %i.cp = fadd float %i.co, 5.000000e-01
  %i.cq = select i1 %i.cm, float 5.000000e-01, float %i.cp
  %i.cr = fptosi float %i.cq to i32
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !33
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21writeRgbaWithPreview1PKcRKN7Imf_3_47Array2DINS1_4RgbaEEEii(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::Array2D", align 8  ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.Imf_3_4::Header", align 8   ; 8 uses
  %6 = alloca %"class.Imath_3_2::Vec2", align 8   ; 5 uses
  %7 = alloca %"class.Imf_3_4::PreviewImage", align 8 ; 7 uses
  %8 = alloca %"class.Imf_3_4::RgbaOutputFile", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  invoke void @_Z16makePreviewImageRKN7Imf_3_47Array2DINS_4RgbaEEEiiRNS0_INS_11PreviewRgbaEEERiS8_(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !34
  invoke void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %5, i32 noundef %2, i32 noundef %3, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.c = load i32, ptr %i.a, align 4, !tbaa !9
  %i.d = load i32, ptr %i.b, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  invoke void @_ZN7Imf_3_412PreviewImageC1EjjPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.c, i32 noundef %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7Imf_3_46Header15setPreviewImageERKNS_12PreviewImageE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @_ZN7Imf_3_412PreviewImageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.g = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7Imf_3_414RgbaOutputFileC1EPKcRKNS_6HeaderENS_12RgbaChannelsEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(49) %5, i32 noundef 15, i32 noundef %i.g)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = sext i32 %2 to i64
  invoke void @_ZN7Imf_3_414RgbaOutputFile14setFrameBufferEPKNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.i, i64 noundef 1, i64 noundef %i.j)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7Imf_3_414RgbaOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %3)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @_ZN7Imf_3_414RgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.k = icmp eq ptr %i.f, null
  br i1 %i.k, label %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.f) #12
  br label %_ZN7Imf_3_47Array2DINS_11PreviewRgbaEED2Ev.exit

_ZN7Imf_3_47Array2DINS_11PreviewRgbaEED2Ev.exit:  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void

bb.k:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
end_hunk_0
