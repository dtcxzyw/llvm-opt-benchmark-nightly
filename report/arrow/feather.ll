begin_hunk_0

@.str = private unnamed_addr constant [43 x i8] c"File is too small to be a well-formed file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FEA1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ARROW1\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Not a Feather V1 or Arrow IPC file\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Feather file footer incomplete\00", align 1
end_hunk_0
begin_hunk_1
  store <2 x ptr> %i.y, ptr %23, align 16, !tbaa !68, !alias.scope !69
  store ptr null, ptr %i.v, align 8, !tbaa !70, !noalias !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ab, ptr noundef nonnull dereferenceable(4) @.str.1, i64 4)
  %i.ac = icmp eq i32 %bcmp, 0
  br i1 %i.ac, label %bb.m, label %bb.fq

bb.m:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ci, ptr noundef nonnull dereferenceable(4) @.str.1, i64 4)
  %.not.i50 = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i50, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_2
begin_hunk_3
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fq:                                            ; preds = %bb.l
  %bcmp28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.ab, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %i.tw = icmp eq i32 %bcmp28, 0
  br i1 %i.tw, label %bb.fr, label %bb.hw

bb.fr:                                            ; preds = %bb.fq
end_hunk_3
