begin_hunk_0

@.str = private unnamed_addr constant [43 x i8] c"File is too small to be a well-formed file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FEA1\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Not a Feather V1 or Arrow IPC file\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Feather file footer incomplete\00", align 1
end_hunk_0
begin_hunk_1
  store <2 x ptr> %i.y, ptr %23, align 16, !tbaa !68, !alias.scope !69
  store ptr null, ptr %i.v, align 8, !tbaa !70, !noalias !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %29 = load i32, ptr %i.ab, align 1
  %30 = icmp ne i32 %29, 826361158
  %31 = zext i1 %30 to i32
  %i.ac = icmp eq i32 %31, 0
  br i1 %i.ac, label %bb.m, label %bb.fq

bb.m:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %32 = load i32, ptr %i.ci, align 1
  %33 = icmp ne i32 %32, 826361158
  %34 = zext i1 %33 to i32
  %.not.i50 = icmp eq i32 %34, 0
  br i1 %.not.i50, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_2
begin_hunk_3
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fq:                                            ; preds = %bb.l
  %35 = load i32, ptr %i.ab, align 1
  %36 = xor i32 %35, 1330795073
  %37 = getelementptr i8, ptr %i.ab, i64 4
  %38 = load i16, ptr %37, align 1
  %39 = zext i16 %38 to i32
  %40 = xor i32 %39, 12631
  %41 = or i32 %36, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %i.tw = icmp eq i32 %43, 0
  br i1 %i.tw, label %bb.fr, label %bb.hw

bb.fr:                                            ; preds = %bb.fq
end_hunk_3
