begin_hunk_0
@.str.2 = private unnamed_addr constant [51 x i8] c"unreachable (pattern matches are exhaustive in F*)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"provably unreachable code: did an unverified caller violate a precondition?\00", align 1
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.9 = private unnamed_addr constant [13 x i64] [i64 64, i64 64, i64 64, i64 64, i64 128, i64 128, i64 144, i64 136, i64 104, i64 72, i64 64, i64 64, i64 128], align 8
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.10 = private unnamed_addr constant [13 x i64] [i64 64, i64 64, i64 64, i64 64, i64 128, i64 128, i64 144, i64 136, i64 104, i64 72, i64 64, i64 poison, i64 128], align 8
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_digest.27 = private unnamed_addr constant [14 x i8] c"@@@@\80\80\90\88hH@@\80\80", align 1
@switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28 = private unnamed_addr constant [14 x i64] [i64 64, i64 64, i64 64, i64 64, i64 128, i64 128, i64 144, i64 136, i64 104, i64 72, i64 64, i64 64, i64 128, i64 128], align 8
@switch.table.init0 = private unnamed_addr constant [14 x i32] [i32 64, i32 64, i32 64, i32 64, i32 128, i32 128, i32 144, i32 136, i32 104, i32 72, i32 64, i32 64, i32 128, i32 128], align 4
@switch.table.init0.30 = private unnamed_addr constant [12 x i64] [i64 64, i64 64, i64 128, i64 128, i64 64, i64 64, i64 64, i64 128, i64 136, i64 144, i64 104, i64 72], align 8
@switch.table.init0.31 = private unnamed_addr constant [12 x i32] [i32 64, i32 64, i32 128, i32 128, i32 64, i32 64, i32 64, i32 128, i32 136, i32 144, i32 104, i32 72], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_Py_LibHacl_Hacl_Streaming_HMAC_s1(i64 %0, ptr noundef readonly byval(%struct.Hacl_Streaming_HMAC_Definitions_two_state_s) align 8 captures(none) %1) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1

switch.lookup19:                                  ; preds = %switch.hole_check
  %i.d = zext nneg i8 %0 to i64
  %switch.gep20 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_malloc_.10, i64 %i.d
  %switch.load21 = load i64, ptr %switch.gep20, align 8
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.load21, i64 noundef 1) #14 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_1
begin_hunk_2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.c
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !19
  %i.d = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %i.f = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.g = urem i64 %.sroa.4159.0.copyload, %switch.load
  %i.h = icmp eq i64 %i.g, 0
end_hunk_3
begin_hunk_4

switch.lookup1014:                                ; preds = %switch.lookup
  %i.j = zext nneg i8 %.val.i to i64
  %switch.gep1015 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.j
  %switch.load1016 = load i64, ptr %switch.gep1015, align 8
  %i.k = urem i64 %.sroa.4159.0.copyload, %switch.load1016
  %i.l = trunc nuw nsw i64 %i.k to i32
end_hunk_4
begin_hunk_5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.n = zext nneg i8 %.val.i to i64
  %switch.gep1018 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.n
  %switch.load1019 = load i64, ptr %switch.gep1018, align 8
  %i.o = urem i64 %.sroa.4159.0.copyload, %switch.load1019
  %i.p = icmp eq i64 %i.o, 0
end_hunk_5
begin_hunk_6
  br i1 %or.cond3, label %switch.lookup1020, label %switch.lookup1023

switch.lookup1023:                                ; preds = %switch.lookup1017
  %switch.gep1024 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.q
  %switch.load1025 = load i64, ptr %switch.gep1024, align 8
  %i.r = urem i64 %.sroa.4159.0.copyload, %switch.load1025
  br label %block_len.exit243

switch.lookup1020:                                ; preds = %switch.lookup1017
  %switch.gep1021 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.q
  %switch.load1022 = load i64, ptr %switch.gep1021, align 8
  br label %block_len.exit243

end_hunk_6
begin_hunk_7
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.0158.sroa.7.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.v = load <2 x ptr>, ptr %.sroa.0158.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %i.w = zext nneg i8 %.val.i to i64
  %switch.gep1027 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.w
  %switch.load1028 = load i64, ptr %switch.gep1027, align 8
  %i.x = urem i64 %.sroa.4159.0.copyload, %switch.load1028
  %i.y = icmp eq i64 %i.x, 0
end_hunk_7
begin_hunk_8

switch.lookup1029:                                ; preds = %switch.lookup1026
  %i.af = zext nneg i8 %.val.i to i64
  %switch.gep1030 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.af
  %switch.load1031 = load i64, ptr %switch.gep1030, align 8
  %i.ag = urem i64 %.sroa.4159.0.copyload, %switch.load1031 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
end_hunk_8
begin_hunk_9

switch.lookup1038:                                ; preds = %block_len.exit315
  %i.de = zext nneg i8 %.val.i to i64
  %switch.gep1039 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.de
  %switch.load1040 = load i64, ptr %switch.gep1039, align 8
  %i.df = urem i64 %.sroa.4159.0.copyload, %switch.load1040
  br label %block_len.exit321
