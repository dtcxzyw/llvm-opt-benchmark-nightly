Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AssxmlFileWriter?download=true
inline.NumInlined: 169
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.5 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.5 = type { i64, [8 x i8] }
%struct.aiString = type { i32, [1024 x i8] }
%"class.std::allocator.2" = type { i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"wt\00", align 1, !guid !4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to open output file \00", align 1, !guid !5
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !guid !6
@.str.3 = private unnamed_addr constant [218 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?>\0A<ASSIMP format_id=\221\22>\0A\0A<!-- XML Model dump produced by assimp dump\0A  Library version: %u.%u.%u\0A  Source: %s\0A  Command line: %s\0A  %s\0A--> \0A\0A<Scene flags=\22%u\22 postprocessing=\22%u\22>\0A\00", align 1, !guid !7
@.str.4 = private unnamed_addr constant [24 x i8] c"<TextureList num=\22%u\22>\0A\00", align 1, !guid !8
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !guid !9
@.str.6 = private unnamed_addr constant [62 x i8] c"\09<Texture name=\22%s\22 width=\22%u\22 height=\22%u\22 compressed=\22%s\22> \0A\00", align 1, !guid !10
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !guid !11
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !guid !12
@.str.9 = private unnamed_addr constant [23 x i8] c"\09\09<Data length=\22%u\22> \0A\00", align 1, !guid !13
@.str.10 = private unnamed_addr constant [7 x i8] c"\09\09\09%2x\00", align 1, !guid !14
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !guid !15
@.str.12 = private unnamed_addr constant [19 x i8] c"\09\09\09%2x %2x %2x %2x\00", align 1, !guid !16
@.str.13 = private unnamed_addr constant [23 x i8] c"\09\09</Data>\0A\09</Texture>\0A\00", align 1, !guid !17
@.str.14 = private unnamed_addr constant [16 x i8] c"</TextureList>\0A\00", align 1, !guid !18
@.str.15 = private unnamed_addr constant [25 x i8] c"<MaterialList num=\22%u\22>\0A\00", align 1, !guid !19
@.str.16 = private unnamed_addr constant [13 x i8] c"\09<Material>\0A\00", align 1, !guid !20
@.str.17 = private unnamed_addr constant [31 x i8] c"\09\09<MatPropertyList  num=\22%u\22>\0A\00", align 1, !guid !21
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !22
@.str.19 = private unnamed_addr constant [6 x i8] c"float\00", align 1, !guid !23
@.str.20 = private unnamed_addr constant [8 x i8] c"integer\00", align 1, !guid !24
@.str.21 = private unnamed_addr constant [7 x i8] c"string\00", align 1, !guid !25
@.str.22 = private unnamed_addr constant [14 x i8] c"binary_buffer\00", align 1, !guid !26
@.str.23 = private unnamed_addr constant [69 x i8] c"\09\09\09<MatProperty key=\22%s\22 \0A\09\09\09type=\22%s\22 tex_usage=\22%s\22 tex_index=\22%u\22\00", align 1, !guid !27
@.str.24 = private unnamed_addr constant [17 x i8] c" size=\22%i\22>\0A\09\09\09\09\00", align 1, !guid !28
@.str.25 = private unnamed_addr constant [4 x i8] c"%f \00", align 1, !guid !29
@.str.26 = private unnamed_addr constant [4 x i8] c"%i \00", align 1, !guid !30
@.str.27 = private unnamed_addr constant [5 x i8] c"%2x \00", align 1, !guid !31
@.str.28 = private unnamed_addr constant [6 x i8] c"\0A\09\09\09\09\00", align 1, !guid !32
@.str.29 = private unnamed_addr constant [11 x i8] c">\0A\09\09\09\09\22%s\22\00", align 1, !guid !33
@.str.30 = private unnamed_addr constant [20 x i8] c"\0A\09\09\09</MatProperty>\0A\00", align 1, !guid !34
@.str.31 = private unnamed_addr constant [22 x i8] c"\09\09</MatPropertyList>\0A\00", align 1, !guid !35
@.str.32 = private unnamed_addr constant [14 x i8] c"\09</Material>\0A\00", align 1, !guid !36
@.str.33 = private unnamed_addr constant [17 x i8] c"</MaterialList>\0A\00", align 1, !guid !37
@.str.34 = private unnamed_addr constant [26 x i8] c"<AnimationList num=\22%u\22>\0A\00", align 1, !guid !38
@.str.35 = private unnamed_addr constant [52 x i8] c"\09<Animation name=\22%s\22 duration=\22%e\22 tick_cnt=\22%e\22>\0A\00", align 1, !guid !39
@.str.36 = private unnamed_addr constant [27 x i8] c"\09\09<NodeAnimList num=\22%u\22>\0A\00", align 1, !guid !40
@.str.37 = private unnamed_addr constant [25 x i8] c"\09\09\09<NodeAnim node=\22%s\22>\0A\00", align 1, !guid !41
@.str.38 = private unnamed_addr constant [32 x i8] c"\09\09\09\09<PositionKeyList num=\22%u\22>\0A\00", align 1, !guid !42
@.str.39 = private unnamed_addr constant [74 x i8] c"\09\09\09\09\09<PositionKey time=\22%e\22>\0A\09\09\09\09\09\09%0 8f %0 8f %0 8f\0A\09\09\09\09\09</PositionKey>\0A\00", align 1, !guid !43
@.str.40 = private unnamed_addr constant [24 x i8] c"\09\09\09\09</PositionKeyList>\0A\00", align 1, !guid !44
@.str.41 = private unnamed_addr constant [31 x i8] c"\09\09\09\09<ScalingKeyList num=\22%u\22>\0A\00", align 1, !guid !45
@.str.42 = private unnamed_addr constant [72 x i8] c"\09\09\09\09\09<ScalingKey time=\22%e\22>\0A\09\09\09\09\09\09%0 8f %0 8f %0 8f\0A\09\09\09\09\09</ScalingKey>\0A\00", align 1, !guid !46
@.str.43 = private unnamed_addr constant [23 x i8] c"\09\09\09\09</ScalingKeyList>\0A\00", align 1, !guid !47
@.str.44 = private unnamed_addr constant [32 x i8] c"\09\09\09\09<RotationKeyList num=\22%u\22>\0A\00", align 1, !guid !48
@.str.45 = private unnamed_addr constant [80 x i8] c"\09\09\09\09\09<RotationKey time=\22%e\22>\0A\09\09\09\09\09\09%0 8f %0 8f %0 8f %0 8f\0A\09\09\09\09\09</RotationKey>\0A\00", align 1, !guid !49
@.str.46 = private unnamed_addr constant [24 x i8] c"\09\09\09\09</RotationKeyList>\0A\00", align 1, !guid !50
@.str.47 = private unnamed_addr constant [16 x i8] c"\09\09\09</NodeAnim>\0A\00", align 1, !guid !51
@.str.48 = private unnamed_addr constant [19 x i8] c"\09\09</NodeAnimList>\0A\00", align 1, !guid !52
@.str.49 = private unnamed_addr constant [15 x i8] c"\09</Animation>\0A\00", align 1, !guid !53
@.str.50 = private unnamed_addr constant [18 x i8] c"</AnimationList>\0A\00", align 1, !guid !54
@.str.51 = private unnamed_addr constant [21 x i8] c"<MeshList num=\22%u\22>\0A\00", align 1, !guid !55
@.str.52 = private unnamed_addr constant [49 x i8] c"\09<Mesh types=\22%s %s %s %s\22 material_index=\22%u\22>\0A\00", align 1, !guid !56
@.str.53 = private unnamed_addr constant [7 x i8] c"points\00", align 1, !guid !57
@.str.54 = private unnamed_addr constant [6 x i8] c"lines\00", align 1, !guid !58
@.str.55 = private unnamed_addr constant [10 x i8] c"triangles\00", align 1, !guid !59
@.str.56 = private unnamed_addr constant [9 x i8] c"polygons\00", align 1, !guid !60
@.str.57 = private unnamed_addr constant [23 x i8] c"\09\09<BoneList num=\22%u\22>\0A\00", align 1, !guid !61
@.str.58 = private unnamed_addr constant [168 x i8] c"\09\09\09<Bone name=\22%s\22>\0A\09\09\09\09<Matrix4> \0A\09\09\09\09\09%0 6f %0 6f %0 6f %0 6f\0A\09\09\09\09\09%0 6f %0 6f %0 6f %0 6f\0A\09\09\09\09\09%0 6f %0 6f %0 6f %0 6f\0A\09\09\09\09\09%0 6f %0 6f %0 6f %0 6f\0A\09\09\09\09</Matrix4> \0A\00", align 1, !guid !62
@.str.59 = private unnamed_addr constant [27 x i8] c"\09\09\09\09<WeightList num=\22%u\22>\0A\00", align 1, !guid !63
@.str.60 = private unnamed_addr constant [50 x i8] c"\09\09\09\09\09<Weight index=\22%u\22>\0A\09\09\09\09\09\09%f\0A\09\09\09\09\09</Weight>\0A\00", align 1, !guid !64
@.str.61 = private unnamed_addr constant [19 x i8] c"\09\09\09\09</WeightList>\0A\00", align 1, !guid !65
@.str.62 = private unnamed_addr constant [12 x i8] c"\09\09\09</Bone>\0A\00", align 1, !guid !66
@.str.63 = private unnamed_addr constant [15 x i8] c"\09\09</BoneList>\0A\00", align 1, !guid !67
@.str.64 = private unnamed_addr constant [23 x i8] c"\09\09<FaceList num=\22%u\22>\0A\00", align 1, !guid !68
@.str.65 = private unnamed_addr constant [24 x i8] c"\09\09\09<Face num=\22%u\22>\0A\09\09\09\09\00", align 1, !guid !69
@.str.66 = private unnamed_addr constant [4 x i8] c"%u \00", align 1, !guid !70
@.str.67 = private unnamed_addr constant [13 x i8] c"\0A\09\09\09</Face>\0A\00", align 1, !guid !71
@.str.68 = private unnamed_addr constant [15 x i8] c"\09\09</FaceList>\0A\00", align 1, !guid !72
@.str.69 = private unnamed_addr constant [52 x i8] c"\09\09<Positions num=\22%u\22 set=\220\22 num_components=\223\22> \0A\00", align 1, !guid !73
@.str.70 = private unnamed_addr constant [21 x i8] c"\09\09%0 8f %0 8f %0 8f\0A\00", align 1, !guid !74
@.str.71 = private unnamed_addr constant [16 x i8] c"\09\09</Positions>\0A\00", align 1, !guid !75
@.str.72 = private unnamed_addr constant [50 x i8] c"\09\09<Normals num=\22%u\22 set=\220\22 num_components=\223\22> \0A\00", align 1, !guid !76
@.str.73 = private unnamed_addr constant [14 x i8] c"\09\09</Normals>\0A\00", align 1, !guid !77
@.str.74 = private unnamed_addr constant [51 x i8] c"\09\09<Tangents num=\22%u\22 set=\220\22 num_components=\223\22> \0A\00", align 1, !guid !78
@.str.75 = private unnamed_addr constant [15 x i8] c"\09\09</Tangents>\0A\00", align 1, !guid !79
@.str.76 = private unnamed_addr constant [53 x i8] c"\09\09<Bitangents num=\22%u\22 set=\220\22 num_components=\223\22> \0A\00", align 1, !guid !80
@.str.77 = private unnamed_addr constant [17 x i8] c"\09\09</Bitangents>\0A\00", align 1, !guid !81
@.str.78 = private unnamed_addr constant [68 x i8] c"\09\09<TextureCoords num=\22%u\22 set=\22%u\22 name=\22%s\22 num_components=\22%u\22> \0A\00", align 1, !guid !82
@.str.79 = private unnamed_addr constant [15 x i8] c"\09\09%0 8f %0 8f\0A\00", align 1, !guid !83
@.str.80 = private unnamed_addr constant [20 x i8] c"\09\09</TextureCoords>\0A\00", align 1, !guid !84
@.str.81 = private unnamed_addr constant [50 x i8] c"\09\09<Colors num=\22%u\22 set=\22%u\22 num_components=\224\22> \0A\00", align 1, !guid !85
@.str.82 = private unnamed_addr constant [27 x i8] c"\09\09%0 8f %0 8f %0 8f %0 8f\0A\00", align 1, !guid !86
@.str.83 = private unnamed_addr constant [13 x i8] c"\09\09</Colors>\0A\00", align 1, !guid !87
@.str.84 = private unnamed_addr constant [10 x i8] c"\09</Mesh>\0A\00", align 1, !guid !88
@.str.85 = private unnamed_addr constant [13 x i8] c"</MeshList>\0A\00", align 1, !guid !89
@.str.86 = private unnamed_addr constant [19 x i8] c"</Scene>\0A</ASSIMP>\00", align 1, !guid !90
@.str.87 = private unnamed_addr constant [162 x i8] c"%s<Node name=\22%s\22> \0A%s\09<Matrix4> \0A%s\09\09%0 6f %0 6f %0 6f %0 6f\0A%s\09\09%0 6f %0 6f %0 6f %0 6f\0A%s\09\09%0 6f %0 6f %0 6f %0 6f\0A%s\09\09%0 6f %0 6f %0 6f %0 6f\0A%s\09</Matrix4> \0A\00", align 1, !guid !91
@.str.88 = private unnamed_addr constant [27 x i8] c"%s\09<MeshRefs num=\22%u\22>\0A%s\09\00", align 1, !guid !92
@.str.89 = private unnamed_addr constant [17 x i8] c"\0A%s\09</MeshRefs>\0A\00", align 1, !guid !93
@.str.90 = private unnamed_addr constant [24 x i8] c"%s\09<NodeList num=\22%u\22>\0A\00", align 1, !guid !94
@.str.91 = private unnamed_addr constant [16 x i8] c"%s\09</NodeList>\0A\00", align 1, !guid !95
@.str.92 = private unnamed_addr constant [11 x i8] c"%s</Node>\0A\00", align 1, !guid !96
@.str.93 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1, !guid !97
@.str.94 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1, !guid !98
@.str.95 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1, !guid !99
@.str.96 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1, !guid !100
@.str.97 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1, !guid !101
@.str.98 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !102
@.str.99 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1, !guid !103
@switch.table._ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb = private unnamed_addr constant [5 x ptr] [ptr @.str.19, ptr @.str.18, ptr @.str.21, ptr @.str.20, ptr @.str.22], align 8

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !137 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %struct.aiString, align 4           ; 21 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %0, ptr noundef nonnull @.str) ; 109 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 10)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #16
          to label %bb.go unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %12, align 8               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.h ] ; 4 uses
  %.1 = phi i1 [ true, %bb.g ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %13, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.w = load ptr, ptr %14, align 8               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %14, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #17
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.af = load i64, ptr %i.x, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ag) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %.1, label %bb.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %.1, label %bb.i, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit32

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread
  %.pn.pn.pn38.ph = phi { ptr, i32 } [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread45 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn.pn.pn38 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn.pn.pn38.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.i) #15
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit32

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ah = tail call i64 @time(ptr noundef null) #15
  store i64 %i.ah, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ai = call ptr @gmtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aj, ptr %6, align 8
  %i.ak = icmp eq ptr %1, null
  br i1 %i.ak, label %.noexc.i, label %bb.k

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.99) #16
          to label %.noexc unwind label %.body.thread51

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.al = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.al, ptr %i.c, align 8
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc28 unwind label %.body.thread51 ; 2 uses

