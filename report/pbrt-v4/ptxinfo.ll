Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/ptxinfo?download=true
inline.NumInlined: 341
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
%class.DumpMetaArrayVal = type { i8 }
%class.DumpMetaArrayVal.40 = type { i8 }
%class.DumpMetaArrayVal.41 = type { i8 }
%class.DumpMetaArrayVal.42 = type { i8 }
%class.DumpMetaArrayVal.43 = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN16DumpMetaArrayValIaEclEPN4Ptex4v2_412PtexMetaDataEPKc = comdat any

$_ZN16DumpMetaArrayValIsEclEPN4Ptex4v2_412PtexMetaDataEPKc = comdat any

$_ZN16DumpMetaArrayValIiEclEPN4Ptex4v2_412PtexMetaDataEPKc = comdat any

$_ZN16DumpMetaArrayValIfEclEPN4Ptex4v2_412PtexMetaDataEPKc = comdat any

$_ZN16DumpMetaArrayValIdEclEPN4Ptex4v2_412PtexMetaDataEPKc = comdat any

$__clang_call_terminate = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"  res: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  adjface: \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"  adjedge: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"  flags:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" (none)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" subface\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" constant\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" nbconstant\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" hasedits\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"  tiling: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ntiles = \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c", res = \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"  (constant)\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"  (untiled)\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"  data (\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c", const: \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\0A    (\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" %.3f\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"meta:\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" type=\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"  \22\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Header:\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"  magic: \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"'Ptex'\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"  version: \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"  meshtype: \00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"  datatype: \00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"  alphachan: \00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"  nchannels: \00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"  nlevels: \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"  nfaces: \00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"  extheadersize: \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"  faceinfosize: \00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"  constdatasize: \00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"  levelinfosize: \00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"  leveldatasize: \00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"  metadatazipsize: \00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"  metadatamemsize: \00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"  ubordermode: \00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"  vbordermode: \00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"  lmdheaderzipsize: \00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"  lmdheadermemsize: \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"  lmddatasize: \00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"  editdatasize: \00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"  editdatapos: \00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Level info:\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"  Level \00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"    leveldatasize: \00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"    levelheadersize: \00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"    nfaces: \00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.59 = private unnamed_addr constant [6 x i8] c"face \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c" edge \00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c" has incorrect adjacency\0A\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"\22 does not appear to haveany adjacency information.\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Adjacency information appears consistent.\0A\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Usage: ptxinfo [options] file\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"  -v Show ptex software version\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"  -m Dump meta data\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"  -f Dump face info\0A\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"  -d Dump data\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"  -D Dump data for all mipmap levels\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"  -t Dump tiling info\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"  -i Dump internal info\0A\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"  -c Check validity of adjacency data\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Ptex v\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"meshType: \00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"dataType: \00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"numChannels: \00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"alphaChannel: \00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"uBorderMode: \00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"vBorderMode: \00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"edgeFilterMode: \00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"numFaces: \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"hasEdits: \00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"hasMipMaps: \00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"numMetaKeys: \00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"texels: \00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z12DumpFaceInfoRKN4Ptex4v2_48FaceInfoE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = load i16, ptr %0, align 4, !tbaa !10     ; 4 uses
  %.sroa.0.0.extract.trunc = zext i16 %i.h to i32
  %.sroa.5.0.extract.shift = lshr i16 %i.h, 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.j = ashr exact i32 %sext, 24
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.j) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 32, ptr %i.g, align 1, !tbaa !10
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.g, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.r, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %1 = ashr i16 %i.h, 8
  %2 = sext i16 %1 to i32
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %2) ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %.sroa.0.0.extract.trunc.mask = and i16 %i.h, 255
  %i.v = zext nneg i16 %.sroa.0.0.extract.trunc.mask to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.w) ; 2 uses
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.2, i64 noundef 3) ; 0 uses
  %3 = zext nneg i16 %.sroa.5.0.extract.shift to i32
  %i.z = shl nuw i32 1, %3
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %i.z) ; 3 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.4, i64 noundef 11) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ae) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 32, ptr %i.f, align 1, !tbaa !10
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %.not.i14 = icmp eq i64 %i.al, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.f, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  %.0.i15 = phi ptr [ %i.am, %bb.d ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i15, i32 noundef %i.ap) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 32, ptr %i.e, align 1, !tbaa !10
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !23
  %.not.i17 = icmp eq i64 %i.aw, 0
  br i1 %.not.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.f, %bb.g
  %.0.i18 = phi ptr [ %i.ax, %bb.f ], [ %i.aq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !24
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i18, i32 noundef %i.ba) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !10
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %.not.i20 = icmp eq i64 %i.bh, 0
  br i1 %.not.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22: ; preds = %bb.h, %bb.i
  %.0.i21 = phi ptr [ %i.bi, %bb.h ], [ %i.bb, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i21, i32 noundef %i.bl) ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.5, i64 noundef 11) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !27
  %i.bq = and i8 %i.bp, 3
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef %i.br) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !10
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23
  %.not.i23 = icmp eq i64 %i.by, 0
  br i1 %.not.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25: ; preds = %bb.j, %bb.k
  %.0.i24 = phi ptr [ %i.bz, %bb.j ], [ %i.bs, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cb = load i8, ptr %i.bo, align 2, !tbaa !27
  %i.cc = lshr i8 %i.cb, 2
  %i.cd = and i8 %i.cc, 3
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i24, i32 noundef %i.ce) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !10
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !23
  %.not.i26 = icmp eq i64 %i.cl, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28: ; preds = %bb.l, %bb.m
  %.0.i27 = phi ptr [ %i.cm, %bb.l ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = load i8, ptr %i.bo, align 2, !tbaa !27
  %i.cp = lshr i8 %i.co, 4
  %i.cq = and i8 %i.cp, 3
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i27, i32 noundef %i.cr) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !10
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !12
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23
  %.not.i29 = icmp eq i64 %i.cy, 0
  br i1 %.not.i29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31: ; preds = %bb.n, %bb.o
  %.0.i30 = phi ptr [ %i.cz, %bb.n ], [ %i.cs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.db = load i8, ptr %i.bo, align 2, !tbaa !27
  %i.dc = lshr i8 %i.db, 6
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i30, i32 noundef %i.dd)
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.6, i64 noundef 8) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !28  ; 3 uses
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 7) ; 0 uses
  br label %bb.y

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit31
  %i.dk = and i8 %i.dh, 8
  %.not = icmp eq i8 %i.dk, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 8) ; 0 uses
  %.pre = load i8, ptr %i.dg, align 1, !tbaa !28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi i8 [ %.pre, %bb.r ], [ %i.dh, %bb.q ] ; 2 uses
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 9) ; 0 uses
  %.pre37.a = load i8, ptr %i.dg, align 1, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dp = phi i8 [ %.pre37.a, %bb.t ], [ %i.dm, %bb.s ] ; 2 uses
  %i.dq = and i8 %i.dp, 4
  %.not35.a = icmp eq i8 %i.dq, 0
  br i1 %.not35.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 11) ; 0 uses
  %.pre38 = load i8, ptr %i.dg, align 1, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ds = phi i8 [ %.pre38, %bb.v ], [ %i.dp, %bb.u ]
  %i.dt = and i8 %i.ds, 2
  %.not36 = icmp eq i8 %i.dt, 0
  br i1 %.not36, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.p
  %i.dv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 67
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ea)
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef signext i8 %i.eh(ptr noundef nonnull align 8 dereferenceable(570) %i.ea, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i = phi i8 [ %i.ee, %bb.aa ], [ %i.ei, %bb.ab ]
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_Z10DumpTilingPN4Ptex4v2_412PtexFaceDataE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 10) ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i16 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 4 uses
  %.sroa.09.0.extract.trunc = zext i16 %i.j to i32
  %.sroa.6.0.extract.shift = lshr i16 %i.j, 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 9) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i16 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.sroa.4.0.extract.trunc = zext i16 %i.o to i32
  %sext = shl i32 %.sroa.4.0.extract.trunc, 24
  %i.p = ashr exact i32 %sext, 24
  %sext.i.i = shl i32 %.sroa.09.0.extract.trunc, 24
  %i.q = ashr exact i32 %sext.i.i, 24             ; 2 uses
  %i.r = sub nsw i32 %i.p, %i.q
  %sext12 = shl nuw i32 1, %i.r
  %1 = ashr i16 %i.o, 8
  %2 = ashr i16 %i.j, 8                           ; 2 uses
  %narrow = sub nsw i16 %1, %2
  %3 = zext nneg i16 %narrow to i32
  %i.s = shl i32 %sext12, %3
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.s) ; 2 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.14, i64 noundef 8) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.q) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !10
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.ac, %bb.c ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %4 = sext i16 %2 to i32
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %4) ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %.sroa.09.0.extract.trunc.mask = and i16 %i.j, 255
  %i.ag = zext nneg i16 %.sroa.09.0.extract.trunc.mask to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.ah) ; 2 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.2, i64 noundef 3) ; 0 uses
  %5 = zext nneg i16 %.sroa.6.0.extract.shift to i32
  %i.ak = shl nuw i32 1, %5
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %i.ak)
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 12) ; 0 uses
  %i.ar = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ba, %bb.h ], [ %i.be, %bb.i ]
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 11) ; 0 uses
  %i.bi = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i4 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i4, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5: ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !42
  %.not.i1.i.i6 = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8: ; preds = %bb.l, %bb.m
  %.0.i.i.i7 = phi i8 [ %i.br, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i7)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z8DumpDataPN4Ptex4v2_411PtexTextureEib(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %0, null
  %or.cond48.not = and i1 %.not, %2
  br i1 %or.cond48.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.b = load i16, ptr %i.a, align 1, !tbaa !45
  %i.c = zext i16 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 6 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = load i16, ptr %i.g, align 4, !tbaa !10   ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.o to i8 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i16 %i.o, 8
  %.sroa.8.0.extract.trunc = trunc nuw i16 %.sroa.8.0.extract.shift to i8 ; 2 uses
  %i.p = icmp ne i32 %.1, 0
  %i.q = icmp sgt i8 %.sroa.0.0.extract.trunc, 0
  %or.cond67 = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp sgt i8 %.sroa.8.0.extract.trunc, 0
  %i.s = select i1 %or.cond67, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.u = icmp sgt i32 %i.k, 0                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  %wide.trip.count80 = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.270 = phi i32 [ %.1, %.lr.ph ], [ %i.ca, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %.sroa.0.069 = phi i8 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %i.by, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 5 uses
  %.sroa.8.068 = phi i8 [ %.sroa.8.0.extract.trunc, %.lr.ph ], [ %i.bz, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 5 uses
  %i.v = zext nneg i8 %.sroa.0.069 to i32
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = zext nneg i8 %.sroa.8.068 to i32
  %i.y = shl nuw i32 1, %i.x                      ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.w) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.2, i64 noundef 3) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.y)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !28
  %i.af = trunc i8 %i.ae to i1                    ; 2 uses
  %spec.select = select i1 %i.af, i32 1, i32 %i.w ; 3 uses
  %spec.select46 = select i1 %i.af, i32 1, i32 %i.y ; 3 uses
  %i.ag = icmp eq i32 %spec.select, 1
  %i.ah = icmp eq i32 %spec.select46, 1
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader.lr.ph.split.us.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.ak = icmp sgt i32 %spec.select46, 0
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge60

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.al = icmp sgt i32 %spec.select, 0
  %.sroa.8.0.insert.ext = zext nneg i8 %.sroa.8.068 to i16
  %.sroa.8.0.insert.shift = shl nuw nsw i16 %.sroa.8.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.069 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext
  br i1 %i.al, label %.preheader.us, label %._crit_edge60