end_hunk_9
begin_hunk_10

switch.lookup1041:                                ; preds = %block_len.exit333
  %i.du = zext nneg i8 %.val.i to i64
  %switch.gep1042 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.du
  %switch.load1043 = load i64, ptr %switch.gep1042, align 8
  %i.dv = urem i64 %i.dj, %switch.load1043        ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
end_hunk_10
begin_hunk_11
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.772.0.copyload = load i64, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !21 ; 4 uses
  %i.c = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = urem i64 %.sroa.772.0.copyload, %switch.load
  %i.e = icmp eq i64 %i.d, 0
end_hunk_11
begin_hunk_12
  unreachable

switch.lookup242:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %switch.gep243 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.g
  %switch.load244 = load i64, ptr %switch.gep243, align 8
  %i.h = urem i64 %.sroa.772.0.copyload, %switch.load244
  %i.i = trunc nuw nsw i64 %i.h to i32
end_hunk_12
begin_hunk_13
  %i.p = zext nneg i32 %.086 to i64               ; 2 uses
  %i.q = sub i64 %.sroa.772.0.copyload, %i.p      ; 2 uses
  %i.r = zext nneg i8 %.val.i to i64
  %switch.gep246 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_digest.27, i64 %i.r
  %switch.load247 = load i8, ptr %switch.gep246, align 1
  %.lhs.trunc = trunc nuw i32 %.086 to i8         ; 2 uses
  %i.s = urem i8 %.lhs.trunc, %switch.load247
end_hunk_13
begin_hunk_14
  br i1 %or.cond3, label %switch.lookup248, label %switch.lookup251

switch.lookup251:                                 ; preds = %switch.lookup245
  %switch.gep252 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_digest.27, i64 %i.v
  %switch.load253 = load i8, ptr %switch.gep252, align 1
  %i.w = urem i8 %.lhs.trunc, %switch.load253
  %i.x = zext i8 %i.w to i64
  br label %block_len.exit123

switch.lookup248:                                 ; preds = %switch.lookup245
  %switch.gep249 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.v
  %switch.load250 = load i64, ptr %switch.gep249, align 8
  br label %block_len.exit123

end_hunk_14
begin_hunk_15
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !tbaa !19
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8, !tbaa !21
  %.val.i = load i8, ptr %.sroa.065.sroa.4.0.copyload, align 8 ; 6 uses
  %switch.i.i.i = icmp ult i8 %.val.i, 14
  br i1 %switch.i.i.i, label %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, label %bb.b

end_hunk_15
begin_hunk_16
  %.sroa.3.0.insert.ext.i = and i64 %.sroa.065.sroa.0.0.copyload, 4294967295
  %i.c = and i8 %.val.i, 14
  %switch = icmp eq i8 %i.c, 4
  br i1 %switch, label %block_len.exit84, label %switch.lookup

switch.lookup:                                    ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit
  %i.d = zext nneg i8 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %block_len.exit84

block_len.exit84:                                 ; preds = %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit, %switch.lookup
  %.0.i82 = phi i64 [ 128, %_Py_LibHacl_Hacl_Streaming_HMAC_index_of_state.exit ], [ %switch.load, %switch.lookup ]
  %i.e = tail call noalias ptr @calloc(i64 noundef %.0.i82, i64 noundef 1) #14 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %switch.lookup144

switch.lookup144:                                 ; preds = %block_len.exit84
  %i.g = zext nneg i8 %.val.i to i64
  %switch.gep145 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Py_LibHacl_Hacl_Streaming_HMAC_copy.28, i64 %i.g
  %switch.load146 = load i64, ptr %switch.gep145, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.466.0.copyload, i64 %switch.load146, i1 false)
  %i.h = tail call fastcc ptr @malloc_(i8 noundef zeroext %.val.i) ; 7 uses
end_hunk_16
begin_hunk_17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.c, i8 92, i64 168, i1 false)
  %i.p = zext nneg i8 %.0.i47 to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init0.30, i64 %i.p
  %switch.load74 = load i64, ptr %switch.gep73, align 8
  br label %switch.lookup72

end_hunk_17
begin_hunk_18

switch.lookup75.preheader:                        ; preds = %switch.lookup72
  %i.r = zext nneg i8 %.0.i47 to i64
  %switch.gep76 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.init0.30, i64 %i.r
  %switch.load77 = load i64, ptr %switch.gep76, align 8
  br label %switch.lookup75

end_hunk_18
begin_hunk_19

switch.lookup78:                                  ; preds = %switch.lookup75
  %i.z = zext nneg i8 %.0.i47 to i64
  %switch.gep79 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.init0.31, i64 %i.z
  %switch.load80 = load i32, ptr %switch.gep79, align 4
  %.val37 = load i8, ptr %i.h, align 8, !tbaa !18
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !18
end_hunk_19