.noexc28:                                         ; preds = %.noexc.i.i
  store ptr %i.an, ptr %6, align 8
  %i.ao = load i64, ptr %i.c, align 8
  store i64 %i.ao, ptr %i.aj, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc28, %bb.k
  %i.ap = phi ptr [ %i.an, %.noexc28 ], [ %i.aj, %bb.k ] ; 2 uses
  switch i64 %i.al, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %1, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull readonly align 1 %1, i64 %i.al, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.ar = load i64, ptr %i.c, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.av = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 2) #15 ; 2 uses
  %.not718.i = icmp eq i64 %i.av, -1
  br i1 %.not718.i, label %.noexc.i526.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.aw = phi i64 [ %i.az, %.lr.ph.i ], [ %i.av, %bb.n ]
  %i.ax = load ptr, ptr %6, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 63, ptr %i.ay, align 1
  %i.az = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 2) #15 ; 2 uses
  %.not.i = icmp eq i64 %i.az, -1
  br i1 %.not.i, label %.noexc.i526.i, label %.lr.ph.i, !llvm.loop !105

.noexc.i526.i:                                    ; preds = %.lr.ph.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ba, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 217, ptr %i.b, align 8
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc527.i unwind label %bb.u ; 3 uses

.noexc527.i:                                      ; preds = %.noexc.i526.i
  store ptr %i.bb, ptr %7, align 8
  %i.bc = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(217) %i.bb, ptr noundef nonnull align 1 dereferenceable(217) @.str.3, i64 217, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.be, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.bf = invoke i32 @aiGetVersionMajor()
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %.noexc527.i
  %i.bg = invoke i32 @aiGetVersionMinor()
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bh = invoke i32 @aiGetVersionRevision()
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bi = call ptr @asctime(ptr noundef %i.ai) #15
  %i.bj = load ptr, ptr %7, align 8
  %i.bk = load ptr, ptr %6, align 8
  %i.bl = load i32, ptr %3, align 8
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef %i.bj, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef %0, ptr noundef %i.bk, ptr noundef %i.bi, i32 noundef %i.bl, i32 noundef 0)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke fastcc void @_ZN6Assimp16AssxmlFileWriterL9WriteNodeEPK6aiNodePNS_8IOStreamEj(ptr noundef %i.bn, ptr noundef nonnull %i.h, i32 noundef 0)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %8, i8 0, i64 1028, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %.not472.i = icmp eq i32 %i.bp, 0
  br i1 %.not472.i, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.4, i32 noundef %i.bp)
          to label %.preheader693.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s936

