Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/cjson_add?download=true
inline.NumInlined: 222
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cJSON_Delete:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.p(ptr noundef nonnull %i.o) #30
  store ptr null, ptr %i.n, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.q(ptr noundef nonnull %.025) #30
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local noundef double @cJSON_SetNumberHelper(ptr nofree noundef writeonly captures(address_is_null) %0, double noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %1, f0x41DFFFFFFFC00000
  %.inv = fcmp ole double %1, f0xC1E0000000000000
  %spec.select15 = select i1 %.inv, double f0xC1E0000000000000, double %1
  %spec.select = fptosi double %spec.select15 to i32
  %.sink = select i1 %i.b, i32 %spec.select, i32 2147483647
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %1, ptr %i.d, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %1, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_SetValuestring(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %cJSON_strdup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46
  %i.d = and i32 %i.c, 272
  %or.cond36 = icmp eq i32 %i.d, 16
  br i1 %or.cond36, label %bb.c, label %cJSON_strdup.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %1, null
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %cJSON_strdup.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #31 ; 2 uses
  %.not34 = icmp ugt i64 %i.i, %i.j
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.l = icmp ult ptr %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.n = icmp ult ptr %i.m, %1
  %or.cond38 = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond38, label %bb.f, label %cJSON_strdup.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #30 ; 0 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !47
  br label %cJSON_strdup.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.q = add i64 %i.i, 1                          ; 2 uses
  %i.r = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.s = tail call ptr %i.r(i64 noundef %i.q) #30, !inline_history !0 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %cJSON_strdup.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %i.q, i1 false)
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.v(ptr noundef nonnull %i.u) #30, !inline_history !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.s, ptr %i.e, align 8, !tbaa !47
  br label %cJSON_strdup.exit.thread

cJSON_strdup.exit.thread:                         ; preds = %bb.g, %bb.e, %bb.c, %bb.a, %bb.b, %bb.j, %bb.f
  %.0 = phi ptr [ %i.s, %bb.j ], [ null, %bb.a ], [ %i.p, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_free(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.a(ptr noundef %0) #30
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_ParseWithOpts(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.parse_buffer, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr null, ptr @global_error.0, align 8, !tbaa !41
  store i64 0, ptr @global_error.1, align 8, !tbaa !42
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.0.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !59
  store i64 %1, ptr %.0.i.sroa.gep48, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !62
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.d = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !1 ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = icmp ugt i64 %1, 4
  br i1 %i.e, label %sub_0.i, label %skip_utf8_bom.exit

sub_0.i:                                          ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1
  %.not14.i = icmp eq i8 %i.f, -17
  br i1 %.not14.i, label %sub_1.i, label %skip_utf8_bom.exit

sub_1.i:                                          ; preds = %sub_0.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not15.i = icmp eq i8 %i.h, -69
  br i1 %.not15.i, label %.tail.i, label %skip_utf8_bom.exit

.tail.i:                                          ; preds = %sub_1.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, -65
  br i1 %i.k, label %bb.d, label %skip_utf8_bom.exit

bb.d:                                             ; preds = %.tail.i
  store i64 3, ptr %.0.i.sroa.gep, align 8, !tbaa !63
  br label %skip_utf8_bom.exit

skip_utf8_bom.exit:                               ; preds = %bb.c, %sub_0.i, %sub_1.i, %.tail.i, %bb.d
  %.0.i.sroa.gep.promoted = phi i64 [ 3, %bb.d ], [ 0, %.tail.i ], [ 0, %sub_1.i ], [ 0, %sub_0.i ], [ 0, %bb.c ] ; 5 uses
  %i.l = icmp ult i64 %.0.i.sroa.gep.promoted, %1
  br i1 %i.l, label %.lr.ph.i.preheader, label %buffer_skip_whitespace.exit

.lr.ph.i.preheader:                               ; preds = %skip_utf8_bom.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.sroa.gep.promoted
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64
  %i.o = icmp ult i8 %i.n, 33
  br i1 %i.o, label %.lr.ph.preheader, label %buffer_skip_whitespace.exit.sink.split

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.p = add nuw nsw i64 %.0.i.sroa.gep.promoted, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i88, label %.critedge.thread.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %5 = phi i64 [ %i.u, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %i.q = phi i64 [ %5, %.lr.ph ], [ %.0.i.sroa.gep.promoted, %.lr.ph.preheader ]
  %6 = getelementptr i8, ptr %0, i64 %i.q
  %i.r = getelementptr i8, ptr %6, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !64
  %i.t = icmp ult i8 %i.s, 33
  br i1 %i.t, label %.lr.ph, label %buffer_skip_whitespace.exit.sink.split

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.u = add i64 %5, 1                            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i.loopexit, label %.lr.ph.i

.critedge.thread.i.loopexit:                      ; preds = %.lr.ph, %.lr.ph.preheader
  %i.v = add i64 %1, -1
  br label %buffer_skip_whitespace.exit.sink.split

buffer_skip_whitespace.exit.sink.split:           ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %.critedge.thread.i.loopexit
  %.lcssa.sink = phi i64 [ %i.v, %.critedge.thread.i.loopexit ], [ %.0.i.sroa.gep.promoted, %.lr.ph.i.preheader ], [ %5, %.lr.ph.i ]
  store i64 %.lcssa.sink, ptr %.0.i.sroa.gep, align 8
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %buffer_skip_whitespace.exit.sink.split, %skip_utf8_bom.exit
  %i.w = call fastcc i32 @parse_value(ptr noundef %i.d, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.thread55, label %bb.e

bb.e:                                             ; preds = %buffer_skip_whitespace.exit
  %.not27 = icmp eq i32 %3, 0
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %4, align 8, !tbaa !59     ; 4 uses
  %i.y = icmp ne ptr %i.x, null
  %.pre = load i64, ptr %.0.i.sroa.gep, align 8, !tbaa !63 ; 6 uses
  %.pre69 = load i64, ptr %.0.i.sroa.gep48, align 8, !tbaa !60 ; 5 uses
  %i.z = icmp ult i64 %.pre, %.pre69
  %or.cond83 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond83, label %.lr.ph.i38.preheader, label %buffer_skip_whitespace.exit42

.lr.ph.i38.preheader:                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !64
  %i.ac = icmp ult i8 %i.ab, 33
  br i1 %i.ac, label %.lr.ph63.preheader, label %buffer_skip_whitespace.exit42.sink.split

.lr.ph63.preheader:                               ; preds = %.lr.ph.i38.preheader
  %i.ad = add i64 %.pre, 1                        ; 2 uses
  %exitcond.not.i4189 = icmp eq i64 %i.ad, %.pre69
  br i1 %exitcond.not.i4189, label %.critedge.thread.i40.loopexit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph63.preheader, %.lr.ph63
  %7 = phi i64 [ %i.ai, %.lr.ph63 ], [ %i.ad, %.lr.ph63.preheader ] ; 3 uses
  %i.ae = phi i64 [ %7, %.lr.ph63 ], [ %.pre, %.lr.ph63.preheader ]
  %8 = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.af = getelementptr i8, ptr %8, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = icmp ult i8 %i.ag, 33
  br i1 %i.ah, label %.lr.ph63, label %buffer_skip_whitespace.exit42.sink.split

.lr.ph63:                                         ; preds = %.lr.ph.i38
  %i.ai = add i64 %7, 1                           ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.ai, %.pre69
  br i1 %exitcond.not.i41, label %.critedge.thread.i40.loopexit, label %.lr.ph.i38

.critedge.thread.i40.loopexit:                    ; preds = %.lr.ph63, %.lr.ph63.preheader
  %i.aj = add i64 %.pre69, -1
  br label %buffer_skip_whitespace.exit42.sink.split

buffer_skip_whitespace.exit42.sink.split:         ; preds = %.lr.ph.i38, %.lr.ph.i38.preheader, %.critedge.thread.i40.loopexit
  %.lcssa61.sink = phi i64 [ %i.aj, %.critedge.thread.i40.loopexit ], [ %.pre, %.lr.ph.i38.preheader ], [ %7, %.lr.ph.i38 ] ; 2 uses
  store i64 %.lcssa61.sink, ptr %.0.i.sroa.gep, align 8
  br label %buffer_skip_whitespace.exit42

buffer_skip_whitespace.exit42:                    ; preds = %buffer_skip_whitespace.exit42.sink.split, %bb.f
  %i.ak = phi i64 [ %.pre, %bb.f ], [ %.lcssa61.sink, %buffer_skip_whitespace.exit42.sink.split ] ; 2 uses
  %.not28 = icmp ult i64 %i.ak, %.pre69
  br i1 %.not28, label %bb.g, label %.thread55

bb.g:                                             ; preds = %buffer_skip_whitespace.exit42
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %.not29 = icmp eq i8 %i.am, 0
  br i1 %.not29, label %bb.h, label %.thread55

bb.h:                                             ; preds = %bb.g, %bb.e
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %4, align 8, !tbaa !59
  %i.ao = load i64, ptr %.0.i.sroa.gep, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store ptr %i.ap, ptr %2, align 8, !tbaa !65
  br label %bb.l

.thread55:                                        ; preds = %bb.g, %buffer_skip_whitespace.exit42, %buffer_skip_whitespace.exit
  call void @cJSON_Delete(ptr noundef nonnull %i.d)
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread55
  br i1 %i.a, label %bb.l, label %.thread..thread.thread_crit_edge

.thread..thread.thread_crit_edge:                 ; preds = %.thread
  %.pre70 = load i64, ptr %.0.i.sroa.gep, align 8, !tbaa !63
  %.pre71 = load i64, ptr %.0.i.sroa.gep48, align 8, !tbaa !60
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread..thread.thread_crit_edge, %bb.b
  %i.aq = phi i64 [ %.pre71, %.thread..thread.thread_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.ar = phi i64 [ %.pre70, %.thread..thread.thread_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 1)
  %.sroa.5.0 = select i1 %i.as, i64 %i.ar, i64 %spec.select ; 2 uses
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.5.0
  store ptr %i.at, ptr %2, align 8, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.thread
  store ptr %0, ptr @global_error.0, align 8, !tbaa !65
  store i64 %.sroa.5.0, ptr @global_error.1, align 8, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.h, %bb.i
  %.017 = phi ptr [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ null, %bb.k ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_value(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %parse_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %parse_array.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 8 uses
  %i.g = add i64 %i.f, 4                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  %.not = icmp ugt i64 %i.g, %i.i                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(5) @.str.35, i64 noundef 4) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4, ptr %i.m, align 8, !tbaa !46
  store i64 %i.g, ptr %i.e, align 8, !tbaa !63
  br label %parse_array.exit

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.n = add i64 %i.f, 5                          ; 2 uses
  %.not63 = icmp ugt i64 %i.n, %i.i
  br i1 %.not63, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(6) @.str.36, i64 noundef 5) #31
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !46
  store i64 %i.n, ptr %i.e, align 8, !tbaa !63
  br label %parse_array.exit

bb.i:                                             ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(5) @.str.37, i64 noundef 4) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.w, align 8, !tbaa !56
  store i64 %i.g, ptr %i.e, align 8, !tbaa !63
  br label %parse_array.exit

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.x = icmp ult i64 %i.f, %i.i
  br i1 %i.x, label %bb.m, label %parse_array.exit

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64    ; 4 uses
  %i.aa = icmp eq i8 %i.z, 34
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call fastcc i32 @parse_string(ptr noundef %0, ptr noundef %1)
  br label %parse_array.exit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp eq i8 %i.z, 45
  %i.ad = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.ad, 10
  %or.cond91 = or i1 %i.ac, %or.cond
  br i1 %or.cond91, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !65
  %i.ae = tail call ptr @localeconv() #30
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64  ; 41 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %parse_number.exit, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.p
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !63  ; 3 uses
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader55.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.an = sub nuw i64 %i.ak, %i.aj                ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %.058.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.s ] ; 15 uses
  %.04757.i = phi i64 [ 0, %.lr.ph.i ], [ %.148.i, %bb.s ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.04757.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !64
  switch i8 %i.ap, label %.critedge.loopexit.i [
    i8 48, label %bb.s
    i8 49, label %bb.s
    i8 50, label %bb.s
    i8 51, label %bb.s
    i8 52, label %bb.s
    i8 53, label %bb.s
    i8 54, label %bb.s
    i8 55, label %bb.s
    i8 56, label %bb.s
    i8 57, label %bb.s
    i8 43, label %bb.s
    i8 45, label %bb.s
    i8 101, label %bb.s
    i8 69, label %bb.s
    i8 46, label %bb.r
  ]

end_hunk_0
begin_hunk_1_@cJSON_add_array_should_add_array:bb.a
cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 32, ptr noundef null, i64 noundef 397, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_array_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !25 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 32, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateArray.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !25 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateArray.exit.i4

cJSON_CreateArray.exit.i4:                        ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 32, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateArray.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_array_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !25 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddArrayToObject.exit, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 32, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddArrayToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateArray.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !26 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddArrayToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddArrayToObject.exit:                      ; preds = %cJSON_CreateObject.exit, %cJSON_CreateArray.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 418) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddArrayToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

declare i32 @UnityEnd() local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_string(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 6 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %.not = icmp eq i8 %i.e, 34
  br i1 %.not, label %.preheader, label %.thread103

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.in = phi ptr [ %.ptr124, %bb.d ], [ %.ptr, %.preheader ]
  %.059117 = phi i64 [ %.160, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.063116.idx = phi i64 [ %.164.add, %bb.d ], [ 1, %.preheader ] ; 5 uses
  %.063116.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.j = load i8, ptr %.063116.ptr, align 1, !tbaa !64
  switch i8 %i.j, label %bb.d [
    i8 34, label %bb.e
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %.063116.add = add nuw nsw i64 %.063116.idx, 1  ; 2 uses
  %i.k = add nuw nsw i64 %i.c, %.063116.add
  %.not75 = icmp ult i64 %i.k, %i.g
  br i1 %.not75, label %bb.c, label %.thread103

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.059117, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.164.idx = phi i64 [ %.063116.add, %bb.c ], [ %.063116.idx, %.lr.ph ] ; 2 uses
  %.160 = phi i64 [ %i.l, %bb.c ], [ %.059117, %.lr.ph ]
  %.164.add = add nuw nsw i64 %.164.idx, 1        ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.164.idx
  %.ptr124 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = add nuw nsw i64 %i.c, %.164.add
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %.lr.ph, label %.thread103

bb.e:                                             ; preds = %.lr.ph
  %i.o = ptrtoint ptr %.in to i64                 ; 4 uses
  %.063116.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.s = add i64 %.059117, %i.p
  %reass.sub = sub i64 %i.o, %i.s
  %i.t = add i64 %reass.sub, 1
  %i.u = tail call ptr %i.r(i64 noundef %i.t) #30 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread103, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e
  %i.w = icmp sgt i64 %.063116.idx, 1
  br i1 %i.w, label %.lr.ph123, label %.critedge._crit_edge

.lr.ph123:                                        ; preds = %.critedge.preheader, %.critedge
  %.065120 = phi ptr [ %.2, %.critedge ], [ %.ptr, %.critedge.preheader ] ; 13 uses
  %.090119 = phi ptr [ %.393, %.critedge ], [ %i.u, %.critedge.preheader ] ; 19 uses
  %i.x = load i8, ptr %.065120, align 1, !tbaa !64 ; 2 uses
  %.not76 = icmp eq i8 %i.x, 92
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.x, ptr %.090119, align 1, !tbaa !64
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.aa = ptrtoint ptr %.065120 to i64
  %i.ab = sub i64 %i.o, %i.aa                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64  ; 2 uses
  switch i8 %i.ae, label %utf16_literal_to_utf8.exit.thread [
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.n
    i8 47, label %bb.n
    i8 117, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 8, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.l:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 13, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 9, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.ae, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.o:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %i.ab, 6
  br i1 %i.al, label %utf16_literal_to_utf8.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.065120, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !64  ; 4 uses
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = add i8 %i.an, -48
  %or.cond.i.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = add i8 %i.an, -65
  %or.cond31.i.i = icmp ult i8 %i.aq, 6
  br i1 %or.cond31.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = add i8 %i.an, -97
  %or.cond32.i.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond32.i.i, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi i32 [ -48, %bb.p ], [ -55, %bb.q ], [ -87, %bb.r ]
  %i.as = add nsw i32 %.sink.i.i, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %.065120, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !64  ; 4 uses
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = add i8 %i.au, -48
  %or.cond.1.i.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond.1.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add i8 %i.au, -65
  %or.cond31.1.i.i = icmp ult i8 %i.ax, 6
  br i1 %or.cond31.1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i8 %i.au, -97
  %or.cond32.1.i.i = icmp ult i8 %i.ay, 6
  br i1 %or.cond32.1.i.i, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink35.i.i = phi i32 [ -55, %bb.t ], [ -87, %bb.u ], [ -48, %bb.s ]
  %i.az = add nsw i32 %.sink35.i.i, %i.av
  %i.ba = shl nuw nsw i32 %i.as, 8
  %i.bb = shl nuw nsw i32 %i.az, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.065120, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64  ; 4 uses
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = add i8 %i.bd, -48
  %or.cond.2.i.i = icmp ult i8 %i.bf, 10
  br i1 %or.cond.2.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add i8 %i.bd, -65
  %or.cond31.2.i.i = icmp ult i8 %i.bg, 6
  br i1 %or.cond31.2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = add i8 %i.bd, -97
  %or.cond32.2.i.i = icmp ult i8 %i.bh, 6
  br i1 %or.cond32.2.i.i, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink36.i.i = phi i32 [ -55, %bb.w ], [ -87, %bb.x ], [ -48, %bb.v ]
  %i.bi = add nuw nsw i32 %i.bb, %i.ba
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %.1.2.i.i = add nsw i32 %i.bj, %.sink36.i.i
  %i.bk = shl nuw nsw i32 %.1.2.i.i, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.065120, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64  ; 4 uses
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = add i8 %i.bm, -48
  %or.cond.3.i.i = icmp ult i8 %i.bo, 10
  br i1 %or.cond.3.i.i, label %parse_hex4.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = add i8 %i.bm, -65
  %or.cond31.3.i.i = icmp ult i8 %i.bp, 6
  br i1 %or.cond31.3.i.i, label %parse_hex4.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = add i8 %i.bm, -97
  %or.cond32.3.i.i = icmp ult i8 %i.bq, 6
  br i1 %or.cond32.3.i.i, label %parse_hex4.exit.i, label %bb.ak

parse_hex4.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  %.sink37.i.i = phi i32 [ -55, %bb.z ], [ -87, %bb.aa ], [ -48, %bb.y ]
  %i.br = add nuw nsw i32 %i.bk, %i.bn
  %.1.3.i.i = add nsw i32 %i.br, %.sink37.i.i     ; 10 uses
  %i.bs = and i32 %.1.3.i.i, -1024
  switch i32 %i.bs, label %bb.af [
    i32 56320, label %utf16_literal_to_utf8.exit.thread
    i32 55296, label %bb.ab
  ]

bb.ab:                                            ; preds = %parse_hex4.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.065120, i64 6 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.o, %i.bu
  %i.bw = icmp slt i64 %i.bv, 6
  br i1 %i.bw, label %utf16_literal_to_utf8.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !64
  %.not.i = icmp eq i8 %i.bx, 92
  br i1 %.not.i, label %bb.ad, label %utf16_literal_to_utf8.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.065120, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %.not53.i = icmp eq i8 %i.bz, 117
  br i1 %.not53.i, label %bb.ae, label %utf16_literal_to_utf8.exit.thread

end_hunk_1
