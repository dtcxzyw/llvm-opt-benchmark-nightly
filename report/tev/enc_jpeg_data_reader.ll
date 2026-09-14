Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_jpeg_data_reader?download=true
inline.NumInlined: 1890
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0
%"struct.std::__1::array" = type { [17 x i32] }
%"struct.std::__1::array.73" = type { [257 x i32] }
%"struct.jxl::jpeg::JPEGScanInfo" = type { i32, i32, i32, i32, i32, %"struct.std::__1::array.81", i32, %"class.std::__1::vector.82", %"class.std::__1::vector.89" }
%"struct.std::__1::array.81" = type { [4 x %"struct.jxl::jpeg::JPEGComponentScanInfo"] }
%"struct.jxl::jpeg::JPEGComponentScanInfo" = type { i32, i32, i32 }
%"class.std::__1::vector.82" = type { ptr, ptr, %"class.std::__1::__compressed_pair.83" }
%"class.std::__1::__compressed_pair.83" = type { %"struct.std::__1::__compressed_pair_elem.84" }
%"struct.std::__1::__compressed_pair_elem.84" = type { ptr }
%"class.std::__1::vector.89" = type { ptr, ptr, %"class.std::__1::__compressed_pair.90" }
%"class.std::__1::__compressed_pair.90" = type { %"struct.std::__1::__compressed_pair_elem.91" }
%"struct.std::__1::__compressed_pair_elem.91" = type { ptr }
%"struct.jxl::jpeg::(anonymous namespace)::BitReaderState" = type { ptr, i64, i64, i64, i32, i64 }
%"struct.jxl::jpeg::JPEGQuantTable" = type <{ %"struct.std::__1::array.124", i32, i32, i8, [3 x i8] }>
%"struct.std::__1::array.124" = type { [64 x i32] }

$_ZNSt3__16vectorIhNS_9allocatorIhEEEC2IPKhTnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS8_E9referenceEEE5valueEiE4typeELi0EEES8_S8_ = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEEaSB8nn180100EOS3_ = comdat any

$_ZNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE6resizeEm = comdat any

$_ZNSt3__16vectorIbNS_9allocatorIbEEEC2EmRKb = comdat any

$_ZNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE8__appendEm = comdat any

$_ZNKSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8nn180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8nn180100v = comdat any

$_ZNSt3__16vectorIbNS_9allocatorIbEEE18__construct_at_endB8nn180100Emb = comdat any

$_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__16vectorIsNS_9allocatorIsEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIsNS_9allocatorIsEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNKSt3__16vectorIN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_ = comdat any

$_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_ = comdat any

$_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_ = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNKSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE20__throw_length_errorB8nn180100Ev = comdat any

$_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE24__emplace_back_slow_pathIJPKhS8_EEEPS3_DpOT_ = comdat any

