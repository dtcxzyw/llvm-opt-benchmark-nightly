Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lib_jit?download=true
inline.NumInlined: 30
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_cf_jit_util_tracesnap:bb.a
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0 = phi ptr [ %i.cq, %bb.u ], [ %i.cu, %bb.v ] ; 3 uses
  %i.cr = load i32, ptr %.0, align 4, !tbaa !16
  %i.cs = and i32 %i.cr, 224
  %i.ct = icmp samesign ult i32 %i.cs, 96
  %i.cu = getelementptr inbounds i8, ptr %.0, i64 -4
  br i1 %i.ct, label %bb.v, label %bb.w, !llvm.loop !85

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.r, align 8, !tbaa !34
  %i.cx = ptrtoint ptr %.0 to i64
  %i.cy = sub i64 %i.cp, %i.cx
  %i.cz = lshr exact i64 %i.cy, 2
  %i.da = trunc i64 %i.cz to i32
  %i.db = sitofp i32 %i.da to double
  store double %i.db, ptr %i.cv, align 8, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %bb.w, %bb.t
  %.1 = phi i32 [ 1, %bb.t ], [ 2, %bb.w ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @lj_cf_jit_util_tracemc(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lj_lib_checkint(ptr noundef %0, i32 noundef 1) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %jit_checktrace.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %i.g = icmp ult i32 %i.a, %i.f
  br i1 %i.g, label %jit_checktrace.exit, label %jit_checktrace.exit.thread

jit_checktrace.exit:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = zext i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %jit_checktrace.exit.thread, label %bb.c

bb.c:                                             ; preds = %jit_checktrace.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %jit_checktrace.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !96
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @lj_str_new(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.u) #7
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = or i64 %i.w, -703687441776640
  store i64 %i.x, ptr %i.r, align 8, !tbaa !33
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.p, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sitofp i64 %i.ab to double
  store double %i.ac, ptr %i.y, align 8, !tbaa !33
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !97
  %i.ah = sitofp i32 %i.ag to double
  store double %i.ah, ptr %i.ad, align 8, !tbaa !33
  br label %jit_checktrace.exit.thread

jit_checktrace.exit.thread:                       ; preds = %bb.a, %bb.b, %jit_checktrace.exit, %bb.c, %bb.d
  %.0 = phi i32 [ 3, %bb.d ], [ 0, %bb.c ], [ 0, %jit_checktrace.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @lj_cf_jit_util_traceexitstub(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lj_lib_checkint(ptr noundef %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ult i32 %i.a, 512
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2440
  %i.j = lshr i32 %i.a, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = shl nuw nsw i32 %i.a, 2
  %i.o = and i32 %i.n, 124
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sitofp i64 %i.r to double
  store double %i.s, ptr %i.h, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @lj_cf_jit_util_ircalladdr(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lj_lib_checkint(ptr noundef %0, i32 noundef 1) #7 ; 2 uses
  %i.b = icmp ult i32 %i.a, 108
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @lj_ir_callinfo, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sitofp i64 %i.i to double
  store double %i.j, ptr %i.h, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare hidden ptr @lj_lib_checkLproto(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_lib_optint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_debug_line(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @lj_debug_pushloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden ptr @lj_tab_setstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare hidden ptr @lj_debug_uvname(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaopen_ffi(ptr noundef) local_unnamed_addr #1

declare hidden void @lj_ir_kvalue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @lj_tab_setinth(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_jit_opt_start(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not33 = icmp slt i32 %i.l, 1
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2380
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 912 ; 6 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 912 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  %i.r = and i32 %i.q, -268369921
  %i.s = or disjoint i32 %i.r, 67043328
  store i32 %i.s, ptr %i.p, align 8, !tbaa !32
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %jitopt_param.exit
  %.034 = phi i32 [ 1, %.lr.ph ], [ %i.eu, %jitopt_param.exit ] ; 3 uses
  %i.t = tail call ptr @lj_lib_checkstr(ptr noundef %0, i32 noundef %.034) #7 ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 21 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 3 uses
  %i.w = add i8 %i.v, -48
  %or.cond.i = icmp ult i8 %i.w, 10
  br i1 %or.cond.i, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !33
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i8 %i.v, -48         ; 2 uses
  %i.aa = icmp ult i8 %switch.tableidx, 3
  br i1 %i.aa, label %switch.lookup, label %jitopt_level.exit

switch.lookup:                                    ; preds = %bb.e
  %i.ab = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lj_cf_jit_opt_start, i64 %i.ab
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %jitopt_level.exit

jitopt_level.exit:                                ; preds = %bb.e, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 67043328, %bb.e ]
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !32
  %i.ad = and i32 %i.ac, -268369921
  %i.ae = or disjoint i32 %i.ad, %.0.i
  store i32 %i.ae, ptr %i.o, align 8, !tbaa !32
  br label %jitopt_param.exit

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  switch i8 %i.v, label %bb.j [
    i8 43, label %bb.f
    i8 45, label %bb.g
    i8 110, label %bb.h
  ]

bb.f:                                             ; preds = %thread-pre-split
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  br label %bb.j

bb.g:                                             ; preds = %thread-pre-split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  br label %bb.j

bb.h:                                             ; preds = %thread-pre-split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = icmp eq i8 %i.ai, 111
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 26
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %i.am = icmp eq i8 %i.al, 45
  %i.an = select i1 %i.am, i64 3, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.an
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %thread-pre-split
  %.027.i = phi ptr [ %i.af, %bb.f ], [ %i.ag, %bb.g ], [ %i.ao, %bb.i ], [ %i.u, %bb.h ], [ %i.u, %thread-pre-split ] ; 2 uses
  %.not.i = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ true, %bb.i ], [ false, %bb.h ], [ false, %thread-pre-split ]
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.j
  %i.ap = phi i64 [ 4, %bb.j ], [ %i.bf, %bb.p ]  ; 3 uses
  %.02540.i = phi i32 [ 65536, %bb.j ], [ %i.bd, %bb.p ] ; 3 uses
  %.02639.i = phi ptr [ @.str.8, %bb.j ], [ %i.bc, %bb.p ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02639.i, i64 1
  %i.ar = tail call i32 @strncmp(ptr noundef %.027.i, ptr noundef nonnull %i.aq, i64 noundef %i.ap) #10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.027.i, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.o, align 8, !tbaa !32
  %i.ax = or i32 %i.aw, %.02540.i
  store i32 %i.ax, ptr %i.o, align 8, !tbaa !32
  br label %jitopt_param.exit

bb.o:                                             ; preds = %bb.m
  %i.ay = xor i32 %.02540.i, -1
  %i.az = load i32, ptr %i.o, align 8, !tbaa !32
  %i.ba = and i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.o, align 8, !tbaa !32
  br label %jitopt_param.exit

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.02639.i, i64 %i.ap
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.bd = shl i32 %.02540.i, 1
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !33  ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = icmp eq i8 %i.be, 0
  br i1 %i.bg, label %jitopt_flag.exit, label %bb.k

jitopt_flag.exit:                                 ; preds = %bb.p
  %i.bh = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(142) getelementptr inbounds nuw (i8, ptr @.str.44, i64 1), i64 noundef 8) #10
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %jitopt_flag.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !33
  %i.bl = icmp eq i8 %i.bk, 61
  br i1 %i.bl, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.q
  %i.bm = phi i1 [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.ak ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %bb.aq ], [ true, %bb.as ], [ false, %bb.au ]
  %i.bn = phi i1 [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ true, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.ak ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %bb.aq ], [ false, %bb.as ], [ false, %bb.au ]
  %.03348.lcssa.i = phi i64 [ 0, %bb.q ], [ 1, %bb.u ], [ 2, %bb.w ], [ 3, %bb.y ], [ 4, %bb.aa ], [ 5, %bb.ac ], [ 6, %bb.ae ], [ 7, %bb.ag ], [ 8, %bb.ai ], [ 9, %bb.ak ], [ 10, %bb.am ], [ 11, %bb.ao ], [ 12, %bb.aq ], [ 13, %bb.as ], [ 14, %bb.au ]
  %.lcssa56.i = phi i64 [ 8, %bb.q ], [ 9, %bb.u ], [ 10, %bb.w ], [ 7, %bb.y ], [ 7, %bb.aa ], [ 9, %bb.ac ], [ 7, %bb.ae ], [ 7, %bb.ag ], [ 7, %bb.ai ], [ 10, %bb.ak ], [ 10, %bb.am ], [ 10, %bb.ao ], [ 9, %bb.aq ], [ 9, %bb.as ], [ 8, %bb.au ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %.lcssa56.i
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.03049.i, align 1, !tbaa !33 ; 3 uses
  %i.bq = add i8 %i.bp, -48
  %or.cond4050.i = icmp ult i8 %i.bq, 10
  br i1 %or.cond4050.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.br = phi i8 [ %i.bv, %.lr.ph.i ], [ %i.bp, %.preheader.i ]
  %.03052.i = phi ptr [ %.030.i, %.lr.ph.i ], [ %.03049.i, %.preheader.i ]
  %.03151.i = phi i32 [ %i.bu, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.bs = mul i32 %.03151.i, 10
  %narrow.i = add nsw i8 %i.br, -48
  %i.bt = zext nneg i8 %narrow.i to i32
  %i.bu = add i32 %i.bs, %i.bt                    ; 2 uses
  %.030.i = getelementptr inbounds nuw i8, ptr %.03052.i, i64 1 ; 2 uses
  %i.bv = load i8, ptr %.030.i, align 1, !tbaa !33 ; 3 uses
  %i.bw = add i8 %i.bv, -48
  %or.cond40.i = icmp ult i8 %i.bw, 10
  br i1 %or.cond40.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !100

.critedge.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %.031.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bu, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i8 [ %i.bp, %.preheader.i ], [ %i.bv, %.lr.ph.i ]
  %i.bx = icmp ne i8 %.lcssa.i, 0
  %i.by = icmp slt i32 %.031.lcssa.i, 0
  %or.cond.i22 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i22, label %bb.av, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.bz = add nuw i32 %.031.lcssa.i, 3
  %i.ca = and i32 %i.bz, -4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 2097088)
  %.2.i23 = select i1 %i.bm, i32 %spec.select.i, i32 %.031.lcssa.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.03348.lcssa.i
  store i32 %.2.i23, ptr %i.cb, align 4, !tbaa !16
  br i1 %i.bn, label %bb.s, label %jitopt_param.exit

bb.s:                                             ; preds = %bb.r
  tail call void @lj_dispatch_init_hotcount(ptr noundef nonnull %i.c) #7
  br label %jitopt_param.exit

bb.t:                                             ; preds = %bb.q, %jitopt_flag.exit
  %i.cc = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(133) getelementptr inbounds nuw (i8, ptr @.str.44, i64 10), i64 noundef 9) #10
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !33
  %i.cg = icmp eq i8 %i.cf, 61
  br i1 %i.cg, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(123) getelementptr inbounds nuw (i8, ptr @.str.44, i64 20), i64 noundef 10) #10
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  %i.cl = icmp eq i8 %i.ck, 61
  br i1 %i.cl, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cm = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(112) getelementptr inbounds nuw (i8, ptr @.str.44, i64 31), i64 noundef 7) #10
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33
  %i.cq = icmp eq i8 %i.cp, 61
  br i1 %i.cq, label %.preheader.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cr = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(104) getelementptr inbounds nuw (i8, ptr @.str.44, i64 39), i64 noundef 7) #10
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !33
  %i.cv = icmp eq i8 %i.cu, 61
  br i1 %i.cv, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(96) getelementptr inbounds nuw (i8, ptr @.str.44, i64 47), i64 noundef 9) #10
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !33
  %i.da = icmp eq i8 %i.cz, 61
  br i1 %i.da, label %.preheader.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.db = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(86) getelementptr inbounds nuw (i8, ptr @.str.44, i64 57), i64 noundef 7) #10
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !33
  %i.df = icmp eq i8 %i.de, 61
  br i1 %i.df, label %.preheader.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dg = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(78) getelementptr inbounds nuw (i8, ptr @.str.44, i64 65), i64 noundef 7) #10
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !33
  %i.dk = icmp eq i8 %i.dj, 61
  br i1 %i.dk, label %.preheader.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dl = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(70) getelementptr inbounds nuw (i8, ptr @.str.44, i64 73), i64 noundef 7) #10
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dp = icmp eq i8 %i.do, 61
  br i1 %i.dp, label %.preheader.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dq = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(62) getelementptr inbounds nuw (i8, ptr @.str.44, i64 81), i64 noundef 10) #10
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !33
  %i.du = icmp eq i8 %i.dt, 61
  br i1 %i.du, label %.preheader.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dv = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(51) getelementptr inbounds nuw (i8, ptr @.str.44, i64 92), i64 noundef 10) #10
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !33
  %i.dz = icmp eq i8 %i.dy, 61
  br i1 %i.dz, label %.preheader.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ea = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(40) getelementptr inbounds nuw (i8, ptr @.str.44, i64 103), i64 noundef 10) #10
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !33
  %i.ee = icmp eq i8 %i.ed, 61
  br i1 %i.ee, label %.preheader.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ef = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(29) getelementptr inbounds nuw (i8, ptr @.str.44, i64 114), i64 noundef 9) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !33
  %i.ej = icmp eq i8 %i.ei, 61
  br i1 %i.ej, label %.preheader.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ek = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(19) getelementptr inbounds nuw (i8, ptr @.str.44, i64 124), i64 noundef 9) #10
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %i.en = load i8, ptr %i.em, align 1, !tbaa !33
  %i.eo = icmp eq i8 %i.en, 61
  br i1 %i.eo, label %.preheader.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ep = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(9) getelementptr inbounds nuw (i8, ptr @.str.44, i64 134), i64 noundef 8) #10
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.es = load i8, ptr %i.er, align 1, !tbaa !33
  %i.et = icmp eq i8 %i.es, 61
  br i1 %i.et, label %.preheader.i, label %bb.av

