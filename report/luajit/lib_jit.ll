Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lib_jit?download=true
inline.NumInlined: 30
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_cf_jit_util_tracek:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 30
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !33
  %i.ad = zext i16 %i.ac to i32
  %i.ae = load i16, ptr %i.x, align 8, !tbaa !33
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.af ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = phi i8 [ %.pre, %bb.e ], [ %i.z, %bb.d ]
  %.030 = phi ptr [ %i.ag, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %.029 = phi i32 [ %i.ad, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 29
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 392
  %i.am = load i64, ptr %i.al, align 8, !tbaa !82
  %.not33 = icmp eq i64 %i.am, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !83
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = tail call i32 @luaopen_ffi(ptr noundef nonnull %0) #7 ; 0 uses
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !83
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.as
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16
  tail call void @lj_ir_kvalue(ptr noundef nonnull %0, ptr noundef nonnull %i.az, ptr noundef nonnull %.030) #7
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !33
  %i.be = and i8 %i.bd, 31
  %i.bf = uitofp nneg i8 %i.be to double
  store double %i.bf, ptr %i.bb, align 8, !tbaa !33
  %i.bg = icmp eq i32 %.029, -1
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.ax, align 8, !tbaa !34
  %i.bj = uitofp nneg i32 %.029 to double
  store double %i.bj, ptr %i.bh, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %jit_checktrace.exit.thread, %jit_checktrace.exit, %bb.c, %bb.j, %bb.i
  %.1 = phi i32 [ 2, %bb.i ], [ 3, %bb.j ], [ 0, %bb.c ], [ 0, %jit_checktrace.exit ], [ 0, %jit_checktrace.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @lj_cf_jit_util_tracesnap(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lj_lib_checkint(ptr noundef %0, i32 noundef 1) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %jit_checktrace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %i.g = icmp ult i32 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %jit_checktrace.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = zext i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  %i.m = inttoptr i64 %i.l to ptr
  br label %jit_checktrace.exit

jit_checktrace.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.n = tail call i32 @lj_lib_checkint(ptr noundef nonnull %0, i32 noundef 2) #7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %jit_checktrace.exit
  %i.u = load i64, ptr %i.q, align 8, !tbaa !33
  %i.v = icmp ult i64 %i.u, -281474976710656
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %jit_checktrace.exit
  %i.w = phi i1 [ false, %jit_checktrace.exit ], [ %i.v, %bb.d ]
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !59
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp ult i32 %i.n, %i.z
  br i1 %i.aa, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = zext nneg i32 %i.n to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !89
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !90  ; 4 uses
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.am, 2                ; 4 uses
  tail call void @lua_createtable(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef 0) #7
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33
  %i.ar = and i64 %i.aq, 140737488355327
  %i.as = inttoptr i64 %i.ar to ptr               ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !91
  %.not64 = icmp eq i32 %i.au, 0
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !92
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call ptr @lj_tab_setinth(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef 0) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi ptr [ %i.ax, %bb.h ], [ %i.ay, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !93
  %i.bc = zext i16 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -32768
  %i.be = sitofp i32 %i.bd to double
  store double %i.be, ptr %i.az, align 8, !tbaa !33
  %i.bf = load i32, ptr %i.at, align 8, !tbaa !91
  %i.bg = icmp ugt i32 %i.bf, 1
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !92
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bl = tail call ptr @lj_tab_setinth(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef 1) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bm = phi ptr [ %i.bk, %bb.k ], [ %i.bl, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !94
  %i.bp = uitofp i8 %i.bo to double
  store double %i.bp, ptr %i.bm, align 8, !tbaa !33
  %.not66 = icmp eq i8 %i.al, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.trip.count = zext i8 %i.al to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.br = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.bs = load i32, ptr %i.at, align 8, !tbaa !91
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.br
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.by = trunc nuw nsw i64 %i.br to i32
  %i.bz = tail call ptr @lj_tab_setinth(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef %i.by) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = phi ptr [ %i.bx, %bb.o ], [ %i.bz, %bb.p ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16
  %i.cd = sitofp i32 %i.cc to double
  store double %i.cd, ptr %i.ca, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.q, %bb.m
  %i.ce = load i32, ptr %i.at, align 8, !tbaa !91
  %i.cf = icmp ult i32 %i.an, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !92
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = zext nneg i32 %i.an to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cl = tail call ptr @lj_tab_setinth(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i32 noundef %i.an) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = phi ptr [ %i.ck, %bb.r ], [ %i.cl, %bb.s ]
  store double f0xC170000000000000, ptr %i.cm, align 8, !tbaa !33
  br i1 %i.w, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cn = zext i8 %i.al to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cn
  %.0.copyload.i = load i64, ptr %i.co, align 4
  %i.cp = lshr i64 %.0.copyload.i, 8              ; 2 uses
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

end_hunk_0
