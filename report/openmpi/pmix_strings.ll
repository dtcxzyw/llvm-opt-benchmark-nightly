Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_strings?download=true
begin_hunk_0_@PMIx_Scope_string:bb.a
bb.a:
  %i.a = icmp ult i8 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Scope_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Persistence_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, 1                 ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Persistence_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.35, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Data_range_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, 1                 ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 9
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Data_range_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @PMIx_Info_directives_string(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.b = and i32 %0, 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 1
  %.not5 = icmp eq i32 %i.c, 0
  %.str.46..str.45 = select i1 %.not5, ptr @.str.46, ptr @.str.45
  %i.d = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %.str.46..str.45) #9 ; 0 uses
  %i.e = and i32 %0, 4
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.47) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = and i32 %0, 2
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.a
  %.str.48.sink = phi ptr [ @.str.44, %bb.a ], [ @.str.48, %bb.d ]
  %i.h = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %.str.48.sink) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call ptr @PMIx_Argv_join(ptr noundef nonnull %i.i, i32 noundef 58) #9
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @PMIx_Argv_free(ptr noundef %i.k) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = call noalias dereferenceable_or_null(12) ptr @strdup(ptr noundef nonnull @.str.49) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PMIx_Argv_append_nosize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PMIx_Argv_join(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Alloc_directive_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Alloc_directive_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.49, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @pmix_command_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %0, 39
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.pmix_command_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @PMIx_IOF_channel_string(i16 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 4 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) @answer, ptr noundef nonnull align 1 dereferenceable(7) @.str.88, i64 7, i1 false) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 6, %bb.b ], [ 0, %bb.a ]        ; 3 uses
  %i.c = and i32 %i.a, 2
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr @answer, i64 %.0
  store i64 9099924633572435, ptr %i.d, align 2
  %i.e = add nuw nsw i64 %.0, 7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.e, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.f = and i32 %i.a, 4
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr @answer, i64 %.1
  store i64 9097712557642835, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %.1, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.h, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.i = and i32 %i.a, 8
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr @answer, i64 %.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.j, ptr noundef nonnull align 1 dereferenceable(9) @.str.91, i64 9, i1 false) #9
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = icmp eq i64 %.2, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @answer, ptr noundef nonnull align 1 dereferenceable(5) @.str.92, i64 5, i1 false) #9
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h
  ret ptr @answer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Job_state_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %0, 51
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Job_state_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @PMIx_Get_attribute_string(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @pmix_attributes_lookup(ptr noundef %0) #9
  ret ptr %i.a
}

declare ptr @pmix_attributes_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @PMIx_Get_attribute_name(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @pmix_attributes_reverse_lookup(ptr noundef %0) #9
  ret ptr %i.a
}

declare ptr @pmix_attributes_reverse_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Link_state_string(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.100, ptr @.str.43
  %switch.selectcmp1 = icmp eq i8 %0, 2
  %switch.select2 = select i1 %switch.selectcmp1, ptr @.str.101, ptr %switch.select
  ret ptr %switch.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Device_type_string(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %0, i1 true) ; 2 uses
  %i.d = icmp samesign ult i64 %i.c, 6
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %.split
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Device_type_string, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.split, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %.split ], [ @.str.43, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @PMIx_Value_comparison_string(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PMIx_Value_comparison_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.114, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @PMIx_App_string(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca ptr, align 8                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.115, ptr noundef %i.c) #9 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.e) #9 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @free(ptr noundef %i.g) #9
  %i.h = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.116) #9 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %.preheader31

.preheader31:                                     ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %.loopexit32, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.117) #9 ; 0 uses
  br label %.loopexit32

.lr.ph:                                           ; preds = %.preheader31, %.lr.ph
  %i.n = phi ptr [ %i.w, %.lr.ph ], [ %i.l, %.preheader31 ]
  %.034 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader31 ] ; 2 uses
  %i.o = trunc i64 %.034 to i32
  %i.p = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.118, i32 noundef %i.o, ptr noundef nonnull %i.n) #9 ; 0 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.r = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.q) #9 ; 0 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @free(ptr noundef %i.s) #9
  %i.t = add i64 %.034, 1                         ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.loopexit32, label %.lr.ph, !llvm.loop !12

.loopexit32:                                      ; preds = %.lr.ph, %.preheader31, %bb.b
  %i.x = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.119) #9 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.loopexit32
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %.not2935 = icmp eq ptr %i.ab, null
  br i1 %.not2935, label %.loopexit30, label %.lr.ph37

bb.c:                                             ; preds = %.loopexit32
  %i.ac = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.117) #9 ; 0 uses
  br label %.loopexit30

.lr.ph37:                                         ; preds = %.preheader, %.lr.ph37
  %i.ad = phi ptr [ %i.am, %.lr.ph37 ], [ %i.ab, %.preheader ]
  %.136 = phi i64 [ %i.aj, %.lr.ph37 ], [ 0, %.preheader ] ; 2 uses
  %i.ae = trunc i64 %.136 to i32
  %i.af = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.120, i32 noundef %i.ae, ptr noundef nonnull %i.ad) #9 ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ah = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.ag) #9 ; 0 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @free(ptr noundef %i.ai) #9
  %i.aj = add i64 %.136, 1                        ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %.not29 = icmp eq ptr %i.am, null
  br i1 %.not29, label %.loopexit30, label %.lr.ph37, !llvm.loop !13

.loopexit30:                                      ; preds = %.lr.ph37, %.preheader, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit30
  %i.aq = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.121) #9 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.loopexit30
  %i.ar = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.ao) #9 ; 0 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.at = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.as) #9 ; 0 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @free(ptr noundef %i.au) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !25
  %i.ax = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.123, i32 noundef %i.aw) #9 ; 0 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.az = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef %i.ay) #9 ; 0 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @free(ptr noundef %i.ba) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.124) #9 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
end_hunk_0