.preheader.lr.ph.split.us.split.us:               ; preds = %bb.d
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 9) ; 0 uses
  %.sroa.8.0.insert.ext89 = zext nneg i8 %.sroa.8.068 to i16
  %.sroa.8.0.insert.shift90 = shl nuw nsw i16 %.sroa.8.0.insert.ext89, 8
  %.sroa.0.0.insert.ext91 = zext nneg i8 %.sroa.0.069 to i16
  %.sroa.0.0.insert.insert92 = or disjoint i16 %.sroa.8.0.insert.shift90, %.sroa.0.0.insert.ext91
  %i.an = load ptr, ptr %0, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.k, i16 %.sroa.0.0.insert.insert92)
  br i1 %i.u, label %.lr.ph.us.us.us.us.us, label %._crit_edge60

.lr.ph.us.us.us.us.us:                            ; preds = %.preheader.lr.ph.split.us.split.us, %.lr.ph.us.us.us.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.us.us.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv77
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !47
  %i.as = fpext float %i.ar to double
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %i.as) ; 0 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge60, label %.lr.ph.us.us.us.us.us, !llvm.loop !53

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge56.split.us63
  %.04257.us = phi i32 [ %i.bh, %._crit_edge56.split.us63 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.us, %.preheader.us
end_hunk_0
