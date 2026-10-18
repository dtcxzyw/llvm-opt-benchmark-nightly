Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.09?download=true
inline.NumInlined: 6052
inline.NumDeleted: 2187
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvXs7_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusiveINtNtNtB9_3num7nonzero7NonZerojEENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream:bb.a

bb.h:                                             ; preds = %.split22, %.split21, %.split20, %.split, %bb.g, %bb.f, %_RNvXsF_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream.exit17, %bb.c, %_RNvXsF_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvXsF_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream.exit17 ], [ true, %_RNvXsF_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream.exit ], [ true, %bb.c ], [ %i.ah, %bb.g ], [ false, %bb.f ], [ true, %.split ], [ true, %.split20 ], [ true, %.split21 ], [ true, %.split22 ], !dbg !113906
  ret i1 %.sroa.0.0, !dbg !113907
}

; Function Attrs: inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #25 !dbg !1672 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !113924, !range !2147, !noundef !2145 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113925
  %i.c = load ptr, ptr %i.b, align 8, !dbg !113925, !nonnull !2145, !noundef !2145 ; 7 uses
  switch i64 %i.a, label %default.unreachable4 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !113924

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !dbg !113926, !range !2537, !noundef !2145
  %i.e = icmp eq i64 %i.d, 3, !dbg !113927
  br i1 %i.e, label %bb.e, label %bb.f, !dbg !113927

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113928
  %i.g = load i64, ptr %i.f, align 8, !dbg !113928, !noundef !2145
  %i.h = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !113929
  %i.i = icmp slt i64 %i.h, 0, !dbg !113930
  br i1 %i.i, label %bb.h, label %bb.g, !dbg !113930

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113931
  %i.k = load i64, ptr %i.j, align 8, !dbg !113931, !noundef !2145
  %i.l = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !113932
  %i.m = icmp slt i64 %i.l, 0, !dbg !113933
  br i1 %i.m, label %bb.i, label %bb.g, !dbg !113933

bb.e:                                             ; preds = %bb.f, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113934
  %i.o = load ptr, ptr %i.n, align 8, !dbg !113934, !noundef !2145
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !113935
  %i.q = load i64, ptr %i.p, align 8, !dbg !113935, !noundef !2145
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113936
  store ptr %i.c, ptr %i.r, align 8, !dbg !113936
  br label %bb.g, !dbg !113937

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !113938
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !dbg !113939 ; 0 uses
  br label %bb.e, !dbg !113940

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sink10 = phi i64 [ 8, %bb.c ], [ 16, %bb.e ], [ 8, %bb.d ]
  %.sink8 = phi ptr [ %i.c, %bb.c ], [ %i.o, %bb.e ], [ %i.c, %bb.d ]
  %.sink7 = phi i64 [ 16, %bb.c ], [ 24, %bb.e ], [ 16, %bb.d ]
  %.sink5 = phi i64 [ %i.g, %bb.c ], [ %i.q, %bb.e ], [ %i.k, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10, !dbg !113924
  store ptr %.sink8, ptr %i.u, align 8, !dbg !113924
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7, !dbg !113924
  store i64 %.sink5, ptr %i.v, align 8, !dbg !113924
  store i64 %i.a, ptr %0, align 8, !dbg !113924
  ret void, !dbg !113941

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !113942
  unreachable, !dbg !113942

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !113943
  unreachable, !dbg !113943
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs9_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_12CloudOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !113944 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !113997
  %i.c = load i64, ptr %i.b, align 8, !dbg !113997, !noundef !2145
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !113998
  %i.e = load i64, ptr %i.d, align 8, !dbg !113998, !range !2553, !noundef !2145 ; 3 uses
  %.not = icmp eq i64 %i.e, 5, !dbg !113998
  br i1 %.not, label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, label %bb.b, !dbg !113999

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !114000 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !114001 ; 5 uses
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ], !dbg !114001

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !114002
  br label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !114003

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtB7_6string6StringEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !114004
  br label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !114003

bb.e:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtB7_6string6StringEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !114005
  br label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !114003

bb.f:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !114006
  br label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !114003

bb.g:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !114007
  br label %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !114003

_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !114008
  %i.i = load i64, ptr %i.h, align 8, !dbg !114008, !range !2147, !noundef !2145 ; 2 uses
  switch i64 %i.i, label %bb.i [
    i64 2, label %bb.h
    i64 0, label %bb.n
  ], !dbg !114009