@_ZZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmmE14kIsValidMarker = internal unnamed_addr constant [64 x i8] c"\01\01\01\00\01\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\00\01\01\01\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00", align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"bad_array_new_length was thrown in -fno-exceptions mode\00", align 1
@_ZN3jxl4jpegL17kJPEGNaturalOrderE = internal unnamed_addr constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl4jpeg8ReadJpegEPKhmNS0_12JpegReadModeEPNS0_8JPEGDataE(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::__1::vector.43", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 13 uses
  %5 = alloca %"class.std::__1::vector", align 8  ; 7 uses
  %6 = alloca %"class.std::__1::vector", align 8  ; 7 uses
  %i.b = alloca [4 x [64 x i16]], align 16        ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.std::__1::vector.43", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !tbaa !11
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  store i64 2, ptr %i.a, align 8, !tbaa !13
  %.not111 = icmp eq i8 %i.h, -40
  br i1 %.not111, label %bb.d, label %bb.aw

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = tail call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #15 ; 7 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16384 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !151
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.4.07.i.i.idx = phi i64 [ 0, %bb.d ], [ %.sroa.4.07.i.i.add.3, %.lr.ph.i.i ] ; 5 uses
  %.sroa.4.07.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.07.i.i.idx ; 2 uses
  store i8 0, ptr %.sroa.4.07.i.i.ptr, align 2, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.ptr, i64 2
  store i16 -1, ptr %i.l, align 2, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.07.i.i.idx ; 2 uses
  %.sroa.4.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 0, ptr %.sroa.4.07.i.i.ptr.1, align 2, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 -1, ptr %i.n, align 2, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.07.i.i.idx ; 2 uses
  %.sroa.4.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 0, ptr %.sroa.4.07.i.i.ptr.2, align 2, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  store i16 -1, ptr %i.p, align 2, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.07.i.i.idx ; 2 uses
  %.sroa.4.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i8 0, ptr %.sroa.4.07.i.i.ptr.3, align 2, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  store i16 -1, ptr %i.r, align 2, !tbaa !23
  %.sroa.4.07.i.i.add.3 = add nuw nsw i64 %.sroa.4.07.i.i.idx, 16 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %.sroa.4.07.i.i.add.3, 16384
  br i1 %.not.i.i.3, label %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit, label %.lr.ph.i.i, !llvm.loop !124

_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit: ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.s, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = tail call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #15 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16384 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !151
  br label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.lr.ph.i.i117, %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit
  %.sroa.4.07.i.i118.idx = phi i64 [ 0, %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit ], [ %.sroa.4.07.i.i118.add.3, %.lr.ph.i.i117 ] ; 5 uses
  %.sroa.4.07.i.i118.ptr = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.4.07.i.i118.idx ; 2 uses
  store i8 0, ptr %.sroa.4.07.i.i118.ptr, align 2, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i118.ptr, i64 2
  store i16 -1, ptr %i.w, align 2, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.4.07.i.i118.idx ; 2 uses
  %.sroa.4.07.i.i118.ptr.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 0, ptr %.sroa.4.07.i.i118.ptr.1, align 2, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  store i16 -1, ptr %i.y, align 2, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.4.07.i.i118.idx ; 2 uses
  %.sroa.4.07.i.i118.ptr.2 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %.sroa.4.07.i.i118.ptr.2, align 2, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 -1, ptr %i.aa, align 2, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.4.07.i.i118.idx ; 2 uses
  %.sroa.4.07.i.i118.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 0, ptr %.sroa.4.07.i.i118.ptr.3, align 2, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  store i16 -1, ptr %i.ac, align 2, !tbaa !23
  %.sroa.4.07.i.i118.add.3 = add nuw nsw i64 %.sroa.4.07.i.i118.idx, 16 ; 2 uses
  %.not.i.i119.3 = icmp eq i64 %.sroa.4.07.i.i118.add.3, 16384
  br i1 %.not.i.i119.3, label %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit120, label %.lr.ph.i.i117, !llvm.loop !124

_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit120: ; preds = %.lr.ph.i.i117
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not212 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not212, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit120
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !29
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorIN3jxl4jpeg17HuffmanTableEntryENS_9allocatorIS3_EEEC2Em.exit120, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 216
  %.not114 = icmp eq i32 %2, 1                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = icmp eq i32 %2, 2                       ; 2 uses
  %i.av = icmp eq i32 %2, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.an, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %.0179 = phi i1 [ false, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %.1180, %bb.an ] ; 19 uses
  %.098 = phi i1 [ false, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %.199, %bb.an ] ; 19 uses
  %.096 = phi i8 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %.197, %bb.an ] ; 18 uses
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !13  ; 6 uses
  %i.ax = add i64 %i.aw, 1                        ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %1
  br i1 %i.ay, label %.lr.ph.preheader.i, label %_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.az = xor i64 %i.aw, -1
  %i.ba = add i64 %1, %i.az                       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %i.bb = phi i64 [ %i.bl, %.critedge2.i ], [ %i.ax, %.lr.ph.preheader.i ] ; 2 uses
  %.017.i = phi i64 [ %i.bk, %.critedge2.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %8 = getelementptr i8, ptr %0, i64 %i.bb        ; 2 uses
  %i.bc = getelementptr i8, ptr %8, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %.not.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i, label %bb.g, label %.critedge2.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.be = load i8, ptr %8, align 1, !tbaa !11     ; 2 uses
  %i.bf = icmp ult i8 %i.be, -64
  br i1 %i.bf, label %.critedge2.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = zext i8 %i.be to i64
  %i.bh = getelementptr i8, ptr @_ZZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmmE14kIsValidMarker, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -192
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %.not15.i = icmp eq i8 %i.bj, 0
  br i1 %.not15.i, label %.critedge2.i, label %_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit

.critedge2.i:                                     ; preds = %bb.h, %bb.g, %.lr.ph.i
  %i.bk = add i64 %.017.i, 1                      ; 2 uses
  %i.bl = add nuw i64 %i.bb, 1
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ba
  br i1 %exitcond.not.i, label %_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit, label %.lr.ph.i, !llvm.loop !125

_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit: ; preds = %bb.h, %.critedge2.i
  %.0.lcssa.i = phi i64 [ %.017.i, %bb.h ], [ %i.ba, %.critedge2.i ] ; 7 uses
  %.not112 = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not112, label %_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114FindNextMarkerEPKhmm.exit
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 5 uses
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 2 uses
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 -1, ptr %i.bm, align 1, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.br = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = add i64 %i.bt, 1                        ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.l, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #16
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.k
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = sub i64 %i.bw, %i.bs                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bx, 4611686018427387903
  %i.by = shl nuw nsw i64 %i.bx, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bu)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 9223372036854775807 ; 3 uses
  %i.bz = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.bz, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i) #15
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !29
  %.pre12.i.i = load ptr, ptr %i.ai, align 8, !tbaa !30
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i: ; preds = %bb.m, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.cb = phi ptr [ %.pre12.i.i, %bb.m ], [ %i.bq, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 6 uses
  %i.cc = phi ptr [ %.pre.i.i, %bb.m ], [ %i.bm, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 8 uses
  %storemerge.i.i.i = phi ptr [ %i.ca, %bb.m ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 3 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %storemerge.i.i.i280 = ptrtoaddr ptr %storemerge.i.i.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %i.bt ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %.0.i.i.i
  store i8 -1, ptr %i.ce, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %iter.check298

iter.check298:                                    ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i
  %i.ch = ptrtoaddr ptr %i.cb to i64              ; 3 uses
  %i.ci = sub i64 %i.cd, %i.ch                    ; 7 uses
  %min.iters.check282 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check282, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck279

vector.memcheck279:                               ; preds = %iter.check298
  %i.cj = add i64 %i.cd, %i.bs
  %i.ck = add i64 %storemerge.i.i.i280, %i.br
  %i.cl = sub i64 %i.ck, %i.cj
  %diff.check281 = icmp ugt i64 %i.cl, -32
  br i1 %diff.check281, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check283

vector.main.loop.iter.check283:                   ; preds = %vector.memcheck279
  %min.iters.check284 = icmp ult i64 %i.ci, 32
  br i1 %min.iters.check284, label %vec.epilog.ph302, label %vector.ph285

vector.ph285:                                     ; preds = %vector.main.loop.iter.check283
  %i.cm = and i64 %i.ci, 24
  %n.vec286 = and i64 %i.ci, -32                  ; 4 uses
  %i.cn = sub i64 0, %n.vec286                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cc, i64 %i.cn
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.cq = sub i64 0, %index288                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.ce, i64 %i.cq ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.cc, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep290, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep290, i64 -32
  %wide.load291 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !11, !noalias !153
  %wide.load292 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !11, !noalias !153
  %i.ct = getelementptr inbounds i8, ptr %next.gep289, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %next.gep289, i64 -32
  store <16 x i8> %wide.load291, ptr %i.ct, align 1, !tbaa !11, !noalias !153
  store <16 x i8> %wide.load292, ptr %i.cu, align 1, !tbaa !11, !noalias !153
  %index.next293 = add nuw i64 %index288, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.cv, label %middle.block294, label %vector.body287, !llvm.loop !134

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.ci, %n.vec286
  br i1 %cmp.n295, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %vec.epilog.iter.check300

vec.epilog.iter.check300:                         ; preds = %middle.block294
  %min.epilog.iters.check301 = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check301, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph302, !prof !34

vec.epilog.ph302:                                 ; preds = %vector.main.loop.iter.check283, %vec.epilog.iter.check300
  %vec.epilog.resume.val296 = phi i64 [ %n.vec286, %vec.epilog.iter.check300 ], [ 0, %vector.main.loop.iter.check283 ]
  %n.vec303 = and i64 %i.ci, -8                   ; 3 uses
  %i.cw = sub i64 0, %n.vec303                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ce, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cc, i64 %i.cw
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph302
  %index305 = phi i64 [ %vec.epilog.resume.val296, %vec.epilog.ph302 ], [ %index.next309, %vec.epilog.vector.body304 ] ; 2 uses
  %i.cz = sub i64 0, %index305                    ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ce, i64 %i.cz
  %next.gep307 = getelementptr i8, ptr %i.cc, i64 %i.cz
  %i.da = getelementptr inbounds i8, ptr %next.gep307, i64 -8
  %wide.load308 = load <8 x i8>, ptr %i.da, align 1, !tbaa !11, !noalias !153
  %i.db = getelementptr inbounds i8, ptr %next.gep306, i64 -8
  store <8 x i8> %wide.load308, ptr %i.db, align 1, !tbaa !11, !noalias !153
  %index.next309 = add nuw i64 %index305, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next309, %n.vec303
  br i1 %i.dc, label %vec.epilog.middle.block310, label %vec.epilog.vector.body304, !llvm.loop !135

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body304
  %cmp.n311 = icmp eq i64 %i.ci, %n.vec303
  br i1 %cmp.n311, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %vector.memcheck279, %iter.check298, %vec.epilog.iter.check300, %vec.epilog.middle.block310
  %.ph314 = phi ptr [ %i.ce, %iter.check298 ], [ %i.ce, %vector.memcheck279 ], [ %i.co, %vec.epilog.iter.check300 ], [ %i.cx, %vec.epilog.middle.block310 ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %iter.check298 ], [ %i.cc, %vector.memcheck279 ], [ %i.cp, %vec.epilog.iter.check300 ], [ %i.cy, %vec.epilog.middle.block310 ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph319 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.dd = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph319, %i.ch
  %xtraiter = and i64 %i.dd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.de = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.ph314, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.df = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !11, !noalias !153
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 -1 ; 4 uses
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !11, !noalias !153
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !136

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph314, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ch, %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph319
  %i.dj = icmp ugt i64 %i.di, -8
  br i1 %i.dj, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dk = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11, !noalias !153
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 -1
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !11, !noalias !153
  %i.do = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11, !noalias !153
  %i.dq = getelementptr inbounds i8, ptr %i.dk, i64 -2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !11, !noalias !153
  %i.dr = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11, !noalias !153
  %i.dt = getelementptr inbounds i8, ptr %i.dk, i64 -3
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !11, !noalias !153
  %i.du = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11, !noalias !153
  %i.dw = getelementptr inbounds i8, ptr %i.dk, i64 -4
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !11, !noalias !153
  %i.dx = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -5
end_hunk_0
