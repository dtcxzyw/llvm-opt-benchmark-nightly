inline.NumInlined: 1007
inline.NumDeleted: 32
begin_hunk_0_@PyAST_obj2mod:bb.a
bb.af:                                            ; preds = %bb.bi, %.lr.ph392.i
  %i.ea = phi ptr [ %.pre402.i, %.lr.ph392.i ], [ %i.go, %bb.bi ]
  %.0177391.i = phi i64 [ 0, %.lr.ph392.i ], [ %i.gs, %bb.bi ] ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !111
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %.0177391.i
end_hunk_0
begin_hunk_1_@PyAST_obj2mod:bb.a
  br label %Py_DECREF.exit48.i.i

Py_DECREF.exit48.i.i:                             ; preds = %Py_DECREF.exit48.sink.split.i.i, %bb.az, %bb.ar, %bb.ai
  %.3313.i = phi ptr [ undef, %bb.ai ], [ undef, %Py_DECREF.exit48.sink.split.i.i ], [ undef, %bb.ar ], [ %i.gc, %bb.az ]
  %i.gf = phi i1 [ false, %bb.ai ], [ false, %Py_DECREF.exit48.sink.split.i.i ], [ false, %bb.ar ], [ true, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %obj2ast_type_ignore.exit.i
end_hunk_1
begin_hunk_2_@PyAST_obj2mod:bb.a
  br label %obj2ast_type_ignore.exit.i

bb.ba:                                            ; preds = %bb.az, %bb.au, %bb.at, %bb.an, %bb.al, %_Py_EnterRecursiveCall.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.pre69.i.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %.not.i51.i.i = icmp eq ptr %.pre69.i.i, null
end_hunk_2
begin_hunk_3_@PyAST_obj2mod:bb.a
  br label %obj2ast_type_ignore.exit.i

obj2ast_type_ignore.exit.i:                       ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.thread.i.i, %Py_DECREF.exit48.i.i, %bb.ah, %_Py_EnterRecursiveCall.exit289.thread.i
  %.4314.i = phi ptr [ undef, %.thread.i.i ], [ %.3313.i, %Py_DECREF.exit48.i.i ], [ null, %bb.ba ], [ null, %bb.bd ], [ null, %bb.bc ], [ null, %bb.bb ], [ undef, %bb.ah ], [ null, %_Py_EnterRecursiveCall.exit289.thread.i ]
  %.1.i.i = phi i1 [ false, %.thread.i.i ], [ %i.gf, %Py_DECREF.exit48.i.i ], [ false, %bb.ba ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %bb.ah ], [ true, %_Py_EnterRecursiveCall.exit289.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gl = load i32, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
end_hunk_3
begin_hunk_4_@ast_type_init:bb.a
  br i1 %i.bu, label %Py_DECREF.exit, label %bb.o

.loopexit:                                        ; preds = %bb.o, %bb.n, %._crit_edge
  %.6 = phi i32 [ %.092.lcssa, %._crit_edge ], [ %.092.lcssa, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  %.4 = phi ptr [ null, %._crit_edge ], [ null, %bb.n ], [ %.2101, %bb.o ] ; 7 uses
  %i.bv = call i64 @PySet_Size(ptr noundef nonnull %i.s) #9 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.bw = icmp sgt i64 %i.bv, 0
end_hunk_4
begin_hunk_5_@ast_type_init:bb.a

bb.aa:                                            ; preds = %.lr.ph275, %.thread205
  %.091274 = phi i64 [ 0, %.lr.ph275 ], [ %i.dh, %.thread205 ] ; 2 uses
  %.7273 = phi i32 [ %.6, %.lr.ph275 ], [ %.10209, %.thread205 ] ; 3 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !111
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.091274
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11 ; 5 uses
end_hunk_5
begin_hunk_6_@ast_type_init:bb.a
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.w, %bb.q, %bb.p, %bb.r, %bb.as, %bb.ar, %Py_DECREF.exit146, %bb.x, %.loopexit, %bb.y, %.split106
  %.12 = phi i32 [ -1, %bb.x ], [ -1, %.split106 ], [ %.10209, %Py_DECREF.exit146 ], [ %.10209, %bb.ar ], [ %.10209, %bb.as ], [ %.6, %bb.y ], [ %.6, %.loopexit ], [ -1, %bb.r ], [ %i.az, %bb.q ], [ %i.ax, %bb.p ], [ %i.bt, %bb.w ] ; 2 uses
  %.5 = phi ptr [ %.4, %bb.x ], [ %.4, %.split106 ], [ %.4, %Py_DECREF.exit146 ], [ %.4, %bb.ar ], [ %.4, %bb.as ], [ %.4, %bb.y ], [ %.4, %.loopexit ], [ %.099268, %bb.r ], [ %.099268, %bb.q ], [ %.099268, %bb.p ], [ %.2101, %bb.w ] ; 2 uses
  %.not.i169 = icmp eq ptr %.5, null
  br i1 %.not.i169, label %Py_XDECREF.exit171.thread, label %Py_DECREF.exit.thread224

Py_DECREF.exit.thread224:                         ; preds = %bb.u, %bb.v, %Py_DECREF.exit
  %.5230 = phi ptr [ %.5, %Py_DECREF.exit ], [ %.1100, %bb.v ], [ %.1100, %bb.u ] ; 3 uses
  %.12229 = phi i32 [ %.12, %Py_DECREF.exit ], [ %i.bk, %bb.u ], [ -1, %bb.v ] ; 3 uses
  %i.ds = load i32, ptr %.5230, align 8, !tbaa !14 ; 2 uses
  %.not.i.i170 = icmp sgt i32 %i.ds, -1
  br i1 %.not.i.i170, label %bb.at, label %Py_XDECREF.exit171.thread

bb.at:                                            ; preds = %Py_DECREF.exit.thread224
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %.5230, align 8, !tbaa !14
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.au, label %Py_XDECREF.exit171.thread

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.5230) #9
  br label %Py_XDECREF.exit171.thread

Py_XDECREF.exit171.thread:                        ; preds = %bb.f, %Py_DECREF.exit150, %bb.t, %bb.au, %bb.at, %Py_DECREF.exit.thread224, %Py_DECREF.exit, %bb.b, %bb.c, %bb.e, %bb.h, %bb.i, %bb.j
  %.12221241 = phi i32 [ %.12229, %bb.at ], [ -1, %bb.e ], [ %.12229, %Py_DECREF.exit.thread224 ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.t ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.12229, %bb.au ], [ %.12, %Py_DECREF.exit ], [ -1, %bb.f ], [ %i.ah, %Py_DECREF.exit150 ] ; 4 uses
  %.090222239 = phi ptr [ %i.s, %bb.at ], [ %i.s, %bb.e ], [ %i.s, %Py_DECREF.exit.thread224 ], [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.t ], [ null, %bb.b ], [ null, %bb.c ], [ %i.s, %bb.au ], [ %i.s, %Py_DECREF.exit ], [ %i.s, %Py_DECREF.exit150 ], [ %i.s, %bb.f ] ; 4 uses
  %i.dv = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %.not.i.i173 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i173, label %bb.av, label %Py_XDECREF.exit174
end_hunk_6
begin_hunk_7_@ast_type_init:bb.a
  br label %Py_XDECREF.exit174

Py_XDECREF.exit174:                               ; preds = %Py_XDECREF.exit171.thread, %bb.av, %bb.aw
  %.not.i175 = icmp eq ptr %.090222239, null
  br i1 %.not.i175, label %Py_XDECREF.exit177, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit174
  %i.dy = load i32, ptr %.090222239, align 8, !tbaa !14 ; 2 uses
  %.not.i.i176 = icmp sgt i32 %i.dy, -1
  br i1 %.not.i.i176, label %bb.ay, label %Py_XDECREF.exit177

bb.ay:                                            ; preds = %bb.ax
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %.090222239, align 8, !tbaa !14
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.az, label %Py_XDECREF.exit177

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.090222239) #9
  br label %Py_XDECREF.exit177

.split106:                                        ; preds = %bb.ao, %bb.an, %.split, %bb.z
end_hunk_7
begin_hunk_8_@ast_type_init:bb.a
  br label %Py_DECREF.exit

Py_XDECREF.exit177:                               ; preds = %get_ast_state.exit.thread178, %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit174
  %.0 = phi i32 [ -1, %get_ast_state.exit.thread178 ], [ %.12221241, %Py_XDECREF.exit174 ], [ %.12221241, %bb.ax ], [ %.12221241, %bb.ay ], [ %.12221241, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
end_hunk_8
begin_hunk_9_@ast_type_reduce:bb.a
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %.lr.ph, %bb.i, %.thread70, %bb.s, %bb.f, %bb.g, %bb.h, %.thread77, %bb.u, %bb.t, %bb.c
  %.237.a = phi ptr [ null, %bb.c ], [ null, %bb.u ], [ null, %bb.t ], [ %i.ab, %bb.s ], [ null, %bb.i ], [ %i.ab, %.thread77 ], [ %i.ab, %.thread70 ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %i.ab, %.lr.ph ] ; 4 uses
  %.134 = phi ptr [ null, %bb.c ], [ %i.ay, %bb.u ], [ %i.ax, %bb.t ], [ %i.av, %bb.s ], [ null, %bb.i ], [ null, %.thread77 ], [ null, %.thread70 ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %.lr.ph ] ; 4 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %.not.i59 = icmp eq ptr %i.az, null
  br i1 %.not.i59, label %Py_XDECREF.exit, label %bb.v
end_hunk_9
begin_hunk_10_@ast_type_reduce:bb.a
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit53, %bb.v, %bb.w, %bb.x
  %.not.i60 = icmp eq ptr %.237.a, null
  br i1 %.not.i60, label %Py_XDECREF.exit62, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit
  %i.bd = load i32, ptr %.237.a, align 8, !tbaa !14 ; 2 uses
  %.not.i.i61 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i61, label %bb.z, label %Py_XDECREF.exit62

bb.z:                                             ; preds = %bb.y
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %.237.a, align 8, !tbaa !14
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %Py_XDECREF.exit62

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %.237.a) #9
  br label %Py_XDECREF.exit62

Py_XDECREF.exit62:                                ; preds = %bb.aa, %bb.z, %bb.y, %Py_XDECREF.exit, %get_ast_state.exit.thread63
  %.1 = phi ptr [ null, %get_ast_state.exit.thread63 ], [ %.134, %Py_XDECREF.exit ], [ %.134, %bb.y ], [ %.134, %bb.z ], [ %.134, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %get_ast_state.exit.thread
end_hunk_10