bb.h:                                             ; preds = %bb.j, %bb.k, %bb.o, %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ], [ %i.v, %bb.o ], [ %.val8, %bb.k ], [ %.val8, %bb.j ], !dbg !113983
  %.sroa.5.sroa.0.0 = phi i64 [ undef, %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ], [ %i.y, %bb.o ], [ 0, %bb.k ], [ 1, %bb.j ], !dbg !113983
  %.sroa.0.0 = phi i64 [ %i.i, %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ], [ 0, %bb.o ], [ 1, %bb.k ], [ 1, %bb.j ], !dbg !114010
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !114011
  store i64 %i.c, ptr %i.k, align 8, !dbg !114011
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !114011
  store i64 %i.e, ptr %i.l, align 8, !dbg !114011
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !114011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !114011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !114011
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !114011
  store i64 %.sroa.0.0, ptr %i.m, align 8, !dbg !114011
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !114011
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114011
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !114011
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !114011
  ret void, !dbg !114012

bb.i:                                             ; preds = %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !114013
  %.val = load i64, ptr %i.n, align 8, !dbg !114014, !range !2255, !noundef !2145
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !114014
  %.val8 = load ptr, ptr %i.o, align 8, !dbg !114014, !nonnull !2145, !noundef !2145 ; 3 uses
  %i.p = trunc nuw i64 %.val to i1, !dbg !114015
  %i.q = atomicrmw add ptr %.val8, i64 1 monotonic, align 8, !dbg !114016
  %i.r = icmp slt i64 %i.q, 0, !dbg !114017       ; 2 uses
  br i1 %i.p, label %bb.j, label %bb.k, !dbg !114015

bb.j:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.m, label %bb.h, !dbg !114018

bb.k:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.l, label %bb.h, !dbg !114019

bb.l:                                             ; preds = %bb.k
  call void @llvm.trap(), !dbg !114020
  unreachable, !dbg !114020

bb.m:                                             ; preds = %bb.j
  call void @llvm.trap(), !dbg !114021
  unreachable, !dbg !114021

bb.n:                                             ; preds = %_RNvXs3_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB5_11CloudConfigNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !114022
  %i.t = load ptr, ptr %i.s, align 8, !dbg !114022, !nonnull !2145, !noundef !2145 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !114022
  %i.v = load ptr, ptr %i.u, align 8, !dbg !114022, !nonnull !2145, !align !2295, !noundef !2145
  %i.w = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !dbg !114023
  %i.x = icmp slt i64 %i.w, 0, !dbg !114024
  br i1 %i.x, label %bb.p, label %bb.o, !dbg !114024

bb.o:                                             ; preds = %bb.n
  %i.y = ptrtoint ptr %i.t to i64, !dbg !113990
  br label %bb.h, !dbg !114013

bb.p:                                             ; preds = %bb.n
  call void @llvm.trap(), !dbg !114025
  unreachable, !dbg !114025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef align 8 ptr @_RNvXsB_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nthCs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #10 !dbg !114026 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114043
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114043, !alias.scope !114041, !nonnull !2145, !noundef !2145 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !114044, !alias.scope !114041, !nonnull !2145, !noundef !2145 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64, !dbg !114045
  %i.e = ptrtoint ptr %i.c to i64, !dbg !114045
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !114045
  %i.g = udiv exact i64 %i.f, 80, !dbg !114045
  %.not.i.not = icmp ult i64 %1, %i.g, !dbg !114046 ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %1, !dbg !114046 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80, !dbg !114046
  %.sroa.0.0.i = select i1 %.not.i.not, ptr %i.i, ptr %i.b, !dbg !114046
  store ptr %.sroa.0.0.i, ptr %0, align 8, !dbg !114047, !alias.scope !114041
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !114048
  %.sroa.0.0 = select i1 %.not.i.not, ptr %i.j, ptr null, !dbg !114048
  ret ptr %.sroa.0.0, !dbg !114049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsB_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !114050 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114063
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114063, !nonnull !2145, !noundef !2145
  %i.c = load ptr, ptr %1, align 8, !dbg !114064, !nonnull !2145, !noundef !2145
  %i.d = ptrtoint ptr %i.b to i64, !dbg !114065
  %i.e = ptrtoint ptr %i.c to i64, !dbg !114065
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !114065
  %i.g = udiv exact i64 %i.f, 80, !dbg !114065    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !114066
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114066
  store i64 1, ptr %i.h, align 8, !dbg !114066
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114066
  store i64 %i.g, ptr %i.i, align 8, !dbg !114066
  ret void, !dbg !114067
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsB_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4KeysmNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 !dbg !114068 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114081
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114081, !nonnull !2145, !noundef !2145
  %i.c = load ptr, ptr %1, align 8, !dbg !114082, !nonnull !2145, !noundef !2145
  %i.d = ptrtoint ptr %i.b to i64, !dbg !114083
  %i.e = ptrtoint ptr %i.c to i64, !dbg !114083
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !114083
  %i.g = lshr exact i64 %i.f, 7, !dbg !114083     ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !114084
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114084
  store i64 1, ptr %i.h, align 8, !dbg !114084
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114084
  store i64 %i.g, ptr %i.i, align 8, !dbg !114084
  ret void, !dbg !114085
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan16reader_interface12capabilities1__NtB7_18ReaderCapabilitiesNtNtCscgRAwXFJnXP_4core3fmt6Binary3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !114086 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !dbg !114095, !noundef !2145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114096, !noalias !114093
  store i8 %i.b, ptr %i.a, align 1, !dbg !114097, !noalias !114093
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114098, !noalias !114094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114099, !noalias !114093
  ret i1 %i.c, !dbg !114100
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan16reader_interface12capabilities1__NtB7_18ReaderCapabilitiesNtNtCscgRAwXFJnXP_4core3fmt5Octal3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !114101 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !dbg !114110, !noundef !2145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114111, !noalias !114108
  store i8 %i.b, ptr %i.a, align 1, !dbg !114112, !noalias !114108
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114113, !noalias !114109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114114, !noalias !114108
  ret i1 %i.c, !dbg !114115
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsE_NvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan16reader_interface12capabilities1__NtB7_18ReaderCapabilitiesNtNtCscgRAwXFJnXP_4core3fmt8LowerHex3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !114116 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !dbg !114125, !noundef !2145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114126, !noalias !114123
  store i8 %i.b, ptr %i.a, align 1, !dbg !114127, !noalias !114123
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114128, !noalias !114124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114129, !noalias !114123
  ret i1 %i.c, !dbg !114130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !114131 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114140
  %i.b = load i32, ptr %0, align 4, !dbg !114140, !range !2388, !noundef !2145
  store i32 %i.b, ptr %i.a, align 4, !dbg !114141
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114142
  %i.d = load i32, ptr %i.c, align 8, !dbg !114142, !alias.scope !114139, !noundef !2145 ; 2 uses
  %i.e = and i32 %i.d, 33554432, !dbg !114142
  %i.f = icmp eq i32 %i.e, 0, !dbg !114143
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !114143

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 67108864, !dbg !114144
  %i.h = icmp eq i32 %i.g, 0, !dbg !114145
  br i1 %i.h, label %bb.d, label %bb.e, !dbg !114145

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_RNvXsu_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114146
  br label %_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt.exit, !dbg !114146

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114147
  br label %_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt.exit, !dbg !114147