bb.av:                                            ; preds = %.critedge.i, %bb.au, %bb.at
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef %0, i32 noundef 2096, ptr noundef nonnull %i.u) #8
  unreachable

jitopt_param.exit:                                ; preds = %bb.o, %bb.n, %bb.s, %bb.r, %jitopt_level.exit
  %i.eu = add nuw i32 %.034, 1
  %exitcond.not = icmp eq i32 %.034, %i.l
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !101

.loopexit:                                        ; preds = %jitopt_param.exit, %.preheader, %bb.b
  ret i32 0
}

; Function Attrs: noreturn
declare hidden void @lj_err_callerv(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare hidden void @lj_dispatch_init_hotcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"GCRef", !9, i64 0}
!11 = !{!"MRef", !9, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS6TValue", !12, i64 0}
!14 = !{!"lua_State", !10, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !11, i64 16, !10, i64 24, !13, i64 32, !13, i64 40, !11, i64 48, !11, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !6, i64 88}
!15 = !{!14, !9, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"p1 _ZTS5IRIns", !12, i64 0}
!19 = !{!"p1 _ZTS8SnapShot", !12, i64 0}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"GCtrace", !10, i64 0, !5, i64 8, !5, i64 9, !17, i64 10, !6, i64 12, !6, i64 16, !10, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !20, i64 56, !10, i64 64, !11, i64 72, !6, i64 80, !6, i64 84, !21, i64 88, !6, i64 96, !17, i64 100, !17, i64 102, !17, i64 104, !17, i64 106, !17, i64 108, !17, i64 110, !17, i64 112, !5, i64 114, !5, i64 115, !5, i64 116, !5, i64 117}
!23 = !{!"p1 _ZTS7GCtrace", !12, i64 0}
!24 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!25 = !{!"p1 _ZTS6GCfunc", !12, i64 0}
!26 = !{!"p1 _ZTS7GCproto", !12, i64 0}
!27 = !{!"IRType1", !5, i64 0}
!28 = !{!"FoldState", !5, i64 0, !5, i64 8, !5, i64 24}
!29 = !{!"p1 _ZTS5GCRef", !12, i64 0}
!30 = !{!"ScEvEntry", !11, i64 0, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !27, i64 16, !5, i64 17}
!31 = !{!"jit_State", !22, i64 0, !23, i64 120, !24, i64 128, !20, i64 136, !25, i64 144, !26, i64 152, !20, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !5, i64 180, !5, i64 181, !27, i64 182, !5, i64 183, !28, i64 184, !20, i64 224, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !5, i64 260, !5, i64 264, !5, i64 304, !18, i64 328, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !19, i64 352, !20, i64 360, !6, i64 368, !6, i64 372, !5, i64 376, !29, i64 384, !6, i64 392, !6, i64 396, !17, i64 400, !5, i64 402, !5, i64 604, !5, i64 1636, !5, i64 1696, !5, i64 1824, !6, i64 2848, !5, i64 2852, !6, i64 2980, !30, i64 2984, !20, i64 3008, !6, i64 3016, !6, i64 3020, !6, i64 3024, !20, i64 3032, !6, i64 3040, !6, i64 3044, !21, i64 3048, !21, i64 3056, !21, i64 3064, !9, i64 3072, !9, i64 3080, !9, i64 3088, !9, i64 3096, !5, i64 3104, !26, i64 3112, !6, i64 3120, !6, i64 3124}
!32 = !{!31, !6, i64 168}
!33 = !{!5, !5, i64 0}
!34 = !{!14, !13, i64 40}
!35 = !{!14, !13, i64 32}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"GCstr", !10, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !6, i64 12, !6, i64 16, !6, i64 20}
!38 = !{!"GCState", !9, i64 0, !9, i64 8, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !6, i64 20, !10, i64 24, !11, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !6, i64 92, !11, i64 96}
!39 = !{!"StrInternState", !29, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !9, i64 24}
!40 = !{!"SBuf", !21, i64 0, !21, i64 8, !21, i64 16, !11, i64 24}
!41 = !{!"Node", !5, i64 0, !5, i64 8, !11, i64 16}
!42 = !{!"GCupval", !10, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 16, !11, i64 32, !6, i64 40}
!43 = !{!"PRNGState", !5, i64 0}
!44 = !{!"global_State", !12, i64 0, !12, i64 8, !38, i64 16, !37, i64 120, !5, i64 144, !5, i64 145, !5, i64 146, !5, i64 147, !39, i64 152, !6, i64 184, !10, i64 192, !40, i64 200, !5, i64 232, !5, i64 240, !41, i64 248, !5, i64 272, !10, i64 280, !42, i64 288, !6, i64 336, !6, i64 340, !12, i64 344, !12, i64 352, !12, i64 360, !6, i64 368, !6, i64 372, !10, i64 376, !11, i64 384, !11, i64 392, !43, i64 400, !5, i64 432}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!44, !9, i64 64}
!47 = !{!"GCtab", !10, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !11, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !11, i64 56}
!48 = !{!47, !9, i64 24}
!49 = !{!"GCproto", !10, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !6, i64 12, !6, i64 16, !10, i64 24, !11, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !5, i64 60, !5, i64 61, !17, i64 62, !10, i64 64, !6, i64 72, !6, i64 76, !11, i64 80, !11, i64 88, !11, i64 96}
!50 = !{!49, !6, i64 12}
!51 = !{!49, !6, i64 48}
!52 = !{!49, !6, i64 52}
!53 = !{!49, !5, i64 60}
!54 = !{!10, !9, i64 0}
!55 = !{!31, !6, i64 396}
!56 = !{!31, !29, i64 384}
!57 = !{!22, !6, i64 12}
!58 = !{!22, !6, i64 40}
!59 = !{!22, !17, i64 10}
!60 = !{!21, !21, i64 0}
!61 = !{!22, !18, i64 32}
!62 = !{!14, !9, i64 72}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = !{!37, !6, i64 20}
!67 = !{!44, !5, i64 147}
!68 = !{!9, !9, i64 0}
!69 = !{!44, !12, i64 360}
!70 = !{!"GG_State", !14, i64 0, !44, i64 96, !31, i64 840, !5, i64 3968, !5, i64 4096, !5, i64 6152}
!71 = !{!70, !6, i64 1076}
!72 = !{!49, !6, i64 72}
!73 = !{!49, !6, i64 76}
!74 = !{!49, !5, i64 11}
!75 = !{!49, !5, i64 10}
!76 = !{!49, !5, i64 61}
!77 = !{!49, !9, i64 64}
!78 = !{!17, !17, i64 0}
!79 = !{!49, !9, i64 32}
!80 = !{!22, !17, i64 106}
!81 = !{!22, !5, i64 116}
!82 = !{!44, !9, i64 392}
!83 = !{!14, !9, i64 56}
!84 = distinct !{!84, !36}
!85 = distinct !{!85, !36}
!86 = !{!22, !19, i64 48}
!87 = !{!22, !20, i64 56}
!88 = !{!"SnapShot", !6, i64 0, !17, i64 4, !17, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11}
!89 = !{!88, !6, i64 0}
!90 = !{!88, !5, i64 10}
!91 = !{!47, !6, i64 48}
!92 = !{!47, !9, i64 16}
!93 = !{!88, !17, i64 4}
!94 = !{!88, !5, i64 8}
!95 = !{!22, !21, i64 88}
!96 = !{!22, !6, i64 84}
!97 = !{!22, !6, i64 96}
!98 = !{!"CCallInfo", !12, i64 0, !6, i64 8}
!99 = !{!98, !12, i64 0}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
end_hunk_0
