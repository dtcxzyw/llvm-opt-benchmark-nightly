Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/zlib?download=true
inline.NumInlined: 591
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_zstream_end:bb.a
bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  tail call fastcc void @zstream_end(ptr noundef nonnull %.1.i.i)
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_zstream_reset(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 9 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.ab = tail call i32 %i.z(ptr noundef nonnull %i.aa) #17, !inline_history !3 ; 2 uses
  %.not.i1 = icmp eq i32 %i.ab, 0
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_zstream.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  tail call fastcc void @raise_zlib_error(i32 noundef %i.ab, ptr noundef %i.ad) #19
  unreachable

bb.g:                                             ; preds = %get_zstream.exit
  store i64 1, ptr %.1.i.i, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  store i32 0, ptr %i.ag, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 4
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = inttoptr i64 %i.ai to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !52
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call i64 @rb_str_resize(i64 noundef %i.ai, i64 noundef 0) #17 ; 0 uses
  br label %zstream_reset.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 4, ptr %i.ah, align 8, !tbaa !46
  br label %zstream_reset.exit

zstream_reset.exit:                               ; preds = %bb.i, %bb.j
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_zstream_finish(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.zstream_run_args, align 8   ; 10 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %.1.i.i, ptr %1, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.154, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 4, ptr %i.z, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.aa, align 4, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 36
  %2 = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.ad = and i64 %2, 16
  %.not.i2 = icmp eq i64 %i.ad, 0
  br i1 %.not.i2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_zstream.exit
  %i.ae = tail call i32 @rb_block_given_p() #17
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %get_zstream.exit
  %i.ah = phi i32 [ 0, %get_zstream.exit ], [ %i.ag, %bb.f ]
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !61
  %i.ai = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.aj = call i64 @rb_ensure(ptr noundef nonnull @zstream_run_try, i64 noundef %i.ai, ptr noundef nonnull @zstream_run_ensure, i64 noundef %i.ai) #17 ; 0 uses
  %i.ak = load i32, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %.not4.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i, label %zstream_run.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_jump_tag(i32 noundef %i.ak) #18
  unreachable

zstream_run.exit:                                 ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.al = call fastcc i64 @zstream_detach_buffer(ptr noundef nonnull %.1.i.i)
  ret i64 %i.al
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_zstream_flush_next_in(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !32

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46   ; 3 uses
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.x = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #17
  br label %zstream_detach_input.exit

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = load i64, ptr @rb_cString, align 8, !tbaa !18
  %i.z = tail call i64 @rb_obj_reveal(i64 noundef %i.v, i64 noundef %i.y) #17 ; 0 uses
  br label %zstream_detach_input.exit

zstream_detach_input.exit:                        ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.x, %bb.e ], [ %i.v, %bb.f ]
  store i64 4, ptr %i.u, align 8, !tbaa !46
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_zstream_flush_next_out(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !32

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  %i.u = tail call fastcc i64 @zstream_detach_buffer(ptr noundef %.1.i)
  ret i64 %i.u
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @rb_deflate_s_deflate(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %3 = alloca %struct.zstream, align 8            ; 18 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = icmp slt i32 %0, 1
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %.not10 = icmp eq i32 %0, 1
  br i1 %.not10, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq i32 %0, 2
  br i1 %i.g, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 4
  br i1 %i.h, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_fix2int(i64 noundef %i.f) #17
  %i.j = trunc i64 %i.i to i32
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %rb_scan_args_set.exit, %bb.d
  %i.k = phi i32 [ %i.j, %bb.d ], [ -1, %rb_scan_args_set.exit ], [ -1, %.preheader ]
  %i.l = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  store i64 0, ptr %3, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
begin_hunk_1_@rb_deflate_deflate:bb.a
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i4 = icmp eq i64 %i.v, 0
  br i1 %.not.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = icmp slt i32 %0, 1
  br i1 %i.x, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.y = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = icmp eq i32 %0, 2
  br i1 %i.ab, label %rb_scan_args_set.exit, label %bb.h

rb_scan_args_set.exit.thread:                     ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %.1.i.i, ptr %3, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !70
  br label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %.1.i.i, ptr %3, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ad, align 8, !tbaa !70
  %i.ae = icmp eq i64 %i.aa, 4
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_scan_args_set.exit
  %i.af = tail call i64 @rb_fix2int(i64 noundef %i.aa) #17
  %i.ag = trunc i64 %i.af to i32
  br label %bb.j

bb.j:                                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit, %bb.i
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ 0, %rb_scan_args_set.exit ], [ 0, %rb_scan_args_set.exit.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.am = ptrtoint ptr %3 to i64
  %i.an = call i64 @rb_mutex_synchronize(i64 noundef %i.al, ptr noundef nonnull @rb_deflate_deflate_body, i64 noundef %i.am) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %i.an
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_deflate_addstr(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  tail call fastcc void @do_deflate(ptr noundef nonnull %.1.i.i, i64 noundef %1, i32 noundef 0)
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_deflate_flush(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.zstream_run_args, align 8   ; 10 uses
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i6 = icmp eq i64 %i.v, 0
  br i1 %.not.i6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = icmp slt i32 %0, 0
  br i1 %i.x, label %bb.g, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.f
  %.not16 = icmp eq i32 %0, 0
  br i1 %.not16, label %.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.y = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.z = icmp eq i32 %0, 1
  br i1 %i.z, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %.split.us, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.aa = icmp eq i64 %i.y, 4
  br i1 %i.aa, label %.thread, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit
  %i.ab = tail call i64 @rb_fix2int(i64 noundef %i.y) #17
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.l, label %.thread

.thread:                                          ; preds = %.preheader.split.split, %rb_scan_args_set.exit, %bb.h
  %i.ad = phi i32 [ %i.ac, %bb.h ], [ 2, %rb_scan_args_set.exit ], [ 2, %.preheader.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %.1.i.i, ptr %3, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.154, ptr %i.ae, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ad, ptr %i.ag, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ah, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %4 = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.ak = and i64 %4, 16
  %.not.i7 = icmp eq i64 %i.ak, 0
  br i1 %.not.i7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.al = tail call i32 @rb_block_given_p() #17
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ao = phi i32 [ 0, %.thread ], [ %i.an, %bb.i ]
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !61
  %i.ap = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.aq = call i64 @rb_ensure(ptr noundef nonnull @zstream_run_try, i64 noundef %i.ap, ptr noundef nonnull @zstream_run_ensure, i64 noundef %i.ap) #17 ; 0 uses
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %zstream_run.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_jump_tag(i32 noundef %i.ar) #18
  unreachable

zstream_run.exit:                                 ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.l:                                             ; preds = %zstream_run.exit, %bb.h
  %i.as = call fastcc i64 @zstream_detach_buffer(ptr noundef nonnull %.1.i.i)
  ret i64 %i.as
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_deflate_params(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 6 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = icmp eq i64 %1, 4
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_zstream.exit
  %i.y = tail call i64 @rb_fix2int(i64 noundef %1) #17
  %i.z = trunc i64 %i.y to i32
  br label %bb.g

bb.g:                                             ; preds = %get_zstream.exit, %bb.f
  %i.aa = phi i32 [ %i.z, %bb.f ], [ -1, %get_zstream.exit ] ; 2 uses
  %i.ab = icmp eq i64 %2, 4
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i64 @rb_fix2int(i64 noundef %2) #17
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.ai = tail call i32 @deflateParams(ptr noundef nonnull %i.af, i32 noundef %i.aa, i32 noundef %i.ae) #17
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.ak = sub i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.027 = phi i32 [ %i.ai, %bb.i ], [ %i.as, %bb.k ] ; 2 uses
  %.0.in = phi i32 [ %i.ak, %bb.i ], [ %i.au, %bb.k ]
  %.0 = zext i32 %.0.in to i64                    ; 2 uses
  switch i32 %.027, label %bb.l [
    i32 -5, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.159) #17
  tail call void @zstream_expand_buffer(ptr noundef nonnull %.1.i.i)
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  %i.aq = add nsw i64 %i.ap, %.0
  tail call void @rb_str_set_len(i64 noundef %i.am, i64 noundef %i.aq) #17
  %i.ar = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.as = tail call i32 @deflateParams(ptr noundef nonnull %i.af, i32 noundef %i.aa, i32 noundef %i.ae) #17
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.au = sub i32 %i.ar, %i.at
  br label %bb.j, !llvm.loop !118

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  tail call fastcc void @raise_zlib_error(i32 noundef %.027, ptr noundef %i.aw) #19
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = add nsw i64 %i.ba, %.0
  tail call void @rb_str_set_len(i64 noundef %i.ax, i64 noundef %i.bb) #17
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_deflate_set_dictionary(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@rb_gzfile_total_out:bb.a
rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @gzfile_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @gzfile_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @gzfile_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !80
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_gzfile.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cGzError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.165) #18
  unreachable

get_gzfile.exit:                                  ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !91   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !90  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %get_gzfile.exit
  %i.ac = inttoptr i64 %i.aa to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %.not = icmp ult i64 %i.y, %i.ae
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %get_gzfile.exit, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.f ], [ 0, %get_gzfile.exit ]
  %i.ag = sub nuw i64 %i.y, %i.af
  %i.ah = tail call i64 @rb_uint2inum(i64 noundef %i.ag) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg = sub nsw i64 %i.y, %i.ae
  %i.ai = shl i64 %.neg, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %.0 = phi i64 [ %i.ah, %.thread ], [ %i.aj, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_gzfile_total_in(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @gzfile_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @gzfile_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @gzfile_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !80
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_gzfile.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cGzError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.165) #18
  unreachable

get_gzfile.exit:                                  ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !92
  %i.z = tail call i64 @rb_uint2inum(i64 noundef %i.y) #17
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_gzwriter_s_open(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @gzfile_s_open(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.168)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_gzwriter_s_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i64 @gzfile_new(i64 noundef %0, ptr noundef nonnull @deflate_funcs, ptr noundef nonnull @gzfile_writer_end)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_gzwriter_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not56 = icmp eq i32 %0, 1
  br i1 %.not56, label %.preheader.thread, label %bb.g

.preheader.thread:                                ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !tbaa !18
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = tail call i64 @rb_check_convert_type(i64 noundef %i.g, i32 noundef 8, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #17 ; 3 uses
  %i.i = icmp ne i64 %i.h, 4
  %i.j = sext i1 %i.i to i32
  %spec.select = add nsw i32 %0, %i.j             ; 2 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %.not43 = icmp eq i32 %spec.select, 1
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %.preheader.thread, %.preheader, %bb.c
  %.0 = phi i64 [ %i.k, %.preheader ], [ %i.k, %bb.c ], [ %i.c, %.preheader.thread ] ; 2 uses
  %.0194654 = phi i32 [ 1, %.preheader ], [ %spec.select, %bb.c ], [ 1, %.preheader.thread ] ; 3 uses
  %.04852 = phi i64 [ %i.h, %.preheader ], [ %i.h, %bb.c ], [ 4, %.preheader.thread ] ; 4 uses
  %i.n = phi i64 [ 4, %.preheader ], [ %i.m, %bb.c ], [ 4, %.preheader.thread ] ; 2 uses
  %.286.i = phi i32 [ 1, %.preheader ], [ 2, %bb.c ], [ 1, %.preheader.thread ] ; 4 uses
  %i.o = icmp samesign ult i32 %.286.i, %.0194654
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.286.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = add nuw nsw i32 %.286.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %i.r, %bb.e ], [ 4, %bb.d ]    ; 2 uses
  %.286.i.1 = phi i32 [ %i.s, %bb.e ], [ %.286.i, %bb.d ]
  %i.u = icmp eq i32 %.286.i.1, %.0194654
  br i1 %i.u, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.01947 = phi i32 [ %.0194654, %bb.f ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.01947, i32 noundef 1, i32 noundef 3) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.f
  %i.v = icmp eq i64 %2, 0
  %i.w = and i64 %2, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_scan_args_set.exit
  %i.z = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ab = and i64 %i.aa, 95
  %or.cond.not.i = icmp eq i64 %i.ab, 76
  br i1 %or.cond.not.i, label %bb.h, label %.critedge.i, !prof !27

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = trunc i64 %i.ad to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  br i1 %i.ag, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @gzfile_data_type to i64)
  br i1 %i.ak, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !32

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.j
  %.015.i = phi ptr [ %i.am, %bb.j ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i24 = icmp eq ptr %.015.i, null
  br i1 %.not.i24, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 2 uses
  %i.an = icmp eq ptr %i.am, @gzfile_data_type
  br i1 %i.an, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_scan_args_set.exit
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @gzfile_data_type) #17
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i23 = phi ptr [ %i.ao, %.critedge.i ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.aj, %bb.j ] ; 13 uses
  %i.ap = icmp eq i64 %i.n, 4
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aq = tail call i64 @rb_fix2int(i64 noundef %i.n) #17
  %i.ar = trunc i64 %i.aq to i32
  br label %bb.l

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit, %bb.k
  %i.as = phi i32 [ %i.ar, %bb.k ], [ -1, %rbimpl_check_typeddata.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i23, i64 160
  store i32 %i.as, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i23, i64 32
  %i.av = icmp eq i64 %i.t, 4
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i64 @rb_fix2int(i64 noundef %i.t) #17
  %i.ax = trunc i64 %i.aw to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ay = phi i32 [ %i.ax, %bb.m ], [ 0, %bb.l ]
  %i.az = tail call i32 @deflateInit2_(ptr noundef nonnull %i.au, i32 noundef %i.as, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef %i.ay, ptr noundef nonnull @.str.20, i32 noundef 112) #17 ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i23, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93
  tail call fastcc void @raise_zlib_error(i32 noundef %i.az, ptr noundef %i.bb) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i23, i64 152
  store i64 %.0, ptr %i.bc, align 8, !tbaa !81
  %i.bd = load i64, ptr %.1.i23, align 8, !tbaa !80
  %i.be = or i64 %i.bd, 1
  store i64 %i.be, ptr %.1.i23, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.04852, ptr %i.a, align 8, !tbaa !18
  %i.bf = icmp eq i64 %.04852, 4
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i23, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i23, i64 232
  %i.bi = tail call i32 @rb_io_extract_encoding_option(i64 noundef %.04852, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, ptr noundef null) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i23, i64 232 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  %.not.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i25, label %rb_gzfile_ecopts.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = call i32 @rb_econv_prepare_opts(i64 noundef %.04852, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i23, i64 200
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !95
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i23, i64 224
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !97
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bv = call ptr @rb_econv_open_opts(ptr noundef %i.bp, ptr noundef %i.bt, i32 noundef %i.bl, i64 noundef %i.bu) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i23, i64 240
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !99
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i23, i64 248
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !100
  br label %rb_gzfile_ecopts.exit

rb_gzfile_ecopts.exit:                            ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bz = load i64, ptr @id_path, align 8, !tbaa !18
  %i.ca = call i32 @rb_respond_to(i64 noundef %.0, i64 noundef %i.bz) #17
  %.not22 = icmp eq i32 %i.ca, 0
  br i1 %.not22, label %bb.u, label %bb.t

bb.t:                                             ; preds = %rb_gzfile_ecopts.exit
  %i.cb = load i64, ptr @rb_eIOError, align 8, !tbaa !18
  %i.cc = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @gzfile_initialize_path_partial, i64 noundef %2, ptr noundef null, i64 noundef 4, i64 noundef %i.cb, i64 noundef 0) #17 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %rb_gzfile_ecopts.exit
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_gzwriter_flush(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %3 = alloca %struct.zstream_run_args, align 8   ; 10 uses
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @gzfile_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp eq ptr %i.r, @gzfile_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @gzfile_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !80
  %i.v = and i64 %i.u, 1
  %.not.i10 = icmp eq i64 %i.v, 0
  br i1 %.not.i10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cGzError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.165) #18
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = icmp slt i32 %0, 0
  br i1 %i.x, label %bb.g, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.f
  %.not21 = icmp eq i32 %0, 0
  br i1 %.not21, label %.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.y = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.z = icmp eq i32 %0, 1
  br i1 %i.z, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %.split.us, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #18
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.aa = icmp eq i64 %i.y, 4
  br i1 %i.aa, label %.thread, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit
  %i.ab = tail call i64 @rb_fix2int(i64 noundef %i.y) #17
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.l, label %.thread

.thread:                                          ; preds = %.preheader.split.split, %rb_scan_args_set.exit, %bb.h
  %i.ad = phi i32 [ %i.ac, %bb.h ], [ 2, %rb_scan_args_set.exit ], [ 2, %.preheader.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %.1.i.i, ptr %3, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.154, ptr %i.ae, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ad, ptr %i.ag, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ah, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %4 = load i64, ptr %.1.i.i, align 8, !tbaa !43
  %i.ak = and i64 %4, 16
  %.not.i11 = icmp eq i64 %i.ak, 0
  br i1 %.not.i11, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.al = tail call i32 @rb_block_given_p() #17
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.ao = phi i32 [ 0, %.thread ], [ %i.an, %bb.i ]
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !61
  %i.ap = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.aq = call i64 @rb_ensure(ptr noundef nonnull @zstream_run_try, i64 noundef %i.ap, ptr noundef nonnull @zstream_run_ensure, i64 noundef %i.ap) #17 ; 0 uses
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %zstream_run.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_jump_tag(i32 noundef %i.ar) #18
  unreachable

zstream_run.exit:                                 ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.l:                                             ; preds = %zstream_run.exit, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !90 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %gzfile_write_raw.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = inttoptr i64 %i.at to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %gzfile_write_raw.exit

bb.n:                                             ; preds = %bb.m
  %i.az = call fastcc i64 @zstream_detach_buffer(ptr noundef nonnull %.1.i.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 152 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.bc = load i64, ptr @id_write, align 8, !tbaa !18
  %i.bd = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bb, i64 noundef %i.bc, i32 noundef 1, i64 noundef %i.az) #17 ; 0 uses
  %i.be = load i64, ptr %.1.i.i, align 8, !tbaa !80
  %i.bf = and i64 %i.be, 128
  %.not.i12 = icmp eq i64 %i.bf, 0
  br i1 %.not.i12, label %gzfile_write_raw.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.bh = load i64, ptr @id_flush, align 8, !tbaa !18
  %i.bi = call i32 @rb_respond_to(i64 noundef %i.bg, i64 noundef %i.bh) #17
  %.not7.i = icmp eq i32 %i.bi, 0
  br i1 %.not7.i, label %gzfile_write_raw.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.bk = load i64, ptr @id_flush, align 8, !tbaa !18
  %i.bl = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bj, i64 noundef %i.bk, i32 noundef 0) #17 ; 0 uses
  br label %gzfile_write_raw.exit

gzfile_write_raw.exit:                            ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 152 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.bo = load i64, ptr @id_flush, align 8, !tbaa !18
  %i.bp = call i32 @rb_respond_to(i64 noundef %i.bn, i64 noundef %i.bo) #17
  %.not9 = icmp eq i32 %i.bp, 0
  br i1 %.not9, label %bb.r, label %bb.q

bb.q:                                             ; preds = %gzfile_write_raw.exit
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.br = load i64, ptr @id_flush, align 8, !tbaa !18
  %i.bs = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bq, i64 noundef %i.br, i32 noundef 0) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %gzfile_write_raw.exit
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_gzwriter_write(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !26

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !27

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @gzfile_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !32

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = icmp eq ptr %i.t, @gzfile_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @gzfile_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.w = load i64, ptr %.1.i.i, align 8, !tbaa !80
  %i.x = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %get_gzfile.exit.preheader

get_gzfile.exit.preheader:                        ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph, label %get_gzfile.exit._crit_edge.thread

.lr.ph:                                           ; preds = %get_gzfile.exit.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 232 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.aa = load i64, ptr @cGzError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.165) #18
  unreachable

bb.f:                                             ; preds = %.lr.ph, %RSTRING_PTR.exit
  %.in = phi i32 [ %0, %.lr.ph ], [ %i.ab, %RSTRING_PTR.exit ] ; 2 uses
  %.0917 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %RSTRING_PTR.exit ]
  %.01016 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %RSTRING_PTR.exit ] ; 2 uses
  %i.ab = add nsw i32 %.in, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %.01016, i64 8
  %i.ad = load i64, ptr %.01016, align 8, !tbaa !18 ; 6 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !18
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i64 %i.ad, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.ai = inttoptr i64 %i.ad to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = and i64 %i.aj, 31
  %i.al = icmp eq i64 %i.ak, 5
  br i1 %i.al, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.am = call i64 @rb_obj_as_string(i64 noundef %i.ad) #17 ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.an = phi i64 [ %i.am, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.ad, %rbimpl_RB_TYPE_P_fastpath.exit ]
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !94  ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = call nonnull ptr @rb_ascii8bit_encoding() #17
  %.not12 = icmp eq ptr %i.ao, %i.ap
  %.pre = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call ptr @rb_enc_get(i64 noundef %.pre) #17
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.as = call i64 @rb_str_conv_enc(i64 noundef %.pre, ptr noundef %i.aq, ptr noundef %i.ar) #17 ; 2 uses
  store i64 %i.as, ptr %i.a, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
end_hunk_2
