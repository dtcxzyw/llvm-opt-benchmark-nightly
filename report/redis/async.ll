begin_hunk_0
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.10.0.copyload = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.1079.0.copyload = load ptr, ptr %.sroa.1079.0..sroa_idx, align 8
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !41
end_hunk_0
begin_hunk_1
  %.sroa.8.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.8.0.copyload70 = load ptr, ptr %.sroa.8.0..sroa_idx69, align 8
  %.sroa.10.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %.sroa.10.0.copyload77 = load <2 x i32>, ptr %.sroa.10.0..sroa_idx76, align 8
  %.sroa.1079.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %.sroa.1079.0.copyload81 = load ptr, ptr %.sroa.1079.0..sroa_idx80, align 8
  br label %dictFind.exit.thread.i

dictFind.exit.thread.i:                           ; preds = %bb.aq, %bb.an, %dictFind.exit.i, %bb.am, %bb.al, %bb.aj
  %.sroa.8.2 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %.sroa.8.0.copyload70, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ]
  %.sroa.10.3 = phi <2 x i32> [ zeroinitializer, %bb.al ], [ zeroinitializer, %bb.am ], [ %.sroa.10.0.copyload77, %dictFind.exit.i ], [ zeroinitializer, %bb.aj ], [ zeroinitializer, %bb.an ], [ zeroinitializer, %bb.aq ]
  %.sroa.1079.2 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %.sroa.1079.0.copyload81, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ]
  %.048.i = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %i.ga, %dictFind.exit.i ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.aq ] ; 4 uses
  %.047.i = phi ptr [ %i.es, %bb.al ], [ %i.es, %bb.am ], [ %i.es, %dictFind.exit.i ], [ null, %bb.aj ], [ %i.es, %bb.an ], [ %i.es, %bb.aq ] ; 6 uses
end_hunk_1
begin_hunk_2
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.sroa.8.0.copyload72 = load ptr, ptr %.sroa.8.0..sroa_idx71, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %.sroa.10.0.copyload79 = load <2 x i32>, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1079.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %.sroa.1079.0.copyload83 = load ptr, ptr %.sroa.1079.0..sroa_idx82, align 8
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !41
end_hunk_2
begin_hunk_3
  br label %__redisGetSubscribeCallback.exit.thread

__redisGetSubscribeCallback.exit:                 ; preds = %bb.bz, %bb.bw, %__redisShiftCallback.exit.thread
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %__redisShiftCallback.exit.thread ], [ %.sroa.8.2, %bb.bw ], [ %.sroa.8.0.copyload72, %bb.bz ] ; 3 uses
  %.sroa.10.1 = phi <2 x i32> [ %.sroa.10.0.copyload, %__redisShiftCallback.exit.thread ], [ %.sroa.10.3, %bb.bw ], [ %.sroa.10.0.copyload79, %bb.bz ] ; 2 uses
  %.sroa.1079.0 = phi ptr [ %.sroa.1079.0.copyload, %__redisShiftCallback.exit.thread ], [ %.sroa.1079.2, %bb.bw ], [ %.sroa.1079.0.copyload83, %bb.bz ] ; 3 uses
  %.not30 = icmp eq ptr %.sroa.8.0, null
  %.pre144 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  br i1 %.not30, label %__redisGetSubscribeCallback.exit.thread, label %__redisRunCallback.exit
end_hunk_3
begin_hunk_4
  br i1 %.not32, label %bb.cd, label %__redisAsyncDisconnect.exit.sink.split

__redisGetSubscribeCallback.exit.thread:          ; preds = %bb.ca, %.thread.i, %__redisGetSubscribeCallback.exit
  %i.kt = phi ptr [ %.pre144, %__redisGetSubscribeCallback.exit ], [ %i.q, %.thread.i ], [ %.pre143, %bb.ca ]
  %.sroa.1082.0114 = phi ptr [ %.sroa.1079.0, %__redisGetSubscribeCallback.exit ], [ null, %.thread.i ], [ null, %bb.ca ]
  %.sroa.10.1112 = phi <2 x i32> [ %.sroa.10.1, %__redisGetSubscribeCallback.exit ], [ zeroinitializer, %.thread.i ], [ zeroinitializer, %bb.ca ]
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 200
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !106
end_hunk_4
begin_hunk_5
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %__redisGetSubscribeCallback.exit.thread
  %i.kz = phi i32 [ %i.kr, %bb.cc ], [ %.pre145, %__redisGetSubscribeCallback.exit.thread ]
  %.sroa.1082.0113 = phi ptr [ %.sroa.1079.0, %bb.cc ], [ %.sroa.1082.0114, %__redisGetSubscribeCallback.exit.thread ]
  %.sroa.10.1111 = phi <2 x i32> [ %.sroa.10.1, %bb.cc ], [ %.sroa.10.1112, %__redisGetSubscribeCallback.exit.thread ]
  %.sroa.8.0104 = phi ptr [ %.sroa.8.0, %bb.cc ], [ null, %__redisGetSubscribeCallback.exit.thread ]
  %i.la = and i32 %i.kz, 64
  %.not33 = icmp eq i32 %i.la, 0
  br i1 %.not33, label %.backedge, label %bb.ce
end_hunk_5
begin_hunk_6
  %.sroa.8.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %.sroa.8.0104, ptr %.sroa.8.0..sroa_idx73, align 8
  %.sroa.10.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store <2 x i32> %.sroa.10.1111, ptr %.sroa.10.0..sroa_idx78, align 8
  %.sroa.1079.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store ptr %.sroa.1082.0113, ptr %.sroa.1079.0..sroa_idx84, align 8
  store ptr null, ptr %i.lc, align 8, !tbaa !77
  %i.le = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.lf = icmp eq ptr %i.le, null
end_hunk_6