bb.e:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsw_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114148
  br label %_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt.exit, !dbg !114148

_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114149
  ret i1 %.sroa.0.0.in.i, !dbg !114150
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsF_NvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan16reader_interface12capabilities1__NtB7_18ReaderCapabilitiesNtNtCscgRAwXFJnXP_4core3fmt8UpperHex3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !114151 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !dbg !114160, !noundef !2145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114161, !noalias !114158
  store i8 %i.b, ptr %i.a, align 1, !dbg !114162, !noalias !114158
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCscgRAwXFJnXP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114163, !noalias !114159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114164, !noalias !114158
  ret i1 %i.c, !dbg !114165
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !114166 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @666, i64 noundef 5), !dbg !114168
  ret i1 %i.a, !dbg !114169
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !114170 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 15 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !114214
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 328, !dbg !114227
  %i.h = load ptr, ptr %i.g, align 8, !dbg !114227, !nonnull !2145, !noundef !2145 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !114227
  %i.j = load i64, ptr %i.i, align 8, !dbg !114227, !noundef !2145 ; 2 uses
  %i.k = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !dbg !114228
  %i.l = icmp slt i64 %i.k, 0, !dbg !114229
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !114229

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.f, align 8, !dbg !114215
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !114215
  store i64 %i.j, ptr %i.m, align 8, !dbg !114215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !114230
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240, !dbg !114230
  invoke fastcc void @_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_providerNtB5_16FileProviderTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
          to label %bb.g unwind label %bb.f, !dbg !114230

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !114231
  unreachable, !dbg !114231

bb.d:                                             ; preds = %bb.j, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.q, %bb.f ]
  %i.o = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !114232, !noalias !114221
  %i.p = icmp eq i64 %i.o, 1, !dbg !114233
  br i1 %i.p, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECs2g09Ig8GZd6_13polars_stream.exit, !dbg !114233

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !114234
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #62
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.y, !dbg !114235

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !114223
  %i.r = load i64, ptr %1, align 8, !dbg !114236, !range !2447, !noundef !2145
  %i.s = icmp eq i64 %i.r, -9223372036854775808, !dbg !114236
  br i1 %i.s, label %bb.h, label %bb.i, !dbg !114236

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775808, ptr %i.d, align 8, !dbg !114236
  br label %bb.m, !dbg !114236

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114237
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.l unwind label %bb.k, !dbg !114237

bb.j:                                             ; preds = %bb.v, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.v ], [ %i.t, %bb.k ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13file_provider16FileProviderTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.e) #61
          to label %bb.d unwind label %bb.y, !dbg !114238

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
end_hunk_0