.preheader693.i:                                  ; preds = %bb.t
  %i.bq = load i32, ptr %i.bo, align 8
  %.not784.i = icmp eq i32 %i.bq, 0
  br i1 %.not784.i, label %._crit_edge725.i, label %._crit_edge.i.i529.lr.ph.i

._crit_edge.i.i529.lr.ph.i:                       ; preds = %.preheader693.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 23
  br label %._crit_edge.i.i529.i

._crit_edge725.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536.i, %.preheader693.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.14)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.s936

bb.u:                                             ; preds = %.noexc.i526.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576.i

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.o, %.noexc527.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

._crit_edge.i.i529.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536.i, %._crit_edge.i.i529.lr.ph.i
  %indvars.iv883.i = phi i64 [ 0, %._crit_edge.i.i529.lr.ph.i ], [ %indvars.iv.next884.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536.i ] ; 2 uses
  %i.bx = load ptr, ptr %i.br, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv883.i
  %i.bz = load ptr, ptr %i.by, align 8            ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.bs, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bs, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  store i64 7, ptr %i.bt, align 8
  store i8 0, ptr %i.bu, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = load i32, ptr %i.cd, align 8
  %.not507.i = icmp eq i32 %i.ce, 0
  br i1 %.not507.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i529.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 36 ; 2 uses
  %i.cg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #15
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 7, ptr noundef nonnull %i.cf, i64 noundef %i.cg)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge.i unwind label %.loopexit.split-lp682.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge.i: ; preds = %bb.w
  %.pre.i = load ptr, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge.i, %._crit_edge.i.i529.i
  %i.ci = phi ptr [ %.pre.i, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge.i ], [ %i.bs, %._crit_edge.i.i529.i ]
  br i1 %i.cc, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.cj = load i32, ptr %i.bz, align 8
end_hunk_0
